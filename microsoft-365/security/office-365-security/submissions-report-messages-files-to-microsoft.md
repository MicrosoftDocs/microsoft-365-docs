---
title: Report spam, non-spam, phishing, suspicious emails and files to Microsoft
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date: 6/20/2023
audience: ITPro
ms.topic: overview
ms.localizationpriority: medium
search.appverid: 
  - MET150
ms.assetid: c31406ea-2979-4fac-9288-f835269b9d2f
ms.collection: 
  - m365-security
  - tier1
description: How do I report a suspicious email or file to Microsoft? Report messages, URLs, email attachments and files to Microsoft for analysis. Learn to report spam email and phishing emails.
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# How do I report a suspicious email or file to Microsoft?

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Wondering what to do with suspicious email messages, URLs, email attachments, or files? In Microsoft 365 organizations with mailboxes in Exchange Online or standalone Exchange Online Protection (EOP) organizations without Exchange Online mailboxes, *users* and *admins* have different ways to report suspicious email messages, URLs, and email attachments to Microsoft.

In addition, admins in Microsoft 365 organizations with Microsoft Defender for Endpoint also have several methods for reporting files.

Watch this video that shows more information about the unified submissions experience.
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE50HhM]

## Report suspicious email messages to Microsoft

> [!IMPORTANT]
>
> When you report a message to Microsoft, everything associated with the message is copied and included in the continual algorithm reviews. This copy includes email content, email headers, any attachments, and related data about email routing.
>
> Microsoft treats your feedback as your organization's permission to analyze all the information to fine tune the message hygiene algorithms. Your message is held in secured and audited data centers in the USA. The submission is deleted as soon as it's no longer required. Microsoft personnel might read your submitted messages and attachments, which is normally not permitted for email in Microsoft 365. However, your email is still treated as confidential between you and Microsoft, and your email or attachments isn't shared with any other party as part of the review process.

|Method|Submission type|Comments|
|---|---|---|
|[The built-in Report button](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web)|User|Currently, this method is available only in Outlook on the web (formerly known as Outlook Web App or OWA).|
|[The Microsoft Report Message and Report Phishing add-ins](submissions-outlook-report-messages.md#use-the-report-message-and-report-phishing-add-ins-in-outlook)|User|These free add-ins work in Outlook on all available platforms. For installation instructions, see [Enable the Report Message or the Report Phishing add-ins](submissions-users-report-message-add-in-configure.md).|
|[The Submissions page in the Microsoft 365 Defender portal](submissions-admin.md)|Admin|Admins can report good (false positives) and bad (false negative) messages, email attachments, and URLs (entities) from the available tabs on the **Submissions** page. <br><br> Admins can also submit user reported messages from the **User reported** tab on the **Submissions** page to Microsoft for analysis. The **Submissions** page is available only in organizations with Exchange Online mailboxes as part of a Microsoft 365 subscription (not available in standalone EOP).|
|Report messages from quarantine|Admin and User|Admins can [submit quarantined messages to Microsoft for analysis](quarantine-admin-manage-messages-files.md#report-email-to-microsoft-for-review-from-quarantine) (false positives and false negatives). <br><br> If users are allowed to [release their own messages from quarantine](quarantine-end-user.md#release-quarantined-email), and [user reported settings](submissions-user-reported-messages-custom-mailbox.md) is configured to allow users to report quarantined messages, users can select **Report message as having no threats** (false positive) when they release a quarantined message.|

## Related reporting settings for admins

[User reported settings](submissions-user-reported-messages-custom-mailbox.md) allow admins to configure whether user reported messages go to a specified reporting mailbox, to Microsoft, or both. After this feature is configured, user reported messages appear on the **User reported** tab on the **Submissions** page in the Defender portal.

User reported messages are also available to admins in the following locations in the Microsoft 365 Defender portal:

- The [User-reported messages report](reports-email-security.md#user-reported-messages-report)
- [Automated investigation and response (AIR) results](air-view-investigation-results.md) (Defender for Office 365 Plan 2)
- [Threat Explorer](threat-explorer-views.md) (Defender for Office 365 Plan 2)

In Defender for Office 365 Plan 2, admins can also submit messages from the [Email entity page](mdo-email-entity-page.md#actions-you-can-take-on-the-email-entity-page) and from [Alerts](../defender/investigate-alerts.md) in the Defender portal.

Admins can use Exchange mail flow rules (also known as transport rules) to receive notifications when users report messages to Microsoft for analysis. For more information, see [Use mail flow rules to see what users are reporting to Microsoft](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-see-what-users-are-reporting-to-microsoft).

Admins can use the sample submission portal at <https://www.microsoft.com/wdsi/filesubmission> to submit other suspected files to Microsoft for analysis. For more information, see [Submit files for analysis](../intelligence/submission-guide.md).

> [!TIP]
> In U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), admins can submit messages to Microsoft for analysis. The messages are analyzed for email authentication and policy checks only. Payload reputation, detonation, and grader analysis aren't done for compliance reasons (data isn't allowed to leave the organization boundary). If you report a message, URL, or email attachment to Microsoft from one of these organizations, you get the following message in the result details:
>
>   **Further investigation needed**. Your tenant doesn't allow data to leave the environment, so nothing was found during the initial scan. You'll need to contact Microsoft support to have this item reviewed.
