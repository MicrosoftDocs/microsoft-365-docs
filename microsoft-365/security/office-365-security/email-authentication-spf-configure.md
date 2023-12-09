---
title: Set up SPF to help prevent spoofing
f1.keywords:
  - CSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 12/4/2023
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

# Set up SPF to help prevent spoofing

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

The Sender Policy Framework (SPF) is a method of [email authentication](email-authentication-about.md) that helps validate outbound email sent from your Microsoft 365 organization to help prevent spoofed senders that are used in business email compromise (BEC), ransomware, and other phishing attacks.

SPF uses a TXT record in DNS to identify valid sources for the domain of the sender's email address that's used during the SMTP transmission of mail between email servers (known as the `5321.MailFrom` address, **MAIL FROM** address, P1 sender, or envelope sender).

For example, if your email domain in Microsoft 365 is contoso.com, you create an SPF TXT record in DNS for the contoso.com domain to identify Microsoft 365 as an authorized source of mail from contoso.com. Destination email systems check the SPF TXT record in contoso.com to determine whether the message came from an authorized source for contoso.com email.

Before we get started, here's what you need to know about SPF in Microsoft 365 based on your email domain:

- **You use only the Microsoft Online Email Routing Address (MOERA) domain for email (for example, contoso.onmicrosoft.com)**: You don't need to do anything. The SPF TXT record is already configured for you. Microsoft owns the onmicrosoft.com domain and all subdomains, so we're responsible for creating and maintaining the SPF records in all \*.onmicrosoft.com domains.

