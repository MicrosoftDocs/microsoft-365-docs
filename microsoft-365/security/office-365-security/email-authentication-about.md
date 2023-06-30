---
title: Email authentication in Microsoft 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
search.appverid:
  - MET150
ms.assetid:
ms.collection:
  - m365-security
  - tier2
ms.custom: TopSMBIssues
ms.localizationpriority: high
description: Admins can learn how EOP uses email authentication (SPF, DKIM, and DMARC) to help prevent spoofing, phishing, and spam.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Email authentication in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Email authentication (also known as _email validation_) is a group of standards that tries to stop email messages from forged senders (also known as _spoofing_). Microsoft 365 uses the following standards to verify inbound email:

- [SPF](email-authentication-spf-configure.md)
- [DKIM](email-authentication-dkim-configure.md)
- [DMARC](email-authentication-dmarc-configure.md)

Email authentication verifies that email messages from a sender (for example, laura@contoso.com) are legitimate and come from expected sources for that email domain (for example, contoso.com).

The rest of this article explains how these technologies work, and how EOP uses them to check inbound email.

## Use email authentication to help prevent spoofing

DMARC prevents spoofing by examining the **From** address in messages. The **From** address is the sender's email address that users see in their email client. Destination email organizations can also verify that the email domain has passed SPF or DKIM. In other words, the source domain is a valid source for senders in the **From** address, so the sender's email address isn't spoofed.

However, DNS records for SPF, DKIM, and DMARC (collectively known as _email authentication policies_) are optional. Domains with strong email authentication policies are protected from spoofing. But domains with weaker email authentication policies or no policy at all are prime targets for being spoofed.

Lack of strong email authentication policies is a large problem. While organizations might not understand how email authentication works, attackers fully understand and they take advantage. Because of phishing concerns and the limited adoption of strong email authentication policies, Microsoft uses _implicit email authentication_ to check inbound email.

Implicit email authentication is an extension of regular email authentication policies. These extensions include: sender reputation, sender history, recipient history, behavioral analysis, and other advanced techniques. In the absence of other signals from these extensions, messages sent from domains that don't use email authentication policies are marked as spoofing.

To see Microsoft's general announcement, see [A Sea of Phish Part 2 - Enhanced Anti-spoofing in Microsoft 365](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Schooling-A-Sea-of-Phish-Part-2-Enhanced-Anti-spoofing/ba-p/176209).

## Composite authentication

If a domain doesn't have traditional SPF, DKIM, and DMARC records, those record checks don't communicate enough authentication status information. Therefore, Microsoft has developed an algorithm for implicit email authentication. This algorithm combines multiple signals into a single value called _composite authentication_, or `compauth` for short. The `compauth` value is stamped into the **Authentication-Results** header in the message headers.

```text
Authentication-Results:
   compauth=<fail | pass | softpass | none> reason=<yyy>
```

