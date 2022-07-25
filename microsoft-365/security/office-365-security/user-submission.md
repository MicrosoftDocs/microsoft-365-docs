---
title: User-reported email settings for spam, phish, as malicious mail
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 07/19/2022
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom:
description: Admins can learn how identify a custom mailbox (also known as a user submissions mailbox) to collect spam and phishing messages that are reported by users. Other settings complete the reporting experience for users when they report messages.
ms.technology: mdo
ms.prod: m365-security
---

# User reported message settings

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with Exchange Online mailboxes, you can direct mail to a custom mailbox (also known as the _user submissions mailbox_) when users report malicious or not malicious messages. When users report email messages using the supported reporting options, admins can configure the user reported message settings in their organization to send reported messages to the user submissions mailbox. You can configure the user submissions mailbox to intercept user-reported messages (send to the user submissions mailbox only) or receive copies of user-reported messages as users report messages to Microsoft. These settings were formerly known as the _User submissions policy_.

User reported message settings and the user submissions mailbox work with the following message reporting options:

- [The Report Message add-in](enable-the-report-message-add-in.md)
- [The Report Phishing add-in](enable-the-report-phish-add-in.md)
- [Third-party reporting tools](user-submission.md#third-party-email-reporting-tools)

Delivering user reported messages to a user submissions mailbox instead of directly to Microsoft allows admins to selectively and manually report messages to Microsoft on the **Submissions** page at <https://security.microsoft.com/reportsubmission>. For more information, see [Admin submission](admin-submission.md).

  > [!NOTE]
  > If reporting has been [disabled in Outlook on the web](report-junk-email-and-phishing-scams-in-outlook-on-the-web-eop.md#disable-or-enable-junk-email-reporting-in-outlook-on-the-web), enabling user-reported messages here will override that setting and allow users to report messages in Outlook on the web again.

## Configuration requirements for the user submissions mailbox

Before you get started, yu need to configure Exchange Online Protection and Defender for Office 365 so user reported messages are delivered to the user submissions mailbox without being filtered as described in the following steps:

- Identify the user submissions mailbox as a SecOps mailbox. For instructions, see [Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy](configure-advanced-delivery.md#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy).

- Create a custom anti-malware policy for the user submissions mailbox with the following settings:

  - Turn off Zero-hour auto purge (ZAP) for malware (**Protection settings** section \> **Enable zero-hour auto purge for malware** is not selected or `-ZapEnabled $false` in PowerShell).

  - Turn off common attachments filtering (**Protection settings** section \> **Enable the common attachments filter** is not selected or `EnableFileFilter $false` in PowerShell).
  
  For instructions, see [Create an anti-malware policy](configure-anti-malware-policies.md#use-the-microsoft-365-defender-portal-to-create-anti-malware-policies).

- Verify the user submissions mailbox is not included in the **Standard** or **Strict** preset security policies. For instructions, see [Preset security policies](preset-security-policies.md).

- **Defender for Office 365**: Configure the following additional settings:

  - Exclude the user submissions mailbox from the **Built-in protection** preset security policy. For instructions, see [Preset security policies](preset-security-policies.md).

  - Create a Safe Attachments policy for the user submissions mailbox where Safe Attachments scanning, including Dynamic Delivery, is turned off  (**Settings** \> **Safe Attachments unknown malware response** section \> **Off** or `-Enable $false` in PowerShell). For instructions, see [Set up Safe Attachments policies in Microsoft Defender for Office 365](set-up-safe-attachments-policies.md).

  - Create a Safe Links policy for the user submissions mailbox where Safe Links scanning in email is turned off (**URL & click protection settings** \> **On: Safe Links checks a list of known, malicious links when users click links in email** is not selected or `EnableSafeLinksForEmail $false` in PowerShell). For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-safe-links-policies.md).

After you've verified that the mailbox meets these requirements, use the rest of the instructions in this article to identify the user submissions mailbox and other user reported message settings.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **User submissions** page, use <https://security.microsoft.com/userSubmissionsReportMessage>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- To modify the configuration for User submissions, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

- You need access to Exchange Online PowerShell. If the account that you're trying to use doesn't have access to Exchange Online PowerShell, you'll receive an error that looks like this when specifying the submissions mailbox:

  > Specify an email address in your domain

  For more information about enabling or disabling access to Exchange Online PowerShell, see the following topics:

  - [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell)
  - [Client Access Rules in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules)

## Use the Microsoft 365 Defender portal to configure the user submissions mailbox for email

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat policies** \> **User reported message settings** in the **Others** section. To go directly to the **User submissions** page, use <https://security.microsoft.com/userSubmissionsReportMessage>.

2. On the **User submissions** page, what you see is largely determined by the **Microsoft Outlook Report Message button** toggle:

   - **On** ![Toggle on.](../../media/scc-toggle-on.png): You use the Microsoft integrated reporting experience, which includes the Report Message add-in, the Report Phishing add-in or the built-in reporting in Outlook on the web.

     This setting also allows users to report false positive messages from the quarantine portal.

   - **Off** ![Toggle off.](../../media/scc-toggle-off.png): You use third-party message reporting tools instead of the Microsoft integrated reporting experience.

The related configuration options are described in the following sections.

### Microsoft integrated reporting experience

When **Microsoft Outlook Report Message button** is **On** ![Toggle on.](../../media/scc-toggle-on.png), the following settings are available on the **User submissions** page:

- **Send the reported messages to** section: Select one of the following options:

  - **Microsoft**: The user submissions mailbox isn't used (all reported messages go to Microsoft for analysis).
  - **Microsoft and my organization's mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox to use as the user submissions mailbox. Distribution groups are not allowed. User submissions go to Microsoft for analysis and to the user submissions mailbox for an admin or security operations team to analyze.
  - **My organization's mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox. Distribution groups are not allowed. User submissions go only to the user submissions mailbox for an admin or the security operations team to analyze. Messages don't go to Microsoft for analysis unless an admin manually submits the messages.

  > [!IMPORTANT]
  > In U.S. Government organizations (GCC, GCC High, and DoD) organizations, the only available selection in the **Send the reported messages to** section is **My organization's mailbox**. The other two options are grayed out.
  >
  > If you used [Outlook on the web mailbox policies](/exchange/clients-and-mobile-in-exchange-online/outlook-on-the-web/configure-outlook-web-app-mailbox-policy-properties) to disable junk email reporting in Outlook on the web, but you select **Microsoft** or **Microsoft and my organization's mailbox**, users will be able to report messages to Microsoft in Outlook on the web using the Report Message add-in or the Report Phishing add-in.
  >
  > If you select **My organization's mailbox**, reported messages appear on the **User reported messages** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission>. But the **Result** value of these messages will always be empty, because the messages were not rescanned.
  >
  > If you use [Attack simulation training](attack-simulation-training-get-started.md) or a third-party product to do phishing simulations, you must configure the user submissions mailbox as a SecOps mailbox as previously described in the [Configuration requirements for the user submissions mailbox](#configuration-requirements-for-the-user-submissions-mailbox) section earlier in this article. If you don't, a user reporting a message might trigger a training assignment in the phishing simulation product.

  Regardless of your selection, the following settings are also available in the **Send the reported messages to** section:

  - **Let users choose if they want to report**: This setting controls the options that are available in the **Select reporting options that are available to users** section:

    - **Let users choose if they want to report** selected: You can select some, all or none of the settings in the **Select reporting options that are available to users** section.
    - **Let users choose if they want to report** not selected: You can select only one setting in the **Select reporting options that are available to users** section.

    - **Select reporting options that are available to users** section:
      - **Ask me before sending the message**
      - **Always report the message**
      - **Never report the message**

- **User reporting experience** section: The following settings are available:

  As shown on the page, if you select an option that sends the reported messages to Microsoft, the following text is also added to the notification:

  > Your email will be submitted as-is to Microsoft for analysis. Some emails might contain personal or sensitive information.

  - **Before reporting** tab: In the **Title** and **Message body** boxes, enter the descriptive text that users see before they report a message using the Report Message add-in or the Report Phishing add-in. You can use the variable `%type%` to include the submission type (junk, not junk, phishing, etc.).
  - **After reporting** tab: In the **Title** and **Confirmation message** boxes, enter the descriptive text that users see after they report a message using the Report Message add-in or the Report Phishing add-in. You can use the variable `%type%` to include the submission type.

  - **Only display when user reports phishing**: Select this option to display the **Before reporting** and **After reporting** notifications only when users report messages as phishing. Otherwise, the notifications are shown for all reported messages.

- **Email notifications for admin review results** section: The following settings are available:

  - **Specify Office 365 email address to use as sender**: Select this setting and enter the email address in the box that appears.
  
  - **Customize notifications**: Click this link to customize the email notification that's sent after an admin reviews and marks a reported messages.

    On the **Customize confirmation message** flyout that appears, configure the following settings:

    - **Phishing**, **Junk** and **No threats found** tabs: In the **Review result text** on some, none, or all of the tabs, enter the custom text to use.
    - **Footer** tab: The following options are available:
      - **Footer text**: Enter the custom message footer text to use.
      - **Display company logo**: Before select this option, you need to follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your custom logo.

  When you're finished on the **Customize confirmation message** flyout, click **Confirm**.

- **Customize your organization's experience when reporting potential threats in quarantine** section:

  **Quarantine report message button**: Verify this setting is **On** ![Toggle on.](../../media/scc-toggle-on.png) to let users report messages from quarantine. Otherwise, turn this setting **Off** ![Toggle off.](../../media/scc-toggle-off.png).

When you're finished on the **User submissions** page, click **Save**. To restore the settings to their immediately previous values, click **Restore**.

### Third-party reporting tools

You can turn off the Microsoft integrated reporting experience to use third-party message reporting tools to send reported messages to the user submissions mailbox.

The only requirement is that the original messages are included as uncompressed .EML or .MSG attachments in messages that are sent to user submissions mailbox. In other words, don't just forward the original messages to the user submissions mailbox).

> [!NOTE]
> If multiple email attachments are present in the email, then the submission will be discarded. We only support emails with one email attachment.

The message formatting requirements are described in the next section. The formatting is optional, but reported messages don't follow the prescribed format, the reported messages are always identified as phishing.

When **Microsoft Outlook Report Message button** is **Off** ![Toggle off.](../../media/scc-toggle-off.png) the following settings are available on the **User submissions** page:

- **Microsoft and my organization's mailbox**: In the box that appears, enter the email address of an existing Exchange Online mailbox to use as the user submissions mailbox. Distribution groups are not allowed.

- **Customize your organization's experience when reporting potential threats in quarantine** section:

  **Quarantine report message button**: Verify this setting is **On** ![Toggle on.](../../media/scc-toggle-on.png) to let users report messages from quarantine. Otherwise, turn this setting **Off** ![Toggle off.](../../media/scc-toggle-off.png).

When you're finished on the **User submissions** page, click **Save**. To restore the settings to their immediately previous values, click **Restore**.

#### Message submission format

To correctly identify the original attached messages, messages sent to the custom mailbox require specific formatting. If the messages don't use this format, the original attached messages are always identified as phishing.

To specify the reason why the original attached messages were reported, messages sent to the user submissions mailbox must meet the following criteria:

- The original message attachment is unmodified.
- The Subject line (Envelope Title) of messages sent to the user submissions mailbox must start with one of the following prefix values:
  - `1|` or `Junk:`.
  - `2|` or `Not junk:`.
  - `3|` or `Phishing:`.

  For example:

  - `3|This text in the Subject line is ignored by the system`
  - `Not Junk:This text in the Subject line is also ignored by the system`

  Messages that don't follow this format will not display properly on the **Submissions** page at <https://security.microsoft.com/reportsubmission>.

## Use Exchange Online PowerShell to configure the user submissions mailbox for email

After you [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), you use the **\*-ReportSubmissionPolicy** and **\*-ReportSubmissionRule** cmdlets to manage and configure the user submissions mailbox and the related settings:

- **\*-ReportSubmissionRule** cmdlets specify the email address of the user submissions mailbox.

  When you configure the user submissions mailbox in the Microsoft 365 Defender portal at <https://security.microsoft.com/userSubmissionsReportMessage>, the value you specify is automatically copied to the following properties

In Exchange Online PowerShell, the basic elements of the user submissions mailbox settings are:

- **The report submission policy**: Turns the Microsoft integrated reporting experience on or off, turns sending reported messages to Microsoft on or off, turns sending reported messages to the user submissions mailbox on or off, and most other settings.
- **The report submission rule**: Specifies the user submissions mailbox (an email address or a blank value).

The difference between these two elements isn't obvious when you manage user submissions mailbox settings in the Microsoft 365 Defender portal:

- There's only report submission policy named DefaultReportSubmissionPolicy. If you've never gone to <https://security.microsoft.com/reportsubmission>, then there is no report submission policy or report submission rule (the Get-ReportSubmissionPolicy and Get-ReportSubmissionRule cmdlets returns nothing). As soon as you visit <https://security.microsoft.com/reportsubmission> and before you configure any settings, the report submission policy and the report submission rule are automatically created with the default values.
- There's only one report submission policy, and its name is always DefaultReportSubmissionPolicy. There's only one default submission rule, and its default name is DefaultReportSubmissionRule.
- When you specify the email address of the user submissions mailbox, that value is primarily set in the report submission rule, but the value is also copied into cosmetically related properties in the report submission rule.

In Exchange Online PowerShell, the difference between the report submission policy and the report submission rule is apparent. You manage the report submission policy by using the **\*-ReportSubmissionPolicy** cmdlets, and you the report submission by using the **\*-ReportSubmissionRule** cmdlets. In Exchange Online PowerShell, you manage the policy and the rule separately, although some of the settings are interdependent:

- If the Get-ReportSubmissionPolicy cmdlet returns nothing, you can use the New-ReportSubmissionPolicy cmdlet to create the report submission policy named DefaultReportSubmissionPolicy. Before you run New-ReportSubmissionPolicy, if the Get-ReportSubmissionsRule also returns nothing, the report submission rule named DefaultReportSubmissionRule is automatically created.
- If the report submission policy and report submission rule already exist (the Get-ReportSubmissionPolicy and Get-ReportSubmissionRule cmdlets return something), you can create, delete, and modify the policy and the rule independently of each other (although the policy must exist before you can create the rule).
- You specify the email address of the user submissions mailbox in the report submission rule.