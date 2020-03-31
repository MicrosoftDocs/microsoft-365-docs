---
title: "Quarantine in Office 365"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MOE150
- MED150
- MET150
ms.assetid: 4c234874-015e-4768-8495-98fcccfc639b
ms.collection:
- M365-security-compliance
description: "Quarantine in Office 365 holds potentially dangerous or unwanted messages. Admins and end-users can access quarantine."
---

# Quarantine in Office 365

If you're an Office 365 customer with mailboxes in Exchange Online or a standalone Exchange Online Protection (EOP) customer without Exchange Online mailboxes, quarantine is available to hold potentially dangerous or unwanted messages.

Anti-malware policies automatically quarantine a message if *any* attachment is found to contain malware. For more information, see [Configure anti-malware policies in Office 365](configure-anti-malware-policies.md).

By default, anti-spam polices quarantine phishing messages, and deliver spam and bulk email messages to the user's Junk Email folder. But, you can also create and customize anti-spam policies to quarantine spam and bulk-email messages. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

Both users and admins can work with quarantined messages:

- Admins can work with all types of quarantined messages for all users. Only admins can work with messages that were quarantined as malware, high confidence phishing, or as a result of mail flow rules (also known as transport rules). For more information, see [Manage quarantined messages and files as an admin in Office 365](manage-quarantined-messages-and-files.md).

- Users can work with quarantined messages where they are a recipient if the message was quarantined as spam, bulk email, or (as of April, 2020) phishing. For more information, see [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md).

  To prevent users from managing their own quarantined phishing messages, admins can configure a different action for the **Phishing email** filtering verdict in anti-spam policies. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

- Admins and users can report false positives to Microsoft in quarantine.

For more information about, quarantine, see [Quarantine FAQ](quarantine-faq.md).
