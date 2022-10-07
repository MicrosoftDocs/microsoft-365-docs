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

ms.localizationpriority: medium
search.appverid:
  - MOE150
  - MED150
  - MET150
ms.assetid: 4c234874-015e-4768-8495-98fcccfc639b
ms.collection:
  - m365-security
  - m365initiative-defender-office365
ms.custom:
  - seo-marvel-apr2020
description: Admins can learn about quarantine in Exchange Online Protection (EOP) that holds potentially dangerous or unwanted messages.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# Quarantined email messages in EOP and Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, quarantine is available to hold potentially dangerous or unwanted messages.

Anti-malware policies automatically quarantine a message if _any_ attachment is found to contain malware. For more information, see [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).

By default, anti-spam policies quarantine phishing and high confidence phishing messages, and deliver spam, high confidence spam, and bulk email messages to the user's Junk Email folder. But, you can also create and customize anti-spam policies to quarantine spam, high confidence spam, and bulk-email messages. For more information, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

Both users and admins can work with quarantined messages:

- _Quarantine policies_ define what users are allowed to do or not do to quarantined messages based on why the message was quarantined (for supported features). Default quarantine policies enforce the historical capabilities as described below. Admins can create and apply custom quarantine policies that define less restrictive or more restrictive capabilities for users, and also turn on quarantine notifications. For more information, see [Quarantine policies](quarantine-policies.md).

- Admins can work with all types of quarantined messages for all users. By default, only admins can work with messages that were quarantined as malware, high confidence phishing, or as a result of mail flow rules (also known as transport rules). For more information, see [Manage quarantined messages and files as an admin in EOP](manage-quarantined-messages-and-files.md).

- By default, users can work with quarantined messages where they are a recipient and the message was quarantined as spam, bulk email, or phishing (not high confidence phishing). For more information, see [Find and release quarantined messages as a user in EOP](find-and-release-quarantined-messages-as-a-user.md).

  To prevent users from managing their own quarantined phishing messages, admins can assign a quarantine policy that denies access to quarantined messages from the **Phishing email** filtering verdict in anti-spam policies. For more information, see [Assign quarantine policies in anti-spam policies](quarantine-policies.md#anti-spam-policies)[Quarantine policies](quarantine-policies.md).

- Admins and users can report false positives to Microsoft in quarantine.

- How long quarantined messages are held in quarantine before they expire varies based on why the message was quarantined. The features that quarantine messages and their corresponding retention periods are described in the following table:

  |Quarantine reason|Default retention period|Customizable?|Comments|
  |---|---|:---:|---|
  |Messages quarantined by anti-spam policies: spam, high confidence spam, phishing, high confidence phishing, or bulk.|15 days: <ul><li>In the default anti-spam policy.</li><li>In anti-spam policies that you create in PowerShell.</li></ul> <p> 30 days in anti-spam policies that you create in the Microsoft 365 Defender portal.|Yes|You can configure (lower) this value in anti-spam policies. For more information, see the **Retain spam in quarantine for this many days** (_QuarantineRetentionPeriod_) setting in [Configure anti-spam policies](configure-your-spam-filter-policies.md).|
  |Messages quarantined by anti-phishing policies: spoof intelligence in EOP; user impersonation, domain impersonation, or mailbox intelligence in Defender for Office 365.|30 days|Yes|This retention period is also controlled by the **Retain spam in quarantine for this many days** (_QuarantineRetentionPeriod_) setting in **anti-spam** policies. The retention period that's used is the value from the first matching **anti-spam** policy that the recipient is defined in.|
  |Messages quarantined by anti-malware policies (malware messages).|30 days|No||
  |Messages quarantined by Safe Attachments policies in Defender for Office 365 (malware messages).|30 days|No||
  |Messages quarantined by mail flow rules: the action is **Deliver the message to the hosted quarantine** (_Quarantine_).|30 days|No||
  |Files quarantined by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams (malware files).|30 days|No|Files quarantined in SharePoint or OneDrive are removed fom quarantine after 30 days, but the blocked files remain in SharePoint or OneDrive in the blocked state.|

  When a message expires from quarantine, you can't recover it.

For more information about quarantine, see [Quarantine FAQ](quarantine-faq.yml).
