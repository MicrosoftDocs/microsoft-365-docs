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
description: Zero-hour auto purge (ZAP) moves delivered messages in Microsoft 365 mailboxes to the Junk Email folder or quarantine if those messages are retroactively found to be spam, phishing, or contain malware.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 8/4/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
---

# Zero-hour auto purge (ZAP) in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Exchange Online mailboxes, zero-hour auto purge (ZAP) is a protection feature in Exchange Online Protection (EOP) that retroactively detects and neutralizes malicious phishing, spam, or malware messages that have already been delivered to Exchange Online mailboxes.

ZAP doesn't work in standalone EOP environments that protect on-premises mailboxes.

> [!NOTE]
> Currently in Preview, ZAP is also able to retroactively detect existing malicious chat messages in Microsoft Teams.

Spam and malware signatures in the service are updated in real-time on a daily basis. However, users can still receive malicious messages. For example:

- Zero-day malware that was undetectable during mail flow.
- Content that's weaponized after being delivered to users.

ZAP addresses these issues by continually monitoring spam and malware signature updates in the service. ZAP can find and take automated actions on messages that are already in a user's mailbox up to 48 hours after delivery. ZAP is seamless for users. Users aren't notified if a message is detected and moved.

Watch this short video to learn how ZAP in Microsoft Defender for Office 365 automatically detects and neutralizes threats in email.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWGrLg]

## Zero-hour auto purge (ZAP) for email messages

### Zero-hour auto purge (ZAP) for malware

For _read or unread messages_ that are found to contain malware after delivery, ZAP quarantines the message that contains the malware attachment. By default, only admins can view and manage quarantined malware messages. But, admins can create and use _quarantine policies_ to define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

> [!NOTE]
> Users can't release their own messages that were quarantined as malware, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined malware messages.

ZAP for malware is enabled by default in anti-malware policies. For more information, see [Configure anti-malware policies in EOP](anti-malware-policies-configure.md).

### Zero-hour auto purge (ZAP) for phishing

For _read or unread messages_ that are identified as _phishing_ (not _high confidence phishing_) after delivery, the ZAP outcome depends on the action that's configured for a **Phishing** verdict in the applicable anti-spam policy. The available actions and the possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**, **Redirect message to email address**, **Delete message**: ZAP takes no action on the message.
- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder.

  This is the default action for a **Phishing** verdict in the default anti-spam policy and custom anti-spam policies that you create in PowerShell.

- **Quarantine message**: ZAP quarantines the message.

  This is the default action for a **Phishing** verdict in the [Standard and Strict preset security policies](preset-security-policies.md#profiles-in-preset-security-policies), and in custom anti-spam policies that you create in the Defender portal.

By default, ZAP for phishing is enabled in anti-spam policies.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](anti-spam-policies-configure.md).

### Zero-hour auto purge (ZAP) for high confidence phishing

For _read or unread messages_ that are identified as _high confidence phishing_ after delivery, ZAP quarantines the message. By default, only admins can view and manage quarantined high confidence phishing messages. But, admins can create and use _quarantine policies_ to define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

> [!NOTE]
> Users can't release their own messages that were quarantined as high confidence phishing, regardless of how the quarantine policy is configured. If the policy allows users to release their own quarantined messages, users are instead allowed to _request_ the release of their quarantined high-confidence phishing messages.

ZAP for high confidence phishing is enabled by default. For more information, see [Secure by Default in Office 365](secure-by-default.md).

### Zero-hour auto purge (ZAP) for spam

For _unread messages_ that are identified as _spam_ or _high confidence spam_ after delivery, the ZAP outcome depends on the action that's configured for a **Spam** or **High confidence spam** verdict in the applicable anti-spam policy. The available actions and the possible ZAP outcomes are described in the following list:

