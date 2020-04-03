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

> [!NOTE]
> If you're an admin in an Office 365 organization with Exchange Online mailboxes, we recommend that you use the Submissions portal in the Office 365 Security & Compliance Center. For more information, see [Use Admin Submission to submit suspected spam, phish, URLs, and files to Microsoft](admin-submission.md).

It can be frustrating when users in your organization receive junk messages (spam) or phishing messages in their Inbox, or if they don't receive a legitimate email message because it's marked as junk. We're constantly fine-tuning our spam filters to be more accurate.

You and your users can help this process by submitting false positives (good email marked as bad), false negatives (bad mail allowed) and phishing messages to Microsoft for analysis.

> [!NOTE]
> Because of the high volume of submissions that we receive, we may not be able to answer all requests for analysis.

## Submit false negatives to Microsoft

> [!TIP]
> Instead of using the following procedures to report false negatives, users in Outlook and Outlook on the web (formerly known as Outlook Web App) can use the Report Message Add-in for Microsoft Outlook. For information about how to install and use this tool, see [Enable the Report Message add-in](enable-the-report-message-add-in.md).

If you receive a message that passed through spam filtering that should have been identified as spam or phishing, you can submit the message to the Microsoft Spam Analysis and Microsoft Phishing Analysis teams as appropriate. The analysts will review the message and add it to the service-wide filters if it meets the classification criteria.

1. Create a new, blank email message with the one of the following recipients:

   - **Junk**: `junk@office365.microsoft.com`

   - **Phishing**: `phish@office365.microsoft.com`

2. Drag and drop the junk or phishing message into the new message. This will save the junk or phishing message as an attachment in the new message. Don't copy and paste the content of the message or forward the message (we need the original message so we can inspect the message headers).

   > [!NOTE]
   > <ul><li>You can attach multiple messages in the new message. Make sure that all the messages are the same type: either phishing scam messages or junk email messages.</li><li>Leave the body of the new message empty.<li></li>Use either .msg (default Outlook format) or .eml (default Outlook on the Web format) formats for the attached messages.</li></ul>

3. When you're finished, click **Send**.

> [!TIP]
> Admins have several different ways to block specific messages that are being misidentified as spam. For details, see [Create blocked sender lists in Office 365](create-block-sender-lists-in-office-365.md).

## Submit false positives to Microsoft

> [!TIP]
> Instead of using the following procedures to report false positives, users in Outlook and Outlook on the web can use the Report Message Add-in for Microsoft Outlook. For information about how to install and use this tool, see [Enable the Report Message add-in](enable-the-report-message-add-in.md).

If a message was incorrectly identified as spam, you can submit the message to the Microsoft Spam Analysis Team. The analysts will evaluate the message, and (depending on the results of the analysis) the service-wide filters can be adjusted to allow the message through.

1. Create a new, blank email message with `not_junk@office365.microsoft.com` as the recipient:

2. Drag and drop the misidentified message into the new message. This will save the misidentified message as an attachment in the new message. Don't copy and paste the content of the message or forward the message (we need the original message so we can inspect the message headers).

   > [!NOTE]
   > <ul><li>You can attach multiple messages in the new message. Make sure that all the messages are the same type: either phishing scam messages or junk email messages.</li><li>Leave the body of the new message empty.<li></li>Use either .msg (default Outlook format) or .eml (default Outlook on the Web format) formats for the attached messages.</li></ul>

3. When you're finished, click **Send**.

> [!TIP]
> Admins have several different ways to allow specific messages to skip spam filtering. For details, see [Create safe sender lists in Office 365](create-safe-sender-lists-in-office-365.md).

## Create a mail flow rule to receive copies of messages that are reported to Microsoft

You can create a mail flow rule (also known as a transport rule) that looks for email messages that are reported to Microsoft by using the methods described in this topic, and you can configure Bcc recipients to receive copies of these reported messages.

