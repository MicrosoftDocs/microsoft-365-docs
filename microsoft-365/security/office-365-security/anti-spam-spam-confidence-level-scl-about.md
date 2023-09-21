---
title: Spam confidence level
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: 34681000-0022-4b92-b38a-e32b3ed96bf6
ms.collection: 
  - m365-security
  - tier2
ms.custom: 
  - seo-marvel-apr2020
description: Admins can learn about the spam confidence level (SCL) that applied to messages in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Spam confidence level (SCL) in EOP

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, inbound messages go through spam filtering in EOP and are assigned a spam score. That score is mapped to an individual spam confidence level (SCL) value that's added to the message in an X-header. A higher SCL value indicates a message is more likely to be spam. EOP takes action on the message based on the SCL value.

The following table describes what the SCL values mean and the default action that's taken on those messages.

|SCL|Definition|Default action|
|:---:|---|---|
|-1|The message skipped spam filtering. For example, the message is from a safe sender, was sent to a safe recipient, or is from an email source server on the IP Allow List. For more information, see [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md).|Deliver the message to recipient Inbox folders.|
|0, 1|Spam filtering determined the message wasn't spam.|Deliver the message to recipient Inbox folders.|
|5, 6|Spam filtering marked the message as **Spam**|**Default anti-spam policy, new anti-spam policies, and [Standard preset security policy](preset-security-policies.md)**: Deliver the message to recipient Junk Email folders. <br><br> **Strict preset security policy**: [Quarantine the message](quarantine-end-user.md).|
|8, 9|Spam filtering marked the message as **High confidence spam**|**Default anti-spam policy and new anti-spam policies**: Deliver the message to recipient Junk Email folders. <br><br> **Standard and Strict preset security policies**: Quarantine the message.|

The SCL values 2, 3, 4, and 7 aren't used by spam filtering.

For more information about actions you can take on messages based on the spam filtering verdict, see [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).

You can use mail flow rules (also known as transport rules) to stamp the SCL on messages. If you use a mail flow rule to set the SCL, the values 5 or 6 trigger the spam filtering action for **Spam**, and the values 7, 8, or 9 trigger the spam filtering action for **High confidence spam**. For more information, see [Use mail flow rules to set the spam confidence level (SCL) in messages](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl).

Similar to the SCL, the bulk complaint level (BCL) identifies bad bulk email (also known as _gray mail_). A higher BCL value indicates the message is more likely to exhibit undesirable spam-like behavior. You configure the BCL threshold in anti-spam policies. For more information, see [Configure anti-spam policies in EOP](anti-spam-policies-configure.md), [Bulk complaint level (BCL) in EOP)](anti-spam-bulk-complaint-level-bcl-about.md), and [What's the difference between junk email and bulk email?](anti-spam-spam-vs-bulk-about.md).

****

:::image type="content" source="../../media/eac8a413-9498-4220-8544-1e37d1aaea13.png" alt-text="The short icon for LinkedIn Learning."::: **New to Microsoft 365?** Discover free video courses for **Microsoft 365 admins and IT pros**, brought to you by LinkedIn Learning.
