---
title: How to use DKIM for email in your custom domain
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 1/29/2024
audience: ITPro
ms.topic: conceptual

ms.localizationpriority: high
search.appverid:
  - MET150
ms.assetid: 56fee1c7-dc37-470e-9b09-33fff6d94617
ms.collection:
  - m365-security
  - tier1
ms.custom:
  - seo-marvel-apr2020
description: Learn how Microsoft 365 uses DomainKeys Identified Mail (DKIM) to sign outbound mail, and how to configure DKIM signing of outbound mail using custom domains.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Set up DKIM to sign mail from your Microsoft 365 domain

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

DomainKeys Identified Mail (DKIM) is a method of [email authentication](email-authentication-about.md) that helps validate mail sent from your Microsoft 365 organization to prevent spoofed senders that are used in business email compromise (BEC), ransomware, and other phishing attacks.

The primary purpose of DKIM is to verify that a message hasn't been altered in transit. Specifically:

1. One or more private keys are generated for a domain and are used by the source email system to digitally sign important parts of outbound messages. These message parts include:
   - From, To, Subject, MIME-Version, Content-Type, Date, and other message header fields (depending on the source email system).
   - The message body.
2. The digital signature is stored in the **DKIM-Signature** header field in the message header and remains valid as long as intermediate email systems don't modify the signed parts of the message. The signing domain is identified by the **d=** value in the **DKIM-Signature** header field.
3. The corresponding public keys are stored in DNS records for the signing domain (CNAME records in Microsoft 365; other email systems might use TXT records).
4. Destination email systems use the **d=** value in the **DKIM-Signature** header field to:
   - Identify the signing domain.
   - Look up the public key in the DKIM DNS record for the domain.
   - Use the public key in the DKIM DNS record for the domain to verify the message signature.

Important facts about DKIM:

