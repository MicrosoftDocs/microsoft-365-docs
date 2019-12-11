---
title: "Use DKIM for email in your custom domain in Office 365, 2048-bit, 1024-bit, steps, How it works, SPF, DMARC"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 10/8/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: 56fee1c7-dc37-470e-9b09-33fff6d94617
ms.collection:
- M365-security-compliance
description: "Summary: This article describes how you use DomainKeys Identified Mail (DKIM) with Office 365 to ensure that destination email systems trust messages sent from your custom domain."
---

# Use DKIM to validate outbound email sent from your custom domain in Office 365

 **Summary:** This article describes how you use DomainKeys Identified Mail (DKIM) with Office 365 to ensure that destination email systems trust messages sent outbound from your custom domain.

You should use DKIM in addition to SPF and DMARC to help prevent spoofers from sending messages that look like they are coming from your domain. DKIM lets you add a digital signature to outbound email messages in the message header. It may sound complicated, but it's really not. When you configure DKIM, you authorize your domain to associate, or sign, its name to an email message by using cryptographic authentication. Email systems that receive email from your domain can use this digital signature to help determine if incoming email that they receive is legitimate.

Basically, you use a private key to encrypt the header in your domain's outgoing email. You publish a public key to your domain's DNS records that receiving servers can then use to decode the signature. They use the public key to verify that the messages are really coming from you and not coming from someone *spoofing* your domain.

Office 365 automatically sets up DKIM for its initial 'onmicrosoft.com' domains. That means you don't need to do anything to set up DKIM for any initial domain names (for example, litware.onmicrosoft.com). For more information about domains, see [Domains FAQ](https://docs.microsoft.com/office365/admin/setup/domains-faq#why-do-i-have-an-onmicrosoftcom-domain).

You can choose to do nothing about DKIM for your custom domain too. If you don't set up DKIM for your custom domain, Office 365 creates a private and public key pair, enables DKIM signing, and then configures the Office 365 default policy for your custom domain. While this is sufficient coverage for most Office 365 customers, you should manually configure DKIM for your custom domain in the following circumstances:

- You have more than one custom domain in Office 365

- You're going to set up DMARC too (recommended)

- You want control over your private key

- You want to customize your CNAME records

- You want to set up DKIM keys for email originating out of a third-party domain, for example, if you use a third-party bulk mailer.

In this article:

- [How DKIM works better than SPF alone to prevent malicious spoofing in Office 365](use-dkim-to-validate-outbound-email.md#HowDKIMWorks)

- [Manually upgrade your 1024-bit keys to 2048-bit DKIM encryption keys](use-dkim-to-validate-outbound-email.md#1024to2048DKIM)

- [Steps you need to do to manually set up DKIM in Office 365](use-dkim-to-validate-outbound-email.md#SetUpDKIMO365)

- [To configure DKIM for more than one custom domain in Office 365](use-dkim-to-validate-outbound-email.md#DKIMMultiDomain)

- [Disabling the DKIM signing policy for a custom domain in Office 365](use-dkim-to-validate-outbound-email.md#DisableDKIMSigningPolicy)

- [Default behavior for DKIM and Office 365](use-dkim-to-validate-outbound-email.md#DefaultDKIMbehavior)

- [Set up DKIM so that a third-party service can send, or spoof, email on behalf of your custom domain](use-dkim-to-validate-outbound-email.md#SetUp3rdPartyspoof)

- [Next steps: After you set up DKIM for Office 365](use-dkim-to-validate-outbound-email.md#DKIMNextSteps)

> [!NOTE]
> Microsoft 365 supports the user of either 1024- or 2048-bit DKIM. If you're using 1024- and want to configure 2048-bit DKIM stay tuned for steps to rotate your DKIM signing configuration in this article. By the end of 2019, Microsoft will support 2048-bit keys by default, for all customers.

## How DKIM works better than SPF alone to prevent malicious spoofing in Office 365
<a name="HowDKIMWorks"> </a>

SPF adds information to a message envelope but DKIM actually encrypts a signature within the message header. When you forward a message, portions of that message's envelope can be stripped away by the forwarding server. Since the digital signature stays with the email message because it's part of the email header, DKIM works even when a message has been forwarded as shown in the following example.

![Diagram showing a forwarded message passing DKIM authentication where the SPF check fails](../media/28f93b4c-97e7-4309-acc4-fd0d2e0e3377.jpg)

In this example, if you had only published an SPF TXT record for your domain, the recipient's mail server could have marked your email as spam and generated a false positive result. The addition of DKIM in this scenario reduces false positive spam reporting. Because DKIM relies on public key cryptography to authenticate and not just IP addresses, DKIM is considered a much stronger form of authentication than SPF. We recommend using both SPF and DKIM, as well as DMARC in your deployment.

The nitty gritty: DKIM uses a private key to insert an encrypted signature into the message headers. The signing domain, or outbound domain, is inserted as the value of the **d=** field in the header. The verifying domain, or recipient's domain, then use the **d=** field to look up the public key from DNS and authenticate the message. If the message is verified, the DKIM check passes.

## Manually upgrade your 1024-bit keys to 2048-bit DKIM encryption keys
<a name="1024to2048DKIM"> </a>

Since both 1024 and 2048 bitness are supported for DKIM keys, these directions will tell you how to upgrade your 1024-bit key to 2048. The steps below are for two use-cases, please choose the one that best fits your configuration.

1. When you **already have DKIM configured**, you rotate bitness as follows:
    1. [Connect to Office 365 workloads via PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-all-office-365-services-in-a-single-windows-powershell-window). (The cmdlet comes from Exchange Online.)
    1. And then execute the following cmdlet:

&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`Rotate-DkimSigningConfig -KeySize 2048 -Identity {Guid of the existing Signing Config}`

1. Or for a **new implementation of DKIM**:
    1. [Connect to Office 365 workloads via PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/connect-to-all-office-365-services-in-a-single-windows-powershell-window). (This is an Exchange Online cmdlet.)
    1. Execute the following cmdlet:

&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
`New-DkimSigningConfig -DomainName {Domain for which config is to be created} -KeySize 2048 -Enabled $True`

Stay connected to Office 365 to *verify* the configuration.

2. Execute the cmdlet:

&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
`Get-DkimSigningConfig | fl`

> [!TIP]
>This new 2048-bit key takes effect on the RotateOnDate, and will send emails with the 1024-bit key in the interim. After four days, you can test again with the 2048-bit key (that is, once the rotation takes effect to the second selector).

If you want to rotate to the second selector, your options are a) let the Office 365 service rotate the selector and upgrade to 2048-bitness within the next 6 months, or b) after 4 days and confirming that 2048-bitness is in use, manually rotate the second selector key by using the appropriate cmdlet listed above.

## Steps you need to do to manually set up DKIM in Office 365
<a name="SetUpDKIMO365"> </a>

To configure DKIM, you will complete these steps:

- [Publish two CNAME records for your custom domain in DNS](use-dkim-to-validate-outbound-email.md#Publish2CNAME)

- [Enable DKIM signing for your custom domain in Office 365](use-dkim-to-validate-outbound-email.md#EnableDKIMinO365)

### Publish two CNAME records for your custom domain in DNS
<a name="Publish2CNAME"> </a>

For each domain for which you want to add a DKIM signature in DNS, you need to publish two CNAME records.

Run the following commands:

```powershell
    New-DkimSigningConfig -DomainName <domain> -Enabled $false
    Get-DkimSigningConfig -Identity <domain> | fl Selector1CNAME, Selector2CNAME
```

Create CNAMEs referenced in Get-DkimSigningConfig output

```powershell
    Set-DkimSigningConfig -Identity <domain> -Enabled $true
```

The CNAME records in your DNS will point to already created DKIM TXT records that exist in DNS on the Microsoft DNS servers for Office 365.

Office 365 performs automatic key rotation using the two records that you establish. If you have provisioned custom domains in addition to the initial domain in Office 365, you must publish two CNAME records for each additional domain. So, if you have two domains, you must publish two additional CNAME records, and so on.

Use the following format for the CNAME records.

> [!IMPORTANT]
> If you are one of our GCC High customers, we calculate _domainGuid_ differently! Instead of looking up the MX record for your _initialDomain_ to calculate _domainGuid_, instead we calculate it directly from the customized domain. For example, if your customized domain is "contoso.com" your domainGuid becomes "contoso-com", any periods are replaced with a dash. So, regardless of what MX record your initialDomain points to, you’ll always use the above method to calculate the domainGuid to use in your CNAME records.

```text
Host name:			selector1._domainkey
Points to address or value:	selector1-<domainGUID>._domainkey.<initialDomain>
TTL:				3600

Host name:			selector2._domainkey
Points to address or value:	selector2-<domainGUID>._domainkey.<initialDomain>
TTL:				3600
```

Where:

- For Office 365, the selectors will always be "selector1" or "selector2".

- _domainGUID_ is the same as the _domainGUID_ in the customized MX record for your custom domain that appears before mail.protection.outlook.com. For example, in the following MX record for the domain contoso.com, the _domainGUID_ is contoso-com:

    ```text
    contoso.com.  3600  IN  MX   5 contoso-com.mail.protection.outlook.com
    ```

- _initialDomain_ is the domain that you used when you signed up for Office 365. Initial domains always end in onmicrosoft.com. For information about determining your initial domain, see [Domains FAQ](https://docs.microsoft.com/office365/admin/setup/domains-faq#why-do-i-have-an-onmicrosoftcom-domain).

For example, if you have an initial domain of cohovineyardandwinery.onmicrosoft.com, and two custom domains cohovineyard.com and cohowinery.com, you would need to set up two CNAME records for each additional domain, for a total of four CNAME records.

```text
Host name:			selector1._domainkey
Points to address or value:	selector1-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:				3600

Host name:			selector2._domainkey
Points to address or value:	selector2-cohovineyard-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:				3600

Host name:			selector1._domainkey
Points to address or value:	selector1-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:				3600

Host name:			selector2._domainkey
Points to address or value:	selector2-cohowinery-com._domainkey.cohovineyardandwinery.onmicrosoft.com
TTL:				3600
```

### Enable DKIM signing for your custom domain in Office 365
<a name="EnableDKIMinO365"> </a>

Once you have published the CNAME records in DNS, you are ready to enable DKIM signing through Office 365. You can do this either through the Microsoft 365 admin center or by using PowerShell.

#### To enable DKIM signing for your custom domain through the admin center

1. [Sign in to Office 365](https://support.office.com/article/e9eb7d51-5430-4929-91ab-6157c5a050b4) with your work or school account.

2. Select the app launcher icon in the upper-left and choose **Admin**.

3. In the lower-left navigation, expand **Admin** and choose **Exchange**.

4. Go to **Protection** \> **dkim**.

5. Select the domain for which you want to enable DKIM and then, for **Sign messages for this domain with DKIM signatures**, choose **Enable**. Repeat this step for each custom domain.

#### To enable DKIM signing for your custom domain by using PowerShell

1. [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

2. Run the following command:

    ```powershell
    Set-DkimSigningConfig -Identity <domain> -Enabled $true
    ```

   Where _domain_ is the name of the custom domain that you want to enable DKIM signing for.

   For example, for the domain contoso.com:

    ```powershell
    Set-DkimSigningConfig -Identity contoso.com -Enabled $true
    ```

#### To Confirm DKIM signing is configured properly for Office 365

Wait a few minutes before you follow these steps to confirm that you have properly configured DKIM. This allows time for the DKIM information about the domain to be spread throughout the network.

- Send a message from an account within your Office 365 DKIM-enabled domain to another email account such as outlook.com or Hotmail.com.

- Do not use an aol.com account for testing purposes. AOL may skip the DKIM check if the SPF check passes. This will nullify your test.

- Open the message and look at the header. Instructions for viewing the header for the message will vary depending on your messaging client. For instructions on viewing message headers in Outlook, see [View e-mail message headers](https://support.office.com/article/CD039382-DC6E-4264-AC74-C048563D212C).

  The DKIM-signed message will contain the host name and domain you defined when you published the CNAME entries. The message will look something like this example:

  ```text
    From: Example User <example@contoso.com>
    DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        s=selector1; d=contoso.com; t=1429912795;
        h=From:To:Message-ID:Subject:MIME-Version:Content-Type;
        bh=<body hash>;
        b=<signed field>;
  ```

- Look for the Authentication-Results header. While each receiving service uses a slightly different format to stamp the incoming mail, the result should include something like **DKIM=pass** or **DKIM=OK**.

## To configure DKIM for more than one custom domain in Office 365
<a name="DKIMMultiDomain"> </a>

If at some point in the future you decide to add another custom domain and you want to enable DKIM for the new domain, you must complete the steps in this article for each domain. Specifically, complete all steps in [What you need to do to manually set up DKIM in Office 365](use-dkim-to-validate-outbound-email.md#SetUpDKIMO365).

## Disabling the DKIM signing policy for a custom domain in Office 365
<a name="DisableDKIMSigningPolicy"> </a>

Disabling the signing policy does not completely disable DKIM. After a period of time, Office 365 will automatically apply the default Office 365 policy for your domain. For more information, see [Default behavior for DKIM and Office 365](use-dkim-to-validate-outbound-email.md#DefaultDKIMbehavior).

### To disable the DKIM signing policy by using Windows PowerShell

1. [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

2. Run one of the following commands for each domain for which you want to disable DKIM signing.

    ```powershell
    $p = Get-DkimSigningConfig -Identity <domain>
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

## Default behavior for DKIM and Office 365
<a name="DefaultDKIMbehavior"> </a>

If you do not enable DKIM, Office 365 automatically creates a 1024-bit DKIM public key for your default domain and the associated private key which we store internally in our datacenter. By default, Office 365 uses a default signing configuration for domains that do not have a policy in place. This means that if you do not set up DKIM yourself, Office 365 will use its default policy and keys it creates in order to enable DKIM for your domain.

Also, if you disable DKIM signing after enabling it, after a period of time, Office 365 will automatically apply the Office 365 default policy for your domain.

In the following example, suppose that DKIM for fabrikam.com was enabled by Office 365, not by the administrator of the domain. This means that the required CNAMEs do not exist in DNS. DKIM signatures for email from this domain will look something like this:

```text
From: Second Example <second.example@fabrikam.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
    s=selector1-fabrikam-com; d=contoso.onmicrosoft.com; t=1429912795;
    h=From:To:Message-ID:Subject:MIME-Version:Content-Type;
    bh=<body hash>;
    b=<signed field>;
```

In this example, the host name and domain contain the values to which the CNAME would point if DKIM-signing for fabrikam.com had been enabled by the domain administrator. Eventually, every single message sent from Office 365 will be DKIM-signed. If you enable DKIM yourself, the domain will be the same as the domain in the From: address, in this case fabrikam.com. If you don't, it will not align and instead will use your organization's initial domain. For information about determining your initial domain, see [Domains FAQ](https://docs.microsoft.com/office365/admin/setup/domains-faq#why-do-i-have-an-onmicrosoftcom-domain).

## Set up DKIM so that a third-party service can send, or spoof, email on behalf of your custom domain
<a name="SetUp3rdPartyspoof"> </a>

Some bulk email service providers, or software-as-a-service providers, let you set up DKIM keys for email that originates from their service. This requires coordination between yourself and the third-party in order to set up the necessary DNS records. No two organizations do it exactly the same way. Instead, the process depends entirely on the organization.

An example message showing a properly configured DKIM for contoso.com and bulkemailprovider.com might look like this:

```text
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

    sender@**contoso.com**

    d=**contoso.com**

## Next steps: After you set up DKIM for Office 365
<a name="DKIMNextSteps"> </a>

Although DKIM is designed to help prevent spoofing, DKIM works better with SPF and DMARC. Once you have set up DKIM, if you have not already set up SPF you should do so. For a quick introduction to SPF and to get it configured quickly, see [Set up SPF in Office 365 to help prevent spoofing](set-up-spf-in-office-365-to-help-prevent-spoofing.md). For a more in-depth understanding of how Office 365 uses SPF, or for troubleshooting or non-standard deployments such as hybrid deployments, start with [How Office 365 uses Sender Policy Framework (SPF) to prevent spoofing](how-office-365-uses-spf-to-prevent-spoofing.md). Next, see [Use DMARC to validate email in Office 365](use-dmarc-to-validate-email.md). [Anti-spam message headers](anti-spam-message-headers.md) includes the syntax and header fields used by Office 365 for DKIM checks.
