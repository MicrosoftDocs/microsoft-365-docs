---
title: "Create safe sender lists in Office 365"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150s
ms.assetid: 9721b46d-cbea-4121-be51-542395e6fd21
description: "If you want to be sure that you receive mail from a particular sender, because you trust them and their messages, you can adjust your allow list in a spam filter policy."
---

# Create safe sender lists in Office 365

If you're an Office 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, EOP offers multiple ways of ensuring that users will receive email from particular senders you trust. These options include Exchange mail flow rules (also known as transport rules), Outlook Safe Senders, IP Allow Lists (connection filtering), and the allowed sender/domain lists (anti-spam policies). Collectively, you can think of these options as _safe sender lists_.

The available safe sender lists are described in the following list in order from most recommended to least recommended:

1. Mail flow rules

2. Outlook Safe Senders

3. IP Allow List (connection filtering)

4. Allowed sender lists or allowed domain lists (anti-spam policies)

Mail flow rules allow the most flexibility to endure that only the right messages are allowed. Allowed sender and allowed domain lists in anti-spam policies aren't as secure as the IP Allow List, because the sender's email domain is easily spoofed. But, the IP Allow List also presents a risk, because email from _any_ domain that's sent from that IP address will bypass spam filtering.

> [!IMPORTANT]
> <ul><li>Be careful and monitor *any* exceptions that you to spam filtering using safe sender lists.</li><li>While you can use safe sender lists to help with false positives (good email marked as spam), you should consider this as a temporary solution and avoided it if possible. We don't recommend managing false positives by using safe sender lists, because it can inadvertently open your organization up to spoofing, impersonation, and other attacks. If you insist on using safe sender lists to manage false positives, you will need to be vigilant and keep the topic for [submitting spam, non-spam, and phishing mails to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md) at the ready.</li><li>To allow a domain to send unauthenticated email (bypass anti-spoofing protection) but not bypass anti-spam and anti-malware checks, you can add it to the [AllowedToSpoof safe sender list](walkthrough-spoof-intelligence-insight.md)</li><li></li></ul>

In contrast, you also have several options to block email from specific sources using _blocked sender lists_. For more information, see [Create block sender lists in Office 365](create-block-sender-lists-in-office-365.md).

## (Recommended) Use mail flow rules

Mail flow rules in Exchange Online and standalone EOP use conditions and exceptions to identify messages, and actions to specify what should be done to those messages. For more information, see [Mail flow rules (transport rules) in Exchange Online](https://docs.microsoft.com/Exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).

To ensure that only legitimate messages are allowed into your organization, configure the following settings in the mail flow rule:

- **Condition**: Configure one of the following conditions in the rule:

  - **A message header** \> **includes any of these words** \> **Header name**: `Authentication-Results` \> **Header value**: `dmarc=pass` or `dmarc=bestguesspass`

    This condition checks the sender authentication status of the sending email domain to ensure that the sending domain is not being spoofed. For more information about email authentication, see [SPF](set-up-spf-in-office-365-to-help-prevent-spoofing.md), [DKIM](use-dkim-to-validate-outbound-email.md), and [DMARC](use-dmarc-to-validate-email.md).

  - **The sender** \> **domain is** \> \<sending email domain\> AND use the IP Allow List to specify the the source IP address or address range.
  
    Use this condition if the sending domain does not have authentication. Be as restrictive as possible when it comes to the source IP addresses in the IP Allow List. We recommend an IP address range of /24 or less (less is better). Do not use IP address ranges that belong to consumer services (for example, outlook.com) or shared infrastructures.

    > [!IMPORTANT]
    > <ul><li>Never configure configure mail flow rules with *only* the sender domain as the condition to skip spam filtering. Doing so will *significantly* increase the likelihood that attackers can spoof the sending domain (or impersonate the full email address), skip all spam filtering, and skip sender authentication checks so the message will arrive in the recipient's Inbox.</li><li>Do not use domains you own (also known as accepted domains) or popular domains (for example, microsoft.com) as conditions in mail flow rules. Doing so is considered high risk since it creates opportunities for attackers to send email that would otherwise be filtered.</li><li>If you allow an IP address that's behind a network address translation (NAT) gateway, you need to know the servers that are involved in the NAT pool in order to know the scope of your IP Allow List. IP addresses and NAT participants can change. You need to periodically check your IP Allow List entries as part of your standard maintenance procedures.</li></ul>

- **Optional conditions**:

  - **The sender** \> **is internal/external** \> **Outside the organization**: This condition is implicit, but it's OK to use it to account for on-premises email servers that might not be correctly configured.

  - **The subject or body** \> **subject or body includes any of these words** \> \<keywords\>: If you can further restrict the messages by keywords or phrases in the subject line or message body, you can use this condition.

- **Action**: Configure both of these actions in the rule:

  1. **Modify the message properties** \> **set the spam confidence level (SCL)** \> **Bypass spam filtering**

  2. **A message header** \> **includes any of these words** \> **Header name**: \<CustomHeaderName\> **Header value**: \<CustomHeaderValue\>

     For example, `X-ETR: Bypass spam filtering for authenticated sender 'contoso.com'`. If you have more than one domain in the rule, you can customize the header text as appropriate.

When a message skips spam filtering due to a mail flow rule, the `SFV:SKN` value appears in the **X-Forefront-Antispam-Report** header. If the message is from a source that's on the IP Allow List, the `IPV:CAL` value also appears. These values can help you with troubleshooting.

![Mail flow rule settings in the EAC for bypassing spam filtering.](../../media/1-AllowList-SkipFilteringFromContoso.png)

## Use Outlook Safe Senders (end-user managed)

Instead of admin configuration at the organization level, end users can also allow email senders through Outlook Safe Senders. For instructions, see [Block senders or unblock senders in Outlook on the web](https://support.office.com/article/9bf812d4-6995-4d19-901a-76d6e26939b0) or [Overview of the Junk Email Filter](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089).

When messages are successfully authorized due to Safe Senders, the **X-Forefront-Antispam-Report** header field will contain the value `SFV:SFE, which indicates that spam, spoof, and phish filtering were bypassed.

## Use the IP Allow List

If you can't use mail flow rules as previously described, the next best option is to add the source email server or servers to the IP Allow List in the connection filter policy. For details, see [Configure connection filtering in Office 365](configure-the-connection-filter-policy.md).

**Notes**:

- It's important that you keep the number of allowed IP addresses to a minimum, so avoid using entire IP address ranges.

- Do not use IP address ranges that belong to consumer services (for example, outlook.com) or shared infrastructures.

- Regularly review the entries in the IP Allow List and remove the entries that you no longer need.

> [!CAUTION]
> Without additional verification like mail flow rules, email from sources in the IP Allow List skips spam filtering and sender authentication (SPF, DKIM, DMARC) checks. This creates a high risk of attackers successfully delivering email to the Inbox that would otherwise be filtered.

## Use allowed sender lists or allowed domain lists

The least desirable option is to use the allowed sender list or allowed domain list in anti-spam policies. You should avoid this option *if at all possible* because senders bypass all spam, spoof, and phish protection, and sender authentication (SPF, DKIM, DMARC). This method is best used for temporary testing only. The detailed steps can be found in [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md) topic.

The maximum limit for these lists is approximately 1000 entries; although, you will only be able to enter 30 entries into the portal. You must use PowerShell to add more than 30 entries.

> [!CAUTION]
> <ul><li>This method creates a high risk of attackers successfully delivering email to the Inbox that would otherwise be filtered.</li><li>Do not use domains you own (also known as accepted domains) or popular domains (for example, microsoft.com) in allowed domain lists.</li></ul>
