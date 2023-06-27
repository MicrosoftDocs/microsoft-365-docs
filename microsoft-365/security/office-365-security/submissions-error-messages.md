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
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Errors during admin submissions

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

This article attempts to explain the common error messages that you might receive as you try to [report messages, URLs, and email attachments to Microsoft](submissions-admin.md)

## This message didn't pass through our mail flow system, or the message metadata isn't available yet error

You get this error under either of the following conditions:

- Exchange Online Protection (EOP) or Microsoft Defender for Office 365 didn't filter the message.

  We can't investigate why the message was blocked or delivered, because the Microsoft protection stack never evaluated or acted on the message.

- EOP or Defender for Office 365 filtered the message, but we're still collecting the required metadata (descriptive data) for the message.

  If you wait "a while" and submit the message again, the submission is likely to be successful.

## We did not receive the submission, please fix the problem and resubmit

If you encounter this error message, then either of the following conditions have occurred:

- The message was deleted or is no longer available in the mailbox or in quarantine.
- Exchange mail flow rules (also known as transport rules), connectors, or data loss prevention (DLP) rules in your organization prevent the message from reaching us.

Be sure to investigate and fix both of these possible causes before you resubmit the message.