These values are explained at [Authentication-results message header](message-headers-eop-mdo.md#authentication-results-message-header).

By examining the message headers, admins and users can determine how Microsoft 365 determined that the sender is spoofed.

## Why email authentication isn't always enough to stop spoofing

Relying only on email authentication records to determine if an incoming message is spoofed has the following limitations:

- The source domain might lack the required DNS records, or the records are incorrectly configured.
- The source domain has correctly configured DNS records, but that domain doesn't match the domain in the From address. SPF and DKIM don't require the domain to be used in the From address. Attackers or legitimate services can register a domain, configure SPF and DKIM for the domain, and use a different domain in the From address. Messages from senders in this domain pass SPF and DKIM.

Composite authentication can address these limitations by passing messages that would otherwise fail email authentication checks.

For simplicity, the following examples concentrate on email authentication results. Other back-end intelligence factors could identify messages that pass email authentication as spoofed, or messages that fail email authentication as legitimate.

For example, the fabrikam.com domain has no SPF, DKIM, or DMARC records. Messages from senders in the fabrikam.com domain can fail composite authentication (note the `compauth` value and reason):

```text
Authentication-Results: spf=none (sender IP is 10.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
  (message not signed) header.d=none; contoso.com; dmarc=none
  action=none header.from=fabrikam.com; compauth=fail reason=001
From: chris@fabrikam.com
To: michelle@contoso.com
```

If fabrikam.com configures an SPF without a DKIM record, the message can pass composite authentication. The domain that passed SPF checks is aligned with the domain in the From address:

```text
Authentication-Results: spf=pass (sender IP is 10.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
  (message not signed) header.d=none; contoso.com; dmarc=bestguesspass
  action=none header.from=fabrikam.com; compauth=pass reason=109
From: chris@fabrikam.com
To: michelle@contoso.com
```

If fabrikam.com configures a DKIM record without an SPF record, the message can pass composite authentication. The domain in the DKIM signature is aligned with the domain in the From address:

```text
Authentication-Results: spf=none (sender IP is 10.2.3.4)
  smtp.mailfrom=fabrikam.com; contoso.com; dkim=pass
  (signature was verified) header.d=outbound.fabrikam.com;
  contoso.com; dmarc=bestguesspass action=none
  header.from=fabrikam.com; compauth=pass reason=109
From: chris@fabrikam.com
To: michelle@contoso.com
```

If the domain in SPF or the DKIM signature doesn't align with the domain in the From address, the message can fail composite authentication:

```text
Authentication-Results: spf=none (sender IP is 192.168.1.8)
  smtp.mailfrom=maliciousdomain.com; contoso.com; dkim=pass
  (signature was verified) header.d=maliciousdomain.com;
  contoso.com; dmarc=none action=none header.from=contoso.com;
  compauth=fail reason=001
From: chris@contoso.com
To: michelle@fabrikam.com
```

## Solutions for legitimate senders who are sending unauthenticated email

Microsoft 365 keeps track of who is sending unauthenticated email to your organization. If the service thinks the sender isn't legitimate, it marks messages from this sender as a composite authentication failure. To avoid this verdict, you can use the recommendations in this section.

### Configure email authentication for domains you own

You can use this method to resolve intra-org spoofing and cross-domain spoofing in cases where you own or interact with multiple tenants. It also helps resolve cross-domain spoofing where you send to other customers within Microsoft 365 or third parties that are hosted by other providers.

- [Configure SPF records](email-authentication-spf-configure.md) for your domains.
- [Configure DKIM records](email-authentication-dkim-configure.md) for your primary domains.
- [Consider setting up DMARC records](email-authentication-dmarc-configure.md) for your domain to determine your legitimate senders.

Microsoft doesn't provide detailed implementation guidelines for SPF, DKIM, and DMARC records. However, that information is available online. There are also third party companies dedicated to helping your organization set up email authentication records.

#### You don't know all sources for your email

Many domains don't publish SPF records because they don't know all of the email sources for messages in their domain. Start by publishing an SPF record that contains all of the email sources you know about (especially where your corporate traffic is located), and publish the enforcement rule value "soft fail" (`~all`) in the SPF record. For example:

```text
fabrikam.com IN TXT "v=spf1 include:spf.fabrikam.com ~all"
```

This example means that email from your corporate infrastructure passes email authentication, but email from unknown sources falls back to "soft fail". Typically, email servers are configured to deliver these messages.

Microsoft 365 treats inbound email from your corporate infrastructure as authenticated. Email from unidentified sources might still be marked as spoof if it fails implicit authentication. However, this behavior is still an improvement from all email being marked as spoof by Microsoft 365.

Once you've gotten started with an SPF fallback policy of `~all`, you can gradually discover and include more email sources for your messages, and then update your SPF record with a stricter policy.

### Configure permitted senders of unauthenticated email

You can also use the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md#override-the-spoof-intelligence-verdict) and the [Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-spoofed-senders) to permit senders to transmit unauthenticated messages to your organization.

For external domains, the spoofed user is the domain in the From address, while the sending infrastructure is one of the following values:

- The source IP address (divided up into /24 CIDR ranges)
- The organizational domain of the reverse DNS (PTR) record.
- A verified DKIM domain.

### Create an allow entry for the sender/recipient pair

To bypass spam filtering for some senders, but not malware or high confidence phishing, see [Create safe sender lists in Microsoft 365](create-safe-sender-lists-in-office-365.md).

### Ask the sender to configure email authentication for domains you don't own

Because of the problem of spam and phishing, Microsoft recommends email authentication for all email organizations. Instead of configuring manual overrides in your organization, you can ask an admin in the source domain to configure their email authentication records.

- Even if they didn't need to publish email authentication records in the past, they should do so if they send email to Microsoft.
- Set up SPF to publish the domain's sending IP addresses, and set up DKIM (if available) to digitally sign messages. They should also consider setting up DMARC records.
- If they use bulk senders to send email on their behalf, verify that the domain in the From address (if it belongs to them) aligns with the domain that passes SPF or DMARC.
- Verify the following locations (if they use them) are included in the SPF record:
  - On-premises email servers.
  - Email sent from a software-as-a-service (SaaS) provider.
  - Email sent from a cloud-hosting service (Microsoft Azure, GoDaddy, Rackspace, Amazon Web Services, etc.).
- For small domains that are hosted by an ISP, configure the SPF record according to the instructions from the ISP.

While it might be difficult at first to get sending domains to authenticate, but successful email delivery compels them to do so as more email filters junk or even reject their email. Also, their participation can help in the fight against phishing, and can reduce the possibility of phishing in their organization or organizations that they send email to.

#### Information for infrastructure providers (ISPs, ESPs, or cloud hosting services)

If you host a domain's email or provide hosting infrastructure that can send email, you should do the following steps:

- Ensure your customers have documentation that explains how your customers should configure their SPF records
- Consider signing DKIM-signatures on outbound email, even if the customer doesn't explicitly set it up (sign with a default domain). You can even double-sign the email with DKIM signatures (once with the customer's domain if they have set it up, and a second time with your company's DKIM signature)

Delivery to Microsoft isn't guaranteed, even if you authenticate email originating from your platform. But, the configuration ensures that Microsoft doesn't junk your email because it isn't authenticated.

## Related links

For more information about service providers best practices, see [M3AAWG Mobile Messaging Best Practices for Service Providers](https://www.m3aawg.org/sites/default/files/m3aawg-mobile-messaging-best-practices-service-providers-2015-08_0.pdf).

Learn how Office 365 uses SPF and supports DKIM validation:

- [More about SPF](email-authentication-anti-spoofing.md)
- [More about DKIM](email-authentication-dkim-support-about.md)
