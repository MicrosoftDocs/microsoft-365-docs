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
description: Admins can learn how email authentication (SPF, DKIM, DMARC) works and how Microsoft 365 uses traditional email authentication and composite email authentication to identify messages as spoofing, or pass messages that would otherwise be identified as spoofing.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 11/30/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Email authentication in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

As a Microsoft 365 organization with mailboxes in Exchange Online, or a standalone Exchange Online Protection (EOP) organization without Exchange Online mailboxes, protecting the integrity of email messages from senders in your domains is important. Recipients should feel confident that messages from senders in your domain really came from senders in your domain.

Email authentication (also known as _email validation_) is a group of standards to identify and prevent the delivery of email messages from forged senders (also known as _spoofing_). Spoofed senders are commonly used in business email compromise (BEC), phishing, and other email attacks. These standards include:

- **Sender Policy Framework (SPF)**: Identifies the source email servers that are authorized to send mail for the domain. The domain is used in sender's email address during SMTP transmission of the message between email servers (known as the `5321.MailFrom` address, **MAIL FROM** address, P1 sender, or envelope sender).
- **DomainKeys Identified Mail (DKIM)**: Uses a domain to digitally sign important elements of the message, including the From: message header field that's shown as the sender's email address in email clients. This address is also known as the `5322.From` address, From address, or P2 sender. The signature is stored in the message header to verify that the signed elements of the message weren't altered in transit.
- **Domain-based Message Authentication, Reporting and Conformance (DMARC)**: Contains a policy that defines the action for messages that fail SPF and/or DKIM checks for senders in the domain, and identifies reporting services to send DMARC results to.
- **Authenticated Received Chain (ARC)**: Preserves original email authentication information by known services that modify messages in transit. The destination email server can use this information to authentication messages that would otherwise fail email authentication.

It's important to realize that these standards _work together_ to provide the best possible protection:

- SPF validates the domain in the `5321.MailFrom` address only. The domain in the From address that's shown in email clients isn't considered.
  - An attacker can send email that passes SPF authentication (a false negative) by:
    - Registering a domain (for example, adatum.com) and configuring SPF for the domain.
    - Sending email from valid sources for that domain, but using a different domain in the From address (for example, proseware.com).
  - Similarly, a legitimate email service might always have a mismatch between the `5321.MailFrom` domain and the From address domain. If SPF is based on the From address domain, the messages fail SPF authentication (a false positive).
  - SPF doesn't work on server-based email forwarding that redirects or _relays_ messages because:
    - The act of forwarding causes the forwarding server to appear as the source of the messages.
    - The forwarding server isn't authorized to send email for the original domain, so the message fails SPF authentication (a false positive).

- The domain that DKIM uses to sign the message doesn't need to match the domain in the From address that's shown in email clients. This behavior is both good and bad:
  - DKIM can help in scenarios where the domains in the `5321.MailFrom` address and the From address are legitimately different by design (a false positive). DKIM configured in the domain of the From address signs the messages, and the messages pass DKIM authentication.
  - Like SPF, an attacker can send email that passes DKIM authentication (a false negative) by:
    - Registering a domain (for example, adatum.com) and configuring DKIM for the domain.
    - Sending email using a different domain in the From address (for example, proseware.com).

- DMARC closes the loop by verifying that the domains in the `5321.MailFrom` address and the From address match in email messages. DMARC uses SPF and DKIM authentication failures to quarantine or reject messages based on DMARC authentication failures, you need to configure SPF and DMARC for your domain.

- Legitimate services that modify messages in transit break SPF, DKIM and DMARC. If the service is able to preserve the original email authentication information, and you identify the service as a trusted ARC sealer, ARC can use that information to validate the message so it can pass DMARC.

To configure email authentication for mail **sent from** Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, see the following articles:

- [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md)
- [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md)
- [Use DMARC to validate email](email-authentication-dmarc-configure.md)
- [Configure trusted ARC sealers](email-authentication-arc-configure.md)

The rest of this article explains how Microsoft 365 uses email authentication to check inbound email **sent to** the service, and how companies who send mail to Microsoft 365 can avoid email authentication failures.

> [!TIP]
> Microsoft 365 customers can use the following methods to allow messages from senders that are identified as spoofing or authentication failures:
>
> - [Spoof intelligence insight](anti-spoofing-spoof-intelligence.md).
> - [Allow entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-spoofed-senders).
> - [Safe sender lists](create-safe-sender-lists-in-office-365.md)

## Inbound email authentication for mail sent to Microsoft 365

Because of phishing concerns and the less than complete adoption of strong email authentication policies by email senders on the internet, Microsoft 365 uses _implicit email authentication_ to check inbound email. Implicit email authentication extends regular SPF, DKIM, and DMARC checks by using signals from other sources to evaluate inbound email. These sources include:

- Sender reputation.
- Sender history.
- Recipient history.
- Behavioral analysis.
- Other advanced techniques.

To see Microsoft's original announcement about implicit authentication, see [A Sea of Phish Part 2 - Enhanced Anti-spoofing in Microsoft 365](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Schooling-A-Sea-of-Phish-Part-2-Enhanced-Anti-spoofing/ba-p/176209).

Using these other signals, messages that would otherwise fail traditional email authentication checks can pass implicit authentication and be allowed into Microsoft 365.

