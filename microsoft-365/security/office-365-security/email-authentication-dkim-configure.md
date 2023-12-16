---
title: How to use DKIM for email in your custom domain
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 12/11/2023
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
description: Learn how to use DomainKeys Identified Mail (DKIM) with Microsoft 365 to ensure messages sent from your custom domain are trusted by the destination email systems.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Use DKIM to validate outbound email sent from your custom domain

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

DomainKeys Identified Mail (DKIM) is a method of [email authentication](email-authentication-about.md) that helps validate outbound email sent from your Microsoft 365 organization to help prevent spoofed senders that are used in business email compromise (BEC), ransomware, and other phishing attacks.

Specifically:

1. One or more private keys are generated for a domain and are used by the source email system to digitally sign important parts of outbound messages. These parts include:
   - The From, To, Subject, MIME-Version, Content-Type, Date, and other message header fields (depending on the source email system).
   - The message body.
1. The digital signature is stored in the **DKIM-Signature** header field in the message header and remains valid as long as intermediate email systems don't modify the signed parts of the message. The signing domain is identified by the the **d=** value in the **DKIM-Signature** header field.
1. The corresponding public keys are stored in DNS records for the signing domain (CNAME records in Microsoft 365).
1. Destination email systems use the **d=** value in the **DKIM-Signature** header field to:
   - Identify the signing domain.
   - Look up the public key in the DKIM DNS record for the domain.
   - Use the public key in the DKIM DNS record for the domain to decrypt and verify the message signature.

Important facts about DKIM:

- The domain that's used to DKIM sign the message isn't required to match the domain in the MAIL FROM or From addresses in the message. For more information about these addresses, see [Why internet email needs authentication](email-authentication-about.md#why-internet-email-needs-authentication).
- It's OK to double DKIM sign messages. In fact, many hosted email services do this. For example, Microsoft 365 automatically signs all outbound mail with your initial \*.onmicrosoft.com domain. After you add custom email domains to Microsoft 365, you can configure DKIM to also sign outbound messages using your custom domains.

Before we get started, here's what you need to know about DKIM in Microsoft 365 based on your email domain:

- **You use only the Microsoft Online Email Routing Address (MOERA) domain for email (for example, contoso.onmicrosoft.com)**: You don't need to do anything. Microsoft automatically creates a 2048-bit public-private key pair from your initial \*.onmicrosoft.com domain, and uses that key to DKIM sign outbound email from your domain. To verify this fact, see the [Verify DKIM signing of outbound mail from Microsoft 365](#verify-dkim-signing-of-outbound-mail-from-microsoft-365) section later in this article.

  Microsoft owns the onmicrosoft.com domain, so we're responsible for creating and maintaining the DNS records in that domain and its subdomains. For more information about \*.onmicrosoft.com domains, see [Why do I have an "onmicrosoft.com" domain?](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).


- **You use one or more custom domains for email (for example, contoso.com)**: By default, Microsoft 365 uses the default public-private key from your initial \*.onmicrosoft.com domain to DKIM sign outbound mail from Microsoft 365 from any of your custom domains. But, you still have more work to do for maximum email protection:
  - **DKIM signing using your \*.onmicrosoft.com domain vs. the custom domain in the From address**: We recommend configuring [DMARC](email-authentication-dmarc-configure.md), because DMARC verifies that the domains in the MAIL FROM and From addresses match. DKIM is more effective if the domain that was used to DKIM sign the message and the domain in the From address match. Therefore, you need to configure DKIM for any custom domains that you use to send email.
  - **Subdomains**:
    - If you use email services that aren't under your direct control (for example, to send bulk email or to add email signatures to outbound mail), we recommend using a subdomain (for example, marketing.contoso.com) for those services instead of your main email domain (for example, contoso.com). You don't want issues with mail sent from those email services to affect the reputation of mail sent by employees in your main email domain. For more information about adding subdomains, see [Can I add custom subdomains or multiple domains to Microsoft 365?](/microsoft-365/admin/setup/domains-faq?view=o365-worldwide#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365).
    - Each subdomain that you use to send email from Microsoft 365 requires its own DKIM CNAME record.
    - Unlike SPF and DMARC, you use the Microsoft Defender portal or Exchange Online PowerShell to enable and configure DKIM signing using custom domains, in addition. The procedures are described in this article.

      > [!TIP]
      > Email authentication protection for _undefined_ subdomains is covered by DMARC. Any subdomains (defined or not) inherit the DMARC settings of the parent domain (which can be overridden per subdomain).

  - **Registered but unused domains**: If you have registered domains that you aren't using for email or aren't using at all (also known as _parked domains_), don't publish DKIM records for those domains. The lack of a DKIM record (hence, the lack of a public key in DNS) prevents DKIM validation of forged domains.

- **DKIM alone is not enough**. For the best level of email protection for your custom domains, you also need to configure SPF and DMARC as part of your overall [email authentication](email-authentication-about.md) strategy. For more information, see the [Next Steps](#next-steps) section at the end of this article.

The rest of this article describes the DKIM CNAME records that you need to create for custom domains in Microsoft 365, and configuration procedures for DKIM using custom domains.

> [!TIP]
> Configuring DKIM signing using a custom domain is a mixture of procedures in Microsoft 365 interfaces, and procedures at the domain registrar of the custom domain.
>
> We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in this article for DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).
>
> If you're unfamiliar with DNS configuration, contact your domain registrar and ask for help.

## Syntax for DKIM CNAME records

> [!TIP]
> You use the Defender portal or Exchange Online PowerShell to view the required CNAME values for DKIM signing of outbound messages using a custom domain. The information presented here is for illustration only. To get the values that are required for your custom domains or subdomains, use the procedures later in this article.

DKIM is exhaustively described in [RFC 6376](https://datatracker.ietf.org/doc/html/rfc6376).

Microsoft 365 uses CNAME records when you configure a custom domain to DKIM outbound mail. The basic syntax of DKIM CNAME records is:

```text
Hostname: selector1._domainkey
Points to address or value: selector1-<CustomDomain>._domainkey.<InitialDomain>

Hostname: selector2._domainkey
Points to address or value: selector2-<CustomDomain>._domainkey.<InitialDomain>
```

- Each custom domain or subdomain needs two CNAME records for DKIM as described. Only one active selector is published with the public key when DKIM signing using the custom domain is enabled. The second selector is published with the private key after any future key rotation when it becomes active.

- **Hostname**: The values are the same for all Microsoft 365 organizations: `selector1._domainkey` and `selector2._domainkey`.

- **\<CustomDomain\>**: The custom domain or subdomain with periods replaced by dashes. For example, `contoso.com` becomes `contoso-com`, or `marketing.contoso.com` becomes `marketing-contoso-com`.

- **\<InitialDomain\>**: The \*.onmicrosoft.com that you created and used when you enrolled in Microsoft 365 (for example, contoso.onmicrosoft.com).

For example, your organization has the following domains in Microsoft 365:

- **Initial domain**: cohovineyardandwinery.onmicrosoft.com
- **Custom domains**: cohovineyard.com and cohowinery.com

You need to create two CNAME records in each custom domain, for a total of four CNAME records.

```text
Hostname: selector1._domainkey
Points to address or value: selector1-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com

Hostname: selector2._domainkey
Points to address or value: selector2-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com


Hostname: selector1._domainkey
Points to address or value: selector1-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com

Hostname: selector2._domainkey
Points to address or value: selector2-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com
```

## Enable DKIM signing of outbound messages using a custom domain

> [!TIP]
> As previously described in this article, outbound mail from custom domains in Microsoft 365 is automatically signed by DKIM using the initial \*.onmicrosoft.com domain for the organization. Enabling DKIM signing of outbound messages using a custom domain effectively switches DKIM signing from using the \*.onmicrosoft.com domain to using the custom domain.

You can use a custom domain or subdomain to DKIM sign outbound mail only after the domain has been successfully added to Microsoft 365. For instructions, see [Add a domain](/microsoft-365/admin/setup/add-domain#add-a-domain).

After you successfully added the domain or subdomain, how you configure DKIM signing using the custom domain depends on what you see in the properties of the domain on the **DKIM** tab at <https://security.microsoft.com/authentication?viewid=DKIM> or in the output of the **Get-DkimSigningConfig** command:

- **Scenario 1**:
  - The custom domain or subdomain appears on the **DKIM** tab at <https://security.microsoft.com/authentication?viewid=DKIM>. The properties of the domain in the details flyout contain the following values:

    :::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png" alt-text="The domain details tab with DKIM signing disable and no DKIM signatures configured for the domain." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png":::

    - The **Sign messages for this domain with DKIM signatures** toggle is set to **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.
    - The **Status** value is **Not signing DKIM signatures for the domain**.
    - **Create DKIM keys** isn't present. **Rotate DKIM keys** is visible, but is grayed out.

  OR  

  - In Exchange Online PowerShell, the output of the following command contains the custom domain that you want to use, and contains the following property values for the domain:

    ```powershell
    Get-DkimSigningConfig | Format-List Name,Enabled,Status,Selector1CNAME,Selector2CNAME,RotateOnDate
    ```

   - **Enabled**: False
   - **Status**: `CnameMissing`

  **Solution**: Use Option 1 to configure DKIM signing using the custom domain in the [Defender portal](#option-1-use-the-defender-portal-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain) or in [PowerShell](#option-1-use-exchange-online-powershell-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain).

- **Scenario 2**:
  - The custom domain or subdomain appears on the **DKIM** tab at <https://security.microsoft.com/authentication?viewid=DKIM>. The properties of the domain in the details flyout contain the following values:

  :::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim.png" alt-text="The domain details flyout with the Create DKIM keys button." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim.png":::

  - The **Sign messages for this domain with DKIM signatures** toggle isn't available.
  - The **Status** value is **No DKIM keys saved for this domain**.
  - **Create DKIM keys** is present.

  AND

  - In Exchange Online PowerShell, the output of the following command doesn't contain the custom domain that you want to use, even though the domain appears on the **DKIM** tab at <https://security.microsoft.com/authentication?viewid=DKIM>:

    ```powershell
    Get-DkimSigningConfig | Format-List Name,Enabled,Status,Selector1CNAME,Selector2CNAME
    ```

  **Solution**: Use Option 2 to configure DKIM signing using the custom domain in the [Defender portal](#option-2-use-the-defender-portal-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain) or in [PowerShell](#option-2-use-exchange-online-powershell-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain).

### Option 1: Use the Defender portal to enable DKIM signing of outbound messages using a custom domain

> [!TIP]
> If you don't see what's described in these procedures, use [Option 2: Use the Defender portal to enable DKIM signing of outbound messages using a custom domain](#option-2-use-the-defender-portal-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain) instead.

1. In the Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the custom domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Defender portal." lightbox="../../media/email-auth-dkim-domain-list.png":::

4. In the domain details flyout that opens, verify the following settings:
   - The **Sign messages for this domain with DKIM signatures** toggle is set to **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.
   - The **Status** value is **Not signing DKIM signatures for the domain**.
   - **Create DKIM keys** isn't present. **Rotate DKIM keys** is visible, but is grayed out.
   - **Last checked date**: Note the date and time.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png" alt-text="The domain details tab with DKIM signing disable and no DKIM signatures configured for the domain." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim-unavailable.png":::

5. Select the **Sign messages for this domain with DKIM signatures** toggle that's currently .

6. A **Client error** dialog opens. The error contains the values to use in the two CNAME records that you create at the domain registrar for the domain.

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

7. In another browser tab or window, go to the domain registrar for the domain, and then create the two CNAME records using the information from the previous step.

   We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in this step for the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

   It will take several minutes or longer for Microsoft 365 to detect the new CNAME records that you created.

8. After a while, return to the domain properties flout that you left open in Step 6, and select the **Sign messages for this domain with DKIM signatures** toggle.

9. After a few seconds, the following dialog opens:

   :::image type="content" source="../../media/email-auth-dkim-cname-detected.png" alt-text="The dialog that opens when you try to enable DKIM signing by the custom domain for the first time." lightbox="../../media/email-auth-dkim-cname-detected.png":::

   After you select **OK** to close the dialog, verify the following settings on the details flyout:

   - The **Sign messages for this domain with DKIM signatures** toggle is set to **Enabled** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - The **Status** value is **Signing DKIM signatures for this domain**.
   - **Rotate DKIM keys** is available.
   - **Last checked date**: The date and time should be more recent than the original value in Step 4.

#### Option 1: Use Exchange Online PowerShell to enable DKIM signing of outbound messages using a custom domain

If you'd rather use PowerShell to enable DKIM signing of outbound messages using a custom domain, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to run the following commands.

> [!TIP]
> If you don't see what's described in these procedures, use [Option 2: Use Exchange Online PowerShell to enable DKIM signing of outbound messages using a custom domain](#option-2-use-exchange-online-powershell-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain) instead.

1. Run the following command to verify the availability and DKIM status of all domains in the organization:

   ```powershell
   Get-DkimSigningConfig | Format-List Name,Enabled,Status,Selector1CNAME,Selector2CNAME
   ```

   - By default, if your organization has no custom domains, the command returns no output. But as described earlier, your \*.onmicrosoft.com domain is already signing outbound email from that \*.onmicrosoft.com domain.

     Before you can configure DKIM signing using the custom domain, you need to add the domain to Microsoft 365. For instructions, see [Add a domain](/microsoft-365/admin/setup/add-domain#add-a-domain).

   - Any custom domain that you can enable DKIM signing for has the following property values:
     - **Enabled**: False
     - **Status**: `CnameMissing`

   - Custom domains that are already configured to DKIM sign messages have the following property values:
     - **Enabled**: True
     - **Status**: `Valid`

2. For the domain that you want to use, copy the **Selector1CNAME** and **Selector2CNAME** values. The CNAME records that you need to create at the domain registrar for the domain look like this:

   **Hostname**: `selector1._domainkey`<br>
   **Points to address or value**: `<Selector1CNAME value>`

   **Hostname**: `selector2._domainkey`<br>
   **Points to address or value**: `<Selector2CNAME value>`

   For example:

   **Hostname**: `selector1._domainkey`<br>
   **Points to address or value**: `selector1-contoso-com._domainkey.contoso.onmicrosoft.com`

   **Hostname**: `selector2._domainkey`<br>
   **Points to address or value**: `selector2-contoso-com._domainkey.contoso.onmicrosoft.com`

3. At the domain registrar for the domain, create the two CNAME records using the information from the previous step.

   We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in the previous step for the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

   It will take several minutes or longer for Microsoft 365 to detect the new CNAME records that you created.

4. After a while, return to Exchange Online PowerShell, replace \<CustomDomain\> with the domain that you configured, and run the following command:

   ```powerShell
   Set-DkimConfig -Identity \<CustomDomain\> -Enabled $true
   ```

   If Microsoft 365 was able to detect the CNAME records for the domain at the domain registrar, the command runs without error, and the domain is now used to DKIM sign outbound messages from the domain.

   If the CNAME records aren't detected, you an error stating that fact, and a description of the CNAME record values to use. Check for typos in the values at the domain registrar (easy to do with the dashes, periods, and underlines!), wait a while longer, and then run the command again.

For detailed syntax and parameter information, see the following articles:

- [Get-DkimSigningConfig](/powershell/module/exchange/get-dkimsigningconfig)
- [Set-DkimSigningConfig](/powershell/module/exchange/set-dkimsigningconfig)

### Option 2: Use the Defender portal to enable DKIM signing of outbound messages using a custom domain

> [!TIP]
> If you don't see what's described in these procedures, use [Option 1: Use the Microsoft portal to enable DKIM signing of outbound messages using a custom domain](#option-1-use-the-defender-portal-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain) instead.

1. In the Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Defender portal." lightbox="../../media/email-auth-dkim-domain-list.png":::

4. In the domain details flyout that opens, select **Create DKIM keys**.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim.png" alt-text="The domain details flyout with the Create DKIM keys button." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim.png":::

5. When DKIM key creation is finished, the following dialog opens:

   :::image type="content" source="../../media/email-auth-dkim-keys-created-copy.png" alt-text="The Publish CNAMEs dialog that contains the two CNAME records to copy with the Copy button." lightbox="../../media/email-auth-dkim-keys-created-copy.png":::

   Select **Copy** to copy the displayed text values to use in the DKIM CNAME records for the domain. For example, selecting **Copy** copies the following text to the clipboard:

   ```text
   Host Name : selector1._domainkey
   Points to address or value: selector1-contoso-com._domainkey.contoso.onmicrosoft.com

   Host Name : selector2._domainkey
   Points to address or value: selector2-contoso-com._domainkey.contoso.onmicrosoft.com
   ```

6. After you select **Copy**, the dialog closes and you're back on the domain details flyout where the **Sign messages for this domain with DKIM signatures** toggle is **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.

   Leave this flyout open.

   :::image type="content" source="../../media/email-auth-dkim-created-disabled.png" alt-text="The domain DKIM properties flyout with DKIM message signing disabled." lightbox="../../media/email-auth-dkim-created-disabled.png":::

7. In a new browser window or tab, go to the domain registrar for the domain, and then create the two DKIM CNAME records using the copied information.

   We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in this step for the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

8. Back in the domain details flyout on the **DKIM** tab, slide the **Sign messages for this domain with DKIM signatures** toggle to **Enabled** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::, and then select **OK** in the confirmation dialog that opens.

   :::image type="content" source="../../media/email-auth-dkim-created-disabled.png" alt-text="The domain DKIM properties with DKIM message signing enabled." lightbox="../../media/email-auth-dkim-created-disabled.png":::

   When you're finished in the domain DKIM details flyout, select **Close**.

#### Option 2: Use Exchange Online PowerShell to enable DKIM signing of outbound messages using a custom domain

If you'd rather use PowerShell to enable DKIM signing of outbound messages using a custom domain, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to run the following commands.

> [!TIP]
> If you don't see what's described in these procedures, use [Option 1: Use Exchange Online PowerShell to enable DKIM signing of outbound messages using a custom domain](#option-1-use-exchange-online-powershell-to-enable-dkim-signing-of-outbound-messages-using-a-custom-domain) instead.

1. Run the following command to verify the availability and DKIM status of all domains in the organization:

   ```powershell
   Get-DkimSigningConfig | Format-List Name,Enabled,Status,Selector1CNAME,Selector2CNAME
   ```

2. Because the domain that you want to use isn't listed (even though it's listed on the **DKIM** tab at <https://security.microsoft.com/authentication?viewid=DKIM>), replace \<CustomDomain\> with the domain, and then run the following command:

   ```powershell
   New-DkimSigningConfig -DomainName <CustomDomain> -Enabled $false

3. Run the command from Step 1 again. The domain is listed now.

4. For the domain that specified in Step 2, copy the **Selector1CNAME** and **Selector2CNAME** values. The CNAME records that you need to create at the domain registrar for the domain look like this:

   **Hostname**: `selector1._domainkey`<br>
   **Points to address or value**: `<Selector1CNAME value>`

   **Hostname**: `selector2._domainkey`<br>
   **Points to address or value**: `<Selector2CNAME value>`

   For example:

   **Hostname**: `selector1._domainkey`<br>
   **Points to address or value**: `selector1-contoso-com._domainkey.contoso.onmicrosoft.com`

   **Hostname**: `selector2._domainkey`<br>
   **Points to address or value**: `selector2-contoso-com._domainkey.contoso.onmicrosoft.com`

5. At the domain registrar for the domain, create the two CNAME records using the information from the previous step.

   We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in the previous step for the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

   It will take several minutes or longer for Microsoft 365 to detect the new CNAME records that you created.

6. After a while, return to Exchange Online PowerShell, replace \<CustomDomain\> with the domain that you configured, and run the following command:

   ```powerShell
   Set-DkimConfig -Identity \<CustomDomain\> -Enabled $true
   ```

   If Microsoft 365 was able to detect the CNAME records for the domain at the domain registrar, the command runs without error, and the domain is now used to DKIM sign outbound messages from the domain.

   If the CNAME records aren't detected, you an error stating that fact, and a description of the CNAME record values to use. Check for typos in the values at the domain registrar (easy to do with the dashes, periods, and underlines!), wait a while longer, and then run the command again.

For detailed syntax and parameter information, see the following articles:

- [Get-DkimSigningConfig](/powershell/module/exchange/get-dkimsigningconfig)
- [New-DkimSigningConfig](/powershell/module/exchange/new-dkimsigningconfig)
- [Set-DkimSigningConfig](/powershell/module/exchange/set-dkimsigningconfig)

## Rotate DKIM keys for custom domains

For the same reasons that you should periodically change passwords, you should periodically create new DKIM keys to use for DKIM signing. Replacing/updating the DKIM keys for a domain is known as _DKIM key rotation_.

In the Defender portal, you can rotate the DKIM keys for a domain, but you can't change the bit depth.

In Exchange Online PowerShell, you can rotate the DKIM keys for a domain _and_ change the bit depth from 1024 bits to 2048 bits or vice-versa in the same command.

> [!TIP]
> You can rotate DKIM keys only on domains that are enabled for DKIM (the **Status** value is Enabled).
>
> You don't need to worry about rotating the DKIM keys for \*.onmicrosoft.com domains. We periodically rotate the DKIM keys for you. And remember, unless you configure DKIM signing using custom domains, all outbound messages are signed with the \*.onmicrosoft.com domain.

### Use the Defender portal to rotate DKIM keys for a custom domain

1. In the Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Defender portal." lightbox="../../media/email-auth-dkim-domain-list.png":::

4. In the domain details flyout that opens, select **Rotate DKIM keys**.

   :::image type="content" source="../../media/email-auth-dkim-rotate-keys.png" alt-text="The domain details flyout with the Create DKIM keys button." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim.png":::

5. The settings in the details flyout change to the following values:
   - **Status**: Rotating keys for this domain and signing DKIM signatures.
   - **Rotate DKIM keys** is grayed out.

   As long as the settings in the details flyout have these values, the keys haven't been rotated yet. The old DKIM keys are still being used to sign messages.

### Use Exchange Online PowerShell to rotate the DKIM keys for a domain and change the bit depth

1. Run the following command to verify the availability and DKIM status of all domains in the organization:

   ```powershell
   Get-DkimSigningConfig | Format-List Name,Enabled,Status,Selector1CNAME,Selector1KeySize,Selector2CNAME,Selector2KeySize,RotateOnDate
   ```

2. Use the following syntax:

   ```powershell
   Rotate-DkimSigningConfig -Identity <CustomDomain> [-KeySize <1024 | 2048>]
   ```

   If you don't want to change the bit depth of the new DKIM keys, don't use the _KeySize_ parameter.

   This example rotates DKIM keys for the contoso.com domain and changes to 2048-bit keys. 

   ```powershell
   Rotate-DkimSigningConfig -Identity contoso.com -KeySize 2048
   ```

   This example rotates DKIM keys for the contoso.com domain without changing the key bit depth. 

   ```powershell
   Rotate-DkimSigningConfig -Identity contoso.com -KeySize 2048
   ```

3. Run the command from Step 1 again to confirm the value of the **RotateOnDate** property.

   DKIM uses the original DKIM key to sign messages until the **RotateOnDate** date/time.

For detailed syntax and parameter information, see the following articles:

- [Get-DkimSigningConfig](/powershell/module/exchange/get-dkimsigningconfig)
- [Rotate-DkimSigningConfig](/powershell/module/exchange/rotate-dkimsigningconfig)

!<------ -------->
> [!TIP]
> This new 2048-bit key takes effect on the RotateOnDate, and will send emails with the 1024-bit key in the interim. After four days, you can test again with the 2048-bit key (that is, once the rotation takes effect to the second selector).

If you want to rotate to the second selector, after four days and confirming that 2048-bitness is in use, manually rotate the second selector key by using the appropriate cmdlet listed above.


#### Verify DKIM signing of outbound mail from Microsoft 365

Wait a few minutes before you follow these steps to confirm that you have properly configured DKIM. This allows time for the DKIM information about the domain to be spread throughout the network.

- Send a message from an account within your Microsoft 365 DKIM-enabled domain to another email account such as outlook.com or Hotmail.com.
- Do not use an aol.com account for testing purposes. AOL may skip the DKIM check if the SPF check passes. This will nullify your test.
- Open the message and look at the header. Instructions for viewing the header for the message will vary depending on your messaging client. For instructions on viewing message headers in Outlook, see [View internet message headers in Outlook](https://support.microsoft.com/office/cd039382-dc6e-4264-ac74-c048563d212c).

  The DKIM-signed message will contain the host name and domain you defined when you published the CNAME entries. The message will look something like this example:

  ```console
    From: Example User <example@contoso.com>
    DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        s=selector1; d=contoso.com; t=1429912795;
        h=From:To:Message-ID:Subject:MIME-Version:Content-Type;
        bh=<body hash>;
        b=<signed field>;
  ```

- Look for the Authentication-Results header. While each receiving service uses a slightly different format to stamp the incoming mail, the result should include something like **DKIM=pass** or **DKIM=OK**.

> [!IMPORTANT]
> The DKIM signature is **omitted** under any of the following conditions:
>
> - The sender and recipient email addresses are in the same domain.
> - The sender and recipient email addresses are in different domains that are controlled by the same organization.
>
> In both cases, the header will look similar to this:
>
> ```console
>   Authentication-Results: dkim=none (message not signed) header.d=none;
>     dmarc=none action=none header.from=<sender_domain>;
> ```

**This test will validate** that the DKIM signing configuration has been configured correctly, and that the proper DNS entries have been published.

> [!NOTE]
> This feature requires a Microsoft 365 administrator account. This feature isn't available for Microsoft 365 Government, Microsoft 365 operated by 21Vianet, or Microsoft 365 Germany.

<div class="nextstepaction">
<p><a href="https://admin.microsoft.com/AdminPortal/?searchSolutions=DKIM#/homepage" data-linktype="external">Run Tests: DKIM</a></p>
</div>


## Disabling the DKIM signing policy for a custom domain
<a name="DisableDKIMSigningPolicy"> </a>

Disabling the signing policy does not completely disable DKIM. After a period of time, Microsoft 365 will automatically apply the default policy for your domain, if the default policy is still in the enabled state. If you wish to completely disable DKIM, you need to disable DKIM on both the custom and default domains. For more information, see [Default behavior for DKIM and Microsoft 365](email-authentication-dkim-configure.md#DefaultDKIMbehavior).

### To disable the DKIM signing policy by using Windows PowerShell

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Run one of the following commands for each domain for which you want to disable DKIM signing.

   ```powershell
   $p = Get-DkimSigningConfig -Identity <Domain>
   $p[0] | Set-DkimSigningConfig -Enabled $false
   ```

   For example:

   ```powershell
   $p = Get-DkimSigningConfig -Identity contoso.com
   $p[0] | Set-DkimSigningConfig -Enabled $false
   ```

   Or

   ```powershell
   Set-DkimSigningConfig -Identity $p[<number>].Identity -Enabled $false
   ```

   Where _number_ is the index of the policy. For example:

   ```powershell
   Set-DkimSigningConfig -Identity $p[0].Identity -Enabled $false
   ```

## Default behavior for DKIM and Microsoft 365
<a name="DefaultDKIMbehavior"> </a>

If you do not enable DKIM, Microsoft 365 automatically creates a 2048-bit DKIM public key for your Microsoft Online Email Routing Address (MOERA)/initial domain and the associated private key which we store internally in our datacenter. By default, Microsoft 365 uses a default signing configuration for domains that do not have a policy in place. This means that if you do not set up DKIM yourself, Microsoft 365 will use its default policy and keys it creates to enable DKIM for your domain.

Also, if you disable DKIM signing on your custom domain after enabling it, after a period of time, Microsoft 365 will automatically apply the MOERA/initial domain policy for your custom domain.

In the following example, suppose that DKIM for fabrikam.com was enabled by Microsoft 365, not by the administrator of the domain. This means that the required CNAMEs do not exist in DNS. DKIM signatures for email from this domain will look something like this:

```console
From: Second Example <second.example@fabrikam.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
    s=selector1-fabrikam-com; d=contoso.onmicrosoft.com; t=1429912795;
    h=From:To:Message-ID:Subject:MIME-Version:Content-Type;
    bh=<body hash>;
    b=<signed field>;
```

In this example, the host name and domain contain the values to which the CNAME would point if DKIM-signing for fabrikam.com had been enabled by the domain administrator. Eventually, every single message sent from Microsoft 365 will be DKIM-signed. If you enable DKIM yourself, the domain will be the same as the domain in the From: address, in this case fabrikam.com. If you don't, it will not align and instead will use your organization's initial domain. For information about determining your initial domain, see [Domains FAQ](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).

## Set up DKIM so that a third-party service can send, or spoof, email on behalf of your custom domain
<a name="SetUp3rdPartyspoof"> </a>

Some bulk email service providers, or software-as-a-service providers, let you set up DKIM keys for email that originates from their service. This requires coordination between yourself and the third-party in order to set up the necessary DNS records. Some third-party servers can have their own CNAME records with different selectors. No two organizations do it exactly the same way. Instead, the process depends entirely on the organization.

An example message showing a properly configured DKIM for contoso.com and bulkemailprovider.com might look like this:

```console
Return-Path: <communication@bulkemailprovider.com>
 From: <sender@contoso.com>
 DKIM-Signature: s=s1024; d=contoso.com
 Subject: Here is a message from Bulk Email Provider's infrastructure, but with a DKIM signature authorized by contoso.com
```

In this example, in order to achieve this result:

1. Bulk Email Provider gave Contoso a public DKIM key.

2. Contoso published the DKIM key to its DNS record.

3. When sending email, Bulk Email Provider signs the key with the corresponding private key. By doing so, Bulk Email Provider attached the DKIM signature to the message header.

4. Receiving email systems perform a DKIM check by authenticating the DKIM-Signature d=\<domain\> value against the domain in the From: (5322.From) address of the message. In this example, the values match:

   > sender@**contoso.com**

   > d=**contoso.com**

## Next steps

As described in [How SPF, DKIM, and DMARC work together to authenticate email message senders](email-authentication-about.md#how-spf-dkim-and-dmarc-work-together-to-authenticate-email-message-senders), DKIM alone is not enough to prevent spoofing of your Microsoft 365 domain. You also need to configure SPF and DMARC for the best protection. For instructions, see:

- [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md)
- [Use DMARC to validate email](email-authentication-dmarc-configure.md)
- [Configure trusted ARC sealers](/microsoft-365/security/office-365-security/email-authentication-arc-configure)