- **Add X-Header**, **Prepend subject line with text**, **Redirect message to email address**, **Delete message**: ZAP takes no action on the message.
- **Move message to Junk Email**: ZAP moves the message to the Junk Email folder.

  For the **Spam** verdict, this is the default action in the default anti-spam policy, new custom anti-spam policies, and the [Standard preset security policy](preset-security-policies.md#profiles-in-preset-security-policies).

  For the **High confidence spam** verdict, this is the default action in the default anti-spam policy and new custom anti-spam policies.

- **Quarantine message**: ZAP quarantines the message.

  For the **Spam** verdict, this is the default action in the [Strict preset security policy](preset-security-policies.md#profiles-in-preset-security-policies).

  For the **High confidence spam** verdict, this is the default action in the [Standard and Strict preset security policies](preset-security-policies.md#profiles-in-preset-security-policies).

By default, users can view and manage messages that were quarantined as spam or high confidence spam where they're a recipient. But, admins can create and use _quarantine policies_ to define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).

By default, ZAP for spam is enabled in anti-spam policies.

For more information about configuring spam filtering verdicts, see [Configure anti-spam policies in Microsoft 365](anti-spam-policies-configure.md).

### How to see if ZAP moved your message

To determine if ZAP moved your message, you have the following options:

- **Number of messages**: Use the [Mailflow view in the Mailflow status report](reports-email-security.md#mailflow-view-for-the-mailflow-status-report) to see the number of ZAP-affected messages for the specified date range.
- **Message details**: Use [Threat Explorer (or real-time detections)](threat-explorer-about.md) to filter **All email** events by the value **ZAP** for the **Additional action** column.

> [!NOTE]
> ZAP is not logged in the Exchange mailbox audit logs as a system action.

### Zero-hour auto purge (ZAP) considerations for Safe Attachments in Microsoft Defender for Office 365

ZAP doesn't quarantine messages that are in the process of [Dynamic Delivery](safe-attachments-about.md#dynamic-delivery-in-safe-attachments-policies) in Safe Attachments policy scanning. If a phishing or spam signal is received for messages in this state, and the filtering verdict in the anti-spam policy is set to take some action on the message (Move to Junk, Redirect, Delete, or Quarantine), ZAP reverts to the 'Move to Junk' action.

## Zero-hour auto purge (ZAP) in Microsoft Teams

> [!NOTE]
> ZAP for Microsoft Teams is available only to customers with Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2 subscriptions. To configure ZAP for Teams protection, see [Microsoft Defender for Office 365 Plan 2 support for Microsoft Teams](mdo-support-teams-about.md).
>
> ZAP for Teams is available for internal Teams messages that are identified as malware or high confidence phishing. Currently, external messages aren't supported.
>
> Currently, ZAP for Teams is supported only for Teams chats, shared channels, and standard channels.

Teams is different than email, because everyone in a Teams chat receives the same copy of the message at the same time (there's no message bifurcation). When ZAP for Teams protection blocks a message, the message is blocked for everyone in the chat. The initial block happens right after delivery, but ZAP occurs up to 48 hours after delivery.

Exclusions for ZAP for Teams protection matter for message _recipients_, not message _senders_.

ZAP for Teams protection is able to take action on messages for _all_ recipients in a chat if _any_ recipients in the chat aren't excluded from ZAP for Teams protection. Only when _all_ recipients in a chat are excluded from ZAP for Teams protection will ZAP not take action on a message. These scenarios are illustrated in the following table:

|Scenario|Result|
|---|---|
|Group chat with Recipients A, B, C, and D. <br/><br/> Recipients A, B, C, and D are excluded from ZAP for Teams protection.|ZAP won't block messages sent to the group chat.|
|Group chat with Recipients A, B, C, and D. <br/><br/> Only recipients A, B, and C are excluded from ZAP for Teams protection.|ZAP is able to block messages sent to the group chat for all recipients.|
|Group chat with Recipients A, B, C, and D. <br/><br/> Recipients A, B, C, and D aren't excluded from ZAP for Teams protection. <br/><br/> Sender X is excluded from ZAP for Teams protection and sends a message to the group chat.|ZAP is able to block messages sent to the group chat for all recipients.|

**Sender view**:

:::image type="content" source="../../media/zero-hour-auto-purge-sender.png" alt-text="Image showing how ZAP for Teams protection works for the sender." lightbox="../../media/zero-hour-auto-purge-sender.png":::

**Recipient view**:

:::image type="content" source="../../media/zero-hour-auto-purge-recipient.png" alt-text="Image showing how ZAP for Teams protection works for the recipient." lightbox="../../media/zero-hour-auto-purge-recipient.png":::

### Zero-hour auto purge (ZAP) for high confidence phishing messages in Teams

For messages that are identified as high confidence phishing after delivery, ZAP for Teams protection blocks and quarantines the message. To set the quarantine policy that's used for high confidence phishing detections in ZAP for Teams, see [Microsoft Defender for Office 365 Plan 2 support for Microsoft Teams](mdo-support-teams-about.md).

### Zero-hour auto purge (ZAP) for malware in Teams messages

For messages that are identified as malware, ZAP for Teams protection blocks and quarantines the message. To set the quarantine policy that's used for malware detections in ZAP for Teams, see [Microsoft Defender for Office 365 Plan 2 support for Microsoft Teams](mdo-support-teams-about.md).

### How to see if ZAP blocked a Teams message

Currently, only admins can view and manage messages that were quarantined by ZAP for Teams protection. For more information, see [Use the Microsoft 365 Defender portal to manage Microsoft Teams quarantined messages](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-microsoft-teams-quarantined-messages).

## Zero-hour auto purge (ZAP) FAQ

### What happens if ZAP moves legitimate messages to the Junk Email folder?

Follow the normal process for [reporting false positives to Microsoft](submissions-report-messages-files-to-microsoft.md). ZAP moves the message from the Inbox folder to the Junk Email folder only if the service determines that the message is spam or malicious.

### What if I use the Quarantine folder instead of the Junk Mail folder?

ZAP takes action on a message based on the configuration of anti-spam policies as described earlier in this article.

### How is ZAP affected by the exceptions to protection features in EOP and Defender for Office 365?

[Safe sender lists](create-safe-sender-lists-in-office-365.md), mail flow rules, and other organizational block and allow settings take precedence over ZAP. These messages are excluded from ZAP, since the service is doing what you configured it to do. This behavior is another reason to be careful about configuring messages to bypass filtering.

### What are the licensing requirements for ZAP?

There are no special licensing requirements for ZAP for malware, spam, and phishing. ZAP works on all mailboxes hosted in Exchange Online. ZAP doesn't work in on-premises mailboxes that are protected by standalone EOP.

ZAP for Teams protection requires Microsoft 365 E5 or Microsoft Defender for Office 365 Plan 2 licenses.

### Does ZAP work on messages in other folders in the mailbox (for example, messages moved by Inbox rules)?

ZAP still works as long as the message hasn't been deleted, or as long as the same or stronger action hasn't already been applied. For example, if the message is in the Junk Email folder, and the action in the applicable anti-phishing policy is quarantine, ZAP quarantines the message.

### How does ZAP affect mailboxes on hold?

ZAP quarantines messages from mailboxes on hold. ZAP can move messages to the Junk Email folder based on the action that's configured for a spam or phishing verdict in anti-spam policies.

For more information about holds in Exchange Online, see [In-Place Hold and Litigation Hold in Exchange Online](/Exchange/security-and-compliance/in-place-and-litigation-holds).
