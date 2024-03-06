---
title: Set up SPF identify valid email sources for your Microsoft 365 domain
f1.keywords:
  - CSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.date: 1/29/2024
audience: ITPro
ms.topic: how-to

ms.localizationpriority: high
search.appverid:
  - MET150
ms.assetid: 71373291-83d2-466f-86ea-fc61493743a6
ms.collection:
  - m365-security
  - tier2
ms.custom:
  - seo-marvel-apr2020
description: Learn how to update a Domain Name Service (DNS) record to use Sender Policy Framework (SPF) with your custom domain in Office 365.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Set up SPF to identify valid email sources for your Microsoft 365 domain

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Sender Policy Framework (SPF) is a method of [email authentication](email-authentication-about.md) that helps validate mail sent from your Microsoft 365 organization to prevent spoofed senders that are used in business email compromise (BEC), ransomware, and other phishing attacks.

The primary purpose of SPF is to validate email sources for a domain. Specifically, SPF uses a TXT record in DNS to identify valid sources of mail for the domain. Receiving email systems use the SPF TXT record to verify that email from the sender address used during the SMTP transmission of the message (known as the MAIL FROM address, `5321.MailFrom` address, P1 sender, or envelope sender) is from a known, designated source of mail for that domain.

For example, if your email domain in Microsoft 365 is contoso.com, you create an SPF TXT record in DNS for the contoso.com domain to identify Microsoft 365 as an authorized source of mail from contoso.com. Destination email systems check the SPF TXT record in contoso.com to determine whether the message came from an authorized source for contoso.com email.

Before we get started, here's what you need to know about SPF in Microsoft 365 based on your email domain:

- **If you use only the Microsoft Online Email Routing Address (MOERA) domain for email (for example, contoso.onmicrosoft.com)**: You don't need to do anything. The SPF TXT record is already configured for you. Microsoft owns the onmicrosoft.com domain, so we're responsible for creating and maintaining the DNS records in that domain and subdomains. For more information about \*.onmicrosoft.com domains, see [Why do I have an "onmicrosoft.com" domain?](/microsoft-365/admin/setup/domains-faq#why-do-i-have-an--onmicrosoft-com--domain).

- **If you use one or more custom domains for email (for example, contoso.com)**: The Microsoft 365 enrollment process already required you to create or modify the SPF TXT record in DNS for your custom domain to identify Microsoft 365 as an authorized mail source. But, you still have more work to do for maximum email protection:
  - **Subdomain considerations**:
    - For email services that aren't under your direct control (for example, bulk email services), we recommend using a subdomain (for example, marketing.contoso.com) instead of your main email domain (for example, contoso.com). You don't want issues with mail sent from those email services to affect the reputation of mail sent by employees in your main email domain. For more information about adding subdomains, see [Can I add custom subdomains or multiple domains to Microsoft 365?](/microsoft-365/admin/setup/domains-faq#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365).
    - Each subdomain that you use to send email from Microsoft 365 requires its own SPF TXT record. For example, the SPF TXT record for contoso.com doesn't cover marketing.contoso.com; marketing.contoso.com needs its own SPF TXT record.

      > [!TIP]
      > Email authentication protection for _undefined_ subdomains is covered by DMARC. Any subdomains (defined or not) inherit the DMARC settings of the parent domain (which can be overridden per subdomain). For more information, see [Set up DMARC to validate the From address domain for senders in Microsoft 365](email-authentication-dmarc-configure.md).

  - **If you own registered but unused domains**: If you own registered domains that aren't used for email or anything at all (also known as _parked domains_), configure SPF TXT records to indicate that no email should ever come from those domains as described later in this article.

- **SPF alone is not enough**. For the best level of email protection for your custom domains, you also need to configure DKIM and DMARC as part of your overall [email authentication](email-authentication-about.md) strategy. For more information, see the [Next Steps](#next-steps) section at the end of this article.

  > [!IMPORTANT]
  > In complex organizations where it's difficult to identify all valid sources of mail for the domain, it's important that you quickly configure DKIM signing and DMARC (in 'take no action' mode) for the domain. A DMARC reporting service is very helpful for identifying email sources and SPF failures for the domain.

The rest of this article describes the SPF TXT records that you need to create for custom domains in Microsoft 365.

> [!TIP]
> There are no admin portals or PowerShell cmdlets in Microsoft 365 for you to manage SPF records in your domain. Instead, you create the SPF TXT record at your domain registrar or DNS hosting service (often the same company).
>
> We provide instructions to create the proof of domain ownership TXT record for Microsoft 365 at many domain registrars. You can use these instructions as a starting point to create the SPF TXT record value. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).
>
> If you're unfamiliar with DNS configuration, contact your domain registrar and ask for help.

## Syntax for SPF TXT records

SPF TXT records are exhaustively described in [RFC 7208](https://datatracker.ietf.org/doc/html/rfc7208).

The basic syntax of the SPF TX record for a custom domain in Microsoft 365 is:

```txt
v=spf1 <valid mail sources> <enforcement rule>
```

Or:

```text
v=spf1 [<ip4>|<ip6>:<PublicIPAddress1> <ip4>|<ip6>:<PublicIPAddress2>... <ip4>|<ip6>:<PublicIPAddressN>] [include:<DomainName1> include:<DomainName1>... include:<DomainNameN>] <-all | ~all>
```

For example:

```text
v=spf1 ip4:192.168.0.10 ip4:192.168.0.12 include:spf.protection.outlook.com -all
```

- `v=spf1` identifies the TXT record as an SPF TXT record.

- **Valid mail sources**: Specified valid sources of mail for the domain. Uses **Domains**, **IP addresses**, or both:
  - **Domains**: `include:` values specify other services or domains as valid sources of mail from the original domain. These values ultimately lead to an IP address using DNS lookups.

    Most Microsoft 365 organizations require `include:spf.protection.outlook.com` in the SPF TXT record for the domain. Other third-party email services often require an additional `include:` value to identify the service as a valid source of email from the original domain.

  - **IP addresses**: An IP address value includes both of the following elements:
    - The value `ipv4:` or `ipv6:` to identify the type of IP address.
    - The publicly resolvable IP address of the source email system. For example:
      - An individual IP address (for example, 192.168.0.10).
      - An IP address range using Classless Inter-Domain Routing (CIDR) notation (for example 192.168.0.1/26). Be sure that the range isn't too big or too small.

    In Microsoft 365, you typically use IP addresses in the SPF TXT record only if you have on-premises email servers that send mail from the Microsoft 365 domain (for example, [Exchange Server hybrid deployments](/exchange/exchange-hybrid)). Some third-party email services might also use an IP address range instead of an `include:` value in the SPF TXT record.

- **Enforcement rule**: Tells destination email systems what to do with messages from sources that aren't specified in the SPF TXT record for the domain. Valid values are:
  - `-all` (hard fail): Sources not specified in the SPF TXT record aren't authorized to send mail for the domain, so the messages should be rejected. What actually happens to the message depends on the destination email system, but the messages are typically discarded.
  
     For Microsoft 365 domains, we recommend `-all` (hard fail) because we also recommend DKIM and DMARC for the domain. The DMARC policy specifies what to do to messages that fail SPF or DKIM, and DMARC reports allow you to validate the results.

     > [!TIP]
     > As previously indicated, DMARC configured with a DMARC reporting service helps greatly in identifying email sources and SPF failures for the domain.

  - `~all` (soft fail): Sources not specified in the SPF TXT record _probably_ aren't authorized to send mail for the domain, so the messages should be accepted but marked. What actually happens to the message depends on the destination email system. For example, the message might be quarantined as spam, delivered to the Junk Email folder, or delivered to the Inbox with an identifier added to the Subject or message body.

     Because we also recommend DKIM and DMARC for Microsoft 365 domains, the differences between `-all` (hard fail) and `~all` (soft fail) are effectively eliminated (DMARC treats either result as an SPF failure). DMARC uses SPF to confirm the domains in the MAIL FROM and From addresses align _and_ the message came from a valid source for the From domain.

  > [!TIP]
  > `?all` (neutral) is also available to suggest no specific action on messages from unidentified sources. This value is used for testing, and we don't recommend this value in production environments.

Important points to remember:

- Each defined domain or subdomain in DNS requires an SPF TXT record, and only one SPF record is allowed per domain or subdomain. Email authentication protection for _undefined_ subdomains is best handled by DMARC.
- You can't modify the existing SPF TXT record for the \*.onmicrosoft.com domain.
- When the destination email system checks the valid email sources in the SPF record, SPF validation fails if the check requires too many DNS lookups. For more information, see the [Troubleshooting SPF TXT records](#troubleshooting-spf-txt-records) section later in this article.

## SPF TXT records for custom domains in Microsoft 365

> [!TIP]
> As previously mentioned in this article, you create the SPF TXT record for a domain or subdomain at the domain registrar for the domain. No SPF TXT record configuration is available in Microsoft 365.

- **Scenario**: You use contoso.com for email in Microsoft 365, and Microsoft 365 is the only source of email from contoso.com.

  **SPF TXT record for contoso.com in Microsoft 365 and Microsoft 365 Government Community Cloud (GCC)**:

  ```text
  v=spf1 include:spf.protection.outlook.com -all
  ```

  **SPF TXT record for contoso.com in Microsoft 365 Government Community Cloud High (GCC High) and Microsoft 365 Department of Defense (DoD)**:

  ```text
  v=spf1 include:spf.protection.office365.us -all
  ```

  **SPF TXT record for contoso.com in Microsoft 365 operated by 21Vianet**

  ```text
  v=spf1 include:spf.protection.partner.outlook.cn -all
  ```

- **Scenario**: You use contoso.com for email in Microsoft 365, and you already configured the SPF TXT record in contoso.com with all sources of email from the domain. You also own the domains contoso.net and contoso.org, but you don't use them for email. You want to specify that no one is authorized to send email from contoso.net or contoso.org.

  **SPF TXT record for contoso.net**:

  ```txt
  v=spf1 -all
  ```

  **SPF TXT record for contoso.org**:

  ```txt
  v=spf1 -all
  ```

- **Scenario**: You use contoso.com for email in Microsoft 365. You plan on sending mail from the following sources:
  - An on-premises email server with the external email address of 192.168.0.10. Because you have direct control over this email source, we consider it OK to use the server for senders in the contoso.com domain.
  - The Adatum bulk mailing service. Because you don't have direct control over this email source, we recommend using a subdomain, so you create marketing.contoso.com for that purpose. According to the Adatum service documentation, you need to add `include:servers.adatum.com` to the SPF TXT record for your domain.

  **SPF TXT record for contoso.com**:

  ```text
  v=spf1 ipv4:192.168.0.10 include:spf.protection.outlook.com -all
  ```

  **SPF TXT record for marketing.contoso.com**:

  ```text
  v=spf1 include:servers.adatum.com include:spf.protection.outlook.com -all
  ```

## Troubleshooting SPF TXT records

- **One SPF record per domain or subdomain**: Multiple SPF TXT records for the same domain or subdomain cause a DNS lookup loop that makes SPF fail, so use only one SPF record per domain or subdomain.

- **Less than 10 DNS lookups**: When destination email systems query the SPF TXT record for valid sources for the MAIL FROM address domain, the query scans through the IP addresses and `include:` statements in the record until the message source (ultimately, an IP address) matches one of the specified sources. If the number of DNS lookups (which can be different than the number of DNS _queries_) is greater than 10, the message fails SPF with a permanent error (also known as a `permerror`). The destination email system rejects the message in a non-delivery report (also known as an NDR or _bounce message_) with one of the following errors:
  - The message exceeded the hop count.
  - The message required too many lookups.

  In the SPF TXT record, individual IP addresses or IP address ranges don't cause DNS lookups. Each `include:` statement requires at least one DNS lookup, and more lookups might be required if the `include:` value points to nested resources. In other words, having less than 10 `include:` statements doesn't guarantee less than 10 DNS lookups.

  Also keep in mind: destination email systems evaluate the sources in the SPF TXT record from left to right. Evaluation stops when the message source is validated, and no more sources are checked. Therefore, an SPF TXT record might contain enough information to cause more than 10 DNS lookups, but the validation of some mail sources by some destinations doesn't go deep enough in the record to result in an error.

  In addition to preserving the reputation of your main email domain, not exceeding the number of DNS lookups is another reason to use subdomains for other email services that you don't control.

You can use free online tools to view your SPF TXT record and other DNS records for your domain. Some tools even calculate the number of DNS record lookups that your SPF TXT record requires.

## Next Steps

As described in [How SPF, DKIM, and DMARC work together to authenticate email message senders](email-authentication-about.md#how-spf-dkim-and-dmarc-work-together-to-authenticate-email-message-senders), SPF alone isn't enough to prevent spoofing of your Microsoft 365 domain. You also need to configure DKIM and DMARC for the best possible protection. For instructions, see:

- [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md)
- [Use DMARC to validate email](email-authentication-dmarc-configure.md)

For mail coming _into_ Microsoft 365, you might also need to configure trusted ARC sealers if you use services that modify messages in transit before delivery to your organization. For more information, see [Configure trusted ARC sealers](/microsoft-365/security/office-365-security/email-authentication-arc-configure).
