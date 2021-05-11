---
title: Report spam, non-spam, and phishing messages to Microsoft
f1.keywords: 
  - NOCSH
ms.author: siosulli
author: dansimp
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: overview

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: c31406ea-2979-4fac-9288-f835269b9d2f
ms.collection: 
  - M365-security-compliance
description: Admins can learn about the different ways to report good and bad messages and files to Microsoft for analysis.
ms.technology: mdo
ms.prod: m365-security
---

# Report messages and files to Microsoft

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, both users and admins have several different methods for reporting email messages and files to Microsoft.

****

|Method|Description|
|---|---|
|[Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md)|The recommended reporting method for admins in organizations with Exchange Online mailboxes (not available in standalone EOP).|
|[Enable the Report Message or the Report Phishing add-ins](enable-the-report-message-add-in.md)|Works with Outlook and Outlook on the web (formerly known as Outlook Web App). <p> Depending on your subscription, messages that users reported with the add-ins are available in [the Admin Submissions portal](admin-submission.md), [Automated investigation and response (AIR) results](air-view-investigation-results.md), the [User-reported messages report](view-email-security-reports.md#user-reported-messages-report), and [Threat Explorer](threat-explorer-views.md#email--submissions). <p> You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).
|[Report false positives and false negatives to Outlook](report-false-positives-and-false-negatives.md)|Submit false positives (good email that was blocked or sent to junk folder) and false negatives (unwanted email or phish that was delivered to the inbox) to Exchange Online Protection (EOP) using the Report Message feature.|
|[Manually submit messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md)|Manually send attached messages to specific Microsoft email addresses for spam, not spam, and phishing.|
|[Use mail flow rules to see what your users are reporting to Microsoft](use-mail-flow-rules-to-see-what-your-users-are-reporting-to-microsoft.md)|Learn how to create a mail flow rule (also known as a transport rule) that notifies you when users report messages to Microsoft for analysis.|
|[Submit malware and non-malware to Microsoft for analysis](submitting-malware-and-non-malware-to-microsoft-for-analysis.md)|Use the Microsoft Security Intelligence site to submit attachments and other files.|

If the spam or phishing messages were quarantined instead of delivered, users can report the messages to Microsoft from the Quarantine portal in the Security & Compliance Center. For details, see [Find and release quarantined messages as a user in Microsoft 365](find-and-release-quarantined-messages-as-a-user.md).

> [!NOTE]
> Data from submissions to Microsoft resides in the Office 365 compliance boundary in North American data centers. The data is reviewed by analysts on the engineering team to help improve the effectiveness of the filters.
