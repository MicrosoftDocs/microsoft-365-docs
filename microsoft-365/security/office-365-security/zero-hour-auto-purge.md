---
title: "Zero-hour auto purge (ZAP) - retroactive protection against spam, malware, and phishing."
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MOE150
- MED150
- MBS150
- MET150
ms.assetid: 96deb75f-64e8-4c10-b570-84c99c674e15
ms.collection:
- M365-security-compliance
description: "Zero-hour auto purge (ZAP) is an email protection feature in Microsoft 365 that detects spam, malware, or phishing messages that have already been delivered to Exchange Online. How ZAP does this depends on the type of malicious content detected."
---

# Zero-hour auto purge (ZAP) - protection against spam and malware in Microsoft 365

## Overview

Zero-hour auto purge (ZAP) is an email protection feature in Microsoft 365 that retroactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered to Exchange Online mailboxes.

ZAP is available with the default Exchange Online Protection (EOP) that's included with any Microsoft 365 subscription that contains Exchange Online mailboxes. ZAP doesn't work in standalone EOP environments that protect on-premises Exchange mailboxes.

## How ZAP works

Microsoft 365 updates spam and malware signatures in real-time on a daily basis. However, users can still receive malicious messages for a variety of reasons, including if content is weaponized after being delivered to users. ZAP addresses this issue by continually monitoring updates to the Microsfot 365 spam and malware signatures. ZAP can find and remove messages that are already in a user's mailbox.

The ZAP action is seamless for the user; they aren't notified if a message is detected and moved.

[Safe sender lists](create-safe-sender-lists-in-office-365.md), mail flow rules (also known as transport rules), Inbox rules, or additional filters take precedence over ZAP.

### Malware ZAP

For **read or unread messages** that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. Only admins can view and manage malware messages from quarantine.

Malware ZAP is enabled by default in anti-malware policies. For more information, see [Configure anti-malware policies in Microsoft 365](configure-anti-malware-policies.md).

### Phish ZAP

For **read or unread messages** that are identified as phish after delivery, the ZAP outcome depends on the action that's configured for a **Phishing email** filtering verdict in the applicable anti-spam policy. The available filtering verdict actions for phish and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder, as long as the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **Redirect message to email address**, **Delete message**, **Quarantine message**: ZAP quarantines the message. Only admins can view and manage phish quarantined messages.

By default, phish ZAP is enabled in anti-spam policies, and the default action for the **Phishing email** filtering verdict is **Quarantine message**, which means phish ZAP quarantines the message by default.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](configure-your-spam-filter-policies.md).

### Spam ZAP

For **unread messages** that are identified as spam after delivery, the ZAP outcome depends on the action that's configured for the **Spam** filtering verdict in the applicable anti-spam policy. The available filtering verdict actions for spam and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder, as long as the junk email rule is enabled on the mailbox (it's enabled by default). For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **Redirect message to email address**, **Delete message**, **Quarantine message**: ZAP quarantines the message. End-users can view and manage their own spam quarantined messages.

By default, spam ZAP is enabled in anti-spam policies, and the default action for the **Spam** filtering verdict is **Move message to Junk Email folder**, which means spam ZAP moves **unread** messages to the Junk Email folder by default.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](configure-your-spam-filter-policies.md).

### ZAP considerations for Office 365 Advanced Threat Protection (ATP)

ZAP will not quarantine any message that's in the process of [Dynamic Delivery](dynamic-delivery-and-previewing.md) scanning, or where malware filtering has already replaced the attachment with the **Malware Alert Text.txt** file. If a phish or spam signal is received for these types of messages, and the filtering verdict in the anti-spam policy is set to take some action on the message (Move to Junk, Redirect, Delete, Quarantine) then ZAP will default to a 'Move to Junk' action.

## How to see if ZAP moved your message

To determine if ZAP moved your message, you can use either the [Threat Protection Status report](view-email-security-reports.md#threat-protection-status-report) or [Threat Explorer (and real-time detections)](threat-explorer.md). Note that as a system action, ZAP is not logged in the Exchange mailbox audit logs.

## ZAP FAQ

### Q: What happens if a legitimate message is moved to the Junk Email folder?

A: You should follow the normal reporting process for [false positives](report-junk-email-messages-to-microsoft.md). The only reason the message would be moved from the Inbox to the Junk Email folder would be because the service has determined that the message was spam or malicious.

### Q: What if I use the Quarantine folder instead of the Junk Mail folder?

A: ZAP will take action on a message based on the configuration your anti-spam policies as described earlier in this topic.

### Q: What if I'm using mail flow rules or allowed/blocked sender lists?

A: Mail flow rules or block and allow organizational settings take precedence. These messages are excluded from ZAP.

### Q: What if a message is moved to another folder (e.g. Inbox rules)?

A: ZAP still works as long as the message hasn't been deleted or moved to the Junk Email folder.

### Q: Does ZAP change the message header?

A: A ZAP action does not make any changes to the message header.

### Q: How does ZAP affect mailboxes on hold?

A: ZAP won't quarantine messages from mailboxes on hold. ZAP can move messages to the Junk Email folder based on the action that's configured for a spam or phishing verdict in anti-spam policies.

For more information about holds in Exchange Online, see [In-Place Hold and Litigation Hold in Exchange Online](https://docs.microsoft.com/Exchange/security-and-compliance/in-place-and-litigation-holds).
