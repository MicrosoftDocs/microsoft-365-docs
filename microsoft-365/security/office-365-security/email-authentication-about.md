---
title: Email authentication in Microsoft 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
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
ms.date: 1/29/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Email authentication in Microsoft 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

As a Microsoft 365 organization with mailboxes in Exchange Online, or a standalone Exchange Online Protection (EOP) organization without Exchange Online mailboxes, protecting the integrity of email messages from senders in your domains is important. Recipients should feel confident that messages from senders in your domain really came from senders in your domain.

Email authentication (also known as _email validation_) is a group of standards to identify and prevent the delivery of email messages from forged senders (also known as _spoofing_). Spoofed senders are commonly used in business email compromise (BEC), phishing, and other email attacks. These standards include:

- **Sender Policy Framework (SPF)**: Specifies the source email servers that are authorized to send mail for the domain.
- **DomainKeys Identified Mail (DKIM)**: Uses a domain to digitally sign important elements of the message to ensure the message hasn't been altered in transit.
- **Domain-based Message Authentication, Reporting and Conformance (DMARC)**: Specifies the action for messages that fail SPF or DKIM checks for senders in the domain, and specifies where to send the DMARC results (reporting).
- **Authenticated Received Chain (ARC)**: Preserves original email authentication information by known services that modify messages in transit. The destination email server can use this information to authenticate messages that would otherwise fail DMARC.

It's important to realize that these standards are _interdependent building blocks_ that _work together_ to provide the best possible email protection against spoofing and phishing attacks. _Anything less than all of the email authentication methods results in substandard protection_.

To configure email authentication for mail **sent from** Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, see the following articles:

- [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md)
- [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md)
- [Use DMARC to validate email](email-authentication-dmarc-configure.md)

To prevent email authentication failures due to services that modify **inbound** mail sent to your Microsoft 365 organization, see [Configure trusted ARC sealers](email-authentication-arc-configure.md).

The rest of this article explains:

- [Why internet email needs authentication](#why-internet-email-needs-authentication)
- [How SPF, DKIM, and DMARC work together to authenticate email message senders](#how-spf-dkim-and-dmarc-work-together-to-authenticate-email-message-senders)
- [How Microsoft uses email authentication to check inbound mail sent to Microsoft 365](#inbound-email-authentication-for-mail-sent-to-microsoft-365)
- [How to avoid email authentication failures when sending mail to Microsoft 365](#how-to-avoid-email-authentication-failures-when-sending-mail-to-microsoft-36)

## Why internet email needs authentication

By design, Simple Mail Transfer Protocol (SMTP) email on the internet makes no effort to validate that the message sender is who they claim to be.

A standard SMTP email message consists of a _message envelope_ and message content:

- The message envelope contains information for transmitting and receiving the message between SMTP servers. The message envelope is described in [RFC 5321](https://tools.ietf.org/html/rfc5321). Recipients never see the message envelope because it's generated during the message transmission process.
- The message content contains message header fields (collectively called the _message header_) and the message body. The message header is described in [RFC 5322](https://tools.ietf.org/html/rfc5322).

Because of this design, a message has multiple sender values:

- The MAIL FROM address (also known as the `5321.MailFrom` address, P1 sender, or envelope sender) is the email address that's used in the transmission of the message between SMTP email servers. This address is typically recorded in the **Return-Path** header field in the message header (although the source email server can designate a different **Return-Path** email address). This email address is used in non-delivery reports (also known as NDRs or bounce messages).
- The From address (also known as the `5322.From` address or P2 sender) is the email address in the **From** header field, and is the sender's email address that's shown in email clients.

The following example shows the simplified transcript of a valid message transmission between two SMTP email servers:

```console
S: HELO woodgrovebank.com
S: MAIL FROM: dubious@proseware.com
S: RCPT TO: astobes@tailspintoys.com
S: DATA
S: To: "Andrew Stobes" <astobes@tailspintoys.com>
S: From: "Woodgrove Bank Security" <security@woodgrovebank.com>
S: Subject: Woodgrove Bank - Action required
S:
S: Greetings,
S:
S: We need to verify your banking details.
S: Please click the following link to verify that we have the right information for your account.
S:
S: https://short.url/woodgrovebank/updateaccount/12-121.aspx
S:
S: Thank you,
S: Woodgrove Bank
S: .
```

In this example:

- The source email server identifies itself as woodgrovebank.com to the destination email server tailspintoys.com in the HELO command.
- The message recipient is `astobes@tailspintoys.com`.
- The MAIL FROM address in the message envelope (used to transmit the message between SMTP email servers) is `dubious@proseware.com`.
- The From address that's shown in the recipient's email client is `security@woodgrovebank.com`.

Although this message is valid according to SMTP, the domain of the MAIL FROM address (proseware.com) doesn't match the domain in the From address (woodgrovebank.com). This message is a classic example of spoofing, where the intent is likely to deceive the recipient by masking the true source of the message to use in a phishing attack.

Clearly, SMTP email needs help to verify that message senders are who they claim to be!

## How SPF, DKIM, and DMARC work together to authenticate email message senders

This section describes why you need SPF, DKIM, and DMARC for domains on the internet.

- **SPF**: As explained in [Set up SPF to identify valid email sources for your Microsoft 365 domain](email-authentication-spf-configure.md), SPF uses a TXT record in DNS to identify valid sources of mail from the MAIL FROM domain, and what to do if the destination email server receives mail from an undefined source ('hard fail' to reject the message; 'soft fail' to accept and mark the message).

  **SPF issues**:

  - SPF validates sources for senders in the MAIL FROM domain only. SPF doesn't consider the domain in the From address or alignment between the MAIL FROM and From domains:
    - An attacker can send email that passes SPF authentication (a false negative) by following these steps:
      - Register a domain (for example, proseware.com) and configure SPF for the domain.
      - Send email from a valid source for the registered domain, with the From email addresses in a different domain (for example, woodgrovebank.com).
    - A legitimate email service that sends mail on behalf of other domains might control the MAIL FROM address. The other domains and the MAIL FROM domain don't match, so the messages can't pass SPF authentication (a false positive).

  - SPF breaks after messages encounter server-based email forwarding that redirects or _relays_ messages.
    - Server-based email forwarding changes the message source from the original server to the forwarding server.
    - The forwarding server isn't authorized to send mail from the original MAIL FROM domain, so the message can't pass SPF authentication (a false positive).

  - Each domain and any subdomains require their own individual SPF records. Subdomains don't inherit the SPF record of the parent domain. This behavior becomes problematic if you want to allow email from defined and used subdomains, but prevent email from undefined and unused subdomains.

- **DKIM**: As explained in [Set up DKIM to sign mail from your Microsoft 365 domain](email-authentication-dkim-configure.md), DKIM uses a domain to digitally sign important elements of the message (including the From address) and stores the signature in the message header. The destination server verifies that the signed elements of the message weren't altered.

  **How DKIM helps SPF**: DKIM can validate messages that fail SPF. For example:

  - Messages from an email hosting service where the same MAIL FROM address is used for mail from other domains.
  - Messages that encounter server-based email forwarding.

  Because the DKIM signature in the message header isn't affected or altered in these scenarios, these messages are able to pass DKIM.

  **DKIM issues**: The domain that DKIM uses to sign a message doesn't need to match the domain in the From address that's shown in email clients.

  Like SPF, an attacker can send email that passes DKIM authentication (a false negative) by following these steps:

  - Register a domain (for example, proseware.com) and configure DKIM for the domain.
  - Send email with the From email addresses in a different domain (for example, woodgrovebank.com).

- **DMARC**: As explained in [Set up DMARC to validate the From address domain for senders in Microsoft 365](email-authentication-dmarc-configure.md), DMARC uses SPF and DMARC to check for alignment between the domains in the MAIL FROM and From addresses. DMARC also specifies the action that the destination email system should take on messages that fail DMARC, and identifies where to send DMARC results (both pass and fail).

  **How DMARC helps SPF and DKIM**: As previously described, SPF makes no attempt to match the domain in MAIL FROM domain and From addresses. DKIM doesn't care if the domain that signed the message matches the domain in the From address.

  DMARC addresses these deficiencies by using SPF and DKIM to confirm that the domains in the MAIL FROM and From addresses match.

  **DMARC issues**: Legitimate services that modify messages in transit before delivery break SPF, DKIM, and therefore DMARC checks.

- **ARC**: As explained in [Configure trusted ARC sealers](email-authentication-arc-configure.md), legitimate services that modify messages in transit can use ARC to preserve the original email authentication information of modified messages.

  **How ARC helps DMARC**: The destination email system can identify the service as a trusted ARC sealer. ARC can then use the preserved email authentication information to validate the message.

## Inbound email authentication for mail sent to Microsoft 365

Because of phishing concerns and less than complete adoption of strong email authentication policies by email senders on the internet, Microsoft 365 uses _implicit email authentication_ to check inbound email. Implicit email authentication extends regular SPF, DKIM, and DMARC checks by using signals from other sources to evaluate inbound email. These sources include:

- Sender reputation.
- Sender history.
- Recipient history.
- Behavioral analysis.
- Other advanced techniques.

To see Microsoft's original announcement about implicit authentication, see [A Sea of Phish Part 2 - Enhanced Anti-spoofing in Microsoft 365](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Schooling-A-Sea-of-Phish-Part-2-Enhanced-Anti-spoofing/ba-p/176209).

By using these other signals, messages that would otherwise fail traditional email authentication checks can pass implicit authentication and be allowed into Microsoft 365.

### Composite authentication

The results of Microsoft 365's implicit authentication checks are combined and stored in a single value named _composite authentication_ or `compauth` for short. The `compauth` value is stamped into the **Authentication-Results** header in the message headers. The **Authentication-Results** header uses the following syntax:

```text
Authentication-Results:
   compauth=<fail | pass | softpass | none> reason=<yyy>
```

These values are explained at [Authentication-results message header](message-headers-eop-mdo.md#authentication-results-message-header).

Admins and users can examine the message headers to discover how Microsoft 365 identified the sender as spoofed or legitimate.

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

- **Scenario**: The fabrikam.com domain has an SPF record and no DKIM record. The domains in the MAIL FROM and From addresses match.
- **Result**: The message can pass composite authentication, because the domain that passed SPF matches the domain in the From address:

  ```text
  Authentication-Results: spf=pass (sender IP is 10.2.3.4)
    smtp.mailfrom=fabrikam.com; contoso.com; dkim=none
    (message not signed) header.d=none; contoso.com; dmarc=bestguesspass
    action=none header.from=fabrikam.com; compauth=pass reason=109
  From: chris@fabrikam.com
  To: michelle@contoso.com
  ```

- **Scenario**: The fabrikam.com domain has a DKIM record without an SPF record. The domain that DKIM signed the message matches the domain in the From address.
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

## How to avoid email authentication failures when sending mail to Microsoft 36

> [!TIP]
> Microsoft 365 customers can use the following methods to allow messages from senders that are identified as spoofing or authentication failures:
>
> - [Spoof intelligence insight](anti-spoofing-spoof-intelligence.md).
> - [Allow entries for spoofed senders in the Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-spoofed-senders).
> - [Safe sender lists](create-safe-sender-lists-in-office-365.md)

- **Configure SPF, DKIM, and DMARC records for your domains**: Use the configuration information that's provided by your domain registrar or DNS hosting service. There are also third party companies dedicated to helping set up email authentication records.

  Many companies don't publish SPF records because they don't know all of the email sources for messages in their domain.

  1. Start by publishing an SPF record that contains all email sources that you know about (especially where your corporate traffic is located), and use the enforcement rule value "soft fail" (`~all`). For example:

     ```text
     fabrikam.com IN TXT "v=spf1 include:spf.fabrikam.com ~all"
     ```

     If you create this SPF record, Microsoft 365 treats inbound email from your corporate infrastructure as authenticated, but email from unidentified sources might still be marked as spoof if it fails composite authentication. However, this behavior is still an improvement from all email from senders in the domain being marked as spoof by Microsoft 365. Typically, destination email system accept messages from senders in the domain from unidentified sources when SPF is configured with a soft fail enforcement rule.

  2. Discover and include more email sources for your messages. For example:
     - On-premises email servers.
     - Email sent from a software-as-a-service (SaaS) provider.
     - Email sent from a cloud-hosting service (Microsoft Azure, GoDaddy, Rackspace, Amazon Web Services, etc.).

     After you identify all email sources for your domain, you can update your SPF record to use the enforcement rule value "hard fail" (`-all`).

  3. Set up DKIM to digitally sign messages.
  
  4. Set up DMARC to validate that the domains in the MAIL FROM and From addresses match, to specify what to do with messages that fail DMARC checks (reject or quarantine), and to identify reporting services to monitor DMARC results.

  5. If you use bulk senders to send email on your behalf, verify that the domain in the From address matches the domain that passes SPF or DMARC.

- **You host a domain's email or provide hosting infrastructure that can send email**:
  - Ensure your customers have documentation that explains how to configure SPF for their domains.
  - Consider DKIM signing DKIM outbound mail, even if the customer doesn't explicitly set up DKIM in their domain (sign with a default domain). You can even double-sign the email with DKIM signatures (with your company domain and the customer's domain if/when it's available).

  Delivery to Microsoft isn't guaranteed, even if you authenticate email originating from your platform. But, email authentication ensures that Microsoft doesn't automatically junk email from your customer domains simply because it isn't authenticated.