- **You use one or more custom domains for email (for example, contoso.com)**: As part of the Microsoft 365 enrollment process, you were already required to create or modify the SPF TXT record in DNS for your custom domain to identify Microsoft 365 as an authorized source for email from your domain. But, you still have more work to do for maximum email protection:
    - **Subdomains**:
      - If you use email services that aren't under your direct control (for example, to send bulk email or to add email signatures to outbound mail), you should use a subdomain (for example, marketing.contoso.com) for those services instead of your main email domain (for example, contoso.com). You don't want any issues with mail coming the email services to affect the reputation of mail coming from employees in your main email domain. For more information about adding subdomains, see [Can I add custom subdomains or multiple domains to Microsoft 365?](/microsoft-365/admin/setup/domains-faq?view=o365-worldwide#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365).
      - Each subdomain that you use to send email from Microsoft 365 requires its own SPF TXT record. For example, the SPF TX record for contoso.com doesn't cover marketing.contoso.com; marketing.contoso.com needs its own SPF TXT record.

        > [!TIP]
        > Email authentication protection for _undefined_ subdomains is covered by DMARC. Any subdomains (defined or not) inherit the DMARC settings of the parent domain (which can be overridden per subdomain).

    - **Registered but unused domains**:
      - If you have registered domains that you aren't using for email or aren't using at all (also known as _parked domains_), configure SPF TXT records in those domains to specify that no email should ever come from those domains.

- **SPF alone is not enough**. For the best level of email protection for your custom domains, you also need to configure DKIM and DMARC as part of your overall [email authentication](email-authentication-about.md) strategy. For more information, see the [Next Steps: DKIM and DMARC](#next-steps-dkim-and-dmarc) section at the end of this article.

The rest of this article describes the SPF TXT records that you need to create for custom domains in Microsoft 365.

> [!TIP]
> There are no admin portals or PowerShell cmdlets in Microsoft 365 for you to manage SPF records in your domain. Instead, you create the SPF TXT record at your domain registrar or DNS hosting service (often the same company).
>
> We provide instructions to create the proof of domain ownership TXT record for Microsoft 365 at many domain registrars. You can use these steps to begin creating the TXT record, and then use the information in this article for the SPF TXT record value. For more information, see [Add DNS records to connect your domain](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).
>
> If you're unfamiliar with DNS configuration, contact your domain registrar and ask for help.

## Syntax for SPF TXT records

SPF TXT record syntax in Microsoft 365 is described at [External DNS records required for SPF](/microsoft-365/enterprise/external-domain-name-system-records#external-dns-records-required-for-spf) and exhaustively described in [RFC 7208](https://datatracker.ietf.org/doc/html/rfc7208).

The basic syntax of the SPF record is:

```text
v=spf1 [<ip4>|<ip6>:<PublicIPAddress1> <ip4>|<ip6>:<PublicIPAddress2>... <ip4>|<ip6>:<PublicIPAddressN>] [include:<DomainName1> include:<DomainName1>... include:<DomainNameN>] <enforcement rule>
```

For example:

```text
v=spf1 ip4:192.168.0.10 ip4:192.168.0.12 include:spf.protection.outlook.com -all
```

- `v=spf1` identifies the TXT record as an SPF TXT record.

- Valid mail sources for the domain using **Domains**, **IP addresses**, or both:
  - **Domains**: `include:`values specify other services as valid sources of email from the domain.

    Most Microsoft 365 organizations require `include:spf.protection.outlook.com` in the SPF TXT record for the domain. Other third-party email services require another `include:` value in the SPF TXT record so the service is also valid source of email from the Microsoft 365 organization.

  - **IP addresses**: An IP address value includes both of the following elements:
    - The value `ipv4:` or `ipv6:` to identify the type of IP address.
    - The publicly resolvable IP address of the source email system. For example:
      - An individual IP address (for example, 192.168.0.10).
      - An IP address range using Classless Inter-Domain Routing (CIDR) notation (for example 192.168.0.1/26). Be sure that the range isn't too big or too small.

    In Microsoft 365, you typically use IP addresses in the SPF TXT record only if you have on-premises email servers that send mail from the domain that's used in Microsoft 365 (for example, [Exchange Server hybrid deployments](/exchange/exchange-hybrid)). Some third-party email services might also suggest an IP address range instead of an `include:` value in the SPF TXT record.

- The enforcement rule is one of the following values:
  - `-all` (hard fail): Tells the destination email system domain that messages from sources not specified in the SPF TXT record aren't authorized to send mail from the domain, so the messages should be rejected. What actually happens to the message depends on the destination email system, but the messages are likely discarded.
  
     In Microsoft 365, we recommend `-all` (hard fail) because we also recommend DKIM and DMARC for the domain. The DMARC policy (`p=quarantine` or `p=reject`) specifies what to do to messages that fail SPF or DKIM.

     If SPF was the only email authentication method for the domain (no DKIM or DMARC), you would need to be quite confident that all possible sources of email from the domain are identified in the SPF record. Otherwise, the destination email system might discard valid messages from senders in the domain that come from unidentified sources (bulk mailing services, reporting servers, etc.).

  - `~all` (soft fail): Tells the destination email system that messages from sources not specified in the SPF TXT record _probably_ aren't authorized to send mail from the domain, so the messages should be accepted and marked. What actually happens to the message depends on the destination email system. For example, the message might be marked as spam and quarantined or delivered to the Junk Email folder, or delivered to the Inbox with an identifier added to the Subject or message body.

     Because we also recommend DKIM and DMARC for domains in Microsoft 365, the differences between `-all` (hard fail) and `~all` (soft fail) are largely eliminated (DMARC treats them both as SPF failures). After an SPF failure, DMARC also checks DKIM to see if the domains in the `5321.MailFrom` and From addresses match, and the the DMARC policy (`p=quarantine` or `p=reject`) specifies what to do to messages that fail DMARC.

  - `?all` (neutral): Tells the destination email system domain to do nothing to messages from sources that aren't specified in the SPF TXT record. This value is used for testing, and we don't recommend this value in production environments.

Important points to remember:

- Each defined domain or subdomain in DNS requires an SPF TXT record, and only one SPF record is allowed per domain or subdomain. Email authentication protection for _undefined_ subdomains is covered by DMARC.
- You can't create or modify the SPF text record for the \*.onmicrosoft.com domain.
- When the destination email system checks the valid email sources in the SPF record, SPF validation fails if the check requires more than 10 additional DNS lookups (not necessarily 10 DNS queries). For more information, see xxx.

## SPF TXT records for domain in Microsoft 365

> [!TIP]
> Remember, we also recommend configuring SPF and DMARC in addition to SPF. If, for some reason, you were only able to configure SPF without DKIM or DMARC, the recommended SPF TXT records might be different.

- **Scenario**: You use contoso.com for email in Microsoft 365, and Microsoft 365 is the only source of email from contoso.com.

  **SPF TXT record for contoso.com in Microsoft 365 and Microsoft 365 Government Community Cloud (GCC)**:

  ```text
  v=spf1 include:spf.protection.outlook.com -all
  ```

  **SPF TXT record for contoso.com in Microsoft 365 Government Community Cloud High (GCC High) and Microsoft 365 Department of Defense (DoD)**:

  ```text
  v=spf1 include:spf.protection.office365.us -all
  ```

- **Scenario**: You use contoso.com for email in Microsoft 365, and you've already configured the SPF TXT record in contoso.com with all sources of email from the domain. You also own the domains contoso.net and contoso.org, but you don't use them for email, so you want to specify that no one is authorized to send email from contoso.net or contoso.org.

  **SPF TXT record for contoso.net**:

  ```txt
  v=spf1 -all
  ```

  **SPF TXT record for contoso.org**:

  ```txt
  v=spf1 -all
  ```

- **Scenario**: You use contoso.com for email in Microsoft 365. Mail from contoso.com senders also comes from the following sources:
  - The Adatum bulk mailing service: According to the Adatum service documentation, you need to add `include:servers.adatum.com` to the SPF TXT record for your domain.
  - An on-premises email server with the external email address of 192.168.0.10.

  **SPF TXT record for contoso.com**:

  ```text
  v=spf1 ipv4:192.168.0.10 include:spf.protection.outlook.com include:servers.adatum.com -all
  ```

- **Scenario**: You use contoso.com for email in Microsoft 365. You plan on sending mail from the following sources:
  - An on-premises email server with the external email address of 192.168.0.10. Because you have direct control over this email source, we consider it OK to use the server for senders in the contoso.com domain.
  - The Adatum bulk mailing service. Because you don't have direct control over this email source, we recommend creating a subdomain to use, so you create marketing.contoso.com for that purpose. According to the Adatum service documentation, you need to add `include:servers.adatum.com` to the SPF TXT record for your domain.

  **SPF TXT record for contoso.com**:

  ```text
  v=spf1 ipv4:192.168.0.10 include:spf.protection.outlook.com -all
  ```

  **SPF TXT record for marketing.contoso.com**:

## Troubleshooting

Having trouble with your SPF TXT record? See [Troubleshooting: Best practices for SPF in Microsoft 365](email-authentication-anti-spoofing.md#troubleshooting-best-practices-for-spf-in-microsoft-365).

## More information about SPF

For advanced examples, a more detailed discussion about supported SPF syntax, spoofing, troubleshooting, and how Microsoft 365 supports SPF, see [How SPF works to prevent spoofing and phishing in Microsoft 365](email-authentication-anti-spoofing.md#how-spf-works-to-prevent-spoofing-and-phishing-in-microsoft-365).

## Next Steps: DKIM and DMARC

 SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF can't protect against. To defend against these, once you've set up SPF, you should configure DKIM and DMARC for Office 365.

[**DKIM**](email-authentication-dkim-configure.md) email authentication's goal is to prove the contents of the mail haven't been tampered with.

[**DMARC**](email-authentication-dmarc-configure.md) email authentication's goal is to make sure that SPF and DKIM information matches the From address.

 For advanced examples and a more detailed discussion about supported SPF syntax, see [How SPF works to prevent spoofing and phishing in Office 365](email-authentication-anti-spoofing.md#how-spf-works-to-prevent-spoofing-and-phishing-in-microsoft-365).

[Configure trusted ARC sealers](/microsoft-365/security/office-365-security/email-authentication-arc-configure)

*Select 'This page' under 'Feedback' if you have feedback on this documentation.*