### Composite authentication

The results of Microsoft 365's implicit authentication checks are combined and stored in a single value named _composite authentication_ or `compauth` for short. The `compauth` value is stamped into the **Authentication-Results** header in the message headers. The **Authentication-Results** header uses the following syntax:

```text
Authentication-Results:
   compauth=<fail | pass | softpass | none> reason=<yyy>
```

These values are explained at [Authentication-results message header](message-headers-eop-mdo.md#authentication-results-message-header).

Admins and users can examine the message headers to discover how Microsoft 365 identified the sender as spoofed.

The following examples focus on the results of email authentication only (the `compauth` value and reason). Other Microsoft 365 protection technologies can identify messages that pass email authentication as spoofed, or identify messages that fail email authentication as legitimate. 

- **Scenario**: The fabrikam.com domain has no SPF, DKIM, or DMARC records.
- **Result**: Messages from senders in the fabrikam.com domain can fail composite authentication:

  ```text
  Authentication-Results: spf=none (sender IP is 10.2.3.4)
    smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
    (message not signed) header.d=none; contoso.com; dmarc=none
    action=none header.from=fabrikam.com; compauth=fail reason=001
  From: chris@fabrikam.com
  To: michelle@contoso.com
  ```

- **Scenario**: The fabrikam.com domain has an SPF record and no DKIM record.
- **Result**: The message can pass composite authentication, because the domain that passed SPF matches the domain in the From address:

  ```text
  Authentication-Results: spf=pass (sender IP is 10.2.3.4)
    smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
    (message not signed) header.d=none; contoso.com; dmarc=bestguesspass
    action=none header.from=fabrikam.com; compauth=pass reason=109
  From: chris@fabrikam.com
  To: michelle@contoso.com
  ```

- **Scenario**: The fabrikam.com domain has a DKIM record without an SPF record.
- **Result**: The message can pass composite authentication, because the domain in the DKIM signature matches the domain in the From address:

  ```text
  Authentication-Results: spf=none (sender IP is 10.2.3.4)
    smtp.mailfrom=fabrikam.com; contoso.com; dkim=pass
    (signature was verified) header.d=outbound.fabrikam.com;
    contoso.com; dmarc=bestguesspass action=none
    header.from=fabrikam.com; compauth=pass reason=109
  From: chris@fabrikam.com
  To: michelle@contoso.com
  ```

- **Scenario**: The domain in the SPF record or the DKIM signature doesn't match the domain in the From address.
- **Result**: The message can fail composite authentication:

  ```text
  Authentication-Results: spf=none (sender IP is 192.168.1.8)
    smtp.mailfrom=maliciousdomain.com; contoso.com; dkim=pass
    (signature was verified) header.d=maliciousdomain.com;
    contoso.com; dmarc=none action=none header.from=contoso.com;
    compauth=fail reason=001
  From: chris@contoso.com
  To: michelle@fabrikam.com
  ```

### How companies can avoid email authentication failures when sending mail to Microsoft 365

- **Configure SPF, DKIM, and DMARC records for your domains**: Use the configuration information that's provided by your domain registrar or DNS hosting service. There are also third party companies dedicated to helping set up email authentication records.

  Many companies don't publish SPF records because they don't know all of the email sources for messages in their domain.

  1. Start by publishing an SPF record that contains all email sources that you know about (especially where your corporate traffic is located), and use the enforcement rule value "soft fail" (`~all`). For example:

     ```text
     fabrikam.com IN TXT "v=spf1 include:spf.fabrikam.com ~all"
     ```

    If you create this SPF record, Microsoft 365 treats inbound email from your corporate infrastructure as authenticated, but email from unidentified sources might still be marked as spoof if it fails composite authentication. However, this behavior is still an improvement from all email senders in the domain being marked as spoof by Microsoft 365. Typically, other email servers and services also allow delivery of messages from senders in your domain from unidentified sources when SPF is configured with a soft fail enforcement rule.

  2. Discover and include more email sources for your messages. For example:
     - On-premises email servers.
     - Email sent from a software-as-a-service (SaaS) provider.
     - Email sent from a cloud-hosting service (Microsoft Azure, GoDaddy, Rackspace, Amazon Web Services, etc.).

     After you've identified all email sources, you can update your SPF record to use the enforcement rule value "hard fail" (`-all`).

  3. Set up DKIM to digitally sign messages.
  
  4. Set up DMARC to validate that the `5321.MailFrom` address matches the From address, and to specify what to do with messages that fail DMARC checks (reject or quarantine), and to identify reporting services to monitor DMARC results.

  5. If you use bulk senders to send email on your behalf, verify that the domain in the From address matches the domain that passes SPF or DMARC.

- **You host a domain's email or provide hosting infrastructure that can send email**:
  - Ensure your customers have documentation that explains how to configure SPF for their domains.
  - Consider signing DKIM-signatures on outbound email, even if the customer doesn't explicitly set it up (sign with a default domain). You can even double-sign the email with DKIM signatures (with your company domain and the customer's domain if/when it's available).

  Delivery to Microsoft isn't guaranteed, even if you authenticate email originating from your platform. But, email authentication ensures that Microsoft doesn't automatically junk email from your customer domains simply because it isn't authenticated.
