---
title: "Use user spam notifications to release and report quarantined messages in Office 365"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date: 03/14/2019
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
description: "If your admin enables the notifications for users, you'll receive a notification message that lists messages sent to your mailbox that were identified as spam, bulk, or phishing messages. You can release or report messages after being notified."
---

# Use user spam notifications to release and report quarantined messages in Office 365

If your admin enables spam notifications for users, you'll receive a notification message that lists messages addressed to your mailbox that were identified as spam, bulk, or phish and quarantined instead.

> [!TIP]
> If you're an administrator and want to enable this feature, you can choose the option when you [modify a default anti-spam policy](configure-your-spam-filter-policies.md).

The message you receive includes the number of spam-quarantined messages you have, and the date and time (in Universal Coordinated Time or UTC) of the last message in the list. The list includes the following for each message:

- **Sender** The send name and email address of the quarantined message.

- **Subject** The subject line text of the quarantined message.

- **Date** The date and time (in UTC) that the message was quarantined.

These are the actions that you can take with a quarantined message:

- **Block Sender** if you want Office 365 to add the sender to your blocked senders list.

- **Release** if the message isn't spam and you want Office 365 to send the message to your mailbox.

- **Review** to navigate to the Quarantine Portal within the Security and Compliance Center if you want to take other actions, such as Preview or Release.

Be aware of the following:

- Malware and high confidence phishing messages and messages that are quarantined because they matched a mail flow rule are not included in user spam notifications. 

- You can only release a message and report it as a false positive (not junk) once.
