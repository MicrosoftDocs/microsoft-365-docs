---
title: How Sender Policy Framework (SPF) prevents spoofing
f1.keywords: 
  - CSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 3aff33c5-1416-4867-a23b-e0c0c5b4d2be
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: Learn how Microsoft 365 uses the Sender Policy Framework (SPF) TXT record in DNS to ensure that destination email systems trust messages sent from your custom domain.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/15/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# How Microsoft 365 uses Sender Policy Framework (SPF) to prevent spoofing

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

An _SPF TXT record_ is a record in DNS that helps prevent spoofing and phishing by identifying valid sources of messages from senders in the domain. SPF validates the origin of email messages by verifying the IP address of the sender against the alleged owner of the sending domain.

> [!NOTE]
> SPF record types were deprecated by the Internet Engineering Task Force (IETF) in 2014. Instead, ensure that you use TXT records in DNS to publish your SPF information. The rest of this article uses the term SPF TXT record for clarity.

Domain administrators publish SPF information in TXT records in DNS. The SPF information identifies authorized outbound email servers for the domain. Destination email systems verify that messages from senders in the domain came from authorized outbound email servers. If you're already familiar with SPF or you have a simple email environment, you can go to [Set up SPF in Microsoft 365 to help prevent spoofing](email-authentication-spf-configure.md) to create the SPF record for your domain. If your email environment isn't fully hosted in Microsoft 365, if you want more information about how SPF works, or if you want to troubleshoot SPF for Microsoft 365, keep reading.

> [!NOTE]
> Previously, SharePoint online required an additional SPF TXT record in your custom domain. This additional SPF TXT record is no longer required. This change should reduce the risk of SharePoint Online notification messages ending up in the Junk Email folder. If you receive the "too many lookups" error, modify your SPF TXT record as described in [Set up SPF in Microsoft 365 to help prevent spoofing](email-authentication-spf-configure.md).

## How SPF works to prevent spoofing and phishing in Microsoft 365

SPF determines whether or not a sender is permitted to send on behalf of a domain. If the message source isn't valid for the domain (the message fails the SPF check on the destination email server), the spam policy configured on the destination email server determines what to do with the message.

A valid SPF TXT record contains the following elements:

