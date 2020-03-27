---
title: "Report junk email and phishing scams in Outlook on the web "
f1.keywords:
- NOCSH
ms.author: chrisda
author: chrisda
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
description: "Office 365 users with Exchange Online mailboxes can use Outlook on the web (Outlook Web App) to submit spam, non-spam, and phishing messages to Microsoft for analysis."
---

# Report junk and phishing email in Outlook on the web in Office 365

If you're an Office 365 customer with Exchange Online mailboxes, you can use the built-in reporting options in Outlook on the web (formerly known as Outlook Web App) to submit false positives (good email marked as spam), false negatives (bad email allowed) and phishing messages to Exchange Online Protection (EOP).

## What do you need to know before you begin?

- The recommended way for admins to submit email messages, URLs, or attachments to Microsoft is using the Submissions feature in the Office 365 Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

- Admins can disable or enable the ability for users to report messages to Microsoft in Outlook on the web. For details, see the [Disable or enable junk email reporting in Outlook on the web](#disable-or-enable-junk-email-reporting-in-outlook-on-the-web) section later in this topic.

- The Report Message add-in is also available for users to report messages to Microsoft in Outlook on the web. For details, see [Enable the Report Message add-in in Office 365](enable-the-report-message-add-in.md).

- Users can also manually submit messages to Microsoft. For details, see [Manually submit messages to Microsoft for analysis](submit-spam-non-spam-and-phishing-scam-messages-to-microsoft-for-analysis.md).

## Report spam and phishing messages in Outlook on the web

1. For messages in the Inbox or any other email folder except Junk Email, use either of the following methods to report spam and phishing messages:

   - Select the message, click **Junk** on the toolbar, and then select **Junk** or **Phishing**.

     ![Report junk or phishing email from the ribbon](../../media/owa-report-junk.png)

   - Select one or more messages, right-click, and then select **Mark as junk**.

2. In the dialog that appears, click **Report**. If you change your mind, click **Don't Report**.

   ![Report as junk dialog](../../media/owa-report-as-junk-dialog.png)

   ![Report as phishing dialog](../../media/owa-report-as-phishing-dialog.png)

3. The selected messages will be sent to Microsoft for analysis. To confirm that the messages have been submitted, open your **Sent Items** folder to view the submitted messages.

## Report non-spam and phishing messages from the Junk Email folder in Outlook on the web

1. In the Junk Email folder, use either of the following methods to report spam false positives or phishing messages:

   - Select the message, click **Not Junk** on the toolbar, and then select **Not Junk** or **Phishing**.

     ![Report junk or phishing email from the ribbon](../../media/owa-report-not-junk.png)

   - Select one or more messages, right-click, and then select **Mark as not junk**.

2. In the dialog that appears, read the information and click **Report**. If you change your mind, click **Don't Report**.

   ![Report as not junk dialog](../../media/owa-report-as-not-junk-dialog.png)

   ![Report as phishing dialog](../../media/owa-report-as-phishing-dialog.png)

3. The selected messages will be sent to Microsoft for analysis. To confirm that the messages have been submitted, open your **Sent Items** folder to view the submitted messages.

## Disable or enable junk email reporting in Outlook on the web

By default, users can report spam false positives, false negatives, and phishing messages to Microsoft for analysis in Outlook on the web. Admins can use Outlook on the web mailbox policies in Exchange Online to disable or enable this ability, but only in Exchange Online PowerShell.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can perform these procedures. Specifically you need the **Recipient Policies** or **Mail Recipients** roles in Exchange Online, which are assigned to the **Organization Management** and **Recipient Management** role groups by default. For more information about role groups in Exchange Online, see [Modify role groups in Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/role-groups#modify-role-groups).

- Every organization has a default policy named OwaMailboxPolicy-Default, but you can create custom policies. Custom policies are applied to scoped users before the default policy. For more information about Outlook on the web mailbox policies, see [Outlook on the web mailbox policies in Exchange Online](https://docs.microsoft.com/Exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/outlook-web-app-mailbox-policies).

1. To find your existing Outlook on the web mailbox policies and the status of junk email reporting, run the following command:

   ```powershell
   Get-OwaMailboxPolicy | Format-Table Name,ReportJunkEmailEnabled
   ```

2. To disable or enable junk email reporting in Outlook on the web, use the following syntax:

   ```powershell
   Set-OwaMailboxPolicy -Identity "<OWAMailboxPolicyName>" -ReportJunkEmailEnabled <$true | $false>
   ```

   This example disables junk email reporting in the default policy.

   ```powershell
   Set-OwaMailboxPolicy -Identity "OwaMailboxPolicy-Default" -ReportJunkEmailEnabled $false
   ```

   This example enabled junk email reporting in the custom policy named Contoso Managers.

   ```powershell
   Set-OwaMailboxPolicy -Identity "Contoso Managers" -ReportJunkEmailEnabled $true
   ```

For detailed syntax and parameter information, see [Get-OwaMailboxPolicy](https://docs.microsoft.com/powershell/module/exchange/client-access/get-owamailboxpolicy) and [Set-OwaMailboxPolicy](https://docs.microsoft.com/powershell/module/exchange/client-access/set-owamailboxpolicy).

### How do you know this worked?

To verify that you've successfully enabled or disabled junk email reporting in Outlook on the web, use any of the following steps:

- In Exchange Online PowerShell, run the following command and verify the **ReportJunkEmailEnabled** property value:

  ```powershell
  Get-OwaMailboxPolicy | Format-Table Name,ReportJunkEmailEnabled
  ```

- Open an affected user's mailbox in Outlook on the web, and verify the options to report junk, not junk, and phishing messages are available or not available. Note that the user can still mark messages as junk, phishing, and not junk, but the user can't report them to Microsoft.
