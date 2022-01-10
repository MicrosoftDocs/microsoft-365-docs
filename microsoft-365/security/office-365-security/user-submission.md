---
title: User reported message settings
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom:
description: Admins can learn how to configure a mailbox to collect spam and phishing email that are reported by users.
ms.technology: mdo
ms.prod: m365-security
---

# User reported message settings

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with Exchange Online mailboxes, you can specify a mailbox to receive messages that users report as malicious or not malicious. When users report messages using the various reporting options, you can use this mailbox to intercept messages (send to the custom mailbox only) or receive copies of messages (send to the custom mailbox and Microsoft). This feature works with the following message reporting options:

- [The Report Message add-in](enable-the-report-message-add-in.md)
- [The Report Phishing add-in](enable-the-report-phish-add-in.md)
- [Third-party reporting tools](#third-party-reporting-tools)

Delivering user reported messages to a custom mailbox instead of directly to Microsoft allows your admins to selectively and manually report messages to Microsoft using [Admin submission](admin-submission.md). These settings were formerly known as the User submissions policy.

  > [!NOTE]
  > If reporting has been [disabled in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md#disable-or-enable-junk-email-reporting-in-outlook-on-the-web), enabling user reported messages here will override that setting and enable users to report messages in Outlook on the web again.

## Custom mailbox prerequisites

Use the following articles to configure the prerequisites required so user reported messages go to your custom mailbox:

- Skip spam filtering on the custom mailbox by creating an exchange mail flow rule to set the spam confidence level. See [Use the EAC to create a mail flow rule that sets the SCL of a message](/exchange/security-and-compliance/mail-flow-rules/use-rules-to-set-scl#use-the-eac-to-create-a-mail-flow-rule-that-sets-the-scl-of-a-message) to set the SCL to **Bypass spam filtering**.

- [Create an anti-malware policy](configure-your-spam-filter-policies.md#use-the-microsoft-365-defender-portal-to-create-anti-spam-policies) that includes the custom mailbox where zero-hour auto purge (ZAP) for malware is turned off (**Protection settings** section \> **Enable zero-hour auto purge for malware** is not selected).

- [Create an anti-spam policy](configure-your-spam-filter-policies.md#use-the-microsoft-365-defender-portal-to-create-anti-spam-policies) that includes the custom mailbox where ZAP for spam and ZAP for phishing are turned off (**Zero-hour auto purge** section \> **Enabled zero-hour auto purge (ZAP)** is not selected).

If you have Microsoft Defender for Office 365, you should also configure the following settings so that our advanced filtering does not impact the users reporting messages:

- [Create a Safe Links policy](set-up-safe-links-policies.md) that includes the custom mailbox where Safe Links scanning is turned off (**Select the action for unknown potentially malicious URLs in messages** section \> **Off**).

- [Create a Safe Attachments policy](set-up-safe-attachments-policies.md) that includes the custom mailbox where Safe Attachments scanning is turned off (**Safe Attachments unknown malware response** section \> **Off**).

After you've verified that your mailbox meets all applicable prerequisites, you can use the procedures in this article to configure the user submissions mailbox.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **User submissions** page, use <https://security.microsoft.com/reportsubmission>.

- To modify the configuration for User submissions, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

- You need access to Exchange Online PowerShell. If the account that you're trying to use doesn't have access to Exchange Online PowerShell, you'll receive an error that looks like this when specify the submissions mailbox:

  > Specify an email address in your domain

  For more information about enabling or disabling access to Exchange Online PowerShell, see the following topics:

  - [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell)
  - [Client Access Rules in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules)

## Use the Microsoft 365 Defender portal to configure the user submissions mailbox

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat policies** \> **User reported message settings** in the **Others** section. To go directly to the **User submissions** page, use <https://security.microsoft.com/reportsubmission>.

2. On the **User submissions** page, what you see is determined by whether the **Microsoft Outlook Report Message button** setting is **Off** or **On**:

   - **Microsoft Outlook Report Message button** \> **On** ![Toggle on.](../../media/scc-toggle-on.png): Select this option if you use the Report Message add-in, the Report Phishing add-in or the built-in reporting in Outlook on the web, and then configure the following settings:
     - **Send the reported messages to**: Select one of the following options:
       - **Microsoft**: The user submissions mailbox isn't used (all reported messages go to Microsoft).
       - **Microsoft and my organization's mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox. Distribution groups are not allowed. User submissions will go to both Microsoft for analysis and to the custom mailbox for your admin or security operations team to analyze.
       - **My organization's mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox. Distribution groups are not allowed. Use this option if you want the message to only go to an admin or the security operations team for analysis first. Messages will not go to Microsoft unless the admin forwards it themselves.

          > [!IMPORTANT]
          > U.S. Government organizations (GCC, GCC High, and DoD) can only configure **My organization's mailbox**. The other two options are disabled.
          >
          > If organizations are configured to send to custom mailbox only, reported messages will not be sent for rescan and results in the User reported messages portal will always be empty.

       Regardless of the value you selected for **Send the reported messages to**, the following settings are available:

       - **Let users choose if they want to report their message to Microsoft**
       - **Select reporting options that are available to users** section: Select at least one among the following options:
         - **Ask me before sending the message**
         - **Always report the message**
         - **Never report the message**

          > [!CAUTION]
          > If you have [disabled junk email reporting in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md#disable-or-enable-junk-email-reporting-in-outlook-on-the-web) using Outlook on the web mailbox policies, but you configured any of the previous settings to report messages to Microsoft, users will be able to report messages to Microsoft in Outlook on the web using the Report Message add-in or the Report Phishing add-in.

     Leave the **Microsoft Outlook Report Message button** setting ![Toggle on](../../media/scc-toggle-on.png) **On** to allow end-users to report false positive messages from the quarantine portal.

     - **User reporting experience section**
       - **Before reporting** tab: In the **Title** and **Message body** boxes, enter the descriptive text that users see before they report a message using the Report Message add-in or the Report Phishing add-in. You can use the variable %type% to include the submission type (junk, not junk, phish, etc.).
       - **After reporting** tab: In the **Title** and **Confirmation message** boxes, enter the descriptive text that users see after they report a message using the Report Message add-in or the Report Phishing add-in. You can use the variable %type% to include the submission type.
       - **Only display when user reports phishing**: Check this option if you want to display the message only when an email is reported as phish. If not, checked messages will be shown for any kind of report.

       As shown on the page, if you select an option that sends the reported messages to Microsoft, the following text is also added to the notification:

          > Your email will be submitted as-is to Microsoft for analysis. Some emails might contain personal or sensitive information.

   - **Microsoft Outlook Report Message button** \> **Off** ![Toggle off.](../../media/scc-toggle-off.png): Select this option if you use third-party reporting tools instead of the Report Message add-in, the Report Phishing add-in, or the built-in reporting in Outlook on the web, and then configure the following settings:
     - Select **Use this custom mailbox to receive user reported submissions**. In the box that appears, enter the email address of an existing Exchange Online mailbox that can receive email.

   - **Microsoft Outlook Report Message button**: Enable this feature if you want to let end users report messages from quarantine.

   When you're finished, click **Confirm**. To clear these values, click **Restore**

## Third-party reporting tools

You can configure third-party message reporting tools to send reported messages to the custom mailbox. You would do this by setting the **Microsoft Outlook Report Message button** setting to **Off** and setting the **My organization's mailbox** to an Office 365 mailbox of your choice.

The only requirement is that the original message is included as a .EML or .MSG attachment (not compressed) in the message that's sent to the custom mailbox (don't just forward the original message to the custom mailbox).

The message formatting requirements are described in the next section. The formatting is optional, but if it does not follow the prescribed format, the reports will always be submitted as phish.

## Message submission format

To correctly identify the original attached messages, messages that are sent to the custom mailbox require specific formatting. If the messages don't use this format, the original attached messages are always identified as phishing submissions.

If you want to specify the reported reason for the original attached messages, messages that are sent to the custom mailbox (don't modify the attachment) need to start with one of the following prefixes in the Subject (Envelope Title):

- 1| or Junk:
- 2| or Not junk
- 3| or Phishing

For example:

`3|This part is ignored by the system` <br>
`Not Junk:This part of the subject is ignored as well`

- Both of these messages are being reported as Not Junk based on Subject.
- The rest is ignored.


Messages that don't follow this format will not display properly in the Submissions portal.
