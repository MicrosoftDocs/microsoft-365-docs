---
title: "End-user spam notifications in Office 36"
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
- MET150
ms.assetid: 56de4ed5-b0aa-4195-9f46-033d7cc086bc
ms.collection:
- M365-security-compliance
description: "When an admin enables end-user quarantine notifications in anti-spam policies, you'll receive periodic notification messages that list your quarantined messages (messages sent to you that were identified as spam or bulk and quarantined instead)."
---

# End-user spam notifications in Office 365

Quarantine holds potentially dangerous or unwanted messages in Office 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes. For more information, see [Quarantine in Office 365](quarantine-email-messages.md).

By default, end-user quarantine notifications are disabled in anti-spam policies. When an admin [enables end-user quarantine notifications](configure-your-spam-filter-policies.md) in anti-spam policies, you'll receive periodic email notifications about your quarantined messages. These notifications identify messages where you are a recipient, but the message was quarantined as spam or bulk email by spam filtering.

> [!NOTE]
> In October 2019, we removed the ability to release quarantined messages directly from end-user quarantine notifications. Instead, you now go to the Office 365 Security & Compliance Center to release your quarantined messages (either directly, or by clicking **Review** in the notification). For more information, see [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md). <br/><br/> Messages that were quarantined for phishing, malware, or by mail flow rules (also known as transport rules) are only available to admins. For more information, see [Find and release quarantined messages as an admin in Office 365](find-and-release-quarantined-messages-as-an-administrator.md).

An end-user spam notification contains the following information for each quarantined message:

- **Sender**: The send name and email address of the quarantined message.

- **Subject**: The subject line text of the quarantined message.

- **Date**: The date and time (in UTC) that the message was quarantined.

- **Block Sender**: Click this link to add the sender to your Blocked Senders list.

- **Review**: Click this link to go the the Quarantine in the Security & Compliance Center, where you can release, delete or report your quarantined messages.
