---
title: User submissions policy
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
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn how to configure a mailbox to collect spam and phishing email that are reported by users.
ms.technology: mdo
ms.prod: m365-security
---

# User submissions policy

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../mtp/microsoft-threat-protection.md)

In Microsoft 365 organizations with Exchange Online mailboxes, you can specify a mailbox to receive messages that users report as malicious or not malicious. When users submit messages using the various reporting options, you can use this mailbox to intercept messages (send to the custom mailbox only) or receive copies of messages (send to the custom mailbox and Microsoft). This feature works with the following message reporting options:

- [The Report Message add-in](enable-the-report-message-add-in.md)

- [The Report Phishing add-in](enable-the-report-phish-add-in.md)

- [Built-in reporting in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md) (formerly known as Outlook Web App)

- [Built-in reporting in Outlook for iOS and Android](report-junk-email-and-phishing-scams-in-outlook-for-iOS-and-Android.md)

  > [!NOTE]
  > If reporting has been [disabled in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md#disable-or-enable-junk-email-reporting-in-outlook-on-the-web), enabling user submissions here will override that setting and enable users to report messages in Outlook on the web again.

You can also configure third-party message reporting tools to forward messages to the mailbox that you specify.

Delivering user reported messages to a custom mailbox instead of directly to Microsoft allows your admins to selectively and manually report messages to Microsoft using [Admin submission](admin-submission.md).

## Custom mailbox prerequisites

Use the following articles to configure the prerequisites required so user reported messages go to your custom mailbox:

- Skip spam filtering on the custom mailbox by creating an exchange mail flow rule to set the spam confidence level. See [Use the EAC to create a mail flow rule that sets the SCL of a message](use-mail-flow-rules-to-set-the-spam-confidence-level-scl-in-messages.md#use-the-eac-to-create-a-mail-flow-rule-that-sets-the-scl-of-a-message) to set the SCL to **-1**.

- Turn off scanning attachments for malware in the custom mailbox. Use [Set up Safe Attachments policies in Defender for Office 365](set-up-safe-attachments-policies.md) to create a Safe Attachments policy with the setting **Off** for **Safe Attachments unknown malware response**.

- Turn off URL scanning on messages in the custom mailbox. Use [Set up Safe Links policies in Defender for Office 365](set-up-safe-links-policies.md) to create a Safe Links policy with the setting **Off** for **Select the action for unknown potentially malicious URLs in messages**.

- Create an anti-malware policy to turn off Malware Zero-hour Auto Purge. See [Use the Security & Compliance Center to create anti-malware policies](configure-your-spam-filter-policies.md#use-the-security--compliance-center-to-create-anti-spam-policies) to set **Malware Zero-hour Auto Purge** to **Off**.

- Create a spam filter policy to disable zero-hour auto purge (ZAP) for spam and phishing in the custom mailbox. See [Use the Security & Compliance Center to create anti-spam policies](configure-your-spam-filter-policies.md#use-the-security--compliance-center-to-create-anti-spam-policies) and clear the **On** checkboxes for **Spam ZAP** and **Phish ZAP**.

- Disable the junk email rule in the custom mailbox. Use [Configure junk email settings on Exchange Online mailboxes](configure-junk-email-settings-on-exo-mailboxes.md) to disable the junk email rule. Once disabled, EOP can't move messages to the Junk Email folder based on the spam filtering verdict action **Move message to Junk Email folder** or the safelist collection on the mailbox.

After you've verified that your mailbox meets all applicable prerequisites, [Use the Security & Compliance Center to configure the user submissions mailbox](#use-the-security--compliance-center-to-configure-the-user-submissions-mailbox) (in this article).

## What do you need to know before you begin?

- You open the Security & Compliance Center at <https://protection.office.com/>. To go directly to the **User submissions** page, use <https://protection.office.com/userSubmissionsReportMessage>.

- To modify the configuration for User submissions, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
  - **Organization Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

- You need access to Exchange Online PowerShell. If the account that you're trying to use doesn't have access to Exchange Online PowerShell, you'll receive an error that looks like this when specify the submissions mailbox:

  > Specify an email address in your domain

  For more information about enabling or disabling access to Exchange Online PowerShell, see the following topics:

  - [Enable or disable access to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/disable-access-to-exchange-online-powershell) 
  - [Client Access Rules in Exchange Online](https://docs.microsoft.com/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules)

## Use the Security & Compliance Center to configure the user submissions mailbox

1. In the Security & Compliance Center, go to **Threat management** \> **Policy** \> **User submissions**.

2. In the **User submissions** page that appears, select one of the following options:

      1. **Enable the Report Message feature for Outlook (Recommended)**: Select
this option if you use the Report Message add-in, the Report Phishing 
add-in or the built-in reporting in Outlook on the web, and then configure
the following settings:

    - **Customize the end-user confirmation message**: Click this link. In the **Customize confirmation message** flyout that appears, configure the following settings:

        - **Before submission**: In the **Title** and **Confirmation message** boxes, enter the descriptive text that users see before they report a message using the Report Message add-in or the Report Phishing add-in. You can use the variable %type% to include the submission type (junk, not junk, phish, etc.).

            As noted, if you select an option that sends the reported messages to Microsoft, the following text is also added to the notification:

        > Your email will be submitted as-is to Microsoft for analysis. Some emails might contain personal or sensitive information.

        - **After submission**: Click ![Expand icon](../../media/scc-expand-icon.png). In the **Title** and **Confirmation message** boxes, enter the descriptive text that users see after they report a message using the Report Message add-in or the Report Phishing add-in. You can use the variable %type% to include the submission type.

      When you're finished, click **Save**. To clear these values, click **Restore** back on the **User submissions** page.
    
    - **Customize the end-user reporting options**: Click this link. In the
**Customize end-user reporting options** flyout that appears, enter the
descriptive text for Junk email reporting options. 
      Under **Options to show when messages are reported**, select at least
one among the following options:
        - **Ask me before sending a report**
        - **Automatically send reports**
        -  **Never send reports** \
   When you're finished, click **Save**.
              - **Send the reported messages to**: Make one of the following selections:
              - **Microsoft (Recommended)**: The user submissions mailbox isn't used (all reported messages go to Microsoft).
              - **Both Microsoft and a custom mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox. Distribution groups are not allowed. User submissions will go to both Microsoft for analysis and to the custom mailbox for your admin or security operations team to analyze.
              - **Custom mailbox only**: In the box that appears, enter the email address of an existing Exchange Online mailbox. Distribution groups are not allowed. Use this option if you want the message to only go to an admin or the security operations team for analysis first. Messages will not go to Microsoft unless the admin forwards it themselves.

        > [!NOTE]
        > U.S. Government organizations (GCC, GCC-H, and DoD) can only configure **Custom mailbox**. The other two options are disabled.

      When you're finished, click **Confirm**.

      > [!CAUTION]
      > If you have [disabled junk email reporting in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md#disable-or-enable-junk-email-reporting-in-outlook-on-the-web) using Outlook on the web mailbox policies, but you configure either of the previous settings to report messages to Microsoft, users will be able to report messages to Microsoft in Outlook on the web using the Report Message add-in or the Report Phishing add-in.


    1. **Disable the Report Message feature for Outlook**: Select this option if you use third-party reporting tools instead of the Report Message add-in, the Report Phishing add-in or the built-in reporting in Outlook on the web, and then configure the following settings:

          Select **Use this custom mailbox to receive user reported submissions**. In the box that appears, enter the email address of an existing mailbox that is already in Office 365. This has to be an existing mailbox in Exchange Online that can receive email.

          When you're finished, click **Confirm**.

## Message submission format

Messages sent to custom mailboxes need to follow a specific submission mail format. The Subject (Envelope Title) of the submission should be in this format:

`SafetyAPIAction|NetworkMessageId|SenderIp|FromAddress|(Message Subject)`

where SafetyAPIAction is one of the following integer values:

- 1: Junk
- 2: Not junk
- 3: Phishing

In the following example:

- The message is being reported as phishing.
- The Network Message ID is 49871234-6dc6-43e8-abcd-08d797f20abe.
- The Sender IP is 167.220.232.101.
- The From address is test@contoso.com.
- The message's subject line is "test phishing submission"

`3|49871234-6dc6-43e8-abcd-08d797f20abe|167.220.232.101|test@contoso.com|(test phishing submission)`

Messages that do not follow this format will not display properly in the Submissions portal.