- The domain that's used to DKIM sign the message isn't required to match the domain in the MAIL FROM or From addresses in the message. For more information about these addresses, see [Why internet email needs authentication](email-authentication-about.md#why-internet-email-needs-authentication).
- A message can have multiple DKIM signatures by different domains. In fact, many hosted email services sign the message using the service domain, and then sign the message again using the customer domain after the customer configures DKIM signing for the domain.

Before we get started, here's what you need to know about DKIM in Microsoft 365 based on your email domain:

- **If you use only the Microsoft Online Email Routing Address (MOERA) domain for email (for example, contoso.onmicrosoft.com)**: You don't need to do anything. Microsoft automatically creates a 2048-bit public-private key pair from your initial \*.onmicrosoft.com domain. Outbound messages are automatically DKIM signed using the private key. The public key is published in a DNS record so destination email systems can verify the DKIM signature of messages.

  But, you can also manually configure DKIM signing using the \*.onmicrosoft.com domain. For instructions, see the [Use the Defender portal to customize DKIM signing of outbound messages using the \*.onmicrosoft.com domain](#use-the-defender-portal-to-customize-dkim-signing-of-outbound-messages-using-the-onmicrosoftcom-domain) section later in this article.

  To verify the fact that outbound messages are automatically DKIM signed, see the [Verify DKIM signing of outbound mail from Microsoft 365](#verify-dkim-signing-of-outbound-mail-from-microsoft-365) section later in this article.

  For more information about \*.onmicrosoft.com domains, see [Why do I have an "onmicrosoft.com" domain?](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).

- **If you use one or more custom domains for email (for example, contoso.com)**: Even though all outbound mail from Microsoft 365 is automatically signed by the MOERA domain, you still have more work to do for maximum email protection:
  - **Configure DKIM signing using custom domains or subdomains**: A message needs to be DKIM signed by the domain in the From address. We also recommend configuring DMARC, and DKIM passes DMARC validation only if the domain that DKIM signed the message and the domain in the From address align.

  - **Subdomain considerations**:
    - For email services that aren't under your direct control (for example, bulk email services), we recommend using a subdomain (for example, marketing.contoso.com) instead of your main email domain (for example, contoso.com). You don't want issues with mail sent from those email services to affect the reputation of mail sent by employees in your main email domain. For more information about adding subdomains, see [Can I add custom subdomains or multiple domains to Microsoft 365?](/microsoft-365/admin/setup/domains-faq#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365).
    - Each subdomain that you use to send email from Microsoft 365 requires its own DKIM configuration.

      > [!TIP]
      > Email authentication protection for _undefined_ subdomains is covered by DMARC. Any subdomains (defined or not) inherit the DMARC settings of the parent domain (which can be overridden per subdomain). For more information, see [Set up DMARC to validate the From address domain for senders in Microsoft 365](email-authentication-dmarc-configure.md).

  - **If you own registered but unused domains**: If you own registered domains that aren't used for email or anything at all (also known as _parked domains_), don't publish DKIM records for those domains. The lack of a DKIM record (hence, the lack of a public key in DNS to validate the message signature) prevents DKIM validation of forged domains.

- **DKIM alone is not enough**. For the best level of email protection for your custom domains, you also need to configure SPF and DMARC as part of your overall [email authentication](email-authentication-about.md) strategy. For more information, see the [Next Steps](#next-steps) section at the end of this article.

The rest of this article describes the DKIM CNAME records that you need to create for custom domains in Microsoft 365, and configuration procedures for DKIM using custom domains.

> [!TIP]
> Configuring DKIM signing using a custom domain is a mixture of procedures in Microsoft 365 and procedures at the domain registrar of the custom domain.
>
> We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these instructions as a starting point to create the create the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).
>
> If you're unfamiliar with DNS configuration, contact your domain registrar and ask for help.

## Syntax for DKIM CNAME records

> [!TIP]
> You use the Defender portal or Exchange Online PowerShell to view the required CNAME values for DKIM signing of outbound messages using a custom domain. The values presented here are for illustration only. To get the values that are required for your custom domains or subdomains, use the procedures later in this article.

DKIM is exhaustively described in [RFC 6376](https://datatracker.ietf.org/doc/html/rfc6376).

The basic syntax of the DKIM CNAME records for custom domains that send mail from Microsoft 365 is:

```text
Hostname: selector1._domainkey
Points to address or value: selector1-<CustomDomain>._domainkey.<InitialDomain>

Hostname: selector2._domainkey
Points to address or value: selector2-<CustomDomain>._domainkey.<InitialDomain>
```

- In Microsoft 365, two public-private key pairs are generated when DKIM signing using a custom domain or subdomain is enabled. The private keys that are used to sign the message are inaccessible. The CNAME records point to the corresponding public keys that are used to verify the DKIM signature. These records are known as _selectors_.
  - Only one selector is active and used when DKIM signing using a custom domain is enabled.
  - The second selector is inactive. It's activated and used only after any future [DKIM key rotation](#rotate-dkim-keys), and then only after the original selector is deactivated.

  The selector that's used to verify the DKIM signature (which infers the private key that was used to sign the message) is stored in the **s=** value in the **DKIM-Signature** header field (for example, `s=selector1-contoso-com`).

- **Hostname**: The values are the same for all Microsoft 365 organizations: `selector1._domainkey` and `selector2._domainkey`.

- **\<CustomDomain\>**: The custom domain or subdomain with periods replaced by dashes. For example, `contoso.com` becomes `contoso-com`, or `marketing.contoso.com` becomes `marketing-contoso-com`.

- **\<InitialDomain\>**: The \*.onmicrosoft.com that you used when you enrolled in Microsoft 365 (for example, contoso.onmicrosoft.com).

For example, your organization has the following domains in Microsoft 365:

- **Initial domain**: cohovineyardandwinery.onmicrosoft.com
- **Custom domains**: cohovineyard.com and cohowinery.com

You need to create two CNAME records in each custom domain, for a total of four CNAME records:

- **CNAME records in the cohovineyard.com domain**:

  **Hostname**: `selector1._domainkey`<br>
  **Points to address or value**: `selector1-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com`

  **Hostname**: `selector2._domainkey`<br>
  **Points to address or value**: `selector2-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com`

- **CNAME records in the cohowinery.com domain**:

  **Hostname**: `selector1._domainkey`<br>
  **Points to address or value**: `selector1-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com`

  **Hostname**: `selector2._domainkey`<br>
  **Points to address or value**: `selector2-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com`

## Configure DKIM signing of outbound messages in Microsoft 365

### Use the Defender portal to enable DKIM signing of outbound messages using a custom domain

> [!TIP]
> Enabling DKIM signing of outbound messages using a custom domain effectively switches DKIM signing from using the initial \*.onmicrosoft.com domain to using the custom domain.
>
> You can use a custom domain or subdomain to DKIM sign outbound mail only after the domain has been successfully added to Microsoft 365. For instructions, see [Add a domain](/microsoft-365/admin/setup/add-domain#add-a-domain).
>
> The main factor that determines when a custom domain starts DKIM signing outbound mail is the CNAME record detection in DNS.

To use the procedures in this section, the custom domain or subdomain must appear on the **DKIM** tab of the **Email authentication settings** page at <https://security.microsoft.com/authentication?viewid=DKIM>. The properties of the domain in the details flyout must contain the following values:

:::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png" alt-text="The domain details tab showing DKIM signing disabled and no DKIM signatures configured for the domain." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png":::

- The **Sign messages for this domain with DKIM signatures** toggle is set to **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.
- The **Status** value is **Not signing DKIM signatures for the domain**.
- **Create DKIM keys** isn't present. **Rotate DKIM keys** is visible, but is grayed out.

Proceed if the domain satisfies these requirements.

1. In the Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the custom domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Defender portal." lightbox="../../media/email-auth-dkim-domain-list.png":::

4. In the domain details flyout that opens, select the **Sign messages for this domain with DKIM signatures** toggle that's currently set to **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

   Note the **Last checked date** value.

5. A **Client error** dialog opens. The error contains the values to use in the two CNAME records that you create at the domain registrar for the domain.

   In this example, the custom domain is contoso.com and the initial domain for the Microsoft 365 organization is contoso.onmicrosoft.com. The error message looks like this:

   ```text
   |Microsoft.Exchange.ManagementTasks.ValidationException|CNAME record does not
   exist for this config. Please publish the following two CNAME records first. Domain Name
   : contoso.com Host Name : selector1._domainkey Points to address or value: selector1-
   contoso-com._domainkey.contoso.onmicrosoft.com Host Name : selector2._domainkey
   Points to address or value: selector2-contoso-com._domainkey.contoso.onmicrosoft.com .
   If you have already published the CNAME records, sync will take a few minutes to as
   many as 4 days based on your specific DNS. Return and retry this step later.
   ```

   Therefore, the CNAME records that you need to create in DNS for the contoso.com domain are:

   **Hostname**: `selector1._domainkey`<br>
   **Points to address or value**: `selector1-contoso-com._domainkey.contoso.onmicrosoft.com`

   **Hostname**: `selector2._domainkey`<br>
   **Points to address or value**: `selector2-contoso-com._domainkey.contoso.onmicrosoft.com`

   Copy the information from the error dialog (select the text and press CTRL+C), and then select **OK**.

   Leave the domain details flyout open.

6. In another browser tab or window, go to the domain registrar for the domain, and then create the two CNAME records using the information from the previous step.

   We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars.  You can use these instructions as a starting point to create the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

   It takes a few minutes (or possibly longer) for Microsoft 365 to detect the new CNAME records that you created.

7. After a while, return to the domain properties flout that you left open in Step 5, and select the **Sign messages for this domain with DKIM signatures** toggle.

   After a few seconds, the following dialog opens:

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-cname-detected.png" alt-text="The dialog that opens when you try to enable DKIM signing for the domain." lightbox="../../media/email-auth-dkim-domain-properties-cname-detected.png":::

   After you select **OK** to close the dialog, verify the following settings on the details flyout:

   - The **Sign messages for this domain with DKIM signatures** toggle is set to **Enabled** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - The **Status** value is **Signing DKIM signatures for this domain**.
   - **Rotate DKIM keys** is available.
   - **Last checked date**: The date and time should be more recent than the original value in Step 4.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-rotate-keys.png" alt-text="The domain details flyout after DKIM is enabled for the domain." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim.png":::

### Use the Defender portal to customize DKIM signing of outbound messages using the \*.onmicrosoft.com domain

As described earlier in this article, the initial \*.onmicrosoft.com domain is automatically configured to sign all outbound mail from your Microsoft 365 organization, and you should [configure custom domains to DKIM signing of outbound messages](#use-the-defender-portal-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain).

But, you can also use the procedures in this section to affect DKIM signing using the \*.onmicrosoft.com domain:

- Generate new keys. The new keys are automatically added and used in the Microsoft 365 datacenters.
- Have the properties of the \*.onmicrosoft.com domain appear correctly in the details flyout of the domain on the **DKIM** tab of the **Email authentication settings** page at <https://security.microsoft.com/authentication?viewid=DKIM> or in PowerShell. This result allows for future operations on the DKIM configuration for the domain (for example, [manual key rotation](#rotate-dkim-keys)).

To use the procedures in this section, the \*.onmicrosoft.com domain must appear on the **DKIM** tab of the **Email authentication settings** page at <https://security.microsoft.com/authentication?viewid=DKIM>. The properties of the \*.onmicrosoft.com domain in the details flyout must contain the following values:

:::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim.png" alt-text="The domain details flyout with the Create DKIM keys button." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim.png":::

- The **Sign messages for this domain with DKIM signatures** toggle isn't available.
- The **Status** value is **No DKIM keys saved for this domain**.
- **Create DKIM keys** is present.

Proceed if the domain satisfies these requirements.

1. In the Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the \*.onmicrosoft.com domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Defender portal." lightbox="../../media/email-auth-dkim-domain-list.png":::

4. In the domain details flyout that opens, select **Create DKIM keys**.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim.png" alt-text="The domain details flyout with the Create DKIM keys button." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim.png":::

5. When DKIM key creation is finished, the **Publish CNAMEs dialog** opens. Select **Close**.

   You can't create the CNAME records for the \*.onmicrosoft.com domain, so you don't need to copy the values. Microsoft takes care of the required DNS configuration for you.

6. After you select **Close**, you're back on the domain details flyout where the **Sign messages for this domain with DKIM signatures** toggle is **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png" alt-text="The domain details tab with DKIM signing disabled." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png":::

   Slide the **Sign messages for this domain with DKIM signatures** toggle to **Enabled** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::, and then select **OK** in the confirmation dialog that opens.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-rotate-keys.png" alt-text="The domain details tab with DKIM signing enabled and DKIM signatures configured for the domain." lightbox="../../media/email-auth-dkim-domain-properties-rotate-keys.png":::

   When you're finished in the domain details flyout, select **Close**.

### Use Exchange Online PowerShell to configure DKIM signing of outbound messages

If you'd rather use PowerShell to enable DKIM signing of outbound messages using a custom domain, or to customize DKIM signing for the \*.onmicrosoft.com domain, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to run the following commands.

> [!TIP]
> Before you can configure DKIM signing using the custom domain, you need to add the domain to Microsoft 365. For instructions, see [Add a domain](/microsoft-365/admin/setup/add-domain#add-a-domain). To confirm that the custom domain is available for DKIM configuration, run the following command: `Get-AcceptedDomain`.
>
> As described earlier in this article, your \*.onmicrosoft.com domain is already signing outbound email by default. Typically, unless you've manually configured DKIM signing for the \*.onmicrosoft.com domain in the Defender portal or in PowerShell, the \*.onmicrosoft.com doesn't appear in the output of **Get-DkimSigningConfig**.

1. Run the following command to verify the availability and DKIM status of all domains in the organization:

   ```powershell
   Get-DkimSigningConfig | Format-List Name,Enabled,Status,Selector1CNAME,Selector2CNAME
   ```

2. For the domain that you want to configure DKIM signing for, the output of the command in Step 1 determines what you need to do next:

   - The domain is listed with the following values:
     - **Enabled**: False
     - **Status**: `CnameMissing`

     Go to Step 3 to copy the selector values.

   Or

   - The domain isn't listed:

     1. Replace \<Domain\> with the domain value, and then run the following command:

        ```powershell
        New-DkimSigningConfig -DomainName <Domain> -Enabled $false [-BodyCanonicalization <Relaxed | Simple>] [-HeaderCanonicalization <Relaxed | Simple>] [-KeySize <1024 | 2048>]
        ```

        - The _BodyCanonicalization_ parameter specifies the sensitivity level to changes in the message body:
          - Relaxed: Changes in whitespace and changes in empty lines at the end of the message body are tolerated. This is the default value.
          - Simple: Only changes in empty lines at the end of the message body are tolerated.
        - The _HeaderCanonicalization_ parameter specifies the sensitivity level to changes in the message header:
          - Relaxed: Common modifications to the message header are tolerated. For example, header field line rewrapping, changes in unnecessary whitespace or empty lines, and changes in case for header fields. This is the default value.
          - Simple: No changes to the header fields are tolerated.
        - The _KeySize_ parameter specifies the bit size of the public key in the DKIM record:
          - 1024. This is the default value.
          - 2048.

        For example:

        ```powershell
        New-DkimSigningConfig -DomainName contoso.com -Enabled $false
        ```

     2. Run the command from Step 1 again to confirm that the domain is listed with the following property values:
        - **Enabled**: False
        - **Status**: `CnameMissing`

     3. Go to Step 3 to copy the selector values.

3. Copy the **Selector1CNAME** and **Selector2CNAME** values for the domain from the output of the command from Step 1.

   The CNAME records that you need to create at the domain registrar for the domain look like this:

   **Hostname**: `selector1._domainkey`<br>
   **Points to address or value**: `<Selector1CNAME value>`

   **Hostname**: `selector2._domainkey`<br>
   **Points to address or value**: `<Selector2CNAME value>`

   For example:

   **Hostname**: `selector1._domainkey`<br>
   **Points to address or value**: `selector1-contoso-com._domainkey.contoso.onmicrosoft.com`

   **Hostname**: `selector2._domainkey`<br>
   **Points to address or value**: `selector2-contoso-com._domainkey.contoso.onmicrosoft.com`

4. Do one of the following steps:

   - **Custom domain**: At the domain registrar for the domain, create the two CNAME records using the information from the previous step.

     We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these instructions as a starting point to create the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

     It takes a few minutes (or possibly longer) for Microsoft 365 to detect the new CNAME records that you created.

   - **\*.onmicrosoft.com domain**: Go to Step 5.

5. After a while, return to Exchange Online PowerShell, replace \<Domain\> with the domain that you configured, and run the following command:

   ```powerShell
   Set-DkimConfig -Identity \<Domain\> -Enabled $true [-BodyCanonicalization <Relaxed | Simple>] [-HeaderCanonicalization <Relaxed | Simple>]
   ```

   - The _BodyCanonicalization_ parameter specifies the sensitivity level to changes in the message body:
     - Relaxed: Changes in whitespace and changes in empty lines at the end of the message body are tolerated. This is the default value.
     - Simple: Only changes in empty lines at the end of the message body are tolerated.
   - The _HeaderCanonicalization_ parameter specifies the sensitivity level to changes in the message header:
     - Relaxed: Common modifications to the message header are tolerated. For example, header field line rewrapping, changes in unnecessary whitespace or empty lines, and changes in case for header fields. This is the default value.
     - Simple: No changes to the header fields are tolerated.

   For example:

   ```powerShell
   Set-DkimConfig -Identity contoso.com -Enabled $true
   ```

   Or

   ```powerShell
   Set-DkimConfig -Identity contoso.onmicrosoft.com -Enabled $true
   ```

   - For a custom domain, if Microsoft 365 is able to detect the CNAME records at the domain registrar, the command runs without error, and the domain is now used to DKIM sign outbound messages from the domain.

     If the CNAME records aren't detected, you get an error that contains the values to use in the CNAME records. Check for typos in the values at the domain registrar (easy to do with the dashes, periods, and underlines!), wait a while longer, and then run the command again.

   - For a \*.onmicrosoft.com domain that previously wasn't listed, the command runs without error.

6. To verify that the domain is now configured to DKIM sign messages, run the command from Step 1.

   The domain should have the following property values:

   - **Enabled**: True
   - **Status**: `Valid`

For detailed syntax and parameter information, see the following articles:

- [Get-DkimSigningConfig](/powershell/module/exchange/get-dkimsigningconfig)
- [New-DkimSigningConfig](/powershell/module/exchange/new-dkimsigningconfig)
- [Set-DkimSigningConfig](/powershell/module/exchange/set-dkimsigningconfig)

## Rotate DKIM keys

For the same reasons that you should periodically change passwords, you should periodically change the DKIM key that's used for DKIM signing. Replacing the DKIM key for a domain is known as _DKIM key rotation_.

The relevant information about DKIM key rotation for a domain Microsoft 365 is shown in the output of the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell):

```powershell
Get-DkimSigningConfig -Identity <CustomDomain> | Format-List
```

- **KeyCreationTime**: The UTC date/time that the DKIM public-private key pair was created.
- **RotateOnDate**: The date/time of the previous or next DKIM key rotation.
- **SelectorBeforeRotateOnDate**: Remember, DKIM signing using a custom domain in Microsoft 365 requires two CNAME records in the domain. This property shows the CNAME record that DKIM uses before the **RotateOnDate** date-time (also known as a _selector_). The value is `selector1` or `selector2` and is different than the **SelectorAfterRotateOnDate** value.
- **SelectorAfterRotateOnDate**: Shows the CNAME record that DKIM uses after the **RotateOnDate** date-time. The value is `selector1` or `selector2` and is different than the **SelectorBeforeRotateOnDate** value.

When you do a DKIM key rotation on a domain as described in this section, the change isn't immediate. It takes four days (96 hours) for the new private key to start signing messages (the **RotateOnDate** date/time and the corresponding **SelectorAfterRotateOnDate** value). Until then, the existing private key is used (the corresponding **SelectorBeforeRotateOnDate** value).

> [!TIP]
> The main factor that determines when a custom domain starts DKIM signing outbound mail is the CNAME record detection in DNS.

To confirm the corresponding public key that's used to verify the DKIM signature (which infers the private key that was used to sign the message), check the **s=** value in the **DKIM-Signature** header field (the selector; for example, `s=selector1-contoso-com`).

> [!TIP]
> For custom domains, you can rotate DKIM keys only on domains that are enabled for DKIM signing (the **Status** value is Enabled).
>
> Currently, there's no automatic DKIM key rotation for the \*.onmicrosoft.com domain. You can manually rotate the DKIM keys as described in this section. If **Rotate DKIM keys** isn't available in the properties of the \*.onmicrosoft.com domain, use the procedures in the [Use the Defender portal to customize DKIM signing of outbound messages using the \*.onmicrosoft.com domain](#use-the-defender-portal-to-customize-dkim-signing-of-outbound-messages-using-the-onmicrosoftcom-domain) section earlier in this article.

### Use the Defender portal to rotate DKIM keys for a custom domain

1. In the Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Defender portal." lightbox="../../media/email-auth-dkim-domain-list.png":::

4. In the domain details flyout that opens, select **Rotate DKIM keys**.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-rotate-keys.png" alt-text="The domain details flyout with the Rotate DKIM keys button." lightbox="../../media/email-auth-dkim-domain-properties-rotate-keys.png":::

5. The settings in the details flyout change to the following values:
   - **Status**: Rotating keys for this domain and signing DKIM signatures.
   - **Rotate DKIM keys** is grayed out.

6. After four days (96 hours), the new DKIM key begins to sign outbound messages for the custom domain. Until then, the current DKIM key is used.

   You can tell when the new DKIM key is being used when the **Status** value changes from **Rotating keys for this domain and signing DKIM signatures** to **Signing DKIM signatures for this domain**.

  To confirm the corresponding public key that's used to verify the DKIM signature (which infers the private key that was used to sign the message), check the **s=** value in the **DKIM-Signature** header field (the selector; for example, `s=selector1-contoso-com`).

#### Use Exchange Online PowerShell to rotate the DKIM keys for a domain and change the bit depth

If you'd rather use PowerShell to rotate DKIM keys for a domain, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to run the following commands.

1. Run the following command to verify the availability and DKIM status of all domains in the organization:

   ```powershell
   Get-DkimSigningConfig | Format-List Name,Enabled,Status,Selector1CNAME,Selector1KeySize,Selector2CNAME,Selector2KeySize,KeyCreationTime,RotateOnDate,SelectorBeforeRotateOnDate,SelectorAfterRotateOnDate
   ```

2. For the domain that you want to rotate DKIM keys for, use the following syntax:

   ```powershell
   Rotate-DkimSigningConfig -Identity <CustomDomain> [-KeySize <1024 | 2048>]
   ```

   If you don't want to change the bit depth of the new DKIM keys, don't use the _KeySize_ parameter.

   This example rotates DKIM keys for the contoso.com domain and changes to a 2048-bit key.

   ```powershell
   Rotate-DkimSigningConfig -Identity contoso.com -KeySize 2048
   ```

   This example rotates DKIM keys for the contoso.com domain without changing the key bit depth.

   ```powershell
   Rotate-DkimSigningConfig -Identity contoso.com
   ```

3. Run the command from Step 1 again to confirm the following property values:

   - **KeyCreationTime**
   - **RotateOnDate**
   - **SelectorBeforeRotateOnDate**
   - **SelectorAfterRotateOnDate**:

   Destination email systems use the public key in the CNAME record that's identified by the **SelectorBeforeRotateOnDate** property to verify the DKIM signature in messages (which infers the private key that was used to DKIM sign the message).

   After the **RotateOnDate** date/time, DKIM uses the new private key to sign messages, and destination email systems use the corresponding public key in the CNAME record that's identified by the **SelectorAfterRotateOnDate** property to verify the DKIM signature in messages.

   To confirm the corresponding public key that's used to verify the DKIM signature (which infers the private key that was used to sign the message), check the **s=** value in the **DKIM-Signature** header field (the selector; for example, `s=selector1-contoso-com`).

For detailed syntax and parameter information, see the following articles:

- [Get-DkimSigningConfig](/powershell/module/exchange/get-dkimsigningconfig)
- [Rotate-DkimSigningConfig](/powershell/module/exchange/rotate-dkimsigningconfig)

## Disable DKIM signing of outbound messages using a custom domain

As described earlier in this article, enabling DKIM signing of outbound messages using a custom domain effectively switches DKIM signing from using the \*.onmicrosoft.com domain to using the custom domain.

When you disable DKIM signing using a custom domain, you aren't completely disabling DKIM signing for outbound mail. DKIM signing eventually switches back to using the \*.onmicrosoft domain.

### Use the Defender portal to disable DKIM signing of outbound messages using a custom domain

1. In the Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the domain to configure by clicking anywhere in the row other than the check box next to the name.

4. In the domain details flyout that opens, slide the **Sign messages for this domain with DKIM signatures** toggle to **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-rotate-keys.png" alt-text="The domain details flyout with the Rotate DKIM keys button." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim.png":::

#### Use Exchange Online PowerShell to disable DKIM signing of outbound messages using a custom domain

If you'd rather use PowerShell to disable DKIM signing of outbound messages using a custom domain, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to run the following commands.

1. Run the following command to verify the availability and DKIM status of all domains in the organization:

   ```powershell
   Get-DkimSigningConfig | Format-List Name,Enabled,Status
   ```

   Any custom domain that you can disable DKIM signing for has the following property values:

   - **Enabled**: True
   - **Status**: `Valid`

2. For the domain that you want to disable DKIM signing for, use the following syntax:

   ```powershell
   Set-DkimSigningConfig -Identity <CustomDomain> -Enabled $false
   ```

   This example disables DKIM signing using the custom domain contoso.com.

   ```powershell
   Set-DkimSigningConfig -Identity contoso.com -Enabled $false
   ```

## Verify DKIM signing of outbound mail from Microsoft 365

> [!TIP]
> Before you use the methods in this section to test DKIM signing of outbound mail, wait a few minutes after any DKIM configuration changes to allow the changes to propagate.

Use any of the following methods to verify DKIM signing of outbound email from Microsoft 365:

- **Send test messages and view the related header fields from the message header in the destination email system**:

  1. Send a message from an account within your Microsoft 365 DKIM-enabled domain to a recipient in another email system (for example, outlook.com or gmail.com).

     > [!TIP]
     > Don't send mail to AOL for DKIM testing. AOL might skip the DKIM check if the SPF check passes.

  2. In the destination mailbox, view the message header. For example:
     - [View internet message headers in Outlook](https://support.microsoft.com/office/cd039382-dc6e-4264-ac74-c048563d212c).
     - Use the Message Header Analyzer at <https://mha.azurewebsites.net>.

  3. Find the **DKIM-Signature** header field in the message header. The header field looks like the following example:

     ```text
     DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=contoso.com;
      s=selector1;
      h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
      bh=UErATeHehIIPIXPeUAfZWiKo0w2cSsOhb9XM9ulqTX0=;
     ```

     - **d=**: The domain that was used to DKIM sign the message.
     - **s=**: The selector (public key in the DNS record in the domain) that was used to decrypt and verify the DKIM signature of the message.

  4. Find the **Authentication-Results** header field in the message header. Although destination email systems might use slightly different formats to stamp inbound mail, the header field should include **DKIM=pass** or **DKIM=OK**. For example:
  
     ```text
     Authentication-Results: mx.google.com;
       dkim=pass header.i=@contoso.com header.s=selector1 header.b=NaHRSJOb;
       arc=pass (i=1 spf=pass spfdomain=contoso.com dkim=pass dkdomain=contoso.com dmarc=pass fromdomain=contoso.com);
       spf=pass (google.com: domain of michelle@contoso.com designates 0000:000:0000:0000::000 as permitted sender) smtp.mailfrom=michelle@contoso.com
     ```

     > [!TIP]
     > The DKIM signature is omitted under either of the following conditions:
     >
     > - The sender and recipient email addresses are in the same domain.
     > - The sender and recipient email addresses are in different domains that are controlled by the same organization.
     >
     > In both cases, the **DKIM-Signature** header field doesn't exist in the message header, and the **Authentication-Results** header field looks like the following example:
     >
     > ```text
     > authentication-results: dkim=none (message not signed)
     >  header.d=none;dmarc=none action=none header.from=contoso.com;
     > ```

- **Use the test in Microsoft 365 help**: This feature requires a Global Administrator account, and isn't available in Microsoft 365 Government Community Cloud (GCC), GCC High, DoD, or Office 365 operated by 21Vianet.

  <div class="nextstepaction">
  <p><a href="https://admin.microsoft.com/AdminPortal/?searchSolutions=DKIM#/homepage" data-linktype="external">Run Tests: DKIM</a></p>
  </div>

  :::image type="content" source="../../media/email-auth-dkim-m365-test.png" alt-text="The DKIM diagnostics test in Microsoft 365 help." lightbox="../../media/email-auth-dkim-m365-test.png":::

## DKIM signing of mail from your custom domain at other email services

Some email service providers or software-as-a-service providers let you enable DKIM signing for your mail that originates from the service. But, the methods depend entirely on the email service.

> [!TIP]
> As mentioned earlier in this article, we recommend using subdomains for email systems or services that you don't directly control.

For example, your email domain in Microsoft 365 is contoso.com, and you use the Adatum bulk mailing service for marketing email. If Adatum supports DKIM signing of messages from senders in your domain at their service, the messages might contain the following elements:

```text
Return-Path: <communication@adatum.com>
 From: <sender@marketing.contoso.com>
 DKIM-Signature: s=s1024; d=marketing.contoso.com
 Subject: This a message from the Adatum infrastructure, but with a DKIM signature authorized by marketing.contoso.com
```

In this example, the following steps are required:

1. Adatum gives Contoso a public key to use for DKIM signing of outbound Contoso mail from their service.
2. Contoso publishes the public DKIM key in DNS at the domain registrar for the marketing.contoso.com subdomain (a TXT record or a CNAME record).
3. When Adatum sends mail from senders in the marketing.contoso.com domain, the messages are DKIM signed using the private key that corresponds to the public key they gave to Contoso in the first step.
4. If the destination email system checks DKIM on inbound messages, the messages pass DKIM because they're DKIM signed.
5. If the destination email system checks DMARC on inbound messages, the domain in the DKIM signature (the **d=** value in the **DKIM-Signature** header field) matches the domain in the From address that's shown in email clients, so the messages can also pass DMARC:

   **From**: sender@marketing.contoso.com<br>
   **d=**: marketing.contoso.com

## Next steps

As described in [How SPF, DKIM, and DMARC work together to authenticate email message senders](email-authentication-about.md#how-spf-dkim-and-dmarc-work-together-to-authenticate-email-message-senders), DKIM alone isn't enough to prevent spoofing of your Microsoft 365 domain. You also need to configure SPF and DMARC for the best possible protection. For instructions, see:

- [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md)
- [Use DMARC to validate email](email-authentication-dmarc-configure.md)

For mail coming _into_ Microsoft 365, you might also need to configure trusted ARC sealers if you use services that modify messages in transit before delivery to your organization. For more information, see [Configure trusted ARC sealers](/microsoft-365/security/office-365-security/email-authentication-arc-configure).
