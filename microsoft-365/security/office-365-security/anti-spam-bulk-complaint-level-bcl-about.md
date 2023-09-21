---
title: Bulk complaint level values
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
ms.assetid: a5b03b3c-37dd-429e-8e9b-2c1b25031794
ms.collection: 
  - m365-security
  - tier2
description: Admins can learn about bulk complaint level (BCL) values that are used in Exchange Online Protection (EOP).
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 06/09/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Bulk complaint level (BCL) in EOP

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, EOP assigns a bulk complaint level (BCL) value to inbound messages from bulk senders. The BCL value is added to the message in an X-header and is similar to the [spam confidence level (SCL)](anti-spam-spam-confidence-level-scl-about.md) that's used to identify messages as spam. A higher BCL value indicates a bulk message is more likely to exhibit undesirable spam-like behavior. Microsoft uses both internal and third party sources to identify bulk mail and determine the appropriate BCL value.

Bulk senders vary in their sending patterns, content creation, and recipient acquisition practices. Good bulk senders send desired messages with relevant content to their subscribers. These messages generate few complaints from recipients. Other bulk senders send unsolicited messages that closely resemble spam and generate many complaints from recipients. Messages from a bulk sender are known as bulk mail or gray mail.

Spam filtering marks messages as **Bulk email** based on the BCL threshold (the default value or a value you specify) and takes the specified action on the message. For more information, see [Configure anti-spam policies](anti-spam-policies-configure.md) and [What's the difference between junk email and bulk email?](anti-spam-spam-vs-bulk-about.md)

The BCL thresholds are described in the following table.

|BCL|Description|
|:---:|---|
|0|The message isn't from a bulk sender.|
|1, 2, 3|The message is from a bulk sender that generates few complaints.|
|4, 5, 6, 7|The message is from a bulk sender that generates a mixed number of complaints.|
|8, 9|The message is from a bulk sender that generates a high number of complaints.|

The default BCL threshold that's used in anti-spam policies is described in the following list:

- **Default anti-spam policy and new anti-spam policies**: 7.
- **[Standard preset security policy](preset-security-policies.md)**: 6.
- **Strict preset security policy**: 5.

Messages that meet or exceed the configured BCL threshold have the following default actions taken on them:

- **Default anti-spam policy, new anti-spam policies, and Standard preset security policy**: Deliver the message to recipient Junk Email folders.
- **Strict preset security policy**: [Quarantine the message](quarantine-end-user.md).
