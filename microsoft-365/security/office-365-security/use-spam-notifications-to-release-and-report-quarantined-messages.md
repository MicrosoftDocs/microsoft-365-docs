---
title: Quarantine notifications (end-user spam notifications) in Microsoft 365
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: conceptual

ms.localizationpriority: medium
search.appverid:
  - MOE150
  - MED150
  - MET150
ms.assetid: 56de4ed5-b0aa-4195-9f46-033d7cc086bc
ms.collection:
  - m365-security
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn about end-user spam notifications for quarantined messages in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Use quarantine notifications to release and report quarantined messages

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine holds potentially dangerous or unwanted messages. For more information, see [Quarantined messages in EOP](quarantine-email-messages.md).

_Quarantine policies_ define what users are allowed to do to quarantined messages based on why the message was quarantined (for supported features). For more information, see [Quarantine policies](quarantine-policies.md). Quarantine polices also control whether the affected recipients (including shared mailboxes) get periodic _quarantine notifications_ about their quarantined messages. Quarantine notifications are the replacement for end-user spam notifications for all supported protection features (not just anti-spam policy verdicts).

Quarantine notifications are not turned on in the built-in quarantine notifications named AdminOnlyAccessPolicy or DefaultFullAccessPolicy. Quarantine notifications are turned on in the built-in quarantine policy named NotificationEnabledPolicy [if your organization has it](quarantine-policies.md#full-access-permissions-and-quarantine-notifications). Otherwise, to turn on quarantine notifications in quarantine policies, you need to [create and configure a new quarantine policy](quarantine-policies.md#step-1-create-quarantine-policies-in-the-microsoft-365-defender-portal).

In addition, to allow the 'Block sender' option in quarantine notifications to work correctly, users need to be enabled for remote Powershell. For instructions, see [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell).

Admins can also use the global settings in quarantine policies to customize the sender's display name, disclaimer text in different languages, and the company logo that's used in quarantine notifications. For instructions, see [Configure global quarantine notification settings](quarantine-policies.md#configure-global-quarantine-notification-settings-in-the-microsoft-365-defender-portal).

For shared mailboxes, quarantine notifications are supported only for users who are granted FullAccess permission to the shared mailbox. For more information, see [Use the EAC to edit shared mailbox delegation](/Exchange/collaboration-exo/shared-mailboxes#use-the-eac-to-edit-shared-mailbox-delegation).

> [!NOTE]
> By default, messages that are quarantined as high confidence phishing, malware, by mail flow rules (also known as transport rules), or Safe Attachments policies in Defender for Office 365 are only available to admins (by default, the AdminOnlyAccessPolicy quarantine policy is used). For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md).
>
> Quarantine notifications for messages sent to distribution groups or mail-enabled security groups are sent to all group members.
>
> Quarantine notifications for messages sent to Microsoft 365 Groups are sent to all group members only if the **Send copies of group conversations and events to group members** setting is turned on.

When you receive a quarantine notification, the following information is always available for each quarantined message:

- **Sender**: The send name and email address of the quarantined message.
- **Subject**: The subject line text of the quarantined message.
- **Date**: The date and time (in UTC) that the message was quarantined.

The actions that are available in the quarantine notification depend on why the message was quarantined, and the permissions that are assigned by the associated quarantine policy. For more information, see [Quarantine policy permission details](quarantine-policies.md#quarantine-policy-permission-details).

By default, the following actions are available in the quarantine notification for messages that were quarantined as spam, high confidence spam, or bulk:

- **Block Sender**: Click this link to add the sender to the Blocked Senders list on _your_ mailbox. For more information, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4).
- **Release**: You can release the message here without going to **Quarantine** in the Microsoft 365 Defender portal.
- **Review**: Click this link to go to **Quarantine** in the Microsoft 365 Defender portal, where you can (depending on why the message was quarantined) view, release, delete or report your quarantined messages. For more information, see [Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md).

:::image type="content" source="../../media/end-user-spam-notification.png" alt-text="The example of a quarantine notification" lightbox="../../media/end-user-spam-notification.png":::

> [!NOTE]
> A blocked sender can still send you mail. Any messages from this sender that make it to your mailbox will be immediately moved to the Junk Email folder. Future messages from this sender will go to your Junk Email folder or to quarantine. If you would like to delete these messages on arrival instead of quarantining them, use [mail flow rules](/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) to delete the messages on arrival.
