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
  - m365-security
description: How do I report a suspicious email or file to Microsoft? Report messages, URLs, email attachments and files to Microsoft for analysis. Learn to report spam email and phishing emails.
ms.subservice: mdo
ms.service: microsoft-365-security
---

# How do I report a suspicious email or file to Microsoft?

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Wondering what to do with suspicious emails or files? In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, *users* and *admins* have different ways to report a suspicious email message, URL, or email attachment to Microsoft.

In addition, admins in Microsoft 365 organizations with Microsoft Defender for Endpoint also have several methods for reporting files.

Watch this video that shows more information about the unified submissions experience.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE50HhM]

## Report suspicious email messages to Microsoft

|Method|Submission type|Comments|
|---|---|---|
|[The built-in Report button](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web)|User|Currently, this method is available only in Outlook on the web (formerly known as Outlook Web App or OWA).|
|[The Microsoft Report Message and Report Phishing add-ins](submissions-outlook-report-messages.md#use-the-report-message-and-report-phishing-add-ins-in-outlook)|User|These free add-ins work in Outlook on all available platforms. For installation instructions, see [Enable the Report Message or the Report Phishing add-ins](submissions-users-report-message-add-in-configure.md).|
|[The Submissions page in the Microsoft 365 Defender portal](submissions-admin.md)|Admin|Admins use this method to report good (false positives) and bad (false negative) **Email**, **Email attachments**, and **URLs**, including user reported messages, to Microsoft for further analysis. Available in organizations with Exchange Online mailboxes (not available in standalone EOP).|

[User reported message settings](submissions-user-reported-messages-files-custom-mailbox.md) allow admins to configure whether user reported messages go to a specified reporting mailbox, to Microsoft, or both. Depending on your subscription, user reported messages are available in the following locations in the Defender portal:

- [The Submissions page](submissions-admin.md)
- [Automated investigation and response (AIR) results](air-view-investigation-results.md)
- [The User-reported messages report](reports-email-security.md#user-reported-messages-report)
- [Threat Explorer](threat-explorer-views.md#email--submissions)

Admins can use mail flow rules (also known as transport rules) to notify specified email address when users report messages to Microsoft for analysis. For more information, see [Use mail flow rules to see what users are reporting to Microsoft](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-see-what-users-are-reporting-to-microsoft).

Admins can also submit email attachments and other suspected files to Microsoft for analysis using the sample submission portal at <https://www.microsoft.com/wdsi/filesubmission>. For more information, see [Submit files for analysis](../intelligence/submission-guide.md).

> [!NOTE]
> When you report an email entity to Microsoft, we copy everything associated with the email to include it in our continual algorithm reviews. This copy includes the email content, email headers, and related data about email routing. Any message attachments are also included.
>
> Microsoft treats your feedback as your organization's permission for us to analyze all of the previously described information to fine tune the message hygiene algorithms. We hold your message in our secure audited datacenters in the USA. The submission is deleted as soon as it's no longer required. Microsoft personnel might read your submitted messages and attachments, which is normally not permitted for email in Microsoft 365. However, your email is still treated as confidential between you and Microsoft, and we will not provide your email or attachments to any other party as part of the review process.
>
> Information is blocked from going outside the organization when data is not supposed to leave the tenant boundary for compliance purposes (for example, in U.S. Government organizations: Microsoft 365 GCC, GCC High, and DoD). Reporting a message or file to Microsoft from one of these organizations will have the following message in the result details:
>
> **Further investigation needed**. Your tenant does not allow data to leave the environment, so we could not find anything with an initial scan. You'll need to contact Microsoft support to have this item reviewed.
