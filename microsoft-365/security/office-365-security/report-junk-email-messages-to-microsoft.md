---
title: Report spam, non-spam, and phishing messages to Microsoft
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
description: Admins can learn about the different ways to report good and bad messages, URLs, email attachments, and admins to Microsoft for analysis.
ms.technology: mdo
ms.prod: m365-security
---

# Report items to Microsoft

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, both users and admins have several different methods for reporting email messages, URLs and email attachments to Microsoft. 

Even Microsoft 365 organizations with Microsoft Defender for Endpoint admins have several methods for reporting files.

|Method|Description|
|---|---|
|[Use the Submissions portal to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md)|The recommended reporting method for admins in organizations with Exchange Online mailboxes (not available in standalone EOP).|
|[Enable the Report Message or the Report Phishing add-ins](enable-the-report-message-add-in.md)|Works with Outlook and Outlook on the web (formerly known as Outlook Web App). <br/><br/> Depending on your subscription, messages that users reported with the add-ins are available in [the Admin Submissions portal](admin-submission.md), [Automated investigation and response (AIR) results](air-view-investigation-results.md), the [User-reported messages report](view-email-security-reports.md#user-reported-messages-report), and [Explorer](threat-explorer-views.md#email--submissions). <br/><br/> You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).
|[Report false positives and false negatives in Outlook](report-false-positives-and-false-negatives.md)|Submit false positives (good email that was blocked or sent to junk folder) and false negatives (unwanted email or phish that was delivered to the inbox) to Exchange Online Protection (EOP) using the Report Message feature.|
|[Use mail flow rules to see what users are reporting to Microsoft](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-see-what-users-are-reporting-to-microsoft)|Learn how to create a mail flow rule (also known as a transport rule) that notifies you when users report messages to Microsoft for analysis.|
|[Submit malware and non-malware to Microsoft for analysis](submitting-malware-and-non-malware-to-microsoft-for-analysis.md)|Use the Microsoft Security Intelligence site to submit attachments and other files.|

> [!NOTE]
> When you report an email entity to Microsoft, we make a copy of everything associated with the email to include it in our continual algorithm reviews. This copy includes the email content, the email headers, and related data about the email routing. Attachments in the message are also included.
>
> Microsoft treats your feedback as your organization's permission for us to analyze all of the previously described information and to work to fine tune the message hygiene algorithms. We hold your message in our secure audited datacenters in the USA until we delete your submission no later than 30 days after you provided it to us. Personnel at Microsoft may read your submitted message and attachments, which is normally not permitted for email in Office 365. However, your email is still treated as confidential between you and Microsoft, and we will not provide your submission to any other party to read the email or its attachments for this review process.
