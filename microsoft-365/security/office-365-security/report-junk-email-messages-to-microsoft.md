---
title: Report spam, non-spam, phishing, suspicious emails and files to Microsoft
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: overview

ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: c31406ea-2979-4fac-9288-f835269b9d2f
ms.collection: 
  - M365-security-compliance
description: How do I report a suspicious email or file to Microsoft? Report messages, URLs, email attachments and files to Microsoft for analysis. Learn to report spam email and phishing emails.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# How do I report a suspicious email or file to Microsoft?

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Wondering what to do with suspicious emails or files? In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, *users* and *admins* have different ways to report a suspicious email message, URL, or email attachment to Microsoft.

In addition, Microsoft 365 organizations with Microsoft Defender for Endpoint admins also have several methods for reporting files.

Watch this video that shows more information about the unified submissions experience.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE50HhM]

## Report a suspicious email to Microsoft

|Method|Submission type|Description|
|---|---|---|
|[Use the Submissions portal to submit suspected spam, phish, URLs, and email attachments to Microsoft](admin-submission.md)|Admin|The recommended reporting method for admins in organizations with Exchange Online mailboxes (not available in standalone EOP).|
|[Enable the Report Message or the Report Phishing add-ins](enable-the-report-message-add-in.md)|User|Works with Outlook and Outlook on the web (formerly known as Outlook Web App). <br/><br/> Depending on your subscription, messages that users reported with the add-ins are available in [the Admin Submissions portal](admin-submission.md), [Automated investigation and response (AIR) results](air-view-investigation-results.md), the [User-reported messages report](view-email-security-reports.md#user-reported-messages-report), and [Explorer](threat-explorer-views.md#email--submissions). <br/><br/> You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).
|[Report false positives and false negatives in Outlook](report-false-positives-and-false-negatives.md)|User|Submit false positives (good email that was blocked or sent to junk folder) and false negatives (unwanted email or phish that was delivered to the inbox) to Exchange Online Protection (EOP) using the Report Message feature.|
|[Use mail flow rules to see what users are reporting to Microsoft](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-see-what-users-are-reporting-to-microsoft)|Admin|Learn how to create a mail flow rule (also known as a transport rule) that notifies you when users report messages to Microsoft for analysis.|
|[Submit files for analysis](../intelligence/submission-guide.md)|Admin|Submit email attachments and other suspected files to Microsoft for analysis.|

> [!NOTE]
> When you report an email entity to Microsoft, a copy is made of everything associated with the email to include it in the reviews. This copy includes the email content, the email headers, and related data about the email routing. Attachments in the message are also included.
>
> Microsoft treats your feedback as your organization's permission to analyze all of the information and to improve the suspected message reporting and review process. Your message is stored securely until it is deleted no later than 30 days after you provided it. Microsoft may read your submitted message and attachments, however, your email is still treated as confidential between you and Microsoft. Your submission is not provided to any other party for the review process.
