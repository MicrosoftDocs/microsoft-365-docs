---
title: Use DMARC to validate email, setup steps
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.date: 6/15/2023
ms.localizationpriority: high
search.appverid:
  - MET150
ms.assetid: 4a05898c-b8e4-4eab-bd70-ee912e349737
ms.collection:
  - m365-security
  - tier1
description: Learn how to configure Domain-based Message Authentication, Reporting, and Conformance (DMARC) to validate messages sent from your organization, contains information on DMARC reject or OReject.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Use DMARC to validate email

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Domain-based Message Authentication, Reporting, and Conformance ([DMARC](https://dmarc.org)) works with Sender Policy Framework (SPF) and DomainKeys Identified Mail (DKIM) to authenticate mail senders.

DMARC ensures the destination email systems trust messages sent from your domain. Using DMARC with SPF and DKIM gives organizations more protection against spoofing and phishing email. DMARC helps receiving mail systems decide what to do with messages from your domain that fail SPF or DKIM checks.

> [!TIP]
> Visit the [Microsoft Intelligent Security Association (MISA)](https://www.microsoft.com/misapartnercatalog) catalog to view third-party vendors offering DMARC reporting for Microsoft 365.

> [!TIP]
> **Have you seen our step-by-step guides?** Configuration 1-2-3s and no frills, for admins in a hurry. Visit for the steps to *[enable DMARC Reporting for Microsoft Online Email Routing Addresses (MOERA) and parked Domains](step-by-step-guides/how-to-enable-dmarc-reporting-for-microsoft-online-email-routing-address-moera-and-parked-domains.md)*.

## How do SPF and DMARC work together to protect email in Microsoft 365?

 An email message may contain multiple originator or sender addresses. These addresses are used for different purposes. For example, consider these addresses:

- **"Mail From" address**: Identifies the sender and says where to send return notices if any problems occur with the delivery of the message (such as non-delivery notices). *Mail From address* appears in the envelope portion of an email message and isn't displayed by your email application, and is sometimes called the *5321.MailFrom address* or the *reverse-path address*.

- **"From" address**: The address displayed as the From address by your mail application. *From address* identifies the author of the email. That is, the mailbox of the person or system responsible for writing the message. The *From address* is sometimes called the *5322.From address*.

SPF uses a DNS TXT record to list authorized sending IP addresses for a given domain. Normally, SPF checks are only performed against the 5321.MailFrom address. The 5322.From address isn't authenticated when you use SPF by itself, which allows for a scenario where a user gets a message that passed SPF checks but has a spoofed 5322.From sender address. For example, consider this SMTP transcript:

```console
S: Helo woodgrovebank.com
S: Mail from: phish@phishing.contoso.com
S: Rcpt to: astobes@tailspintoys.com
S: data
S: To: "Andrew Stobes" <astobes@tailspintoys.com>
S: From: "Woodgrove Bank Security" <security@woodgrovebank.com>
S: Subject: Woodgrove Bank - Action required
S:
S: Greetings User,
S:
S: We need to verify your banking details.
S: Please click the following link to verify that Microsoft has the right information for your account.
S:
S: https://short.url/woodgrovebank/updateaccount/12-121.aspx
S:
S: Thank you,
S: Woodgrove Bank
S: .
```

In this transcript, the sender addresses are as follows:

- Mail from address (5321.MailFrom): phish@phishing.contoso.com

- From address (5322.From): security@woodgrovebank.com

If you configured SPF, then the receiving server does a check against the Mail from address phish@phishing.contoso.com. If the message came from a valid source for the domain phishing.contoso.com, then the SPF check passes. Since the email client only displays the From address, the user sees this message came from security@woodgrovebank.com. With SPF alone, the validity of woodgrovebank.com was never authenticated.

When you use DMARC, the receiving server also performs a check against the From address. In the example above, if there's a DMARC TXT record in place for woodgrovebank.com, then the check against the From address fails.

## What is a DMARC TXT record?

Like the DNS records for SPF, the record for DMARC is a DNS text (TXT) record that helps prevent spoofing and phishing. You publish DMARC TXT records in DNS. DMARC TXT records validate the origin of email messages by verifying the IP address of an email's author against the alleged owner of the sending domain. The DMARC TXT record identifies authorized outbound email servers. Destination email systems can then verify that messages they receive originate from authorized outbound email servers.

Microsoft's DMARC TXT record looks something like this:

```console
_dmarc.microsoft.com.   3600    IN      TXT     "v=DMARC1; p=none; pct=100; rua=mailto:d@rua.contoso.com; ruf=mailto:d@ruf.contoso.com; fo=1"
```

For more third-party vendors who offer DMARC reporting for Microsoft 365, visit the [MISA catalog](https://www.microsoft.com/misapartnercatalog?IntegratedProducts=DMARCReportingforOffice365).

## Set up DMARC for inbound mail

You don't have to do a thing to set up DMARC for mail that you receive in Microsoft 365. It's all taken care of. If you want to learn what happens to mail that fails to pass our DMARC checks, see [How Microsoft 365 handles inbound email that fails DMARC](#how-microsoft-365-handles-inbound-email-that-fails-dmarc).

## Set up DMARC for outbound mail from Microsoft 365

If you use Microsoft 365 but you aren't using a custom domain (you use onmicrosoft.com), SPF is already set up for you and Microsoft 365 automatically generates a DKIM signature for your outgoing mail (for more information about this signature, see [Default behavior for DKIM and Microsoft 365](email-authentication-dkim-configure.md#DefaultDKIMbehavior)). To set up DMARC for your organization, you need to [Form the DMARC TXT record](#step-4-form-the-dmarc-txt-record-for-your-domain) for the onmicrosoft.com domain and publish it to DNS via [Office 365 Admin Center](https://admin.microsoft.com) > Settings > Domains > click on onmicrosoft.com domain > Add record.

 If you have a custom domain or are using on-premises Exchange servers along with Microsoft 365, you need to manually set up DMARC for your outbound mail. Setting up DMARC for your custom domain includes these steps:

- [Step 1: Identify valid sources of mail for your domain](#step-1-identify-valid-sources-of-mail-for-your-domain)

- [Step 2: Set up SPF for your domain](#step-2-set-up-spf-for-your-domain)

- [Step 3: Set up DKIM for your custom domain](#step-3-set-up-dkim-for-your-custom-domain)

- [Step 4: Form the DMARC TXT record for your domain](#step-4-form-the-dmarc-txt-record-for-your-domain)

### Step 1: Identify valid sources of mail for your domain

If you have already set up SPF, then you've already gone through this exercise. There are some further considerations for DMARC. When identifying sources of mail for your domain, answer these two questions:

- What IP addresses send messages from my domain?

- For mail sent from third parties on my behalf, will the 5321.MailFrom and 5322.From domains match?

### Step 2: Set up SPF for your domain

Now that you have a list of all your valid senders you can follow the steps to [Set up SPF to help prevent spoofing](email-authentication-spf-configure.md).

For example, assuming contoso.com sends mail from Exchange Online, an on-premises Exchange server whose IP address is 192.168.0.1, and a web application whose IP address is 192.168.100.100, the SPF TXT record would look like this:

```console
contoso.com  IN  TXT  " v=spf1 ip4:192.168.0.1 ip4:192.168.100.100 include:spf.protection.outlook.com -all"
```

As a best practice, ensure that your SPF TXT record takes into account third-party senders.

### Step 3: Set up DKIM for your custom domain

Once you've set up SPF, you need to set up DKIM. DKIM lets you add a digital signature to email messages in the message header. If you don't set up DKIM and instead allow Microsoft 365 to use the default DKIM configuration for your domain, DMARC may fail. This failure can happen because the default DKIM configuration uses your original *onmicrosoft.com* domain as the *5321.MailFrom* address, not your *custom* domain. This creates a mismatch between the *5321.MailFrom* and the *5322.From addresses* in all the email sent from your domain.

If you have third-party senders that send mail on your behalf and the mail they send has mismatched 5321.MailFrom and 5322.From addresses, DMARC will fail for that email. To avoid this, you need to set up DKIM for your domain specifically with that third-party sender. This allows Microsoft 365 to authenticate email from this 3rd-party service. However, it also allows others, for example, Yahoo, Gmail, and Comcast, to verify email sent to them by the third-party as if it was email sent by you. This is beneficial because it allows your customers to build trust with your domain no matter where their mailbox is located, and at the same time Microsoft 365 won't mark a message as spam due to spoofing because it passes authentication checks for your domain.

For instructions on setting up DKIM for your domain, including how to set up DKIM for third-party senders so they can spoof your domain, see [Use DKIM to validate outbound email sent from your custom domain](email-authentication-dkim-configure.md).

### Step 4: Form the DMARC TXT record for your domain

Although there are other syntax options that aren't mentioned here, these are the most commonly used options for Microsoft 365. Form the DMARC TXT record for your domain in the format:

```console
_dmarc.domain  TTL  IN  TXT  "v=DMARC1; p=policy; pct=100"
```

Where:

- *domain* is the domain you want to protect. By default, the record protects mail from the domain and all subdomains. For example, if you specify \_dmarc.contoso.com, then DMARC protects mail from the domain and all subdomains, such as housewares.contoso.com or plumbing.contoso.com.

- *TTL* should always be the equivalent of one hour. The unit used for TTL, either hours (1 hour), minutes (60 minutes), or seconds (3600 seconds), will vary depending on the registrar for your domain.

- *pct=100* indicates that this rule should be used for 100% of email.

- *policy* specifies what policy you want the receiving server to follow if DMARC fails. You can set the policy to none, quarantine, or reject.

For information about which options to use, become familiar with the concepts in [Best practices for implementing DMARC in Microsoft 365](#best-practices-for-implementing-dmarc-in-microsoft-365).

Examples:

- Policy set to none

    ```console
    _dmarc.contoso.com 3600 IN  TXT  "v=DMARC1; p=none"
    ```

- Policy set to quarantine

    ```console
    _dmarc.contoso.com 3600 IN  TXT  "v=DMARC1; p=quarantine"
    ```

- Policy set to reject

    ```console
    _dmarc.contoso.com  3600 IN  TXT  "v=DMARC1; p=reject"
    ```

Once you've formed your record, you need to update the record at your domain registrar.

## DMARC Mail

> [!CAUTION]
> Mails may not be sent out daily.

In this example DMARC TXT record: `dmarc.microsoft.com.   3600    IN      TXT     "v=DMARC1; p=none; pct=100; rua=mailto:d@rua.example.com; ruf=mailto:d@ruf.example.com; fo=1"`, you can see the *rua* address. This address is used to send 'aggregate feedback' for analysis, which is used to generate a report.

> [!TIP]
> Visit the [MISA catalog](https://www.microsoft.com/misapartnercatalog) to view more third-party vendors offering DMARC reporting for Microsoft 365. See [IETF.org's 'Domain-based Message Authentication, Reporting, and Conformance (DMARC)'](https://datatracker.ietf.org/doc/html/rfc7489) for more information on DMARC 'rua' addresses.

## Best practices for implementing DMARC in Microsoft 365

You can implement DMARC gradually without impacting the rest of your mail flow. Create and implement a roll-out plan that follows these steps. Do each of these steps first with a sub-domain, then other sub-domains, and finally with the top-level domain in your organization before moving on to the next step.

1. Monitor the impact of implementing DMARC

    Start with a simple monitoring-mode record for a sub-domain or domain that requests that DMARC receivers send you statistics about messages that they see using that domain. A monitoring-mode record is a DMARC TXT record that has its policy set to none (p=none). Many companies publish a DMARC TXT record with p=none because they're unsure about how much email they may lose by publishing a more restrictive DMARC policy.

    You can do this even before you've implemented SPF or DKIM in your messaging infrastructure. However, you won't be able to effectively quarantine or reject mail by using DMARC until you also implement SPF and DKIM. As you introduce SPF and DKIM, the reports generated through DMARC will give the numbers and sources of messages that pass these checks, versus those that don't. You can easily see how much of your legitimate traffic is or isn't covered by them, and troubleshoot any problems. You'll also begin to see how many fraudulent messages are being sent, and where they're sent from.

2. Request that external mail systems quarantine mail that fails DMARC

    When you believe that all or most of your legitimate traffic is protected by SPF and DKIM, and you understand the impact of implementing DMARC, you can implement a quarantine policy. A quarantine policy is a DMARC TXT record that has its policy set to quarantine (p=quarantine). By doing this, you're asking DMARC receivers to put messages from your domain that fail DMARC into the local equivalent of a spam folder instead of your customers' inboxes.

3. Request that external mail systems not accept messages that fail DMARC

    The final step is implementing a reject policy. A reject policy is a DMARC TXT record that has its policy set to reject (p=reject). When you do this, you're asking DMARC receivers not to accept messages that fail the DMARC checks.

4. How to set up DMARC for subdomain?

   DMARC is implemented by publishing a policy as a TXT record in DNS and is hierarchical (for example, a policy published for contoso.com will apply to sub.domain.contoso.com unless a different policy is explicitly defined for the subdomain). This is useful as organizations may be able to specify a smaller number of high-level DMARC records for wider coverage. Care should be taken to configure explicit subdomain DMARC records where you don't want the subdomains to inherit the top-level domain's DMARC record.

   Also, you can add a wildcard-type policy for DMARC when subdomains shouldn't be sending email, by adding the `sp=reject` value. For example:

   ```text
   _dmarc.contoso.com. TXT "v=DMARC1; p=reject; sp=reject; ruf=mailto:authfail@contoso.com; rua=mailto:aggrep@contoso.com"
   ```

## DMARC Reject

DMARC `p=reject` is a policy that's set in the DMARC TXT record by domain owners to notify service providers to *reject* email that fails DMARC.

It came about because when OReject is set as the default, rejected email was sent to quarantine in Enterprise, and to the Junk Email folder in Consumer (due to lack of quarantine in Consumer). However, with DMARC `p=reject`, the email is rejected.

Configuration can be done in the Microsoft 365 Defender portal, or by the [New-AntiPhishPolicy](/powershell/module/exchange/new-antiphishpolicy) or [Set-AntiPhishPolicy](/powershell/module/exchange/set-antiphishpolicy) cmdlets in [Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell). For more information, see the following articles:

- [Spoof protection and sender DMARC policies](anti-phishing-policies-about.md#spoof-protection-and-sender-dmarc-policies)
- [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md)
- [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md)

## How Microsoft 365 handles outbound email that fails DMARC

If a message is outbound from Microsoft 365 and fails DMARC, and you have set the policy to p=quarantine or p=reject, the message is routed through the [High-risk delivery pool for outbound messages](outbound-spam-high-risk-delivery-pool-about.md). There's no override for outbound email.

If you publish a DMARC reject policy (p=reject), no other customer in Microsoft 365 can spoof your domain because messages won't be able to pass SPF or DKIM for your domain when relaying a message outbound through the service. However, if you do publish a DMARC reject policy but don't have all of your email authenticated through Microsoft 365, some of it may be marked as spam for inbound email (as described above), or it will be rejected if you don't publish SPF and try to relay it outbound through the service. This happens, for example, if you forget to include some of the IP addresses for servers and apps that send mail on behalf of your domain when you form your DMARC TXT record.

## How Microsoft 365 handles inbound email that fails DMARC

If the DMARC policy of the sending domain is `p=reject`, [Exchange Online Protection](eop-about.md) (EOP) rejects the message by default. You can configure anti-phishing policies to honor or not honor `p=quarantine` and `p=reject` in sender DMARC policies, and specify separate actions for `p=quarantine` and `p=reject`. For more information, see [Spoof protection and sender DMARC policies](anti-phishing-policies-about.md#spoof-protection-and-sender-dmarc-policies).

When anti-phishing policies are configured to not honor `p=quarantine` or `p=reject` in DMARC policies, messages that fail DMARC are marked as spam and aren't rejected. Users can still get these messages in their inbox through these methods:

- Users add safe senders individually by using their email client.
- Admins can use the [spoof intelligence insight](anti-spoofing-spoof-intelligence.md#override-the-spoof-intelligence-verdict) or the [Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-spoofed-senders) to allow messages from the spoofed sender.
- Admins create an Exchange mail flow rule (also known as a transport rule) for all users that allows messages for those particular senders.

For more information, see [Create safe sender lists](create-safe-sender-lists-in-office-365.md).

## How Microsoft 365 utilizes Authenticated Received Chain (ARC)

All hosted mailboxes in Microsoft 365 will now gain the benefit of ARC with improved deliverability of messages and enhanced anti-spoofing protection. ARC preserves the email authentication results from all participating intermediaries, or hops, when an email is routed from the originating server to the recipient mailbox. Before ARC, modifications performed by intermediaries in email routing, like forwarding rules or automatic signatures, could cause DMARC failures by the time the email reached the recipient mailbox. With ARC, the cryptographic preservation of the authentication results allows Microsoft 365 to verify the authenticity of an email's sender.

Microsoft 365 currently utilizes ARC to verify authentication results when Microsoft is the ARC Sealer, but plan to add support for third-party ARC sealers in the future.

## Troubleshooting your DMARC implementation

If you've configured your domain's MX records where EOP isn't the first entry, DMARC failures won't be enforced for your domain.

If you're a customer, and your domain's primary MX record doesn't point to EOP, you won't get the benefits of DMARC. For example, DMARC won't work if you point the MX record to your on-premises mail server and then route email to EOP by using a connector. In this scenario, the receiving domain is one of your Accepted-Domains but EOP isn't the primary MX. For example, suppose contoso.com points its MX at itself and uses EOP as a secondary MX record, contoso.com's MX record looks like the following:

```console
contoso.com     3600   IN  MX  0  mail.contoso.com
contoso.com     3600   IN  MX  10 contoso-com.mail.protection.outlook.com
```

All, or most, email will first be routed to mail.contoso.com since it's the primary MX, and then mail will get routed to EOP. In some cases, you might not even list EOP as an MX record at all and simply hook up connectors to route your email. EOP doesn't have to be the first entry for DMARC validation to be done. It just ensures the validation, to be certain that all on-premise/non-O365 servers will do DMARC checks.  DMARC is eligible to be enforced for a customer's domain (not server) when you set up the DMARC TXT record, but it's up to the receiving server to actually do the enforcement.  If you set up EOP as the receiving server, then EOP does the DMARC enforcement.

:::image type="content" source="../../media/Tp_DMARCTroublehoot.png" alt-text="A troubleshooting graphic for DMARC" lightbox="../../media/Tp_DMARCTroublehoot.png":::

## For more information

Want more information about DMARC? These resources can help.

- [Anti-spam message headers](message-headers-eop-mdo.md) includes the syntax and header fields used by Microsoft 365 for DMARC checks.

- Take the [DMARC Training Series](https://www.m3aawg.org/activities/training/dmarc-training-series) from M<sup>3</sup>AAWG (Messaging, Malware, Mobile Anti-Abuse Working Group).

- Use the checklist at [dmarcian](https://space.dmarcian.com/deployment/).

- Go directly to the source at [DMARC.org](https://dmarc.org).

## See also

[How Microsoft 365 uses Sender Policy Framework (SPF) to prevent spoofing](email-authentication-anti-spoofing.md)

[**Set up SPF in Microsoft 365 to help prevent spoofing**](email-authentication-spf-configure.md)

[**Use DKIM to validate outbound email sent from your custom domain in Microsoft 365**](email-authentication-dkim-configure.md)

[Use trusted ARC Senders for legitimate mailflows](/microsoft-365/security/office-365-security/use-arc-exceptions-to-mark-trusted-arc-senders?view=o365-21vianet&preserve-view=true)
