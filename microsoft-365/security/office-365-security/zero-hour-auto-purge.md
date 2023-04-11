---
title: Zero-hour auto purge in Microsoft Defender for Office 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid:
  - MOE150
  - MED150
  - MBS150
  - MET150
ms.assetid: 96deb75f-64e8-4c10-b570-84c99c674e15
ms.collection:
  - m365-security
  - tier2
ms.custom:
  - seo-marvel-apr2020
description: Zero-hour auto purge (ZAP) retroactively moves delivered messages in an Exchange Online mailbox to the Junk Email folder or quarantine if those messages are found to be spam, phishing, or contain malware.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 3/28/2023
---

# Zero-hour auto purge (ZAP) in Microsoft Defender for Office 365

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

## Zero-hour auto purge (ZAP) basics

In Microsoft 365 organizations with Exchange Online mailboxes and in Microsoft Teams, zero-hour auto purge (ZAP) is a protection feature that retroactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered to Exchange Online mailboxes or over Teams chat.

ZAP doesn't work in standalone Exchange Online Protection (EOP) environments that protect on-premises Exchange mailboxes.

## Zero-hour auto purge (ZAP) in Exchange Online

Spam and malware signatures are updated in the service real-time on a daily basis. However, users can still receive malicious messages for a variety of reasons, including if content is weaponized after being delivered to users. ZAP addresses this issue by continually monitoring updates to the spam and malware signatures in the service. ZAP can find and take automated actions on messages that are already in a user's mailbox up to 48 hours after delivery.

The ZAP action is seamless for the user; they aren't notified if a message is detected and moved.

[Safe sender lists](create-safe-sender-lists-in-office-365.md), mail flow rules (also known as transport rules), Inbox rules, or additional filters take precedence over ZAP. Similar to what happens in mail flow, this means that even if the service determines the delivered message needs ZAP, the message isn't acted on because of the safe senders configuration. This is another reason to be careful about configuring messages to bypass filtering.

Watch this short video to learn how ZAP in Microsoft Defender for Office 365 automatically detects and neutralizes threats in email.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWGrLg]

### Zero-hour auto purge (ZAP) for malware

For **read or unread messages** that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. By default, only admins can view and manage quarantined malware messages. But, admins can create and use _quarantine policies_ to define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

> [!NOTE]
> Users can't release their own messages that were quarantined as malware, regardless of how the quarantine policy is configured. At best, admins can create and configure a quarantine policy so users can view and _request_ the release of their quarantined malware messages, although we typically don't recommend it.

ZAP for malware is enabled by default in anti-malware policies. For more information, see [Configure anti-malware policies in EOP](anti-malware-policies-configure.md).

### Zero-hour auto purge (ZAP) for phishing

For **read or unread messages** that are identified as phishing after delivery, the ZAP outcome depends on the action that's configured for a **Phishing email** filtering verdict in the applicable anti-spam policy. The available filtering verdict actions for phishing and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**, **Redirect message to email address**, **Delete message**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder. For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **Quarantine message**: ZAP quarantines the message.

By default, ZAP for phishing is enabled in anti-spam policies, and the default action for the **Phishing email** filtering verdict is **Quarantine message**, which means ZAP for phishing quarantines the message by default.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](anti-spam-policies-configure.md).

### Zero-hour auto purge (ZAP) for high confidence phishing

For **read or unread messages** that are identified as high confidence phishing after delivery, ZAP quarantines the message. By default, only admins can view and manage quarantined high confidence phish messages. But, admins can create and use _quarantine policies_ to define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

> [!NOTE]
> Users can't release their own messages that were quarantined as high confidence phishing, regardless of how the quarantine policy is configured. At best, admins can create and configure a quarantine policy so users can view and _request_ the release of their quarantined high confidence phishing messages, although we typically don't recommend it.

ZAP for high confidence phish is enabled by default. For more information, see [Secure by Default in Office 365](secure-by-default.md).

### Zero-hour auto purge (ZAP) for spam

For **unread messages** that are identified as spam after delivery, the ZAP outcome depends on the action that's configured for the **Spam** filtering verdict in the applicable anti-spam policy. The available filtering verdict actions for spam and their possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**, **Redirect message to email address**, **Delete message**: ZAP takes no action on the message.

- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder. For more information, see [Configure junk email settings on Exchange Online mailboxes in Microsoft 365](configure-junk-email-settings-on-exo-mailboxes.md).

- **Quarantine message**: ZAP quarantines the message. By default, end-users can view and manage spam quarantined messages where they're a recipient. But, admins can create and use _quarantine policies_ to define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

By default, spam ZAP is enabled in anti-spam policies, and the default action for the **Spam** filtering verdict is **Move message to Junk Email folder**, which means spam ZAP moves **unread** messages to the Junk Email folder by default.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](anti-spam-policies-configure.md).

