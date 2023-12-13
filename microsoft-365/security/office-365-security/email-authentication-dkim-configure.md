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
1. The corresponding public keys are stored in DNS records for the signing domain (CNAME or TXT records).
1. Destination email systems use the **d=** value in the **DKIM-Signature** header field to:
   - Identify the signing domain.
   - Look up the public key in the DKIM DNS record for the domain.
   - Use the public key in the DKIM DNS record for the domain to decrypt and verify the message signature.

Important facts about DKIM:

- The domain that's used to DKIM sign the message isn't required to match the domain in the MAIL FROM or From addresses in the message. For more information about these addresses, see [Why internet email needs authentication](email-authentication-about.md#why-internet-email-needs-authentication).
- It's OK to double DKIM sign messages. In fact, many hosted email services do this. For example, Microsoft 365 automatically signs all outbound mail with your initial \*.onmicrosoft.com domain. After you add custom email domains to Microsoft 365, you can configure DKIM to sign outbound messages using your custom domains.

Before we get started, here's what you need to know about DKIM in Microsoft 365 based on your email domain:

- **You use only the Microsoft Online Email Routing Address (MOERA) domain for email (for example, contoso.onmicrosoft.com)**: You don't need to do anything. DKIM is already configured for you. Microsoft owns the onmicrosoft.com domain and all subdomains, so we're responsible for creating and maintaining the DNS records in all \*.onmicrosoft.com domains. For more information about \*.onmicrosoft.com domains, see [Why do I have an "onmicrosoft.com" domain?](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).

- **You use one or more custom domains for email (for example, contoso.com)**: By default, Microsoft 365 uses your initial \*.onmicrosoft.com domain to create the public-private key pair to use for DKIM signing outbound mail from Microsoft 365 from any of your custom domains. But, you still have more work to do for maximum email protection:
  - **DKIM signing using your \*.onmicrosoft.com domain vs. the custom domain in the From address**: Because we recommend also configuring [DMARC](email-authentication-dmarc-configure.md) for your domain, DMARC can validate that the domains in the MAIL FROM and From addresses match. For more information about these 
  - **Subdomains**:
    - If you use email services that aren't under your direct control (for example, to send bulk email or to add email signatures to outbound mail), we recommend using a subdomain (for example, marketing.contoso.com) for those services instead of your main email domain (for example, contoso.com). You don't want issues with mail sent from those email services to affect the reputation of mail sent by employees in your main email domain. For more information about adding subdomains, see [Can I add custom subdomains or multiple domains to Microsoft 365?](/microsoft-365/admin/setup/domains-faq?view=o365-worldwide#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365).
    - Each subdomain that you use to send email from Microsoft 365 requires its own SPF TXT record. For example, the SPF TX record for contoso.com doesn't cover marketing.contoso.com; marketing.contoso.com needs its own SPF TXT record.

      > [!TIP]
      > Email authentication protection for _undefined_ subdomains is covered by DMARC. Any subdomains (defined or not) inherit the DMARC settings of the parent domain (which can be overridden per subdomain).

  - **Registered but unused domains**: If you have registered domains that you aren't using for email or aren't using at all (also known as _parked domains_), don't publish DKIM records for those domains. The lack of a DKIM record (hence, the lack of a public key in DNS) prevents DKIM validation for forged domains.

- **DKIM alone is not enough**. For the best level of email protection for your custom domains, you also need to configure SPF and DMARC as part of your overall [email authentication](email-authentication-about.md) strategy. For more information, see the [Next Steps: SPF and DMARC](#next-steps-spf-and-dmarc) section at the end of this article.

The rest of this article describes the DKIM CNAME records that you need to create for custom domains in Microsoft 365.

> [!TIP]
> We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in this article for DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).
>
> If you're unfamiliar with DNS configuration, contact your domain registrar and ask for help.

## Syntax for DKIM CNAME records

DKIM is exhaustively described in [RFC 6376](https://datatracker.ietf.org/doc/html/rfc6376).

## Use the Microsoft Defender portal to create DKIM keys and enable DKIM for a custom domain

The procedures in this section apply to [custom domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) that you've added to the Microsoft 365 organization **and** that don't have DKIM CNAME records for Microsoft 365 configured in DNS. What you see in the Defender portal confirms these conditions.

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Microsoft Defender portal." lightbox="../../media/email-auth-dkim-list.png":::

4. In the domain details flyout that opens, verify the following settings:
   - The **Sign messages for this domain with DKIM signatures** toggle is set to **Disabled** :::image type="icon" source="../../media/scc-toggle-off.png" border="false":::.
   - The **Status** value is **Not signing DKIM signatures for the domain**.
   - **Create DKIM keys** isn't present. **Rotate DKIM keys** is visible, but is grayed out.
   - **Last checked date**: Note the date and time.

   :::image type="content" source="../../media/email-auth-dkim-domain-properties-create-dkim unavailable.png" alt-text="The domain details tab with DKIM signing disable and no DKIM signatures configured for the domain." lightbox="../../media/email-auth-dkim-domain-properties-create-dkim unavailable.png":::

5. Click on the **Sign messages for this domain with DKIM signatures** toggle.

6. A **Client error** dialog opens. The error contains the values that you need for the two CNAME record to create at the DNS hosting service for the domain.

   In this example, the custom domain that you're enabling DKIM for is contoso.com and the initial domain for the Microsoft 365 organization is contoso.onmicrosoft.com. The error message looks like this:

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
   **Points to address or value**: selector2-contoso-com._domainkey.contoso.onmicrosoft.com

   Copy the information from the error dialog, and then select **OK**.

   Close the domain details flyout by selecting **Close**.

7. Go to the DNS hosting service for the domain, and then create the two CNAME records using the copied information.

   We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in this step for the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

8. Return to the details flyout for the domain by repeating the first 3 steps.

   If we were able to detect the required CNAME records for the domain, the settings on the details flyout are:

   - The **Sign messages for this domain with DKIM signatures** toggle is set to **Enabled** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::.
   - The **Status** value is **Signing DKIM signatures for this domain**.
   - **Rotate DKIM keys** is available.
   - **Last checked date**: The date and time should be more recent than the original values in Step 4.

   As described in the error message in Step 6, it could take several minutes to several days for Microsoft to detect the required CNAME records for the domain.

   If the CNAME records aren't detected, check the properties of the domain and note the **Last checked date** value.

## Use the Microsoft Defender portal to create DKIM keys and enable DKIM for a domain

1. In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Threat policies** \> **Email authentication settings** page. Or, to go directly to the **Email authentication settings** page, use <https://security.microsoft.com/authentication>.

2. On the **Email authentication settings** page, select the **DKIM** tab.

3. On the **DKIM** tab, select the domain to configure by clicking anywhere in the row other than the check box next to the name.

   :::image type="content" source="../../media/email-auth-dkim-domain-list.png" alt-text="The DKIM tab of the Email authentication page in the Microsoft Defender portal." lightbox="../../media/email-auth-dkim-list.png":::

   > [!TIP]
   > All [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in the Microsoft 365 organization are available on the **DKIM** tab. If the domain isn't available, add the domain as an accepted domain as described in the article.

4. In the domain details flyout that opens, if the **Status** value is **No DKIM keys saved for this domain**, select **Create DKIM keys**.

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

7. In a new browser window or tab, go to the DNS hosting service for the domain, and then create the two DKIM CNAME records using the copied information.

   We provide instructions to create CNAME records for different Microsoft 365 services at many domain registrars. You can use these steps to begin creating the CNAME records, and then use the values in this step for the DKIM CNAME records. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).

8. Back in the domain DKIM details flyout, slide the **Sign messages for this domain with DKIM signatures** toggle to **Enabled** :::image type="icon" source="../../media/scc-toggle-on.png" border="false":::, and then select **OK** in the confirmation dialog that opens.

   :::image type="content" source="../../media/email-auth-dkim-created-disabled.png" alt-text="The domain DKIM properties with DKIM message signing enabled." lightbox="../../media/email-auth-dkim-created-disabled.png":::


   When you're finished in the domain DKIM details flyout, select **Close**.

### Use Exchange Online PowerShell to create the DKIM keys and enable DKIM for a domain

If you'd rather use PowerShell to create the DKIM keys and enable DKIM for a domain, connect to [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to run the following commands.

## Steps to manually upgrade your 1024-bit keys to 2048-bit DKIM encryption keys

> [!NOTE]
> Microsoft 365 automatically sets up DKIM for *onmicrosoft.com* domains. No steps are needed to use DKIM for any initial domain names (like litware.*onmicrosoft.com*). For more information about domains, see [Domains FAQ](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).

Since both 1024 and 2048 bitness are supported for DKIM keys, these directions will tell you how to upgrade your 1024-bit key to 2048 in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). The steps below are for two use-cases, please choose the one that best fits your configuration.

- When you **already have DKIM configured**, you rotate bitness by running the following command:

  ```powershell
  Rotate-DkimSigningConfig -KeySize 2048 -Identity <DkimSigningConfigIdParameter>
  ```

  **or**

- For a **new implementation of DKIM**, run the following command:

  ```powershell
  New-DkimSigningConfig -DomainName <Domain for which config is to be created> -KeySize 2048 -Enabled $true
  ```

Stay connected to Exchange Online PowerShell to *verify* the configuration by running the following command:

```powershell
Get-DkimSigningConfig -Identity <Domain for which the configuration was set> | Format-List
```

> [!TIP]
> This new 2048-bit key takes effect on the RotateOnDate, and will send emails with the 1024-bit key in the interim. After four days, you can test again with the 2048-bit key (that is, once the rotation takes effect to the second selector).

If you want to rotate to the second selector, after four days and confirming that 2048-bitness is in use, manually rotate the second selector key by using the appropriate cmdlet listed above.

For detailed syntax and parameter information, see the following articles: [Rotate-DkimSigningConfig](/powershell/module/exchange/rotate-dkimsigningconfig), [New-DkimSigningConfig](/powershell/module/exchange/new-dkimsigningconfig), and [Get-DkimSigningConfig](/powershell/module/exchange/get-dkimsigningconfig).

## Steps to manually set up DKIM using PowerShell
<a name="SetUpDKIMO365"> </a>

To configure DKIM, you will complete these steps:

- [Publish two CNAME records for your custom domain in DNS](email-authentication-dkim-configure.md#Publish2CNAME)
- [Enable DKIM signing for your custom domain](email-authentication-dkim-configure.md#EnableDKIMinO365)

### Publish two CNAME records for your custom domain in DNS
<a name="Publish2CNAME"> </a>

For each domain for which you want to add a DKIM signature in DNS, you need to publish two CNAME records.

> [!NOTE]
> If you haven't read the full article, you might have missed this time-saving PowerShell connection information: [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

Run the following commands in Exchange Online PowerShell to create the selector records:

```powershell
New-DkimSigningConfig -DomainName <domain> -Enabled $false

Get-DkimSigningConfig -Identity <domain> | Format-List Selector1CNAME, Selector2CNAME
```

If you have provisioned custom domains in addition to the initial domain in Microsoft 365, you must publish two CNAME records for each additional domain. So, if you have two domains, you must publish two additional CNAME records, and so on.

Use the following format for the CNAME records.

> [!IMPORTANT]
> If you are one of our GCC High customers, we calculate _customDomainIdentifier_ differently! Instead of looking up the MX record for your _initialDomain_ to calculate _customDomainIdentifier_, instead we calculate it directly from the customized domain. For example, if your customized domain is "contoso.com" your _customDomainIdentifier_ becomes "contoso-com", any periods are replaced with a dash. So, regardless of what MX record your _initialDomain_ points to, you'll always use the above method to calculate the _customDomainIdentifier_ to use in your CNAME records.

```console
Host name:            selector1._domainkey
Points to address or value:    selector1-<customDomainIdentifier>._domainkey.<initialDomain>
TTL:                3600

Host name:            selector2._domainkey
Points to address or value:    selector2-<customDomainIdentifier>._domainkey.<initialDomain>
TTL:                3600
```

Where:

- For Microsoft 365, the selectors will always be "selector1" or "selector2".
- _customDomainIdentifier_ is the same as the _customDomainIdentifier_ in the customized MX record for your custom domain that appears before mail.protection.outlook.com. For example, in the following MX record for the domain contoso.com, the _customDomainIdentifier_ is contoso-com:

  > contoso.com.  3600  IN  MX   5 contoso-com.mail.protection.outlook.com

- _initialDomain_ is the domain that you used when you signed up for Microsoft 365. Initial domains always end in onmicrosoft.com. For information about determining your initial domain, see [Domains FAQ](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).

For example, if you have an initial domain of cohovineyardandwinery.onmicrosoft.com, and two custom domains cohovineyard.com and cohowinery.com, you would need to set up two CNAME records for each additional domain, for a total of four CNAME records.

```console
Host name:            selector1._domainkey
Points to address or value:    selector1-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:                3600

Host name:            selector2._domainkey
Points to address or value:    selector2-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:                3600

Host name:            selector1._domainkey
Points to address or value:    selector1-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:                3600

Host name:            selector2._domainkey
Points to address or value:    selector2-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:                3600
```

> [!NOTE]
> It's important to create CNAME records for both selectors in the DNS, but only one (active) selector is published with the public key at the time of creation. This behavior is expected and doesn't affect DKIM signing for your custom domains. The second selector will be published with the public key after any future key rotation when it becomes active.

### Steps to enable DKIM signing for your custom domain using PowerShell
<a name="EnableDKIMinO365"> </a>

Once you have published the CNAME records in DNS, replace \<Domain\> with your domain name, and then run the following command in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) to enable DKIM signing through Microsoft 365:

```powershell
Set-DkimSigningConfig -Identity <Domain> -Enabled $true
```

For detailed syntax and parameter information, see  [Set-DkimSigningConfig](/powershell/module/exchange/set-dkimsigningconfig).

## Error: No DKIM keys saved for this domain
<a name="NoDKIMKeys"> </a>

If you're configuring DKIM for the first time and see the error 'No DKIM keys saved for this domain', you need to use Exchange Online PowerShell to enable DKIM signing.

:::image type="content" source="../../media/dkim.png" alt-text="The No DKIM keys saved for this domain error." lightbox="../../media/dkim.png":::

1. [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

2. Use the following syntax:

   ```powershell
   Set-DkimSigningConfig -Identity <Domain> -Enabled $true
   ```

   \<Domain\> is the name of the custom domain that you want to enable DKIM signing for.

   This example enables DKIM signing for the domain contoso.com:

   ```powershell
   Set-DkimSigningConfig -Identity contoso.com -Enabled $true
   ```

For detailed syntax and parameter information, see  [Set-DkimSigningConfig](/powershell/module/exchange/set-dkimsigningconfig).

#### To Confirm DKIM signing is configured properly for Microsoft 365

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

## To configure DKIM for more than one custom domain
<a name="DKIMMultiDomain"> </a>

If at some point in the future you decide to add another custom domain and you want to enable DKIM for the new domain, you must complete the steps in this article for each domain. Specifically, complete all steps in [What you need to do to manually set up DKIM](email-authentication-dkim-configure.md#SetUpDKIMO365).

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

## Identify domains that do not send email

Organizations should explicitly state if a domain does not send email by specifying `v=DKIM1; p=` in the DKIM record for those domains. This advises receiving email servers that there are no valid public keys for the domain, and any email claiming to be from that domain should be rejected. You should do this for each domain and subdomain using a wildcard DKIM.

For example, the DKIM record would look like this:

```console
*._domainkey.SubDomainThatShouldntSendMail.contoso.com. TXT "v=DKIM1; p="
```

## Next steps: After you set up DKIM for Microsoft 365
<a name="DKIMNextSteps"> </a>

**Although DKIM is designed to help prevent spoofing, DKIM works better with SPF and DMARC.**

Once you have set up DKIM, if you have not already set up SPF you should do so. For a quick introduction to SPF and to get it configured quickly, see [**Set up SPF in Microsoft 365 to help prevent spoofing**](email-authentication-spf-configure.md). For a more in-depth understanding of how Microsoft 365 uses SPF, or for troubleshooting or non-standard deployments such as hybrid deployments, start with [How Microsoft 365 uses Sender Policy Framework (SPF) to prevent spoofing](email-authentication-anti-spoofing.md).

Next, see [**Use DMARC to validate email**](email-authentication-dmarc-configure.md). [Anti-spam message headers](message-headers-eop-mdo.md) includes the syntax and header fields used by Microsoft 365 for DKIM checks.

**This test will validate** that the DKIM signing configuration has been configured correctly, and that the proper DNS entries have been published.

> [!NOTE]
> This feature requires a Microsoft 365 administrator account. This feature isn't available for Microsoft 365 Government, Microsoft 365 operated by 21Vianet, or Microsoft 365 Germany.

<div class="nextstepaction">
<p><a href="https://admin.microsoft.com/AdminPortal/?searchSolutions=DKIM#/homepage" data-linktype="external">Run Tests: DKIM</a></p>
</div>

## More information

Key rotation via PowerShell: [Rotate-DkimSigningConfig](/powershell/module/exchange/rotate-dkimsigningconfig)

[Use DMARC to validate email](/microsoft-365/security/office-365-security/email-authentication-dmarc-configure)

[Configure trusted ARC sealers](/microsoft-365/security/office-365-security/email-authentication-arc-configure)
