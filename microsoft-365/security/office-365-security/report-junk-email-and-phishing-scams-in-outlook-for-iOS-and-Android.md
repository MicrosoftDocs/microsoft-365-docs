---
title: Report junk and phishing email in Outlook for iOS and Android
f1.keywords:
- NOCSH
ms.author: siosulli
author: siosulli
manager: dansimp
ms.date:
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 758822b5-0126-463a-9d08-7366bb2a807d
ms.collection:
- M365-security-compliance
description: "Admins can learn about the built-in junk, not junk, and phishing email reporting options in Outlook for iOS and Android, and how to disable these reporting options for users."
---

# Report junk and phishing email in Outlook for iOS and Android

In Microsoft 365 organizations with mailboxes in Exchange Online or on-premises mailboxes leveraging hybrid modern authentication, you can use the built-in reporting options in Outlook for iOS and Android to submit false positives (good email marked as spam), false negatives (bad email allowed) and phishing messages to Exchange Online Protection (EOP).

## What do you need to know before you begin?

- If you're an admin in an organization with Exchange Online mailboxes, we recommend that you use the Submissions portal in the Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

- You can configure reported messages to be copied or redirected to a mailbox that you specify. For more information, see [Specify a mailbox for user submissions of spam and phishing messages in Exchange Online](user-submission.md).

- For more information about reporting messages to Microsoft, see [Report messages and files to Microsoft](report-junk-email-messages-to-microsoft.md).

## Report spam and phishing messages for iOS and Android

1. For messages in the Inbox or any other email folder except Junk Email,users can report spam and phishing messages by selecting the message, tapping the **ellipses** in the blue header, tapping **Report Junk** and then tapping either **Junk** or **Phishing**. 

![ - UPDATE IMAGE - Report junk or phishing email from the ribbon](../../media/owa-report-junk.png)

In the dialog that appears, tap **Report**. If you change your mind, tap **No, Thanks**. 

![ - UPDATE IMAGE - Report junk or phishing email from the ribbon](../../media/owa-report-junk.png)

## Manage non-spam messages from the Junk Email folder in Outlook for iOS and Android 

In the event Exchange Online automatically classifies a message as spam, the message will be placed in the Junk Email folder. Users can also manually move messages to the Junk Email folder or mark a message as spam through the Report Junk feature. In the event, the user decides a message is not spam, the user can perform the following steps: 

>[!NOTE]
> In Outlook for iOS and Android, the Junk Email folder is simply labeled as Junk. 

In the Junk Email folder, users can mark messages as Not Junk by selecting the message, tapping the **ellipses** in the blue header, and tapping **Not Junk**. 

![ - UPDATE IMAGE - Report junk or phishing email from the ribbon](../../media/owa-report-junk.png)