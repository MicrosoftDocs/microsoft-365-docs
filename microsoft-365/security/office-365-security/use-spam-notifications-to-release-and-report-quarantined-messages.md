---
title: End-user spam notifications in Microsoft 365
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
  - MET150
ms.assetid: 56de4ed5-b0aa-4195-9f46-033d7cc086bc
ms.collection: 
  - M365-security-compliance
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about end-user spam notifications for quarantined messages in Exchange Online Protection (EOP).
ms.technology: mdo
ms.prod: m365-security
---

# Use user spam notifications to release and report quarantined messages

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](office-365-atp.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine holds potentially dangerous or unwanted messages. For more information, see [Quarantined messages in EOP](quarantine-email-messages.md).

By default, end-user spam notifications are disabled in anti-spam policies. When an admin [enables end-user spam notifications](configure-your-spam-filter-policies.md#configure-end-user-spam-notifications), recipients (including shared mailboxes with automapping enabled) will receive periodic notifications about their messages that were quarantined as spam, bulk email, or (as of April 2020) phishing.

For shared mailboxes, end-user spam notifications are only supported for users who are granted FullAccess permission to the shared mailbox. For more information, see [Use the EAC to edit shared mailbox delegation](https://docs.microsoft.com/Exchange/collaboration-exo/shared-mailboxes#use-the-eac-to-edit-shared-mailbox-delegation).

End User Spam notification is not supported for groups.

> [!NOTE]
> Messages that were quarantined as high confidence phishing, malware, or by mail flow rules (also known as transport rules) are only available to admins. For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md).

An end-user spam notification contains the following information for each quarantined message:

- **Sender**: The send name and email address of the quarantined message.

- **Subject**: The subject line text of the quarantined message.

- **Date**: The date and time (in UTC) that the message was quarantined.

- **Block Sender**: Click this link to add the sender to your Blocked Senders list. For more information, see [Block a mail sender](https://support.microsoft.com/office/b29fd867-cac9-40d8-aed1-659e06a706e4).

- **Release**: For spam (not phishing) messages, you can release the message here without going to Quarantine the Security & Compliance Center.

- **Review**: Click this link to go to Quarantine in the Security & Compliance Center, where you can (depending on why the message was quarantined) view, release, delete or report your quarantined messages. For more information, see [Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md).

![Example end-user spam notification](../../media/end-user-spam-notification.png)

> [!NOTE]
> A blocked sender can still send you mail. Any messages from this sender that make it to your mailbox will be immediately moved to the Junk Email folder. Future messages from this sender will go to your Junk Email folder or to the end-user quarantine. If you would like to delete these messages on arrival instead of quarantining them, use [mail flow Rules](https://docs.microsoft.com/exchange/security-and-compliance/mail-flow-rules/mail-flow-rules) (also known as transport rules) to delete the messages on arrival.