You can create the mail flow rule in the Exchange admin center (EAC) and PowerShell (Exchange Online PowerShell for Office 365 customers; Exchange Online Protection PowerShell for standalone EOP customers).

### What do you need to know before you begin?

- You need to be assigned permissions in Exchange Online before you can do these procedures. Specifically, you need to be assigned the **Transport Rules** role, which is assigned to the **Organization Management**, **Compliance Management**, and **Records Management** roles by default. For more information, see [Manage role groups in Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/role-groups).

- To open the EAC in Exchange Online, see [Exchange admin center in Exchange Online](https://docs.microsoft.com/Exchange/exchange-admin-center).

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to standalone Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- For more information about mail flow rules in Exchange Online and standalone EOP, see the following topics:

  - [Mail flow rules (transport rules) in Exchange Online](https://docs.microsoft.com/Exchange/security-and-compliance/mail-flow-rules/mail-flow-rules)

  - [Mail flow rule conditions and exceptions (predicates) in Exchange Online](https://docs.microsoft.com/Exchange/security-and-compliance/mail-flow-rules/conditions-and-exceptions)

  - [Mail flow rule actions in Exchange Online](https://docs.microsoft.com/Exchange/security-and-compliance/mail-flow-rules/mail-flow-rule-actions)

### Use the EAC to create a mail flow rule to receive copies of reported messages

1. In the EAC, go to **Mail flow** \> **Rules**.

2. Click **Add** ![Add icon](../../media/ITPro-EAC-AddIcon.png) and then select **Create a new rule**.

3. In the **New rule** page that opens, configure the following settings:

   - **Name**: Enter a unique, descriptive name for the rule. For example, Bcc Messages Reported to Microsoft.

   - Click **More Options**.

   - **Apply this rule if**: Select **The recipient** \> **address includes any of these words**: In the **Specify words or phrases** dialog that appears, enter one of the following values, click **Add** ![Add Icon](../../media/ITPro-EAC-AddIcon.png), and repeat until you've entered all the values.

     - `junk@office365.microsoft.com`
     - `abuse@messaging.microsoft.com`
     - `phish@office365.microsoft.com`
     - `false_positive@messaging.microsoft.com`

     To edit an entry, select it and click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png). To remove an entry, select it and click **Remove** ![Remove icon](../../media/ITPro-EAC-DeleteIcon.png).

     When you're finished, click **OK**.

   - **Do the following**: Select **Add recipients** \> **to the Bcc box**. In the dialog that appears, find and select the recipients that you want to add. When you're finished, click **OK**.

4. You can make additional selections to audit the rule, test the rule, activate the rule during a specific time period, and other settings. We recommend testing the rule before you enforce it.

5. When you're finished, click **Save**.

### Use PowerShell to create a mail flow rule to receive copies of reported messages

This example creates a new mail flow rule named Bcc Messages Reported to Microsoft that looks for email messages that are reported to Microsoft by using the methods described in this topic, and adds the users laura@contoso.com and julia@contoso.com as Bcc recipients.

```powershell
New-TransportRule -Name "Bcc Messages Reported to Microsoft" -RecipientAddressContainsWords "junk@office365.microsoft.com","abuse@messaging.microsoft.com","phish@office365.microsoft.com","false_positive@messaging.microsoft.com" -BlindCopyTo "laura@contoso.com","julia@contoso.com".
```

For detailed syntax and parameter information, see [New-TransportRule](https://docs.microsoft.com/powershell/module/exchange/policy-and-compliance/new-transportrule).

### How do you know this worked?

To verify that you've configured a mail flow rules to receive copies of reported messages, do any of the following steps:

- In the EAC, go to **Mail flow** \> **Rules** \> select the rule \> click **Edit** ![Edit icon](../../media/ITPro-EAC-EditIcon.png), and verify the settings.

- In PowerShell, run the following command to verify the settings:

  ```powershell
  Get-TransportRule -Identity "Bcc Messages Reported to Microsoft" | Format-List
  ```

- Send a test messages to one of the reporting email addresses and verify the results.
