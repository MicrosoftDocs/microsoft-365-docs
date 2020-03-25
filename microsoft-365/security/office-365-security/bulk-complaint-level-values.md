---
title: "Bulk Complaint Level values, bulk mailers, BCL levels, how BCL works, BCL ratings, Antispam, Antispam header, bulk mail filtering, stop bulk mail"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: laurawi
ms.date: 8/23/2019
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: a5b03b3c-37dd-429e-8e9b-2c1b25031794
ms.collection:
- M365-security-compliance
description: "Learn about bulk bomplain level (BCL) values in Office 365."
---

# Bulk complaint level (BCL) in Office 365

Bulk mailers vary in their sending patterns, content creation, and recipient acquisition practices. Some are good bulk mailers that send desired messages with relevant content to their subscribers. These messages generate few complaints from recipients. Other bulk mailers send unsolicited messages that closely resemble spam and generate many complaints from recipients. Messages from a bulk mailer is known as bulk mail or gray mail.

To distinguish messages from different types of bulk mailers, inbound email from bulk mailers to Office 365 (Exchange Online or standalone Exchange Online Protection (EOP) without Exchange Online mailboxes) is assigned a bulk complaint level (BCL) that's added to the message in an X-header. The BCL is similar to the [spam confidence level (SCL)](spam-confidence-levels.md) that's used to identify messages as spam. A higher BCL indicates a bulk message is more likely to generate complaints (and is therefore more likely to be spam). Microsoft uses both internal and third party sources to identify bulk mail and determine the appropriate BCL.

 Spam filtering marks messages as **Bulk email** based on the BCL threshold (the default value or a value you specify) and takes the specified action on the message (the default action is deliver the message to the recipient's Junk Email folder). For more information, see [Configure anti-spam policies in Office 365](configure-your-spam-filter-policies.md) and [What's the difference between junk email and bulk email?](what-s-the-difference-between-junk-email-and-bulk-email.md).

The BCL thresholds are described in the following table.

|||
|:---:|---|
|**BCL**|**Description**|
|0|The message isn't from a bulk sender.|
|1, 2, 3|The message is from a bulk sender that generates few complaints.|
|4, 5, 6, 7|The message is from a bulk sender that generates a mixed number of complaints.|
|8, 9|The message is from a bulk sender that generates a high number of complaints.|
|
