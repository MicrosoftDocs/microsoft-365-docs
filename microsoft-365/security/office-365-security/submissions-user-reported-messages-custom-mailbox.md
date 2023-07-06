---
title: User reported settings
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: "Admins can configure where user reported messages go for analysis: to an internal reporting mailbox, to Microsoft, or both. Other settings complete the reporting experience for users when they report good messages, spam, or phishing messages from Outlook."
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 7/6/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# User reported settings

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Exchange Online mailboxes, you can identify a _reporting mailbox_ (formerly known as a _custom mailbox_ or _submissions mailbox_) to hold messages that users report as malicious or not malicious in Outlook. For Microsoft reporting tools, you can decide whether to send user reported messages to the reporting mailbox, to Microsoft, or to the reporting mailbox and Microsoft. These selections were formerly part of the _User submissions policy_ or _User submissions_.

User reported settings and the reporting mailbox work with the following message reporting tools:

- [The built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web)
- [The Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md)
- [Supported third-party reporting tools](#options-for-third-party-reporting-tools)

Delivering user reported messages to a reporting mailbox instead of directly to Microsoft allows admins to selectively and manually submit messages to Microsoft from the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>. For more information, see [Admin submission](submissions-admin.md).

> [!NOTE]
> The _ReportJunkEmailEnabled_ parameter on the [Set-OwaMailboxPolicy](/powershell/module/exchange/set-owamailboxpolicy) cmdlet no longer controls whether user message reporting is enabled or disabled. User reporting of messages is now controlled on the **User reported settings** page at <https://security.microsoft.com/securitysettings/userSubmission> as described in this article.
>
> For information about user reported message settings in Microsoft Teams, see [User reported message settings in Microsoft Teams](submissions-teams.md).

## Configuration requirements for the reporting mailbox

Before you get started, you need to use the following steps to configure Exchange Online Protection and Defender for Office 365 so user reported messages are delivered to the reporting mailbox without being filtered:

- Identify the reporting mailbox as a SecOps mailbox. For instructions, see [Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy](skip-filtering-phishing-simulations-sec-ops-mailboxes.md#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy).

  > [!NOTE]
  > This step is especially important if you use [Attack simulation training](attack-simulation-training-get-started.md) or a third-party product to do phishing simulations. If you don't configure the reporting mailbox as a SecOps mailbox, a user reported message might trigger a training assignment by the phishing simulation product.

- Create a custom anti-malware policy for the reporting mailbox with the following settings:

  - Turn off Zero-hour auto purge (ZAP) for malware (**Protection settings** section \> **Enable zero-hour auto purge for malware** isn't selected or `-ZapEnabled $false` in PowerShell).

  - Turn off the [common attachments filter](anti-malware-protection-about.md#common-attachments-filter-in-anti-malware-policies) (**Protection settings** section \> **Enable the common attachments filter** isn't selected or `-EnableFileFilter $false` in PowerShell).

  For instructions, see [Create an anti-malware policy](anti-malware-policies-configure.md#use-the-microsoft-365-defender-portal-to-create-anti-malware-policies).

- Verify that the reporting mailbox isn't included in the Standard or Strict preset security policies. For instructions, see [Preset security policies](preset-security-policies.md).

- **Defender for Office 365**: Configure the following additional settings:

  - Exclude the reporting mailbox from the Built-in protection preset security policy. For instructions, see [Preset security policies](preset-security-policies.md).

  - Create a Safe Attachments policy for the mailbox where Safe Attachments scanning, including Dynamic Delivery, is turned off (**Settings** \> **Safe Attachments unknown malware response** section \> **Off** or `-Enable $false` in PowerShell). For instructions, see [Set up Safe Attachments policies in Microsoft Defender for Office 365](safe-attachments-policies-configure.md).

  - Create a Safe Links policy for the reporting mailbox where Safe Links scanning in email is turned off (**URL & click protection settings** \> **On: Safe Links checks a list of known, malicious links when users click links in email** isn't selected or `EnableSafeLinksForEmail $false` in PowerShell). For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md).

- If you have data loss prevention (DLP), exclude the reporting mailbox from DLP. For more information, see [Data loss prevention Exchange conditions and actions reference](../../compliance/dlp-exchange-conditions-and-actions.md).

After you verify that the reporting mailbox meets all of these requirements, use the procedures in this article to identify the reporting mailbox and to configure the related settings.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **User reported settings** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in the **Organization Management** or **Security Administrator** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator** or **Security Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- You need access to Exchange Online PowerShell. If your account doesn't have access to Exchange Online PowerShell, you get the following error: *Specify an email address in your domain*. For more information about enabling or disabling access to Exchange Online PowerShell, see the following articles:
  - [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell)
  - [Client Access Rules in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules) ([until October 2023](https://techcommunity.microsoft.com/t5/exchange-team-blog/deprecation-of-client-access-rules-in-exchange-online/ba-p/3638563))

## Use the Microsoft 365 Defender portal to configure user reported settings

In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User reported settings** tab. To go directly to the **User reported settings** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

On the **User reported settings** page, the available settings for reporting messages in Outlook are determined by the **Monitor reported messages in Outlook** setting in the **Outlook** section at the top of the page:

- **Monitor reported messages in Outlook** isn't selected: The Microsoft-integrated reporting experience for email messages is turned off, and all settings related to reporting email messages aren't configurable on the **User reported settings** page, including the ability for users to report email messages from quarantine.

- **Monitor reported messages in Outlook** is selected: The following configurations are supported:

  - Use the built-in **Report** button in Outlook on the web or the Microsoft Report Message or Report Phishing add-ins in virtually all Outlook platforms to report email messages.
    - Configure user reported messages to go to the reporting mailbox, to Microsoft, or both.
    - Decide whether users receive before reporting and after reporting pop-ups in Outlook.
    - Decide whether to customize the feedback email that's sent to users after an admin reviews and marks the message on the **Submissions** page.
    - Decide whether users can report email messages from quarantine as they release quarantined messages.

    For details, see the [Options for Microsoft reporting tools](#options-for-microsoft-reporting-tools) section in this article.

  - Use a third-party, non-Microsoft add-in to report email messages.
    - Decide whether users can report email messages from quarantine as they release quarantined messages.

    For details, see the [Options for third-party reporting tools](#options-for-third-party-reporting-tools) section in this article.

### Options for Microsoft reporting tools

When **Monitor reported messages in Outlook** is selected and you also select **Use the built-in Report button in Outlook**, the following options are available on the **User reported settings** page:

- **Outlook** section \> **Select an Outlook report button configuration** section \> **When the Report button is clicked**: 

  - **Show a pop-up message before email is reported**: Select this setting to show users a pop-up notification in Outlook before they report a message.

    To customize the text in the notification, select **Customize before message**. In the flyout that opens, enter the text in the **Title** and **Message** boxes. Use the variable `%type%` to include the submission type (junk, not junk, phishing, etc.). When you're finished in the flyout, select **Confirm**.

  - **Show a pop-up success message after email is reported**: Select this setting to show users a pop-up notification in Outlook after they report a message.

    To customize the text in the notification, select **Customize after message**. In the flyout that opens, enter the text in the **Title** and **Message** boxes. Use the variable `%type%` to include the submission type (junk, not junk, phishing, etc.). When you're finished in the flyout, select **Confirm**.

  > [!NOTE]
  > Currently, users who report messages from Outlook on the web using the built-in **Report** button don't get the before or after pop-up notifications. The pop-ups work for users who report messages using the Microsoft Report Message and Report Phishing add-ins.

- **Reported message destinations** section \> **Send the reported messages to**: Select one of the following options:

  - **Microsoft and my reporting mailbox**: For Microsoft 365 organizations created after March 1 2023, this is the default value. User reported messages go to Microsoft for analysis and to the specified reporting mailbox for an admin or security operations team to analyze.

    The default user reporting mailbox is the Exchange Online mailbox of the global admin. Currently, the global admin isn't _shown_ as the user reported mailbox on the **User reported settings** page until _after_ the first user in the organization reports a message from Outlook.

    To specify a different mailbox, select :::image type="icon" source="../../media/m365-cc-sc-remove-selection-icon.png" border="false"::: next to any existing entry in the **Add an Exchange Online mailbox to send reported messages to** box. Click in the box and wait for the list of mailboxes to populate, or start typing a value to filter the list, and then select the mailbox in the results. Distribution groups and routing to an external or on-premises mailbox aren't allowed.

  - **My reporting mailbox only**: User reported messages go only to the specified reporting mailbox for an admin or the security operations team to analyze.

    Follow the previous instructions to select the mailbox in the **Add an Exchange Online mailbox to send reported messages to** box.

    On the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>, the **Result** value for these entries is **Not Submitted to Microsoft**. Messages don't go to Microsoft for analysis unless an admin manually submits the message. For instructions, see [Submit user reported messages to Microsoft for analysis](submissions-admin.md#submit-user-reported-messages-to-microsoft-for-analysis).

  - **Microsoft only**: User reported messages go directly to Microsoft for analysis.

  > [!NOTE]
  >
  > - When you select **Use the built-in Report button in Outlook** and users report messages using the built-in **Report** button in Outlook on the web or the Microsoft Report Message or Report Phishing add-ins in Outlook, user reported messages are available to admins on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>, regardless of the value you select for **Send the reported messages to**. For more information, see [Admin options for user reported messages](submissions-admin.md#admin-options-for-user-reported-messages).
  >
  > - In U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), the only available value for **Send the reported messages to** is **My reporting mailbox only**. The other two options are unavailable for compliance reasons (data isn't allowed to leave the organization boundary).

- **Email notifications** section: These options affect the notification email message that's sent to users when an admin selects :::image type="icon" source="../../media/m365-cc-scc-mark-and-notify-icon.png" border="false"::: **Mark as and notify** on the **Submissions** page at <https://security.microsoft.com/reportsubmission>. The following options are available:

  - **Results email** section: Select **Customize results email**. In the **Customize admin review email notifications** flyout that opens, configure the following settings on the **Phishing**, **Junk** and **No threats found** tabs:
    - **Email body results text**: Enter the custom text to use. You can use different text for **Phishing**, **Junk** and **No threats found**.
    - **Email footer text**: Enter the custom message footer text to use. The same text is used for **Phishing**, **Junk** and **No threats found**.

     When you're finished in the **Customize admin review email notifications** flyout, select **Confirm** to return to the **User reported settings** page.

  - **Customize sender and branding** section:
    - **Specify a Microsoft 365 mailbox to use ads the From address of email notifications**: Select this option and enter the sender's email address in the box that appears. If you don't select this option, the default sender is submissions@messaging.microsoft.com.
    - **Replace the Microsoft logo with my organization's logo across all reporting experiences**: Select this option to replace the default Microsoft logo that's used in notifications. Before you do this step, follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your custom logo.

- **Report from quarantine** section \> **Allow reporting for quarantined messages**: Verify that this setting is selected to let users report messages from quarantine as they [release quarantined email messages](quarantine-end-user.md#release-quarantined-email). Otherwise, uncheck this setting.

When you're finished on the **User reported settings** page, select **Save**.

### Options for third-party reporting tools

When **Monitor reported messages in Outlook** is selected and you also select **Use a non-Microsoft add-in button**, the following options are available on the **User reported settings** page:

- **Reported message destinations** section \> **Add an Exchange Online mailbox to send reported messages to**: Click in the box to find and select an existing Exchange Online mailbox to use as the reporting mailbox that holds user-reported messages from third-party reporting tools.

  Messages can appear on the **User reported settings** tab of the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>. The **Result** value for these entries is **Not Submitted to Microsoft**. The message formatting requirements are described in the next section.

- **Report from quarantine** section \> **Allow reporting for quarantined messages**: Verify that this setting is selected to let users report messages from quarantine as they [release quarantined email messages](quarantine-end-user.md#release-quarantined-email). Otherwise, uncheck this setting.

When you're finished on the **User reported settings** page, select **Save**.

#### Message submission format for third-party reporting tools

Messages sent by third-party reporting tools to the reporting mailbox required specific formatting so they're correctly identified on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>.

Messages that don't follow the required formatting are always identified as phishing.

To correctly identify why the original messages were reported, messages sent to the reporting mailbox must meet the following criteria:

- The user reported message is unmodified and is included as an uncompressed .EML or .MSG attachment. Don't forward the original user reported message to the reporting mailbox.

  > [!CAUTION]
  > Messages that contain multiple attached messages are discarded.

- The user reported message should contain the following required headers:
  - 1. X-Microsoft-Antispam-Message-Info
  - 2. Message-Id
  - 3. X-Ms-Exchange-Organization-Network-Message-Id
  - 4. X-Ms-Exchange-Crosstenant-Id

   > [!NOTE]
   > TenantId in `X-Ms-Exchange-Crosstenant-Id` should be the same as the tenant.
   >
   > `X-Microsoft-Antispam-Message-Info` should be a valid xmi.

- The Subject line (Envelope Title) of messages sent to the reporting mailbox must start with one of the following prefix values:
  - `1|` or `Junk:`.
  - `2|` or `Not junk:`.
  - `3|` or `Phishing:`.

  For example:

  - `3|This text in the Subject line is ignored by the system`
  - `Not Junk:This text in the Subject line is also ignored by the system`

## Use Exchange Online PowerShell to configure the reported message settings

After you [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), use the **\*-ReportSubmissionPolicy** and **\*-ReportSubmissionRule** cmdlets to manage and configure the user reported settings.

In Exchange Online PowerShell, the basic elements of the user reported settings are:

- **The report submission policy**: Turns reporting in Outlook on or off, turns sending reported messages to Microsoft on or off, turns sending reported messages to the reporting mailbox on or off, and most other settings.
- **The report submission rule**: Specifies the email address of the reporting mailbox or a blank value when the reporting mailbox isn't used (report messages to Microsoft only).

The difference between these two elements isn't obvious when you manage the user reported settings in the Microsoft 365 Defender portal:

- An organization has one report submission policy and one report submission rule.

  If you never opened the **User reported settings** page at <https://security.microsoft.com/securitysettings/userSubmission>, there's no report submission policy or report submission rule (the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets return nothing).

  After you visit the **User reported settings** page for the first time (even if you don't change any settings), the report submission policy named DefaultReportSubmissionPolicy is created with the default values and is visible in PowerShell.

  Only after you specify a reporting mailbox (used by Microsoft or third-party reporting tools) and save the changes on the **User reported settings page** is the report submission rule named DefaultReportSubmissionRule created. It might take several seconds before the rule is visible in PowerShell.

  > [!NOTE]
  > Currently, the default settings on the **User reported settings** page include **Send reported messages to** \> **Microsoft and my reporting mailbox** with a blank value for the reporting mailbox. In PowerShell, there's no report submission rule. This default configuration means the reporting mailbox is the global admin's Exchange Online mailbox. The global admin isn't _shown_ as the reporting mailbox in the output of the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets or on the **User reported settings** page until _after_ the first user in the organization reports a message from Outlook.

- You can delete the report submission rule and recreate it with a different name, but the rule is always associated with the report submission policy, and you can't select or change the name of the policy. So, we recommend naming the rule DefaultReportSubmissionRule if you create or recreate the rule.

- When you specify the email address of the reporting mailbox in the Microsoft 365 Defender portal, that value is primarily set in the report submission rule, but the value is also copied into the related properties in the report submission policy. In PowerShell, when you set the email address in the rule, the value isn't copied into the related properties in the policy. For consistency with the **User reported settings** page and for clarity, we recommend that you add or update the email address in the policy and the rule.

### Use PowerShell to view the report submission policy and the report submission rule

To view the report submission policy, run the following command in Exchange Online PowerShell:

```powershell
Get-ReportSubmissionPolicy
```

To view the report submission rule, run the following command:

```powershell
Get-ReportSubmissionRule
```

To view both the policy and the rule at the same time, run the following commands:

```powershell
Write-Output -InputObject `r`n,"Report Submission Policy",("-"*79); Get-ReportSubmissionPolicy; Write-Output -InputObject `r`n,"Report Submission Rule",("-"*79); Get-ReportSubmissionRule
```

Remember, the report submission policy doesn't exist if any of the following statement are true:

- No one ever opened the **User reported settings** page at <https://security.microsoft.com/securitysettings/userSubmission>.
- No one ever manually created the report submission policy in PowerShell.
- Someone manually deleted the report submission policy in PowerShell.

Likewise, the report submission rule doesn't exist if either of the following statements are true:

- No one ever specified a reporting mailbox on the **User reported settings** page.
- No one ever manually created the report submission rule in PowerShell.
- Someone manually deleted the report submission rule in PowerShell.

So, it's possible that the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets return nothing.

For detailed syntax and parameter information, see [Get-ReportSubmissionPolicy](/powershell/module/exchange/get-reportsubmissionpolicy) and [Get-ReportSubmissionRule](/powershell/module/exchange/get-reportsubmissionrule).

### Use PowerShell to create the report submission policy and the report submission rule

If the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets return no output, you can create the report submission policy and the report submission rule. If you try to create them after they already exist, you get an error.

Always create the report submission policy first, because you specify the report submission policy in the report submission rule.

For detailed syntax and parameter information, see [New-ReportSubmissionPolicy](/powershell/module/exchange/new-reportsubmissionpolicy) and [New-ReportSubmissionRule](/powershell/module/exchange/new-reportsubmissionrule).

#### Use PowerShell to configure reporting in Outlook with report messages to Microsoft and the reporting mailbox

This example creates the report submission policy with the default settings:

- Reporting in Outlook is turned on: **Outlook** section \> **Monitor reported messages in Outlook** is selected by default and **Select an Outlook report button configuration** section \> **Use the built-in Report button in Outlook** is selected by default (`-EnableThirdPartyAddress $false` is the default value, so you don't need to use the parameter).

- **Reported message destinations** section:
  - **Send reported messages to** \> **Microsoft and my reporting mailbox** is selected by default (`-EnableReportToMicrosoft $true`, `-ReportJunkToCustomizedAddress $true`, `-ReportNotJunkToCustomizedAddress $true`, and `-ReportPhishToCustomizedAddress $true` are the default values, so you don't need to use those parameters).
    - **Add an Exchange Online mailbox to send reported messages to** specifies the email address of the reporting mailbox.
      - **New-ReportSubmissionPolicy**: `-ReportJunkAddresses <emailaddress>`, `-ReportNotJunkAddresses <emailaddress>`, and `-ReportPhishAddresses <emailaddress>` are required.
      - **New-ReportSubmissionRule**: `-SentTo <emailaddress>` is required.

    > [!NOTE]
    > Currently, the default value of the parameters that identify the the reporting mailbox is blank, which means the default reporting mailbox is the global admin's Exchange Online mailbox. The global admin isn't _shown_ as the reporting mailbox in the output of the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets or on the **User reported settings** page in the Defender portal until _after_ the first user in the organization reports a message from Outlook.
    >
    > Use the same email address value in all parameters that identify the reporting mailbox.

    In this example, the email address of the reporting mailbox is reportedmessages@contoso.com in Exchange Online (you can't specify an external email address).

Other settings:

- **Outlook section** \> **Select an Outlook report button configuration** section \> **When the report button is clicked** section:
  - **Show a pop-up message before email is supported**: When you go to the **User reported settings** page in the Defender portal for the first time (which creates the report submission policy), this setting is not selected (equivalent to `-PreSubmitMessageEnabled -$false`). But, the default value when you use the PowerShell to create the policy is `-PreSubmitMessageEnabled $true`. So, the example includes `-PreSubmitMessageEnabled $false`.
    - **Customize before message**: Nothing is entered in the **Title** or **Message** boxes in the flyout (`-EnableCustomizedMsg $false` is the default value).
  - **Show a pop-up success message after the email is reported**: When you go to the **User reported settings** page in the Defender portal for the first time (which creates the report submission policy), this setting is not selected (equivalent to `-PostSubmitMessageEnabled -$false`). But, the default value when you use the PowerShell to create the policy is `-PostSubmitMessageEnabled $true`. So, the example includes `-PostSubmitMessageEnabled $false`.
    - **Customize after message**: Nothing is entered in the **Title** or **Message** boxes in the flyout (`-EnableCustomizedMsg $false` is the default value).

  > [!NOTE]
  > Currently, users who report messages from Outlook on the web using the built-in **Report** button don't get the before or after pop-up notifications. The pop-ups work for users who report messages using the Microsoft Report Message and Report Phishing add-ins.

- **Email notifications** section:
  - **Results email** section \> **Customize results email**: Nothing is entered in the **Email body results text** or **Email footer text** boxes on the **Phishing**, **Junk**, or **No threats found** tabs in the flyout (`-EnableCustomizedMsg $false` is the default value).
  - **Customize sender and branding** section:
    - **Specify a Microsoft 365 mailbox to use as the From address of email notifications** isn't selected (`-EnableCustomNotificationSender $false` is the default value).
    - **Replace the Microsoft logo with my organization's logo across all reporting experiences** isn't selected (`-EnableOrganizationBranding $false` is the default value).

- **Reporting from quarantine** section: **Allow reporting for quarantined messages** is selected (`-DisableQuarantineReportingOption $false` is the default value).

```powershell
$usersub = "reportedmessages@contoso.com"

New-ReportSubmissionPolicy -ReportJunkAddresses $usersub -ReportNotJunkAddresses $usersub -ReportPhishAddresses $usersub -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false

New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
```

#### Use PowerShell to configure reporting in Outlook with report messages to the reporting mailbox only

This example creates the report submission policy and the report submission rule with the following settings:

- Reporting in Outlook is turned on: **Outlook** section \> **Monitor reported messages in Outlook** is selected and **Select an Outlook report button configuration** section \> **Use the built-in Report button in Outlook** is selected by default (`-EnableThirdPartyAddress $false` is the default value, so you don't need to use the parameter).

- **Reported message destinations** section:
  - **Send reported messages to** \> **My reporting mailbox only**: `-EnableReportToMicrosoft $false` and `-EnableUserEmailNotification $true` are required. `-ReportJunkToCustomizedAddress $true`, `-ReportNotJunkToCustomizedAddress $true`, and `-ReportPhishToCustomizedAddress $true` are the default values, so you don't need to use those parameters.
    - **Add an Exchange Online mailbox to send reported messages to** specifies the email address of the reporting mailbox.
      - **New-ReportSubmissionPolicy**: `-ReportJunkAddresses <emailaddress>`, `-ReportNotJunkAddresses <emailaddress>`, and `-ReportPhishAddresses <emailaddress>` are required.
      - **New-ReportSubmissionRule**: `-SentTo <emailaddress>` is required.

    > [!NOTE]
    > Currently, the value `-ReportChatMessageEnabled $false` is required. Even when the _ReportChatMessageEnabled_ property value is `$false` in PowerShell, the **Monitor reported message in Microsoft Teams** settings on the **User reported settings** page is selected. Selecting or unselecting **Monitor reported message in Microsoft Teams** on the **User reported settings** page doesn't change the value of the _ReportChatMessageEnabled_ property in PowerShell.
    >
    > Currently, the default value of the parameters that identify the the reporting mailbox is blank, which means the default reporting mailbox is the global admin's Exchange Online mailbox. The global admin isn't _shown_ as the reporting mailbox in the output of the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets until _after_ the first user in the organization reports a message from Outlook.
    >
    > Use the same email address value in all parameters that identify the reporting mailbox.

    In this example, the email address of the reporting mailbox is userreportedmessages@fabrikam.com in Exchange Online (you can't specify an external email address).

The remaining settings are the default values in "Other settings" as described in the [Use PowerShell to configure reporting in Outlook with report messages to Microsoft and the reporting mailbox](#use-powershell-to-configure-reporting-in-outlook-with-report-messages-to-microsoft-and-the-reporting-mailbox) section.

```powershell
$usersub = "userreportedmessages@fabrikam.com"

New-ReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableUserEmailNotification $true -ReportJunkAddresses $usersub -ReportNotJunkAddresses $usersub -ReportPhishAddresses $usersub -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false -ReportChatMessageEnabled $false

New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
```

#### Use PowerShell to configure reporting in Outlook with report messages to Microsoft only

This example creates the report submission policy with the following settings:

- Reporting in Outlook is turned on: **Outlook** section \> **Monitor reported messages in Outlook** is selected by default and **Select an Outlook report button configuration** section \> **Use the built-in Report button in Outlook** is selected by default (`-EnableThirdPartyAddress $false` is the default value, so you don't need to use the parameter).

- **Reported message destinations** section:
  - **Send reported messages to** \> **Microsoft only**: `-EnableReportToMicrosoft $true` is the default value, so you don't need to use the parameter. `-ReportJunkToCustomizedAddress $false`, `-ReportNotJunkToCustomizedAddress $false`, and `-ReportPhishToCustomizedAddress $false` are required.

  > [!NOTE]
  > Currently, the default value of the parameters that identify the the reporting mailbox is blank, which means the default reporting mailbox is the global admin's Exchange Online mailbox. The global admin isn't _shown_ as the reporting mailbox in the output of the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets until _after_ the first user in the organization reports a message from Outlook.

The remaining settings are the default values in "Other settings" as described in the [Use PowerShell to configure reporting in Outlook with report messages to Microsoft and the reporting mailbox](#use-powershell-to-configure-reporting-in-outlook-with-report-messages-to-microsoft-and-the-reporting-mailbox) section.

> [!NOTE]
> Currently, the values `-EnableUserEmailNotification $true` and `-ReportChatMessageToCustomizedAddressEnabled $false` are required.

```powershell
New-ReportSubmissionPolicy -ReportJunkToCustomizedAddress $false -ReportNotJunkToCustomizedAddress $false -ReportPhishToCustomizedAddress $false -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false -EnableUserEmailNotification $true -ReportChatMessageToCustomizedAddressEnabled $false
```

Because a reporting mailbox isn't used, the report submission rule isn't needed or created.

#### Use PowerShell to configure reporting in Outlook to use third-party reporting tools

This example creates the report submission policy and the report submission rule with the following settings:

- Reporting in Outlook is turned on: **Outlook** section \> **Monitor reported messages in Outlook** is selected by default and **Select an Outlook report button configuration** section \> **Use a non-Microsoft add-in button** is selected (`-EnableThirdPartyAddress $true` is required).

- **Reported message destinations** section:
  - **Send reported messages to** \> **My reporting mailbox only**: `-EnableReportToMicrosoft $false`, `-EnableUserEmailNotification $true`, `-ReportJunkToCustomizedAddress $false`, `-ReportNotJunkToCustomizedAddress $false`, and `-ReportPhishToCustomizedAddress $false` are required.
    - **Add an Exchange Online mailbox to send reported messages to** specifies the email address of the reporting mailbox.
      - **New-ReportSubmissionPolicy**: `-ThirdPartyReportAddresses <emailaddress>`, `-ReportJunkAddresses <emailaddress>`, `-ReportNotJunkAddresses <emailaddress>`, and `-ReportPhishAddresses <emailaddress>` are required.
      - **New-ReportSubmissionRule**: `-SentTo <emailaddress>` is required.

    In this example, the email address of the reporting mailbox is thirdpartyreporting@wingtiptoys.com in Exchange Online (you can't specify an external email address).

    > [!NOTE]
    > Currently, the default value of the parameters that identify the the reporting mailbox is blank, which means the default reporting mailbox is the global admin's Exchange Online mailbox. The global admin isn't _shown_ as the reporting mailbox in the output of the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets until _after_ the first user in the organization reports a message from Outlook.
    >
    > Use the same email address value in all parameters that identify the reporting mailbox.

The remaining settings are the default values in "Other settings" as described in the [Use PowerShell to configure reporting in Outlook with report messages to Microsoft and the reporting mailbox](#use-powershell-to-configure-reporting-in-outlook-with-report-messages-to-microsoft-and-the-reporting-mailbox) section.

```powershell
$usersub = "thirdpartyreporting@wingtiptoys.com"

New-ReportSubmissionPolicy -EnableThirdPartyAddress $true -EnableReportToMicrosoft $false -EnableUserEmailNotification $true -ThirdPartyReportAddresses $usersub -ReportJunkAddresses $usersub -ReportNotJunkAddresses $usersub -ReportPhishAddresses $usersub -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false

New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
```

#### Use PowerShell to turn off reporting in Outlook

Turning off reporting in Outlook has the following consequences:

- The **Report** button in Outlook on the web and the Microsoft Report Message and Report Phishing add-ins are unavailable in all Outlook platforms.
- Third-party reporting tools still work, but reported messages don't appear on the **User reported** tab on the **Submissions** page in the Defender portal.
- **Allow reporting for quarantined messages** (_DisableQuarantineReportingOption_) is unaffected, and can be enabled or disabled when reporting in Outlook is turned off.

This example creates the report submission policy with reporting in Outlook turned off (**Outlook** section \> **Monitor reported messages in Outlook** not selected): `-EnableThirdPartyAddress $false` is the default value, so you don't need to use the parameter. `-EnableReportToMicrosoft $false`, `-EnableThirdPartyAddress $false, -ReportJunkToCustomizedAddress $false, -ReportNotJunkToCustomizedAddress $false, and -ReportPhishToCustomizedAddress $false` are required.

```powershell
New-ReportSubmissionPolicy -EnableReportToMicrosoft $false -ReportJunkToCustomizedAddress $false -ReportNotJunkToCustomizedAddress $false -ReportPhishToCustomizedAddress $false
```

Because a reporting mailbox isn't used, the report submission rule isn't needed or created.

### Use PowerShell to modify the report submission policy and the report submission rule

The same settings are available when you modify the report submission policy in PowerShell as when you created the policy as described in [the previous section](#use-powershell-to-create-the-report-submission-policy-and-the-report-submission-rule).

When you modify the existing settings in the report submission policy, you might need to undo or nullify other settings that might or might not be configured. And, you might need to create or delete the report submission rule to allow or prevent message reporting to a reporting mailbox.

For detailed syntax and parameter information, see [Set-ReportSubmissionPolicy](/powershell/module/exchange/set-reportsubmissionpolicy).

The following examples show how to change the user reporting experience without concern for the existing settings or values:

- Turn on reporting in Outlook if necessary, select **Use the built-in Report button in Outlook**, and change **Send reported messages to** to **Microsoft and my reporting mailbox*** with reportedmessages@contoso.com as the reporting mailbox:

  ```powershell
  $usersub = "reportedmessages@contoso.com"

  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $true -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $true -ReportJunkAddresses $usersub -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses $usersub -ReportPhishToCustomizedAddress $true -ReportPhishAddresses $usersub -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false -ReportChatMessageEnabled $true
  ```

  And then run one of the following commands, depending on the existing configuration:

  - If the report submission rule already exists:

    ```powershell
    Set-ReportSubmissionRule -Identity DefaultReportSubmissionRule -SentTo $usersub
    ```

  - If the report submission rule doesn't exist:

    ```powershell
    New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
    ```

- Turn on reporting in Outlook if necessary, select **Use the built-in Report button in Outlook**, and change **Send reported messages to** to **My reporting mailbox only** with userreportedmessages@fabrikam.com as the reporting mailbox:

  ```powershell
  $usersub = "userreportedmessages@fabrikam.com"

  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $true -ReportJunkAddresses $usersub -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses $usersub -ReportPhishToCustomizedAddress $true -ReportPhishAddresses $usersub -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false -ReportChatMessageEnabled $false
  ```

  And then run one of the following commands, depending on the existing configuration:

  - If the report submission rule already exists:

    ```powershell
    Set-ReportSubmissionRule -Identity DefaultReportSubmissionRule -SentTo $usersub
    ```

  - If the report submission rule doesn't exist:

    ```powershell
    New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
    ```

- Turn on reporting in Outlook if necessary, select **Use the built-in Report button in Outlook**, and change **Send reported messages to** to **Microsoft only**:

  ```powershell
  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $true -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $false -ReportJunkAddresses $null -ReportNotJunkToCustomizedAddress $false -ReportNotJunkAddresses $null -ReportPhishToCustomizedAddress $false -ReportPhishAddresses $null -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false -EnableUserEmailNotification $true -ReportChatMessageToCustomizedAddressEnabled $false

  Get-ReportSubmissionRule | Remove-ReportSubmissionRule
  ```

  The following command is required only if the report submission rule already exists:

  ```powershell
  Get-ReportSubmissionRule | Remove-ReportSubmissionRule
  ```

- Turn on reporting in Outlook if necessary, select **Use a non-Microsoft add-in button**, and use thirdpartyreporting@wingtiptoys.com as the reporting mailbox:

  ```powershell
  $usersub = "thirdpartyreporting@wingtiptoys.com"

  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableThirdPartyAddress $true -ThirdPartyReportAddresses $usersub -ReportJunkToCustomizedAddress $false -ReportJunkAddresses $null -ReportNotJunkToCustomizedAddress $false -ReportNotJunkAddresses $null -ReportPhishToCustomizedAddress $false -ReportPhishAddresses $null -PreSubmitMessageEnabled $false -PostSubmitMessageEnabled $false -ReportChatMessageEnabled $true
  ```

  And then run one of the following commands, depending on the existing configuration:

  - If the report submission rule already exists:

    ```powershell
    Set-ReportSubmissionRule -Identity DefaultReportSubmissionRule -SentTo $usersub
    ```

  - If the report submission rule doesn't exist:

    ```powershell
    New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
    ```

- Turn off reporting in Outlook (**Monitor reported messages in Outlook** isn't selected):

  ```powershell
  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $false -ReportJunkAddresses $null -ReportNotJunkToCustomizedAddress $false -ReportNotJunkAddresses $null -ReportPhishToCustomizedAddress $false -ReportPhishAddresses $null
  ```

  And then run the following command if the report submission rule already exists:

  ```powershell
  Get-ReportSubmissionRule | Remove-ReportSubmissionRule
  ```

The only meaningful setting that you can modify in the report submission rule is the email address of the reporting mailbox (the _SentTo_ parameter value). For example:

```powershell
Set-ReportSubmissionRule -Identity DefaultReportSubmissionRule -SentTo newemailaddress@contoso.com
```

> [!NOTE]
> If you change the email address of the reporting mailbox in the report submission rule, be sure to change the corresponding values in the report submissions policy. For example:
>
> - _ThirdPartyReportAddresses_
> - _ReportJunkAddresses_, _ReportNotJunkAddresses_, and _ReportPhishAddresses_

For detailed syntax and parameter information, see [Set-ReportSubmissionRule](/powershell/module/exchange/set-reportsubmissionrule).

To temporarily disable sending email messages to the reporting mailbox without deleting the report submission rule, use [Disable-ReportSubmissionRule](/powershell/module/exchange/disable-reportsubmissionrule). For example:

```powershell
Get-ReportSubmissionRule | Disable-ReportSubmissionRule -Confirm:$false
```

To enable the report submission rule, use [Enable-ReportSubmissionRule](/powershell/module/exchange/enable-reportsubmissionrule). For example:

```powershell
Get-ReportSubmissionRule | Disable-ReportSubmissionRule -Confirm:$false
```

### Use PowerShell to remove the report submission policy and the report submission rule

To start over with the default settings of the report submission policy, you can delete it and recreate it. Removing the report submission policy doesn't remove the report submission rule, and vice-versa.

To remove the report submission policy, run the following command in Exchange Online PowerShell:

```powershell
Remove-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy
```

To remove the report submission rule, run the following command:

```powershell
Get-ReportSubmissionRule | Remove-ReportSubmissionRule
```

To remove both the report submission policy and report submission rule in the same command without a confirmation, run the following command:

```powershell
Remove-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy; Get-ReportSubmissionRule | Remove-ReportSubmissionRule -Confirm:$false
```

For detailed syntax and parameter information, see [Remove-ReportSubmissionPolicy](/powershell/module/exchange/remove-reportsubmissionpolicy) and [Remove-ReportSubmissionRule](/powershell/module/exchange/remove-reportsubmissionrule).
