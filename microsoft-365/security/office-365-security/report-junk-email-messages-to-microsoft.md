---
title: Report spam, non-spam, and phishing messages to Microsoft
f1.keywords: 
  - NOCSH
ms.author: siosulli
author: siosulli
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
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, both users and admins have several different methods for reporting email messages and files to Microsoft.

****

|Method|Description|
|---|---|
|[Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md)|The recommended reporting method for admins in organizations with Exchange Online mailboxes (not available in standalone EOP).|
|[Enable the Report Message add-in](enable-the-report-message-add-in.md)|Works with Outlook and Outlook on the web (formerly known as Outlook Web App). <p> Depending on your subscription, messages that users reported with the add-in are available in [the Admin Submissions portal](admin-submission.md), [Automated investigation and response (AIR) results](air-view-investigation-results.md), the [User-reported messages report](view-email-security-reports.md#user-reported-messages-report), and [Threat Explorer](threat-explorer-views.md#email--submissions). <p> You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).
|[Enable the Report Phishing add-in](enable-the-report-phish-add-in.md)|Works with Outlook and Outlook on the web (formerly known as Outlook Web App). <p> Depending on your subscription, messages that users reported with the add-in are available in [the Admin Submissions portal](admin-submission.md), [Automated investigation and response (AIR) results](air-view-investigation-results.md), the [User-reported messages report](view-email-security-reports.md#user-reported-messages-report), and [Threat Explorer](threat-explorer-views.md#email--submissions). <p> You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).|
|[Install and use the Junk Email Reporting add-in for Microsoft Outlook](junk-email-reporting-add-in-for-microsoft-outlook.md)|Only works in Outlook.|
|[Report junk and phishing email in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md)|Use the built-in capabilities in Outlook on the web for organizations with Exchange Online mailboxes (not available in standalone EOP). <p> Messages that users report are available in [the Admin Submissions portal](admin-submission.md). <p> You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).|
|[Report junk and phishing email in Outlook for iOS and Android](report-junk-email-and-phishing-scams-in-outlook-for-iOS-and-Android.md)|Use the built-in capabilities in Outlook for iOS and Android for organizations with Exchange Online mailboxes (not available in standalone EOP). <p> Messages that users report are available in [the Admin Submissions portal](admin-submission.md). <p> You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [User submissions policies](user-submission.md).|
|[Manually submit messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md)|Manually send attached messages to specific Microsoft email addresses for spam, not spam, and phishing.|
|[Use mail flow rules to see what your users are reporting to Microsoft](use-mail-flow-rules-to-see-what-your-users-are-reporting-to-microsoft.md)|Learn how to create a mail flow rule (also known as a transport rule) that notifies you when users report messages to Microsoft for analysis.|
|[Submit malware and non-malware to Microsoft for analysis](submitting-malware-and-non-malware-to-microsoft-for-analysis.md)|Use the Microsoft Security Intelligence site to submit attachments and other files.|

If the spam or phishing messages were quarantined instead of delivered, users can report the messages to Microsoft from the Quarantine portal in the Security & Compliance Center. For details, see [Find and release quarantined messages as a user in Microsoft 365](find-and-release-quarantined-messages-as-a-user.md).

> [!NOTE]
> Data from submissions to Microsoft resides in the Office 365 compliance boundary in North American data centers. The data is reviewed by analysts on the engineering team to help improve the effectiveness of the filters.