### How to see if ZAP moved your message

To determine if ZAP moved your message, you have the following options:

- **Number of messages**: Use the [Mailflow view in the Mailflow status report](reports-email-security.md#mailflow-view-for-the-mailflow-status-report) to see the number of ZAP-affected messages for the specified date range.
- **Message details**: Use [Threat Explorer (and real-time detections)](threat-explorer-about.md) to filter **All email** events by the value **ZAP** for the **Additional action** column.

> [!NOTE]
> ZAP is not logged in the Exchange mailbox audit logs as a system action.

### Zero-hour auto purge (ZAP) considerations for Microsoft Defender for Office 365

ZAP will not quarantine any message that's in the process of [Dynamic Delivery](safe-attachments-about.md#dynamic-delivery-in-safe-attachments-policies) in Safe Attachments policy scanning. If a phishing or spam signal is received for messages in this state, and the filtering verdict in the anti-spam policy is set to take some action on the message (Move to Junk, Redirect, Delete, or Quarantine) then ZAP will default to a 'Move to Junk' action.

## Zero-hour auto purge (ZAP) in Microsoft Teams

> [!NOTE]
> This section lists new features which are currently in preview.

When a chat message is identified as potentially phishing or malicious in Microsoft Teams, ZAP blocks the message and quarantines it. This message is blocked for both the recipient and the sender. Note that this protection feature only applies to messages in a chat or in a meeting within the organization.

**Sender view**:

:::image type="content" source="../../media/zero-hour-auto-purge-sender.png" alt-text="Image showing how zero-hour auto purge works for the sender." lightbox="../../media/zero-hour-auto-purge-sender.png":::

**Recipient view**:

:::image type="content" source="../../media/zero-hour-auto-purge-recipient.png" alt-text="Image showing how zero-hour auto purge works for the recipient." lightbox="../../media/zero-hour-auto-purge-recipient.png":::

Admins can view and manage these quarantined messages in Microsoft Teams. For more information, see [Manage quarantined messages and files as an admin](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-messages-in-microsoft-teams). Note that if you're not an admin, you won't be able to view or manage quarantined messages for this release.

> [!NOTE]
> Zero-hour auto purge (ZAP) in Microsoft Teams is available only to customers with Microsoft Defender for Office 365 E5 and Defender for Office P2 subscriptions.

### Zero-hour auto purge (ZAP) for high confidence phishing in Teams

For messages that are identified as high confidence phishing after delivery, ZAP blocks and quarantines the message. By default, only admins can view and manage quarantined high confidence phishing messages.

### Zero-hour auto purge (ZAP) for malware in Teams

For messages that are identified as malware, ZAP blocks and quarantines the message. By default, only admins can view and manage quarantined malware messages.

Note that for this release, ZAP is available only for messages that are identified as high confidence phish or malware.

### Review messages blocked in Teams

To find out if ZAP blocked your message, see [Manage quarantined messages and files as an admin](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-messages-in-microsoft-teams).

## Zero-hour auto purge (ZAP) FAQ

### What happens if a legitimate message is moved to the Junk Email folder?

You should follow the normal reporting process for [false positives](submissions-report-messages-files-to-microsoft.md). The only reason the message would be moved from the Inbox to the Junk Email folder would be because the service has determined that the message was spam or malicious.

### What if I use the Quarantine folder instead of the Junk Mail folder?

ZAP will take action on a message based on the configuration your anti-spam policies as described earlier in this article.

### What if I'm using safe senders, mail flow rules, or allowed/blocked sender lists?

Safe senders, mail flow rules, or block and allow organizational settings take precedence. These messages are excluded from ZAP since the service is doing what you configured it to do. This is another reason to be careful about configuring messages to bypass filtering.

### What are the licensing Requirements for Zero-hour auto purge (ZAP) to work?

There are no limitations on licenses. ZAP works on all mailboxes hosted on Exchange online. ZAP doesn't work in standalone Exchange Online Protection (EOP) environments that protect on-premises Exchange mailboxes.

### What if a message is moved to another folder (e.g. Inbox rules)?

Zero-hour auto purge still works as long as the message hasn't been deleted, or as long as the same, or stronger, action hasn't already been applied. For example, if the anti-phishing policy is set to quarantine and message is already in the Junk Email, then ZAP will take action to quarantine the message.

### How does ZAP affect mailboxes on hold?

Zero-hour auto purge will quarantine messages from mailboxes on hold. ZAP can move messages to the Junk Email folder based on the action that's configured for a spam or phishing verdict in anti-spam policies.

For more information about holds in Exchange Online, see [In-Place Hold and Litigation Hold in Exchange Online](/Exchange/security-and-compliance/in-place-and-litigation-holds).
