---
title: Zero-hour auto purge (ZAP)
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Admin
ms.topic: conceptual

localization_priority: Normal
search.appverid: 
  - MOE150
  - MED150
  - MBS150
  - MET150
ms.assetid: 96deb75f-64e8-4c10-b570-84c99c674e15
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about how zero-hour auto purge (ZAP) can retroactively move delivered messages in an Exchange Online mailbox to the Junk Email folder or quarantine that are retroactively found to be spam or phishing.
ms.technology: mdo
ms.prod: m365-security
---

# Zero-hour auto purge (ZAP) in Exchange Online

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


## Basic features of ZAP

In Microsoft 365 organizations with mailboxes in Exchange Online, zero-hour auto purge (ZAP) is an email protection feature that retroactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered to Exchange Online mailboxes.

ZAP doesn't work in standalone Exchange Online Protection (EOP) environments that protect on-premises Exchange mailboxes.

## How ZAP works

Spam and malware signatures are updated in the service real-time on a daily basis. However, users can still receive malicious messages for a variety of reasons, including if content is weaponized after being delivered to users. ZAP addresses this issue by continually monitoring updates to the spam and malware signatures in the service. ZAP can find and remove messages that are already in a user's mailbox.

The ZAP action is seamless for the user; they aren't notified if a message is detected and moved.

[Safe sender lists](create-safe-sender-lists-in-office-365.md), mail flow rules (also known as transport rules), Inbox rules, or additional filters take precedence over ZAP. Similar to what happens in mail flow, this means that even if the service determines the delivered message needs ZAP, the message is not acted on because of the the safe senders configuration. This is another reason to be careful about configuring messages to bypass filtering.

### Malware ZAP

For **read or unread messages** that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. Only admins can view and manage malware messages from quarantine.

Malware ZAP is enabled by default in anti-malware policies. For more information, see [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).

### Phish ZAP

For **read or unread messages** that are identified as phishing after delivery, the ZAP outcome depends on the action that's configured for a **Phishing email** filtering verdict in the applicable anti-spam policy. The available filtering verdict actions for phishing and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**, **Redirect message to email address**, **Delete message**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder, as long as the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **Quarantine message**: ZAP quarantines the message.

By default, phish ZAP is enabled in anti-spam policies, and the default action for the **Phishing email** filtering verdict is **Quarantine message**, which means phish ZAP quarantines the message by default.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](configure-your-spam-filter-policies.md).

### Spam ZAP

For **unread messages** that are identified as spam after delivery, the ZAP outcome depends on the action that's configured for the **Spam** filtering verdict in the applicable anti-spam policy. The available filtering verdict actions for spam and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**, **Redirect message to email address**, **Delete message**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder, as long as the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **Quarantine message**: ZAP quarantines the message. End-users can view and manage their own spam quarantined messages.

By default, spam ZAP is enabled in anti-spam policies, and the default action for the **Spam** filtering verdict is **Move message to Junk Email folder**, which means spam ZAP moves **unread** messages to the Junk Email folder by default.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](configure-your-spam-filter-policies.md).

### ZAP considerations for Microsoft Defender for Office 365

ZAP will not quarantine any message that's in the process of [Dynamic Delivery](safe-attachments.md#dynamic-delivery-in-safe-attachments-policies) in Safe Attachments scanning, or where EOP malware filtering has already replaced the attachment with the **Malware Alert Text.txt** file. If a phishing or spam signal is received for these types of messages, and the filtering verdict in the anti-spam policy is set to take some action on the message (Move to Junk, Redirect, Delete, or Quarantine) then ZAP will default to a 'Move to Junk' action.

## How to see if ZAP moved your message

To determine if ZAP moved your message, you can use either the [Threat Protection Status report](view-email-security-reports.md#threat-protection-status-report) or [Threat Explorer (and real-time detections)](threat-explorer.md). Note that as a system action, ZAP is not logged in the Exchange mailbox audit logs.

## ZAP FAQ

### What happens if a legitimate message is moved to the Junk Email folder?

You should follow the normal reporting process for [false positives](report-junk-email-messages-to-microsoft.md). The only reason the message would be moved from the Inbox to the Junk Email folder would be because the service has determined that the message was spam or malicious.

### What if I use the Quarantine folder instead of the Junk Mail folder?

ZAP will take action on a message based on the configuration your anti-spam policies as described earlier in this article.

### What if I'm using safe senders, mail flow rules, or allowed/blocked sender lists?

Safe senders, mail flow rules, or block and allow organizational settings take precedence. These messages are excluded from ZAP since the service is doing what you configured it to do. This is another reason to be careful about configuring messages to bypass filtering.

### What are the licensing Requirements for ZAP to work?

There are no limitations on licenses. ZAP works on all mailboxes hosted on Exchange online. ZAP doesn't work in standalone Exchange Online Protection (EOP) environments that protect on-premises Exchange mailboxes.

### What if a message is moved to another folder (e.g. Inbox rules)?

ZAP still works as long as the message has not been deleted, or as long as the same, or stronger, action has not already been applied. For example, if the anti-phishing policy is set to quarantine and message is already in the Junk Email, then ZAP will take action to quarantine the message.

### How does ZAP affect mailboxes on hold?

ZAP won't quarantine messages from mailboxes on hold. ZAP can move messages to the Junk Email folder based on the action that's configured for a spam or phishing verdict in anti-spam policies.

For more information about holds in Exchange Online, see [In-Place Hold and Litigation Hold in Exchange Online](https://docs.microsoft.com/Exchange/security-and-compliance/in-place-and-litigation-holds).
