---
title: How to use DKIM for email in your custom domain
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 6/15/2023
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
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Use DKIM to validate outbound email sent from your custom domain

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article lists the steps to use DomainKeys Identified Mail (DKIM) with Microsoft 365 to ensure that destination email systems trust messages sent outbound from your custom domain.

In this article:

- [How DKIM works better than SPF alone to prevent malicious spoofing](#how-dkim-works-better-than-spf-alone-to-prevent-malicious-spoofing)
- [Steps to Create, enable and disable DKIM from Microsoft 365 Defender portal](#steps-to-create-enable-and-disable-dkim-from-microsoft-365-defender-portal)
- [Steps to manually upgrade your 1024-bit keys to 2048-bit DKIM encryption keys](#steps-to-manually-upgrade-your-1024-bit-keys-to-2048-bit-dkim-encryption-keys)
- [Steps to manually set up DKIM](#steps-to-manually-set-up-dkim)
- [Steps to configure DKIM for more than one custom domain](#to-configure-dkim-for-more-than-one-custom-domain)
- [Disabling the DKIM signing policy for a custom domain](#disabling-the-dkim-signing-policy-for-a-custom-domain)
- [Default behavior for DKIM and Microsoft 365](#default-behavior-for-dkim-and-microsoft-365)
- [Set up DKIM so that a third-party service can send, or spoof, email on behalf of your custom domain](#set-up-dkim-so-that-a-third-party-service-can-send-or-spoof-email-on-behalf-of-your-custom-domain)
- [Next steps: After you set up DKIM for Microsoft 365](#next-steps-after-you-set-up-dkim-for-microsoft-365)

> [!NOTE]
> Microsoft 365 automatically sets up DKIM for its initial 'onmicrosoft.com' domains. That means you don't need to do anything to set up DKIM for any initial domain names (for example, litware.onmicrosoft.com). For more information about domains, see [Domains FAQ](../../admin/setup/domains-faq.yml#why-do-i-have-an--onmicrosoft-com--domain).

DKIM is one of the trio of Authentication methods (SPF, DKIM and DMARC) that help prevent attackers from sending messages that look like they come from your domain.

DKIM lets you add a digital signature to outbound email messages in the message header. When you configure DKIM, you authorize your domain to associate, or sign, its name to an email message using cryptographic authentication. Email systems that get email from your domain can use this digital signature to help verify whether incoming email is legitimate.

In basic, a private key encrypts the header in a domain's outgoing email. The public key is published in the domain's DNS records, and receiving servers can use that key to decode the signature. DKIM verification helps the receiving servers confirm the mail is really coming from your domain and not someone *spoofing* your domain.

> [!TIP]
> You can choose to do nothing about DKIM for your custom domain too. If you don't set up DKIM for your custom domain, Microsoft 365 creates a private and public key pair, enables DKIM signing, and then configures the Microsoft 365 default policy for your custom domain.

 Microsoft-365's built-in DKIM configuration is sufficient coverage for most customers. However, you should manually configure DKIM for your custom domain in the following circumstances:

- You have more than one custom domain in Microsoft 365
- You're going to set up DMARC too (**recommended**)
- You want control over your private key
- You want to customize your CNAME records
- You want to set up DKIM keys for email originating out of a third-party domain, for example, if you use a third-party bulk mailer.

## How DKIM works better than SPF alone to prevent malicious spoofing
<a name="HowDKIMWorks"> </a>

SPF adds information to a message envelope but DKIM *encrypts* a signature within the message header. When you forward a message, portions of that message's envelope can be stripped away by the forwarding server. Since the digital signature stays with the email message because it's part of the email header, DKIM works even when a message has been forwarded as shown in the following example.

![Diagram showing a forwarded message passing DKIM authentication where the SPF check fails.](../../media/28f93b4c-97e7-4309-acc4-fd0d2e0e3377.jpg)

In this example, if you had only published an SPF TXT record for your domain, the recipient's mail server could have marked your email as spam and generated a false positive result. **The addition of DKIM in this scenario reduces *false positive* spam reporting.** Because DKIM relies on public key cryptography to authenticate and not just IP addresses, DKIM is considered a much stronger form of authentication than SPF. We recommend using both SPF and DKIM, as well as DMARC in your deployment.

> [!TIP]
> DKIM uses a private key to insert an encrypted signature into the message headers. The signing domain, or outbound domain, is inserted as the value of the **d=** field in the header. The verifying domain, or recipient's domain, then uses the **d=** field to look up the public key from DNS, and authenticate the message. If the message is verified, the DKIM check passes.

## Steps to Create, enable and disable DKIM from Microsoft 365 Defender portal

All the accepted domains of your tenant will be shown in the Microsoft 365 Defender portal under the DKIM page. If you do not see it, add your accepted domain from [domains page](/microsoft-365/admin/setup/add-domain#add-a-domain).
Once your domain is added, follow the steps as shown below to configure DKIM.

Step 1: On the [DKIM page](https://security.microsoft.com/dkimv2), select the domain you wish to configure.

:::image type="content" source="../../media/126996261-2d331ec1-fc83-4a9d-a014-bd7e1854eb07.png" alt-text="The DKIM page in the Microsoft 365 Defender portal with a domain selected" lightbox="../../media/126996261-2d331ec1-fc83-4a9d-a014-bd7e1854eb07.png":::

Step 2: Slide the toggle to **Enable**. You will see a pop-up window stating that you need to add CNAME records.

:::image type="content" source="../../media/127001645-4ccf89e6-6310-4a91-85d6-aaedbfd501d3.png" alt-text="The Domain details flyout with the Create DKIM keys button" lightbox="../../media/127001645-4ccf89e6-6310-4a91-85d6-aaedbfd501d3.png":::

Step 3: Copy the CNAMES shown in the pop up window

:::image type="content" source="../../media/127001787-3cce2c29-e0e4-4712-af53-c51dcba33c46.png" alt-text="The Publish CNAMEs pop-up window that contains the two CNAME records to copy" lightbox="../../media/127001787-3cce2c29-e0e4-4712-af53-c51dcba33c46.png":::

Step 4: Publish the copied CNAME records to your DNS service provider.

On your DNS provider's website, add CNAME records for DKIM that you want to enable. Make sure that the fields are set to the following values for each:

```text
Record Type: CNAME (Alias)
> Host: Paste the values you copy from DKIM page.
Points to address: Copy the value from DKIM page.
TTL: 3600 (or your provider default)
```

Step 5: Return to DKIM page to enable DKIM.

:::image type="content" source="../../media/126995186-9b3fdefa-a3a9-4f5a-9304-1099a2ce7cef.png" alt-text="The toggle to enable DKIM" lightbox="../../media/126995186-9b3fdefa-a3a9-4f5a-9304-1099a2ce7cef.png":::

If you see CNAME record doesn't exist error, it might be due to:

1. Synchronization with DNS server, which might take few seconds to hours, if the problem persists repeat the steps again
2. Check for any copy paste errors, like additional space or tabs etc.

If you wish to disable DKIM, toggle back to disable mode

## Steps to manually upgrade your 1024-bit keys to 2048-bit DKIM encryption keys
<a name="1024to2048DKIM"> </a>

> [!NOTE]
> Microsoft 365 automatically sets up DKIM for *onmicrosoft.com* domains. No steps are needed to use DKIM for any initial domain names (like litware.*onmicrosoft.com*). For more information about domains, see [Domains FAQ](../../admin/setup/domains-faq.yml#why-do-i-have-an--onmicrosoft-com--domain).

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

## Steps to manually set up DKIM
<a name="SetUpDKIMO365"> </a>

To configure DKIM, you will complete these steps:

- [Publish two CNAME records for your custom domain in DNS](email-authentication-dkim-configure.md#Publish2CNAME)
- [Enable DKIM signing for your custom domain](email-authentication-dkim-configure.md#EnableDKIMinO365)

### Publish two CNAME records for your custom domain in DNS
<a name="Publish2CNAME"> </a>

For each domain for which you want to add a DKIM signature in DNS, you need to publish two CNAME records.

> [!NOTE]
> If you haven't read the full article, you may have missed this time-saving PowerShell connection information: [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

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

- _initialDomain_ is the domain that you used when you signed up for Microsoft 365. Initial domains always end in onmicrosoft.com. For information about determining your initial domain, see [Domains FAQ](../../admin/setup/domains-faq.yml#why-do-i-have-an--onmicrosoft-com--domain).

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
> It's important to create the second record, but only one of the selectors may be available at the time of creation. In essence, the second selector might point to an address that hasn't been created yet. We still recommended that you create the second CNAME record, because your key rotation will be seamless.

### Steps to enable DKIM signing for your custom domain
<a name="EnableDKIMinO365"> </a>

Once you have published the CNAME records in DNS, you are ready to enable DKIM signing through Microsoft 365. You can do this either through the Microsoft 365 admin center or by using PowerShell.

#### To enable DKIM signing for your custom domain in the Microsoft 365 Defender portal

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Email Authentication Settings** in the **Rules** section \>**DKIM**. To go directly to the DKIM page, use <https://security.microsoft.com/dkimv2>.

2. On the **DKIM** page, select the domain by clicking on the name.

3. In the details flyout that appears, change the **Sign messages for this domain with DKIM signatures** setting to **Enabled** (![Toggle on.](../../media/scc-toggle-on.png))

   When you're finished, click **Rotate DKIM keys**.

4. Repeat these step for each custom domain.

5. If you are configuring DKIM for the first time and see the error 'No DKIM keys saved for this domain' you will have to use Windows PowerShell to enable DKIM signing as explained in the next step.

#### To enable DKIM signing for your custom domain by using PowerShell

> [!IMPORTANT]
> :::image type="content" source="../../media/dkim.png" alt-text="The No DKIM keys saved for this domain error" lightbox="../../media/dkim.png":::
> If you are configuring DKIM for the first time and see the error 'No DKIM keys saved for this domain' complete the command in step 2 below (for example, `Set-DkimSigningConfig -Identity contoso.com -Enabled $true`) to see the key.

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

In this example, the host name and domain contain the values to which the CNAME would point if DKIM-signing for fabrikam.com had been enabled by the domain administrator. Eventually, every single message sent from Microsoft 365 will be DKIM-signed. If you enable DKIM yourself, the domain will be the same as the domain in the From: address, in this case fabrikam.com. If you don't, it will not align and instead will use your organization's initial domain. For information about determining your initial domain, see [Domains FAQ](../../admin/setup/domains-faq.yml#why-do-i-have-an--onmicrosoft-com--domain).

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

[Use trusted ARC Senders for legitimate mailflows](/microsoft-365/security/office-365-security/use-arc-exceptions-to-mark-trusted-arc-senders)
