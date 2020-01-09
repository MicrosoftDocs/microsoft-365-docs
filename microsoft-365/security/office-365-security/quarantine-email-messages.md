---
title: "Quarantine email messages in Office 365"
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 6/29/2018
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
description: "You can set up a quarantine for incoming email messages in Office 365 where incoming email messages that have been filtered as spam, bulk, phishing mail, and malware can be kept for later review."
---

# Quarantine email messages in Office 365

You can set up quarantine for incoming email messages in Office 365 where messages that have been filtered as spam, bulk mail, phishing mail, mail that contains malware, and mail that matched a specified mail flow rule can be kept for later review.
  
By default, filtered messages are sent to quarantine, except for spam bulk and mail which is sent to the recipients' Junk Email folder by default. As an admin, you can set up content filter policies to send all filtered messages to quarantine instead. The different actions that you can take for content-filtered messages depend on the [Configure your spam filter policies](configure-your-spam-filter-policies.md).
  
Both users and admins can work with quarantined messages. Users can work with just their own filtered messages in quarantine. Admins can search for and manage quarantined messages for all users.

> [!NOTE]
> High confidence phish messages and messages quarantined by mail flow rule (also known as transport rule) actions are only available in the admin quarantine. Users can access their own phish, spam, and bulk messages. 
  
Learn more about working with quarantined messages:
  
- [Manage quarantined messages as an administrator](manage-quarantined-messages-and-files.md)

- [Find and release quarantined messages as a user](find-and-release-quarantined-messages-as-a-user.md)

- [Use user spam notifications to release and report spam-quarantined messages](use-spam-notifications-to-release-and-report-quarantined-messages.md)

- [Quarantine FAQ](quarantine-faq.md)
