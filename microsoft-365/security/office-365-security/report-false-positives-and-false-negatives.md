---
title: Report false positives and false negatives in Outlook
f1.keywords:
- NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: Admin
ms.topic: how-to

localization_priority: Normal
ms.collection: 
  - M365-security-compliance
description: Learn how to report false positives and false negatives in Outlook using the Report Message feature.
ms.technology: mdo
ms.prod: m365-security
---

# Report false positives and false negatives in Outlook

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

> [!NOTE]
> If you're an admin in a Microsoft 365 organization with Exchange Online mailboxes, we recommend that you use the Submissions portal in the Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

In Microsoft 365 organizations with mailboxes in Exchange Online or on-premises mailboxes using hybrid modern authentication, you can submit false positives (good email that was blocked or sent to junk folder) and false negatives (unwanted email or phish that was delivered to the inbox) to Exchange Online Protection (EOP).

## What do you need to know before you begin?

- For the best user submission experience, use the Report Message add-in or the Report Phishing add-in.

- Note that this add-in works for Outlook in all platforms—on the web, iOS, Android, and Desktop.

- If you're an admin in an organization with Exchange Online mailboxes, use the Submissions portal in the Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

- You can configure to send messages directly to Microsoft, a mailbox you specify, or both. For more information, see [User submissions policies](user-submission.md).

- For more information on how to get and enable the Report Message or the Report Phishing add-ins, see [Enable the Report Message or the Report Phishing add-ins](enable-the-report-message-add-in.md).

- For more information about reporting messages to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Use the Report Message feature

### Report junk and phishing messages

For messages in the Inbox or any other email folder except Junk Email, use the following method to report spam and phishing messages:

1. Click the **More actions** ellipses on the top-right corner of the selected message, click **Report message** from the dropdown menu, and then select **Junk** or **Phishing**.
  
   > [!div class="mx-imgBorder"]
   > ![Report Message - More actions](../../media/report-message-more-actions.png)

   > [!div class="mx-imgBorder"]
   > ![Report Message - Junk and Phishing](../../media/report-message-junk-phishing.png)

2. The selected messages will be sent to Microsoft for analysis and:

   - Moved to the Junk Email folder if it was reported as spam.

   - Deleted if it was reported as phishing.
   
### Report messages that are not junk

1. Click the **More actions** ellipses on the top-right corner of the selected message, click **Report message** from the dropdown menu, and then click **Not Junk**.  

   > [!div class="mx-imgBorder"]
   > ![Report Message - More actions](../../media/report-message-more-actions.png)

   > [!div class="mx-imgBorder"]
   > ![Report Message - Not junk](../../media/report-message-not-junk.png)

2. The selected message will be sent to Microsoft for analysis and moved to Inbox or any other specified folder.

## View and review reported messages

To review messages that users report to Microsoft, you have these options:

- Use the Admin Submissions portal. For more information, see [View user submissions to Microsoft](admin-submission.md#view-user-submissions-to-microsoft).

- Create a mail flow rule (also known as a transport rule) to send copies of reported messages. For instructions, see [Use mail flow rules to see what your users are reporting to Microsoft](use-mail-flow-rules-to-see-what-your-users-are-reporting-to-microsoft.md).