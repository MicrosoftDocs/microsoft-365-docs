---
title: "Specify a mailbox for user submissions of spam and phishing messages"
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
ms.collection:
- M365-security-compliance
description: "Admins can learn how to configure a mailbox to collect spam and phishing email that are reported by users."
---

# Specify a mailbox for user submissions of spam and phishing messages in Office 365

In Office 365 organizations with Exchange Online mailboxes, you can specify a mailbox to receive messages that users report as malicious or not malicious. This mailbox could be used to intercept (i.e. send to custom mailbox only) or receive copies of messages (i.e. send to custom mailbox and Microsoft) that users submit using the various options available to report messages. This feature works with the following message reporting options:

- [The Report Message add-in](enable-the-report-message-add-in.md)

- [Built-in reporting in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md) (formerly known as Outlook Web App)

You can also configure third-party message reporting tools to forward messages to the mailbox that you specify.

Delivering user reported messages to a custom mailbox instead of directly to Microsoft allows your admins to selectively and manually report messages to Microsoft using [Admin submission](admin-submission.md).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **User submissions** page, use <https://protection.office.com/userSubmissionsReportMessage>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/connect-to-exchange-online-powershell). To connect to standalone Exchange Online Protection PowerShell, see [Connect to Exchange Online Protection PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-eop/connect-to-exchange-online-protection-powershell).

- You need to be assigned permissions before you can perform these procedures. To configure the mailbox for user submissions, you need to be a member of the **Organization Management** or **Security Administrator** role groups. For more information about role groups in the Security & Compliance Center, see [Permissions in the Office 365 Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Use the Security & Compliance Center to configure the user submissions mailbox

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **User submissions**.

2. In the **User submissions** page that appears, select one of the following options:

   - **Enable the Report Message feature for Outlook (Recommended)**: Select this option if you use the Report Message add-in or the built-in reporting in Outlook on the web, and then configure the following settings:

     - **Customize the end-user confirmation message**: Click this link. In the **Customize confirmation message** flyout that appears, configure the following settings:

       - **Before submission**: In the **Title** and **Confirmation message** boxes, enter the descriptive text that users see before they report a message using the Report Message add-in. You can use the variable %type% to include the submission type (junk, not junk, phish, etc.).

         As noted, the following text is also added to the notification:

         > Your email will be submitted as-is to Microsoft for analysis. Some emails might contain personal or sensitive information.

       - **After submission**: Click ![Expand icon](../../media/scc-expand-icon.png). In the **Title** and **Confirmation message** boxes, enter the descriptive text that users see after they report a message using the Report Message add-in. You can use the variable %type% to include the submission type.

      When you're finished, click **Save**. To clear these values, click **Restore** back on the **User submissions** page.

   - **Send the reported messages to**: Make one of the following selections:

     - **Microsoft (Recommended)**: The user submissions mailbox isn't used (all reported messages go to Microsoft).

     - **Microsoft and a custom mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox.

     - **Custom mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox.

     When you're finished, click **Confirm**.

     ![Send reported messages to Microsoft and a custom mailbox](../../media/user-submission-enable-outlook-report-message.png)

   - **Disable the Report Message feature for Outlook**: Select this option if you use third-party reporting tools instead of the Report Message add-in or the built-in reporting in Outlook on the web, and then configure the following settings:

     Select **Use this custom mailbox to receive user reported submissions**. In the box that appears, enter the email address of an existing mailbox, or the email address of the mailbox that you want to create.

     When you're finished, click **Confirm**.

     ![Send reported messages to a custom mailbox using third-party tools](../../media/user-submission-disable-outlook-report-message.png)
