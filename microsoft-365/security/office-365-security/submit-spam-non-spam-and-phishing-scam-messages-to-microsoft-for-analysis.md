---
title: Manually submit messages to Microsoft for analysis
f1.keywords: 
  - NOCSH
ms.author: siosulli
author: siosulli
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: dad30e2f-93fe-4d21-9a36-21c87ced85c1
ms.collection: 
  - M365-security-compliance
description: Admins and end users can learn how to email messages (good mail marked as bad or bad mail allowed) to Microsoft for analysis.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Manually submit messages to Microsoft for analysis

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> If you're an admin in an organization with Exchange Online mailboxes, we recommend that you use the Submissions portal in the Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

It can be frustrating when users in your organization receive junk messages (spam) or phishing messages in their Inbox, or if they don't receive a legitimate email message because it's marked as junk. We're constantly fine-tuning our spam filters to be more accurate.

You and your users can help this process by submitting false positives (good email marked as bad), false negatives (bad mail allowed) and phishing messages to Microsoft for analysis.

> [!NOTE]
> Because of the high volume of submissions that we receive, we may not be able to answer all requests for analysis.

## Submit false negatives to Microsoft

> [!TIP]
> Instead of using the following procedures to report false negatives, users in Outlook and Outlook on the web (formerly known as Outlook Web App) can use the Report Message add-in or the Report Phishing add-in. For information about how to install and use these tools, see [Enable the Report Message add-in](enable-the-report-message-add-in.md) and [Enable the Report Phishing add-in](enable-the-report-phish-add-in.md).

If you receive a message that passed through spam filtering that should have been identified as spam or phishing, you can submit the message to the Microsoft Spam Analysis and Microsoft Phishing Analysis teams as appropriate. The analysts will review the message and add it to the service-wide filters if it meets the classification criteria.

1. Create a new, blank email message with the one of the following recipients:

   - **Junk**: `junk@office365.microsoft.com`

   - **Phishing**: `phish@office365.microsoft.com`

2. Drag and drop the junk or phishing message into the new message. This will save the junk or phishing message as an attachment in the new message. Don't copy and paste the content of the message or forward the message (we need the original message so we can inspect the message headers).

   > [!NOTE]
   >
   > - You can attach multiple messages in the new message. Make sure that all the messages are the same type: either phishing messages or junk email messages.
   >
   > - Leave the body of the new message empty.
   >
   > - Use either .msg (default Outlook format) or .eml (default Outlook on the Web format) formats for the attached messages.

3. When you're finished, click **Send**.

> [!TIP]
> Admins have several different ways to block specific messages that are being misidentified as spam. For details, see [Create blocked sender lists in EOP](create-block-sender-lists-in-office-365.md).

## Submit false positives to Microsoft

> [!TIP]
> Instead of using the following procedures to report false positives, users in Outlook and Outlook on the web (formerly known as Outlook Web App) can use the Report Message add-in or the Report Phishing add-in. For information about how to install and use these tools, see [Enable the Report Message add-in](enable-the-report-message-add-in.md) and [Enable the Report Phishing add-in](enable-the-report-phish-add-in.md).


If a message was incorrectly identified as spam, you can submit the message to the Microsoft Spam Analysis Team. The analysts will evaluate the message, and (depending on the results of the analysis) the service-wide filters can be adjusted to allow the message through.

1. Create a new, blank email message with `not_junk@office365.microsoft.com` as the recipient:

2. Drag and drop the misidentified message into the new message. This will save the misidentified message as an attachment in the new message. Don't copy and paste the content of the message or forward the message (we need the original message so we can inspect the message headers).

   > [!NOTE]
   >
   > - You can attach multiple messages in the new message. Make sure that all the messages are the same type: either phishing messages or junk email messages.
   >
   > - Leave the body of the new message empty.
   >
   > - Use either .msg (default Outlook format) or .eml (default Outlook on the Web format) formats for the attached messages.

3. When you're finished, click **Send**.

> [!TIP]
> Admins have several different ways to allow specific messages to skip spam filtering. For details, see [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md).

## Where is the data from submissions to Microsoft stored?

The data resides in the Office 365 compliance boundary in North American data centers. The data is reviewed by analysts on the engineering team to help improve the effectiveness of the filters.

## Create a mail flow rule to receive copies of messages that are reported to Microsoft

For instructions, see [Use mail flow rules to see what your users are reporting to Microsoft](use-mail-flow-rules-to-see-what-your-users-are-reporting-to-microsoft.md).