- A declaration that this is an SPF TXT record (`v=spf1`).
- IP addresses that are allowed to send mail from the domain.
- External domains that can send on the domain's behalf (for example, `include:contoso.net include:contoso.org`).

  The destination email server also does a DNS lookup on the SPF TXT record for the specified external domains (contoso.net, then contoso.org), and then does more lookups for any other domains included in the DNS TXT records for _those_ domains. To help prevent denial of service (DoS) attacks, the maximum number of DNS lookups for a single email message is 10. Each `include:` statement in the chain of DNS TXT records counts as one DNS lookup. For tips on how to avoid this condition, see the [Troubleshooting: Best practices for SPF in Microsoft 365](#troubleshooting-best-practices-for-spf-in-microsoft-365) section later in this article.

- An enforcement rule (hard fail `-all`, soft fail `~`, or neutral `?all`). For example, if messages contain senders in contoso.com, but not from the specified IP addresses or external domains, the destination email server should apply the enforcement rule to the messages.

These elements are described in detail later in this article.

SPF works best when the path from sender to receiver is direct. For example:

:::image type="content" source="../../media/835c20a7-ed4c-49c4-91fe-b8ebb3e452a1.jpg" alt-text="Diagram showing how SPF authenticates email when it's sent directly from server to server." lightbox="../../media/835c20a7-ed4c-49c4-91fe-b8ebb3e452a1.jpg":::

The message passes the SPF check and is authenticated at woodgrovebank.com if IP address #1 is in the SPF TXT record for contoso.com.

In this example, an attacker decides to spoof mail from contoso.com:

:::image type="content" source="../../media/235dac3d-cdc5-466e-86e0-37b5979de198.jpg" alt-text="Diagram showing how SPF authenticates email when it's sent from a spoofed server." lightbox="../../media/235dac3d-cdc5-466e-86e0-37b5979de198.jpg":::

The message fails the SPF check at woodgrovebank.com, and woodgrovebank.com might choose to mark the message as spam because IP address #12 isn't in the SPF TXT record for contoso.com.

One drawback of SPF is that it doesn't work on forwarded email. For example, a user at woodgrovebank.com has set up a forwarding rule to send all email to an outlook.com account:

:::image type="content" source="../../media/6e92acd6-463e-4a1b-8327-fb1cf861f356.jpg" alt-text="Diagram showing how SPF can't authenticate email when the message is forwarded." lightbox="../../media/6e92acd6-463e-4a1b-8327-fb1cf861f356.jpg":::

The message originally passes the SPF check at woodgrovebank.com, but it fails the SPF check at outlook.com because IP #25 isn't in contoso.com's SPF TXT record. Outlook.com might then mark the message as spam. To work around this problem, use SPF with other email authentication methods, such as [DKIM](email-authentication-dkim-configure.md) and [DMARC](email-authentication-dmarc-configure.md).

The rest of this article explains the elements of an SPF TXT record and describes how to create SPF TXT records in Microsoft 365.

## Create SPF TXT records for Microsoft 365

Use the information in this article to create the SPF TXT record for your custom domain. Although there are other syntax options that aren't mentioned here, this article describes the most commonly used options.

For information about the domains you need to include for Microsoft 365, see [External DNS records required for SPF](../../enterprise/external-domain-name-system-records.md). Use the [step-by-step instructions](../../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md#add-or-edit-an-spf-txt-record-to-help-prevent-email-spam-outlook-exchange-online) for updating SPF (TXT) records at your domain registrar.

### SPF TXT record syntax for Microsoft 365

A typical SPF TXT record has the following syntax:

```text
v=spf1 [<ip4>|<ip6>:<IPAddress1> <ip4>|<ip6>:<IPAddress2>... <ip4>|<ip6>:<AddressN>] [include:<DomainName1> include:<DomainName1>... include:<DomainNameN>] <enforcement rule>
```

For example:

```text
v=spf1 ip4:192.168.0.1 ip4:192.168.0.2 include:spf.protection.outlook.com -all
```


- `v=spf1` is required. This text identifies the TXT record as an SPF TXT record.

- `ipv4:` or `ipv6:` indicates the type of IP address that you're using.

- Typically, the IP addresses that you specify are the outbound email servers for your organization. Instead of individual IP addresses, you can also specify IP address ranges using CIDR notation, for example `ip4:192.168.0.1/26`.

- Use `include:` statements to add domains as legitimate senders. For example, any custom domain with mailboxes in Microsoft 365 requires the value `include:spf.protection.outlook.com`. For a list of domain names you should include for Microsoft 365, see [External DNS records required for SPF](../../enterprise/external-domain-name-system-records.md).

- The enforcement rule is one of the following values:
  - `-all`: Hard fail. Mark the message with 'hard fail' in the message envelope and follow the destination email server's configured spam policy for this type of message. We recommend this value in the following scenarios:
    - You know all of the authorized IP addresses for mail in your domain, and those IP addresses are listed in the SPF TXT record.
    - You're only using SPF, not DMARC or DKIM.

  - `~all`: Soft fail. Mark the message with 'soft fail' in the message envelope. Typically, email servers are configured to deliver these messages. Most end users don't see this mark. We recommend this value in the following scenarios only; otherwise, we recommend `-all`:
    - You're unsure if you have the complete list authorized IP addresses for mail in your domain.
    - You're using DMARC with `p=quarantine` or `p=reject`.

  - `?all`: Neutral. Do nothing (don't mark the message envelope). Used for testing SPF. We don't recommend using this value in your production environment.

### Example: SPF TXT record when all mail is sent by Microsoft 365

If you have mailboxes in Microsoft 365, the SPF TXT record for your custom domain must contain the value `include:spf.protection.outlook.com`. If no other devices, services, or third-party services (for example, bulk mailing services) are authorized to send email from your domain, use the enforcement value `-all` (hard fail) as previously described. Your SPF TXT record looks like this:

```text
v=spf1 include:spf.protection.outlook.com -all
```

### Example: SPF TXT record in hybrid environments

In hybrid environments with on-premises mailboxes and mailboxes in Microsoft 365, you also need to specify the IP addresses of all email servers, devices, or third-party services that are authorized to send email from your domain. In this example, that's 192.168.0.1, 192.168.0.2, and 192.168.0.3. If you're confident that you've identified all authorized email sources for your domain, use the enforcement value `-all` (hard fail). Your SPF TXT record looks something like this:

```text
v=spf1 ip4:192.168.0.1 ip4:192.168.0.2 ip4:192.168.0.3 include:spf.protection.outlook.com -all
```

## Next steps

Follow the steps in [Set up SPF in Microsoft 365 to help prevent spoofing](email-authentication-spf-configure.md) to add the SPF TXT record for your custom domain at your domain registrar.

To help protect against phishing and spoofing techniques that SPF can't, you should also configure DKIM and DMARC DNS records in your domain. To get started, see [Use DKIM to validate outbound email sent from your custom domain in Microsoft 365](email-authentication-dkim-configure.md) and [Use DMARC to validate email in Microsoft 365](email-authentication-dmarc-configure.md).

## Troubleshooting: Best practices for SPF in Microsoft 365

A domain supports only one SPF TXT record. Multiple DNS TXT records for the same domain cause a DNS lookup loop that makes SPF fail. To avoid this scenario, you can create a separate DNS TXT record for each subdomain. For example, create one DNS TXT record for contoso.com and another DNS TXT record for bulkmail.contoso.com.

As previously described, if an email message causes more than 10 DNS lookups for SPF, the destination email server responds with a permanent error (also called a  _permerror_) that causes the message to fail SPF. The destination email server might also return the message in a non-delivery report (also known as an NDR or _bounce message_) that contains one of the following errors:

- The message exceeded the hop count.
- The message required too many lookups.

To avoid these errors, you can require users in your organization to send bulk email from a subdomain that's designed for that purpose (for example, bulkmail.contoso.com). You then create a different SPF TXT record for the subdomain that includes the bulk email sources. Most bulk email senders have a specific domain or subdomain that you need to add as an `include:` value in your SPF TXT record. For example, exacttarget.com directs you add or use `include:cust-spf.exacttarget.com` in your SPF TXT record.

## View your current SPF TXT record and determine the number of lookups that it requires

You can use nslookup to view your DNS records, including your SPF TXT record. There are many free, online tools that you can use to view the contents of your SPF TXT record. By looking at your SPF TXT record and following the chain of `include:` statements and redirects, you can determine how many DNS lookups are required. Some online tools even count and display these lookups for you. Keeping track of this number helps prevent SPF failures.

## For more information

Need help with adding the SPF TXT record? Read [Create DNS records at any DNS hosting provider for Microsoft 365](../../admin/get-help-with-domains/create-dns-records-at-any-dns-hosting-provider.md#add-or-edit-an-spf-txt-record-to-help-prevent-email-spam-outlook-exchange-online) for detailed information about using SPF with your custom domain in Microsoft 365. [Anti-spam message headers](message-headers-eop-mdo.md) includes the syntax and header fields used by Microsoft 365 for SPF checks.
