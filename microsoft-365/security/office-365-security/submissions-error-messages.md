---
title: Errors during submissions
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: how-to
ms.localizationpriority: medium
ms.collection:
  - m365-security
description: Learn about the errors that you might encounter when you try to report false positives and false negatives emails, URLs and email attachments to Microsoft.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
---

# Errors during submissions

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)


[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

## This message didn't pass through our mail flow system, or the message metadate isn't available yet error

If you encounter this error message, then either of the following conditions might have occured:

  1. You are either trying to submit an email message which was not filtered by Microsoft Defender for Office (Exchange online protection) filtering system at the time of email delivery. So, it is hard to acertain why the message was missed or delivered when it was not filtered by Microsoft's stack, Or
  2. You are trying to submit an email message, which was filtered by Microsoft Defender for Office (Exchange online protection) filtering system, to Microsoft when Microsoft is still collecting the required metadata (descriptive data) about the email. So in this case, if you submit after sometime, the submission will occur successfully.


