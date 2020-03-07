---
title: "Spam confidence level"
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 34681000-0022-4b92-b38a-e32b3ed96bf6
ms.collection:
- M365-security-compliance
description: "Admins can learn about how the spam confidence level (SCL) determines how likely or unlikely a message is spam, and the default actions that spam filtering takes on messages based on the SCL."
---

# Spam confidence level (SCL) in Office 365

When Office 365 (Exchange Online or standalone Exchange Online Protection (EOP) without Exchange Online mailboxes) receives an inbound email message, the message goes through spam filtering, and is assigned a spam score. That score is mapped to an individual spam confidence level (SCL) that's added to the message in an X-header. A higher SCL indicates a message is more likely to be spam. The service takes action on the message based on the SCL.

What the SCL means and the default actions that are taken on messages are described in the following table. For more information about actions you can take on messages based on the spam filtering verdict, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md).

||||
|:---:|---|---|
|**SCL**|**Definition**|**Default action**|
|-1|The message skipped spam filtering. For example, the message is from a safe sender, was sent to a safe recipient, or is from an email source server on the IP Allow List. For more information, see [Create safe sender lists in Office 365](create-safe-sender-lists-in-office-365.md).|Deliver the message to the recipients' inbox.|
|0, 1|Spam filtering determined the message was not spam.|Deliver the message to the recipients' inbox.|
|5, 6|Spam filtering marked the message as **Spam**|Deliver the message to the recipients' Junk Email folder.|
|9|Spam filtering marked the message as **High confidence spam**|Deliver the message to the recipients' Junk Email folder.|
|

You'll notice that SCL 2, 3, 4, 7, and 8 aren't used by spam filtering. You can use mail flow rules (also known as transport rules) to stamp the SCL on messages. For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md). If you use a mail flow rule to set the SCL, the values 5 or 6 trigger the spam filtering action for **Spam**, and the values 7, 8, or 9 trigger the spam filtering action for **High confidence spam**.

Similar to the SCL, the bulk complaint level (BCL) identifies a message as _bulk email_ (also known as _gray mail_). A higher BCL indicates the message is more likely to be bulk email. For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md), [Bulk complaint level (BCL) in Office 365)](bulk-complaint-level-values.md), and [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md).

||
|:-----|
|![The short icon for LinkedIn Learning](../../media/eac8a413-9498-4220-8544-1e37d1aaea13.png) **New to Office 365?**         Discover free video courses for **Office 365 admins and IT pros**, brought to you by LinkedIn Learning.|
