---
title: "Manually submit messages to Microsoft for analysis"
f1.keywords:
- NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: dad30e2f-93fe-4d21-9a36-21c87ced85c1
ms.collection:
- M365-security-compliance
description: "You and your users can submit false negative and false positive spam messages to Microsoft for analysis. "
---

# Manually submit messages to Microsoft for analysis

> [!TIP]
> The recommended way to submit email messages, URLs, or attachments to Microsoft is using the Submissions feature in the Office 365 Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md). You can use the procedures in this topic if you don't have access to the Office 365 tenant.

It can be frustrating when users in your organization receive junk messages (spam) or phishing messages in their Inbox, or if they don't receive a legitimate email message because it's marked as junk. We're constantly fine-tuning our spam filters to be more accurate. You and your users can help this process by submitting false negatives (bad mail allowed) and false positives (good mail blocked) messages to Microsoft for analysis.

> [!NOTE]
> Because of the high volume of submissions that we receive, we may not be able to answer all requests for analysis.

## Submit false negatives

If you receive a message that passed through spam filtering that and should be classified as junk or a phishing scam, you can submit the message to the Microsoft Spam Analysis and Microsoft Phishing Analysis teams, as appropriate. The analysts will review the message and add it to the service-wide filters if it meets the classification criteria.

You can submit junk email messages in the following ways:

- For Outlook and Outlook on the web users, use the Report Message Add-in for Microsoft Outlook. For information about how to install and use this tool, see [Enable the Report Message add-in](enable-the-report-message-add-in.md).

- You can also use email to submit messages to Microsoft that should be classified as junk or phishing scams as described in the following procedure.

  1. Create a new, blank email message with the one of the following recipients:

     - **Junk**: junk@office365.microsoft.com

     - **Phishing**: phish@office365.microsoft.com

  2. Drag and drop the junk or phishing message into the new message. This will save the junk or phishing message as an attachment in the new message. Don't copy and paste the content of the message or forward the message (we need the original message so we can inspect the message headers).

     > [!NOTE]
     > <ul><li>You can attach multiple messages in the new message. Make sure that all the messages are the same type: either phishing scam messages or junk email messages.</li><li>Leave the body of the new message empty.<li></li>Use either .msg (default Outlook format) or .eml (default Outlook on the Web format) formats for the attached messages.</li></ul>

  3. When you're finished, click **Send**.

> [!TIP]
> Admins have several different ways to block specific messages that are being misidentified as spam. For details, see [Create blocked sender lists in Office 365](create-block-sender-lists-in-office-365.md).

## Submit false positives

If a message was incorrectly identified as junk, you can submit the message to the Microsoft Spam Analysis Team. The analysts will evaluate the message, and (depending on the results of the analysis) the service-wide filters can be adjusted to allow the message through.

You can submit non-spam messages in the following ways:

- If the message is in the Junk Email folder (this is the default action for spam in anti-spam policies), users can release the message (mark as not junk) directly from the Junk Email folder. However, they still need to submit the message to Microsoft as previously described in this topic. For more information, see <>.

- If the message was quarantined instead of delivered to the Junk Email folder, you have the following options:

  - Admins can release and report all types of quarantined messages. For more information, see [Manage quarantined messages and files as an admin in Office 365](manage-quarantined-messages-and-files.md).

  - Users can release their own spam and (as of April, 2020) phish messages from quarantine using the following options:

  - Quarantine in the Office 365 Security & Compliance Center. For more information, see [Find and release quarantined messages as a user in Office 365](find-and-release-quarantined-messages-as-a-user.md).

  - If an admin has [enabled end-user spam notifications](configure-your-spam-filter-policies.md#configure-end-user-spam-notifications) in anti-spam policies, user can release spam but not phishing messages from quarantine directly from the notifications. For more information, see [End-user spam notifications in Office 365](use-spam-notifications-to-release-and-report-quarantined-messages.md).

- You can also use email to submit messages to Microsoft that should not be classified as spam as described in the following procedure:

  1. Create a new, blank email message with not_junk@office365.microsoft.com as the recipient:

  2. Drag and drop the misidentified message into the new message. This will save the misidentified message as an attachment in the new message. Don't copy and paste the content of the message or forward the message (we need the original message so we can inspect the message headers).

     > [!NOTE]
     > <ul><li>You can attach multiple messages in the new message. Make sure that all the messages are the same type: either phishing scam messages or junk email messages.</li><li>Leave the body of the new message empty.<li></li>Use either .msg (default Outlook format) or .eml (default Outlook on the Web format) formats for the attached messages.</li></ul>

  3. When you're finished, click **Send**.

> [!TIP]
> Admins have several different ways to allow specific messages to skip spam filtering. For details, see [Create safe sender lists in Office 365](create-safe-sender-lists-in-office-365.md).
