---
title: Create safe sender lists
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.collection: 
- m365-security
- tier2
ms.localizationpriority: medium
search.appverid:
  - MET150s
ms.assetid: 9721b46d-cbea-4121-be51-542395e6fd21
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn about the available and preferred options to allow inbound messages in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/14/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Create safe sender lists in EOP

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

If you're a Microsoft 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, EOP offers multiple ways of ensuring that users receive email from trusted senders. Collectively, you can think of these options as _safe sender lists_.

The available safe sender lists are described in the following list in order from most recommended to least recommended:

1. Allow entries for domains and email addresses (including spoofed senders) in the Tenant Allow/Block List.
2. Mail flow rules (also known as transport rules).
3. Outlook Safe Senders (the Safe Senders list that's stored in each mailbox that affects only that mailbox).
4. IP Allow List (connection filtering)
5. Allowed sender lists or allowed domain lists (anti-spam policies)

The rest of this article contains specifics about each method.

> [!IMPORTANT]
> Messages that are identified as malware or high confidence phishing are always quarantined, regardless of the safe sender list option that you use. For more information, see [Secure by default in Office 365](secure-by-default.md).
>
> Be careful to closely monitor _any_ exceptions that you make to spam filtering using safe sender lists.
>
> Always submit messages in your safe sender lists to Microsoft for analysis. For instructions, see [Report good email to Microsoft](submissions-admin.md#report-good-email-to-microsoft). If the messages or message sources are determined to be benign, Microsoft can automatically allow the messages, and you won't need to manually maintain the entry in safe sender lists.
>
> Instead of allowing email, you also have several options to block email from specific sources using _blocked sender lists_. For more information, see [Create block sender lists in EOP](create-block-sender-lists-in-office-365.md).

## Use allow entries in the Tenant Allow/Block List

Our number one recommended option for allowing mail from senders or domains is the Tenant Allow/Block List. For instructions, see [Create allow entries for domains and email addresses](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-domains-and-email-addresses) and [Create allow entries for spoofed senders](tenant-allow-block-list-email-spoof-configure.md#create-allow-entries-for-spoofed-senders).

Only if you can't use the Tenant Allow/Block List for some reason should you consider using a different method to allow senders.

## Use mail flow rules

> [!NOTE]
> You can't use message headers and mail flow rules to designate an internal sender as a safe sender. The procedures in this section work for external senders only.

Mail flow rules in Exchange Online and standalone EOP use conditions and exceptions to identify messages, and actions to specify what should be done to those messages. For more information, see [Mail flow rules (transport rules) in Exchange Online](/Exchange/security-and-compliance/mail-flow-rules/mail-flow-rules).

The following example assumes you need email from contoso.com to skip spam filtering. To do this, configure the following settings:

1. **Condition**: **The sender** \> **domain is** \> contoso.com.

2. Configure either of the following settings:
   - **Mail flow rule condition**: **The message headers** \> **includes any of these words**:
     - **Header name**: `Authentication-Results`
     - **Header value**: `dmarc=pass` or `dmarc=bestguesspass` (add both values).

     This condition checks the email authentication status of the sending email domain to ensure that the sending domain isn't being spoofed. For more information about email authentication, see [SPF](email-authentication-spf-configure.md), [DKIM](email-authentication-dkim-configure.md), and [DMARC](email-authentication-dmarc-configure.md).

   - **IP Allow List**: Specify the source IP address or address range in the connection filter policy. For instructions, see [Configure connection filtering](connection-filter-policies-configure.md).

     Use this setting if the sending domain doesn't use email authentication. Be as restrictive as possible when it comes to the source IP addresses in the IP Allow List. We recommend an IP address range of /24 or less (less is better). Don't use IP address ranges that belong to consumer services (for example, outlook.com) or shared infrastructures.

   > [!IMPORTANT]
   >
   > - Never configure mail flow rules with _only_ the sender domain as the condition to skip spam filtering. Doing so will _significantly_ increase the likelihood that attackers can spoof the sending domain (or impersonate the full email address), skip all spam filtering, and skip sender authentication checks so the message will arrive in the recipient's Inbox.
   >
   > - Do not use domains you own (also known as accepted domains) or popular domains (for example, microsoft.com) as conditions in mail flow rules. Doing so is considered high risk because it creates opportunities for attackers to send email that would otherwise be filtered.
   >
   > - If you allow an IP address that's behind a network address translation (NAT) gateway, you need to know the servers that are involved in the NAT pool in order to know the scope of your IP Allow List. IP addresses and NAT participants can change. You need to periodically check your IP Allow List entries as part of your standard maintenance procedures.

3. **Optional conditions**:
   - **The sender** \> **is internal/external** \> **Outside the organization**: This condition is implicit, but it's OK to use it to account for on-premises email servers that might not be correctly configured.
   - **The subject or body** \> **subject or body includes any of these words** \> \<keywords\>: If you can further restrict the messages by keywords or phrases in the subject line or message body, you can use those words as a condition.

4. **Action**: Configure both of the following actions in the rule:
   1. **Modify the message properties** \> **set the spam confidence level (SCL)** \> **Bypass spam filtering**.
   2. **Modify the message properties** \> **set a message header**:
      - **Header name**: For example, `X-ETR`.
      - **Header value**: For example, `Bypass spam filtering for authenticated sender 'contoso.com'`.

      If you've more than one domain in the rule, you can customize the header text as appropriate.

When a message skips spam filtering due to a mail flow rule, the value `SFV:SKN` value is stamped in the **X-Forefront-Antispam-Report** header. If the message is from a source that's on the IP Allow List, the value `IPV:CAL` is also added. These values can help you with troubleshooting.

:::image type="content" source="../../media/1-AllowList-SkipFilteringFromContoso.png" alt-text="Example mail flow rule settings in the new EAC to bypassing spam filtering." lightbox="../../media/1-AllowList-SkipFilteringFromContoso.png":::

## Use Outlook Safe Senders

> [!CAUTION]
> This method creates a high risk of attackers successfully delivering email to the Inbox that would otherwise be filtered; however, if a message from an entry in the user's Safe Senders or Safe Domains lists is determined to be malware or high confidence phishing, the message will be filtered.

Instead of an organizational setting, users or admins can add the sender email addresses to the Safe Senders list in the mailbox. For instructions, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md). Safe Senders list entries in the mailbox affect that mailbox only.

This method isn't desirable in most situations since senders will bypass parts of the filtering stack. Although you trust the sender, the sender can still be compromised and send malicious content. You should let our filters check every message and then [report the false positive/negative to Microsoft](submissions-report-messages-files-to-microsoft.md) if we got it wrong. Bypassing the filtering stack also interferes with [zero-hour auto purge (ZAP)](zero-hour-auto-purge.md).

When messages skip spam filtering due to entries in a user's Safe Senders list, the **X-Forefront-Antispam-Report** header field will contain the value `SFV:SFE`, which indicates that filtering for spam, spoof, and phishing (not high confidence phishing) was bypassed.

**Notes**:

- In Exchange Online, whether entries in the Safe Senders list work or don't work depends on the verdict and action in the policy that identified the message:
  - **Move messages to Junk Email folder**: Domain entries and sender email address entries are honored. Messages from those senders aren't moved to the Junk Email folder.
  - **Quarantine**: Domain entries aren't honored (messages from those senders are quarantined). Email address entries are honored (messages from those senders aren't quarantined) if either of the following statements are true:
    - The message isn't identified as malware or high confidence phishing (malware and high confidence phishing messages are quarantined).
    - The email address isn't also in a block entry in the [Tenant Allow/Block List](tenant-allow-block-list-email-spoof-configure.md#create-block-entries-for-domains-and-email-addresses).
- Entries for blocked senders and blocked domains are honored (messages from those senders are moved to the Junk Email folder). Safe mailing list settings are ignored.

## Use the IP Allow List

> [!CAUTION]
> Without additional verification like mail flow rules, email from sources in the IP Allow List skips spam filtering and sender authentication (SPF, DKIM, DMARC) checks. This result creates a high risk of attackers successfully delivering email to the Inbox that would otherwise be filtered; however, if a message from an entry in the IP Allow List is determined to be malware or high confidence phishing, the message will be filtered.

The next best option is to add the source email server or servers to the IP Allow List in the connection filter policy. For details, see [Configure connection filtering in EOP](connection-filter-policies-configure.md).

**Notes**:

- It's important that you keep the number of allowed IP addresses to a minimum, so avoid using entire IP address ranges whenever possible.
- Don't use IP address ranges that belong to consumer services (for example, outlook.com) or shared infrastructures.
- Regularly review the entries in the IP Allow List and remove the entries that you no longer need.

## Use allowed sender lists or allowed domain lists

> [!CAUTION]
>
> This method creates a high risk of attackers successfully delivering email to the Inbox that would otherwise be filtered; however, if a message from an entry in the allowed senders or allowed domains lists is determined to be malware or high confidence phishing, the message will be filtered.
>
> Do not use popular domains (for example, microsoft.com) in allowed domain lists.

The least desirable option is to use the allowed sender list or allowed domain list in anti-spam policies. You should avoid this option _if at all possible_ because senders bypass all spam, spoof, phishing protection (except high confidence phishing), and sender authentication (SPF, DKIM, DMARC). This method is best used for temporary testing only. The detailed steps can be found in [Configure anti-spam policies in EOP](anti-spam-policies-configure.md) topic.

The maximum limit for these lists is approximately 1000 entries; although, you'll only be able to enter 30 entries into the portal. You must use PowerShell to add more than 30 entries.

> [!NOTE]
> As of September 2022, if an allowed sender, domain, or subdomain is in an [accepted domain](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in your organization, that sender, domain, or subdomain must pass [email authentication](email-authentication-about.md) checks in order to skip anti-spam filtering.

## Considerations for bulk email

A standard SMTP email message consists of a _message envelope_ and message content. The message envelope contains information that's required for transmitting and delivering the message between SMTP servers. The message content contains message header fields (collectively called the _message header_) and the message body. The message envelope is described in RFC 5321, and the message header is described in RFC 5322. Recipients never see the actual message envelope because it's generated by the message transmission process, and it isn't actually part of the message.

- The `5321.MailFrom` address (also known as the **MAIL FROM** address, P1 sender, or envelope sender) is the email address that's used in the SMTP transmission of the message. This email address is typically recorded in the **Return-Path** header field in the message header (although it's possible for the sender to designate a different **Return-Path** email address). If the message can't be delivered, it's the recipient for the non-delivery report (also known as an NDR or bounce message).
- The `5322.From` address (also known as the **From** address or P2 sender) is the email address in the **From** header field, and is the sender's email address that's displayed in email clients.

Frequently, the `5321.MailFrom` and `5322.From` addresses are the same (person-to-person communication). However, when email is sent on behalf of someone else, the addresses can be different. This happens most often for bulk email messages.

For example, suppose that Blue Yonder Airlines has hired Margie's Travel to send advertising email messages. The message you receive in your Inbox has the following properties:

- The `5321.MailFrom` address is blueyonder.airlines@margiestravel.com.
- The `5322.From` address is blueyonder@news.blueyonderairlines.com, which is what you see in Outlook.

Safe sender lists and safe domain lists in anti-spam policies in EOP inspect only the `5322.From` addresses. This behavior is similar to Outlook Safe Senders that use the `5322.From` address.

To prevent this message from being filtered, you can take the following steps:

- Add blueyonder@news.blueyonderairlines.com (the `5322.From` address) as an Outlook Safe Sender.
- [Use a mail flow rule](#use-mail-flow-rules) with a condition that looks for messages from blueyonder@news.blueyonderairlines.com (the `5322.From` address), blueyonder.airlines@margiestravel.com (the `5321.MailFrom` address), or both.
