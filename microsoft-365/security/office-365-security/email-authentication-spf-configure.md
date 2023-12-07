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
      - If you use any email services that aren't under your direct control (for example, to send bulk or marketing email), you should use a subdomain (for example, marketing.contoso.com) instead of your main email domain (for example, contoso.com). You don't want any issues with mail coming from the subdomain that's used by the email service to affect the reputation of mail coming from employees in your main email domain. For more information, see [Can I add custom subdomains or multiple domains to Microsoft 365?](/microsoft-365/admin/setup/domains-faq?view=o365-worldwide#can-i-add-custom-subdomains-or-multiple-domains-to-microsoft-365).
      - Each subdomain that you use to send email from Microsoft 365 requires its own SPF TXT record. For example, the SPF TX record for contoso.com doesn't cover marketing.contoso.com; marketing.contoso.com needs its own SPF TXT record.
      - Create a wildcard SPF TXT record to cover all other potential subdomains of your main domain that you don't use to send email in Microsoft 365.
    - **Registered but unused domains**:
      - If you have registered domains that you aren't using for anything on the internet, configure SPF TXT records to signify that no email should ever come from those domains or their subdomains.

- **SPF alone is not enough**. For the best level of email protection for your custom domains, you also need to configure DKIM and DMARC as part of your overall [email authentication](email-authentication-about.md) strategy. For more information, see the [Next Steps: DKIM and DMARC](#next-steps-dkim-and-dmarc) section at the end of this article.

The rest of this article describes the SPF TXT records that you need to create for custom domains in Microsoft 365.

> [!TIP]
> There are no admin portals or PowerShell cmdlets in Microsoft 365 for you to manage SPF records in your domain. Instead, you create the SPF TXT record at your domain registrar or DNS hosting service (often the same company).
>
> We provide instructions to create the proof of domain ownership TXT record for Microsoft 365 at many domain registrars. You can use these steps to begin creating the TXT record, and then use the information in this article for the SPF TXT record value. For more information, see [Add DNS records to connect your domain](https://learn.microsoft.com/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider).
>
> If you're unfamiliar with DNS configuration, contact your domain registrar and ask for help.

### SPF TXT record syntax in Microsoft 365

SPF TXT record syntax in Microsoft 365 is described at [External DNS records required for SPF](/microsoft-365/enterprise/external-domain-name-system-records#external-dns-records-required-for-spf) and exhaustively described in [RFC 7208](https://datatracker.ietf.org/doc/html/rfc7208).

The basic syntax of the SPF record is:

```text
v=spf1 [<ip4>|<ip6>:<IPAddress1> <ip4>|<ip6>:<IPAddress2>... <ip4>|<ip6>:<AddressN>] [include:<DomainName1> include:<DomainName1>... include:<DomainNameN>] <enforcement rule>
```

For example:

```text
v=spf1 ip4:192.168.0.1 ip4:192.168.0.2 include:spf.protection.outlook.com -all
```

- `v=spf1` identifies the TXT record as an SPF TXT record.

- You identify the valid sources of email from the domain using **Domains**, **IP addresses**, or both: one or both of the following methods:
  - **Domains**: `include:`statements allow you to add other domains as valid sources of email from the domain.

    Most Microsoft 365 organizations need to have `include:spf.protection.outlook.com` in the SPF TXT record for the domain. Other third-party email services require other values in the SPF TXT record for the domain. For example, Mailchimp tells you to add `include:servers.mcsv.net` to the SPF TXT record for the domain.

  - **IP addresses**:
    - The value `ipv4:` or `ipv6:` identifies the type of email address.
    - The IP address value can be:
      - An individual IP address (for example, 192.168.0.1).
      - An IP address range using Classless Inter-Domain Routing (CIDR) notation (for example 192.168.0.1/26). Be sure that the range isn't too big or too small.

    In Microsoft 365, you typically use IP addresses in the SPF TXT record only if you have on-premises email servers that send mail from the domain that's used in Microsoft 365 (for example, [Exchange Server hybrid deployments](/exchange/exchange-hybrid)).

- The enforcement rule is one of the following values:
  - `-all` (hard fail): Tells the destination email system domain that messages from sources not specified in the SPF TXT record aren't authorized to send mail from the domain, so the messages should be rejected. What actually happens to the message depends on the destination email system, but the messages are likely discarded.
  
     In Microsoft 365, we recommend `-all` (hard fail) because we also recommend DKIM and DMARC for the domain. The DMARC policy (`p=quarantine` or `p=reject`) specifies what to do to messages that fail SPF or DKIM.

     If SPF was the only email authentication check that was being used for the domain (no DKIM or DMARC), you would need to be quite confident that all possible sources of email from the domain are identified in the SPF record. Otherwise, the destination email system might discard valid messages from senders in the domain that come from unidentified sources (bulk mailing services, reporting servers, etc.).

  - `~all` (soft fail): Tells the destination email system that messages from sources not specified in the SPF TXT record _probably_ aren't authorized to send mail from the domain, so the messages should be accepted and marked. What actually happens to the message depends on the destination email system. For example, the message might be marked as spam and quarantined or delivered to the Junk Email folder, or delivered to the Inbox with an identifier added to the Subject or message body.

     Because we also recommend DKIM and DMARC for domains in Microsoft 365, the differences between `-all` (hard fail) and `~all` (soft fail) are largely eliminated (DMARC treats them both as SPF failures). After an SPF failure, DMARC also checks DKIM to see if the domains in the `5321.MailFrom` and From addresses match, and the the DMARC policy (`p=quarantine` or `p=reject`) specifies what to do to messages that fail DMARC.

  - `?all` (neutral): Tells the destination email system domain to do nothing to messages from sources that aren't specified in the SPF TXT record. This value is used for testing, and we don't recommend this value in production environments.

Important points to remember:

- Each domain can have only one SPF TXT record.
- Subdomains require their own SPF TXT records.
- You can't create or modify the SPF text record for the \*.onmicrosoft.com domain.
- If checking the valid email sources in the SPF record requires more than 10 additional DNS lookups (not necessarily 10 DNS queries), SPF validation fails. For more information, see <xxx>.

### Create or update your SPF TXT record

1. Ensure that you're familiar with the SPF syntax in the following table.

    |Element|If you're using...|Common for customers?|Add this...|
    |---|---|---|---|
    |1|Any email system (required)|Common. All SPF TXT records start with this value|`v=spf1`|
    |2|Exchange Online|Common|`include:spf.protection.outlook.com`|
    |3|Exchange Online dedicated only|Not common|`ip4:23.103.224.0/19` <br> `ip4:206.191.224.0/19` <br> `ip4:40.103.0.0/16` <br> `include:spf.protection.outlook.com`|
    |4|Office 365 Germany, Microsoft Cloud Germany only|Not common|`include:spf.protection.outlook.de`|
    |5|Third-party email system|Not common|`include:<domain_name>` <p> \<domain_name\> is the domain of the third-party email system.|
    |6|On-premises email system. For example, Exchange Online Protection plus another email system|Not common|Use one of these for each additional mail system: <p> `ip4:<IP_address>` <br> `ip6:<IP_address>` <br> `include:<domain_name>` <p> \<IP_address\> and \<domain_name\> are the IP address and domain of the other email system that sends mail on behalf of your domain.|
    |7|Any email system (required)|Common. All SPF TXT records end with this value|`<enforcement rule>` <p> This can be one of several values. We recommend the value `-all`.|

2. If you haven't already done so, form your SPF TXT record by using the syntax from the table.

   For example, if you are hosted entirely in Office 365, that is, you have no on-premises mail servers, your SPF TXT record would include rows 1, 2, and 7 and would look like this:

   ```text
   v=spf1 include:spf.protection.outlook.com -all
   ```

   **The example above is the most common SPF TXT record**. This record works for just about everyone, regardless of whether your Microsoft datacenter is located in the United States, or in Europe (including Germany), or in another location.

   However, if you bought Office 365 Germany, part of Microsoft Cloud Germany, you should use the include statement from line 4 instead of line 2. For example, if you are hosted entirely in Office 365 Germany, that is, you have no on-premises mail servers, your SPF TXT record would include rows 1, 4, and 7 and would look like this:

   ```text
   v=spf1 include:spf.protection.outlook.de -all
   ```

   If you're already deployed in Office 365 and have set up your SPF TXT records for your custom domain, and you're migrating to Office 365 Germany, you need to update your SPF TXT record. To do this, change `include:spf.protection.outlook.com` to `include:spf.protection.outlook.de`.

3. Once you have formed your SPF TXT record, you need to update the record in DNS. **You can only have one SPF TXT record for a domain.** If an SPF TXT record exists, instead of adding a new record, you need to update the existing record. Go to [Create DNS records for Office 365](/microsoft-365/admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider), and then select the link for your DNS host.

4. Test your SPF TXT record.

## How to handle subdomains?

It's important to note that *you need to create a separate record for each subdomain as subdomains don't inherit the SPF record of their top-level domain*.

A wildcard SPF record (`*.`) is required for every domain and subdomain to prevent attackers from sending email claiming to be from non-existent subdomains. For example:

```text
*.subdomain.contoso.com. IN TXT "v=spf1 -all"
```

## Troubleshooting SPF

Having trouble with your SPF TXT record? See [Troubleshooting: Best practices for SPF in Microsoft 365](email-authentication-anti-spoofing.md#troubleshooting-best-practices-for-spf-in-microsoft-365).

## What does SPF email authentication actually do?

SPF identifies which mail servers are allowed to send mail on your behalf. Basically, SPF, along with DKIM, DMARC, and other technologies supported by Office 365, help prevent spoofing and phishing. SPF is added as a TXT record that is used by DNS to identify which mail servers can send mail on behalf of your custom domain. Recipient mail systems refer to the SPF TXT record to determine whether a message from your custom domain comes from an authorized messaging server.

For example, let's say that your custom domain contoso.com uses Office 365. You add an SPF TXT record that lists the Office 365 messaging servers as legitimate mail servers for your domain. When the receiving messaging server gets a message from joe@contoso.com, the server looks up the SPF TXT record for contoso.com and finds out whether the message is valid. If the receiving server finds out that the message comes from a server other than the Office 365 messaging servers listed in the SPF record, the receiving mail server can choose to reject the message as spam.

Also, if your custom domain does not have an SPF TXT record, some receiving servers may reject the message outright. This is because the receiving server cannot validate that the message comes from an authorized messaging server.

If you've already set up mail for Office 365, then you have already included Microsoft's messaging servers in DNS as an SPF TXT record. However, there are some cases where you may need to update your SPF TXT record in DNS. For example:

- Previously, you had to add a different SPF TXT record to your custom domain if you were using SharePoint Online. This is no longer required. This change should reduce the risk of SharePoint Online notification messages ending up in the Junk Email folder. Update your SPF TXT record if you are hitting the 10 lookup limit and receiving errors that say things like, "exceeded the lookup limit" and "too many hops".

- If you have a hybrid environment with Office 365 and Exchange on-premises.

- You intend to set up DKIM and DMARC (recommended).

## More information about SPF

For advanced examples, a more detailed discussion about supported SPF syntax, spoofing, troubleshooting, and how Office 365 supports SPF, see [How SPF works to prevent spoofing and phishing in Microsoft 365](email-authentication-anti-spoofing.md#how-spf-works-to-prevent-spoofing-and-phishing-in-microsoft-365).

## Next Steps: DKIM and DMARC

 SPF is designed to help prevent spoofing, but there are spoofing techniques that SPF can't protect against. To defend against these, once you've set up SPF, you should configure DKIM and DMARC for Office 365.

[**DKIM**](email-authentication-dkim-configure.md) email authentication's goal is to prove the contents of the mail haven't been tampered with.

[**DMARC**](email-authentication-dmarc-configure.md) email authentication's goal is to make sure that SPF and DKIM information matches the From address.

 For advanced examples and a more detailed discussion about supported SPF syntax, see [How SPF works to prevent spoofing and phishing in Office 365](email-authentication-anti-spoofing.md#how-spf-works-to-prevent-spoofing-and-phishing-in-microsoft-365).

[Configure trusted ARC sealers](/microsoft-365/security/office-365-security/email-authentication-arc-configure)

*Select 'This page' under 'Feedback' if you have feedback on this documentation.*
