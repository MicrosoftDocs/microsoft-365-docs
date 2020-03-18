---
title: "How to prevent false positives from happening in Office 365"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection:
- M365-security-compliance
localization_priority: Priority
search.appverid:
- MOE150
- MET150
description: "Learn how to prevent false positives and keep real email out of junk in Office 365, Exchange Online, and standalone Exchange Online Protection (EOP)."
---

# How to prevent good email messages from being marked as spam in Office 365

 **Is your real email getting marked as spam in Office 365? Do this.**

If a good incoming email message is marked as spam (a _false positive_) in Office 365, Exchange Online, or standalone Exchange Online Protection (EOP), you should report the message to Microsoft by using the [Use the Report Message add-in](https://support.office.com/article/b5caa9f1-cdf3-4443-af8c-ff724ea719d2). Additionally, you can submit the message using [Submissions Explorer](admin-submission.md).

## Determine why the message was marked as spam

You can resolve many issues with false positives by viewing the email message header to determine why the message was marked as spam. To view the message header, see [View internet message headers in Outlook](https://support.office.com/article/cd039382-dc6e-4264-ac74-c048563d212c).

Specifically, you need to look for a header field named **X-Forefront-Antispam-Report**. The important values to look for are:

- **SFV:SPM**: The message was marked as spam by spam filtering (also known as spam filtering or content filtering). For more information, see [Office 365 email anti-spam protection](anti-spam-protection.md).

- **SFV:BLK**: The message was marked as spam because the sender's email address is on the **recipient's** Blocked Senders list. For more information, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **SFV:SKS**: The message was marked as spam **before** it could be examined by spam filtering. For example, a mail flow rule (also known as a transport rule) set the spam confidence level (SCL) that indicated the message was spam. For more information about the SCL, see [Spam confidence levels](spam-confidence-levels.md).

  Admins can run a message trace to see if a mail flow rule is responsible for the high SCL value. For more information, see [Message trace in the Security & Compliance Center](message-trace-scc.md).

- **SFV:SKB**: The message was marked as spam because it matched a block senders entry in an anti-spam policy (for example, the blocked senders list or the blocked domains list). For more information, see [Configure your spam filter policies](configure-your-spam-filter-policies.md).

- **SFV:BULK**: The message was identified as bulk email instead of spam by spam filtering. This happens when the bulk complaint level (BCL) value of the message is **greater than** the bulk threshold that's defined in the anti-spam policy settings (a higher BCL indicates the message is more likely to be spam). You can see the BCL value in the **X-Microsoft-Antispam** header field.

  Bulk mail (also known as _gray mail_) is undesirable but non-malicious marketing or advertising email that was intentionally or unintentionally requested by the user. Different users have different expectations for how bulk email should be handled, so you can create different policies or rules that allow or block bulk mail accordingly. For more information, see the following topics:

  - [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md)

  - [Bulk complaint level (BCL) in Office 365](bulk-complaint-level-values.md)

- **CAT:SPOOF** or **CAT:PHISH**: Indicates that the message appears to be spoofed, meaning that the message source cannot be validated and could be suspicious.

  If the message was from a spoofed sender, the corresponding legitimate sender will need to verify their email domain's SPF and DKIM records in their public DNS. Check the **Authentication-Results** header field for more information. Although it may be difficult to get all senders to use proper email authentication methods, bypassing these checks can be extremely dangerous and is the top cause of spoofing and phishing messages.

> [!NOTE]
> <ul><li>To learn more about other anti-spam message headers and values, see [Anti-spam message headers](anti-spam-message-headers.md).</li><li>Other header fields and values that aren't specifically described are used exclusively by the Microsoft anti-spam team for diagnostic purposes.</li><li>An <b>X-CustomSpam</b> header field in the message header indicates the message was marked as spam by the Advanced Spam Filter (ASF) settings in anti-spam policies. We're in the process of moving ASF functionality to other parts of the filtering stack, and we recommend that you <b>turn off</b> the ASF settings that are currently available in anti-spam policies. For more information, see [Advanced Spam Filter (ASF) settings in Office 365](advanced-spam-filtering-asf-options.md)</li></ul>.

## Solutions for too much spam

In order for spam filtering to be the most effective, an admin needs to configure a few settings in the organization. If you aren't an admin, you can skip to the users section.

### For admins

- **Point your email domain's MX record to Office 365**: In order for Office 365 to provide protection, the MX record for all email domains in Office 365 must point to Office 365, and only to Office 365 (that is, email for recipients in those domains is always delivered to Office 365 first). If the MX record points to some other location (for example, a third-party anti-spam solution or appliance), Office 365 can't provide spam filtering for your users. In this scenario, you need to configure Enhanced Filtering for connectors (also known as _skip listing_. For instructions, see [Enhanced Filtering for Connectors in Exchange Online](https://docs.microsoft.com/exchange/mail-flow-best-practices/use-connectors-to-configure-mail-flow/enhanced-filtering-for-connectors)

- **Turn on the report message add-in for users**: We strongly recommend that you enable the Report Message add-in for you users. For instructions, see [Enable the Report Message add-in](enable-the-report-message-add-in.md).

- **Use Submissions Explorer**: Admins can now submit email messages for scanning by Microsoft. As an admin, you may also be able to view the feedback sent by your users. You can use patterns in their false positive reporting to adjust your spam filtering settings. For more information, see [How to submit suspected spam, phish, URLs, and files to Microsoft for Office 365 scanning](admin-submission.md).

- **Verify that your users are within the allowed limits** as described in [Receiving and sending limits](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description/exchange-online-limits#receiving-and-sending-limits) in the Exchange Online service description.

- **Verify the BCL levels in you anti-spam policies** as described earlier in this topic.

### For users

- **Add the sender to your Safe Senders list** in [Outlook](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089) or [Outlook on the web](https://support.office.com/article/db786e79-54e2-40cc-904f-d89d57b7f41d). Admins can also do this on behalf of users. For more information, see [Configure junk email settings on Exchange Online mailboxes in Office 365](configure-junk-email-settings-on-exo-mailboxes.md).

  Office 365 will use your Safe Senders list and Safe Recipients list, but not your Safe Domains list. This is true regardless of how you add the domain to the list (in Outlook, in Outlook on the web, or in Outlook and then synchronized by directory synchronization).

- **Disable the Outlook Junk Email Filter**: When the Outlook Junk Email Filter is set to the default value **No automatic filtering** in **Home** \> **Junk** \> **Junk E-Mail Options** \> **Options**, Outlook doesn't attempt to classify massages as spam.

  When the Outlook Junk Email Filter is set to **Low** or **High**, the Outlook Junk Email Filter uses its own SmartScreen filter technology to identify and move spam to the Junk Email folder, so you could get false positives. Note that Microsoft stopped producing spam definition updates for the SmartScreen filters in Exchange and Outlook in November, 2016. The existing SmartScreen spam definitions were left in place, but their effectiveness will likely degrade over time.

  For more information about these settings, see [Overview of the Junk Email Filter](https://support.office.com/article/5ae3ea8e-cf41-4fa0-b02a-3b96e21de089).

## Troubleshooting: A message is delivered to the Junk email folder after passing spam filtering

If a user has the **Safe Lists Only** option selected in their Outlook junk email options, all messages from people who aren't in their Safe Senders list or Safe Recipients list will go to the Junk Email folder, regardless of whether the message passed your organization's spam filtering, or if a mail flow rule marked the message to bypass spam filtering (an SCL value of -1).

The message header will include the **X-Forefront-Antispam-Report** header field value `SFV:SKN` (the message was marked as not spam before processing by the aspam filtering) or `SFV:NSPM` (spam filtering determined the message wasn't spam), but the message is still delivered to the user's **Junk email** folder.

Nothing in the message header will indicate that the message was delivered junk because of the user's **Safe Lists Only** setting. But, you can use the **Get-MailboxJunkEmailConfiguration** cmdlet in Exchange Online PowerShell to see if a user only allows messages from trusted senders to be delivered to their Inbox.

Replace \<MailboxIdentity\> with the name, alias, or email address of the mailbox and run the following command in [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell):

```PowerShell
Get-MailboxJunkEmailConfiguration -Identity "<MailboxIdentity>" | Format-List TrustedListsOnly,ContactsTrusted,TrustedSendersAndDomains
```

- If the *TrustedListsOnly* property value is `True`: Messages that aren't from trusted senders or recipients (that is, people who aren't in the user's Safe Senders list and Safe Recipients list) will go to their Junk Email folder.

- If the *ContactsTrusted* property value is `True`: The user's Contacts are also identified as trusted senders. If the *TrustedListsOnly* property value is also `True`, messages from people that aren't in the user's Safe Senders list, Safe Recipients list, or Contacts will go to their **Junk email** folder.

- The *TrustedSendersAndDomains* property value contains the user's Safe Senders list.

To change these setting on the mailbox, replace \<MailboxIdentity\> with the name, alias, or email address of the mailbox and run the following command:

```PowerShell
Set-MailboxJunkEmailConfiguration -Identity "<MailboxIdentity>" -TrustedListsOnly $false -ContactsTrusted $false
```

For detailed syntax, parameter, and required permissions information, see the topics [Get-MailboxJunkEmailConfiguration](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/get-mailboxjunkemailconfiguration) and [Set-MailboxJunkEmailConfiguration](https://docs.microsoft.com/powershell/module/exchange/antispam-antimalware/set-mailboxjunkemailconfiguration).

## Directory synchronization for standalone EOP customers

If you use standalone EOP to help protect your on-premises Exchange organization, you should sync user settings with the service by using directory synchronization. Doing this ensures that your users' Safe Senders lists are respected by EOP. For more information, see [Use directory synchronization to manage mail users](manage-mail-users-in-eop.md#use-directory-synchronization-to-manage-mail-users).
