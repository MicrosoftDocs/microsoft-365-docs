---
title: Errors during admin submissions
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
  - tier1
description: Learn about the errors that admins might encounter when they try to report email, URLs, and email attachments to Microsoft as false positives and false negatives.
ms.subservice: mdo
ms.service: microsoft-365-security
search.appverid: met150
ms.date: 01/12/2023
---

# Errors during admin submissions

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article attempts to explain the common error messages that you might receive as you try to [report emails, URLs, and email attachments to Microsoft](submissions-admin.md)

## This message didn't pass through our mail flow system, or the message metadata isn't available yet error

If you encounter this error message, then either of the following conditions might have occurred:

- You tried to submit an email message that wasn't filtered by Exchange Online Protection (EOP) or Microsoft Defender for Office 365 at the time of delivery.

  It's hard for us to determine why the message was missed or delivered when it wasn't filtered by Microsoft's protection stack.

- You tried to submit an email message that was filtered by EOP or Defender for Office 365, but we're still in the process of collecting the required metadata (descriptive data) about the message.

  If you wait "a while" and submit the message again, the submission will be successful.
  
  
## We did not receive the submission, please fix the problem and resubmit

If you encounter this error message, then either of the following conditions has occurred:

- You are trying to submit an email that has been deleted or is no longer in the mailbox or quarantine.

- You have Exchange Transport Rules (ETR), connectors or Data Loss Prevention (DLP) rules preventing the message from reaching us. 

So please make sure to check that both of these conditions are false before submitting the message again. 
