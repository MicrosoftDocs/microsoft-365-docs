---
title: Quarantined email messages
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: Admin
ms.topic: overview

localization_priority: Normal
search.appverid: 
  - MOE150
  - MED150
  - MET150
ms.assetid: 4c234874-015e-4768-8495-98fcccfc639b
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about quarantine in Exchange Online Protection (EOP) that holds potentially dangerous or unwanted messages.
ms.technology: mdo
ms.prod: m365-security
---

# Quarantined email messages in EOP

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine is available to hold potentially dangerous or unwanted messages.

Anti-malware policies automatically quarantine a message if *any* attachment is found to contain malware. For more information, see [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).

By default, anti-spam polices quarantine phishing messages, and deliver spam and bulk email messages to the user's Junk Email folder. But, you can also create and customize anti-spam policies to quarantine spam and bulk-email messages. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

Both users and admins can work with quarantined messages:

- Admins can work with all types of quarantined messages for all users. Only admins can work with messages that were quarantined as malware, high confidence phishing, or as a result of mail flow rules (also known as transport rules). For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md).

- Users can work with quarantined messages where they are a recipient if the message was quarantined as spam, bulk email, or (as of April 2020) phishing. For more information, see [Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md).

  To prevent users from managing their own quarantined phishing messages, admins can configure a different action for the **Phishing email** filtering verdict in anti-spam policies. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

- Admins and users can report false positives to Microsoft in quarantine.

For more information about, quarantine, see [Quarantine FAQ](quarantine-faq.md).
