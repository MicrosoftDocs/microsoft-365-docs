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
ms.date: 6/20/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# User reported settings

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In Microsoft 365 organizations with Exchange Online mailboxes, you can identify a _reporting mailbox_ (formerly known as a _custom mailbox_ or _submissions mailbox_) to hold messages that users report as malicious or not malicious using supported reporting tools in Outlook. For Microsoft reporting tools, you can decide whether to send user reported messages to the reporting mailbox, to Microsoft, or to the reporting mailbox and Microsoft. These selections were formerly part of the _User submissions policy_ or _User submissions_.

User reported settings and the reporting mailbox work with the following message reporting tools:

- [The built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web)
- [The Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md)
- [Third-party reporting tools](#options-for-third-party-reporting-tools)

Delivering user reported messages to a reporting mailbox instead of directly to Microsoft allows admins to selectively and manually submit messages to Microsoft from the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>. For more information, see [Admin submission](submissions-admin.md).

> [!NOTE]
> The _ReportJunkEmailEnabled_ parameter on the [Set-OwaMailboxPolicy](/powershell/module/exchange/set-owamailboxpolicy) cmdlet no longer controls whether user message reporting is enabled or disabled. User reporting of messages is now controlled on the **User reported** page at <https://security.microsoft.com/securitysettings/userSubmission> as described in this article.

## Configuration requirements for the reporting mailbox

Before you get started, you need to configure Exchange Online Protection and Defender for Office 365 so user reported messages are delivered to the reporting mailbox without being filtered as described in the following steps:

- Identify the reporting mailbox as a SecOps mailbox. For instructions, see [Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy](skip-filtering-phishing-simulations-sec-ops-mailboxes.md#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy).

- Create a custom anti-malware policy for the reporting mailbox with the following settings:

  - Turn off Zero-hour auto purge (ZAP) for malware (**Protection settings** section \> **Enable zero-hour auto purge for malware** isn't selected or `-ZapEnabled $false` in PowerShell).

  - Turn off the [common attachments filter](anti-malware-protection-about.md#common-attachments-filter-in-anti-malware-policies) (**Protection settings** section \> **Enable the common attachments filter** isn't selected or `-EnableFileFilter $false` in PowerShell).

  For instructions, see [Create an anti-malware policy](anti-malware-policies-configure.md#use-the-microsoft-365-defender-portal-to-create-anti-malware-policies).

- Verify that the reporting mailbox isn't included in the **Standard** or **Strict** preset security policies. For instructions, see [Preset security policies](preset-security-policies.md).

- **Defender for Office 365**: Configure the following additional settings:

  - Exclude the reporting mailbox from the **Built-in protection** preset security policy. For instructions, see [Preset security policies](preset-security-policies.md).

  - Create a Safe Attachments policy for the mailbox where Safe Attachments scanning, including Dynamic Delivery, is turned off (**Settings** \> **Safe Attachments unknown malware response** section \> **Off** or `-Enable $false` in PowerShell). For instructions, see [Set up Safe Attachments policies in Microsoft Defender for Office 365](safe-attachments-policies-configure.md).

  - Create a Safe Links policy for the reporting mailbox where Safe Links scanning in email is turned off (**URL & click protection settings** \> **On: Safe Links checks a list of known, malicious links when users click links in email** isn't selected or `EnableSafeLinksForEmail $false` in PowerShell). For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md).

- If you have data loss prevention (DLP), exclude the reporting mailbox from DLP. For more information, see [Data loss prevention Exchange conditions and actions reference](../../compliance/dlp-exchange-conditions-and-actions.md).

After you verify that the reporting mailbox meets all of these requirements, use the procedures in this article to identify the reporting mailbox and to configure the related settings.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **User reported** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Email & collaboration RBAC in the Microsoft 365 Defender portal](mdo-portal-permissions.md): Membership in the **Organization Management** or **Security Administrator** role groups.
  - [Azure AD RBAC](../../admin/add-users/about-admin-roles.md): Membership in the **Global Administrator** or **Security Administrator** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

- You need access to Exchange Online PowerShell. If your account doesn't have access to Exchange Online PowerShell, you get the following error: *Specify an email address in your domain*. For more information about enabling or disabling access to Exchange Online PowerShell, see the following articles:
  - [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell)
  - [Client Access Rules in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules) ([until October 2023](https://techcommunity.microsoft.com/t5/exchange-team-blog/deprecation-of-client-access-rules-in-exchange-online/ba-p/3638563))

## Use the Microsoft 365 Defender portal to configure user reported settings

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User reported** tab. To go directly to the **User reported** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

2. On the **User reported** page, the available settings are determined entirely by the toggle at the top of the page:

   - **On** :::image type="icon" source="../../media/scc-toggle-on.png":::: The following configurations are supported:
     - Users in your organization can see and use the built-in **Report** button in Outlook on the web or the Microsoft Report Message or Report Phishing add-ins in virtually all Outlook platforms to report messages.
       - You can configure user reported messages to go to the reporting mailbox, to Microsoft, or both.
       - You decide whether users receive **Before a message is reported** and **After a message is reported** pop-ups in Outlook.
       - You decide how to customize the feedback email that's sent to users from **Mark as and notify** on the **Submissions** page at <https://security.microsoft.com/reportsubmission>.
       - You decide whether users can report messages from quarantine.

       You choose this configuration by selecting **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options** in the **Outlook report button configuration** section. The available configuration options from this selection are explained in the [Options for Microsoft reporting tools](#options-for-microsoft-reporting-tools) section in this article.

     - Users in your organization use a third-party, non-Microsoft add-in to report messages.
       - You decide whether Microsoft can read end user report from the third-party reporting mailbox.
       - You decide whether users can report messages from quarantine to third-party reporting mailbox.

       You choose this configuration by selecting **Use a non-Microsoft add-in button** in the **Outlook report button configuration** section. The available configuration options from this selection are explained in the [Options for third-party reporting tools](#options-for-third-party-reporting-tools) section in this article.

   - **Off** :::image type="icon" source="../../media/scc-toggle-off.png":::: The Microsoft-integrated reporting experience is turned off, and all other settings on the **User reported** page are unavailable, including the ability for users to report messages from quarantine.

### Options for Microsoft reporting tools

When the toggle is **On** :::image type="icon" source="../../media/scc-toggle-on.png"::: and you've selected **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options**, the following options are available on the **User reported** page:

- **Send the reported messages to** in the **Reported message destinations** section: Select one of the following options:

  - **Microsoft only**: User reported messages go directly to Microsoft for analysis. These reports are available on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>.

  - **My reporting mailbox only**: User reported messages go only to the specified reporting mailbox for an admin or the security operations team to analyze.

    In the **Add a mailbox to send reported messages to** box that appears, enter the email address of an existing Exchange Online mailbox to use as the reporting mailbox that holds user reported messages from Microsoft reporting tools. Distribution groups and routing to an external or on-premises mailbox aren't allowed.

    Messages don't go to Microsoft for analysis unless an admin manually submits the message from the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>.

  - **Microsoft and my reporting mailbox**: User reported messages go to Microsoft for analysis and to the reporting mailbox for an admin or security operations team to analyze.

    In the **Add a mailbox to send reported messages to** box that appears, enter the email address of an existing Exchange Online mailbox to use as the reporting mailbox. Distribution groups and routing to external or on-premises mailboxes isn't allowed.

  > [!IMPORTANT]
  >
  > - If you select **My reporting mailbox only**, the **Result** value of entries on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user> is **Not Submitted to Microsoft**, because the messages were not analyzed by Microsoft.
  > - In U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), the only available selection in the **Send the reported messages to** section is **My reporting mailbox only**. The other two options are grayed out for compliance reasons (data isn't allowed to leave the organization boundary).
  >
  > - If you use [Attack simulation training](attack-simulation-training-get-started.md) or a third-party product to do phishing simulations, and you're sending user reported messages to a reporting mailbox, you need to configure the reporting mailbox as a SecOps mailbox as described in the [Configuration requirements for the reporting mailbox](#configuration-requirements-for-the-reporting-mailbox) section earlier in this article. If you don't, a user reported message might trigger a training assignment by the phishing simulation product.

The following settings are also available on the page:

- **Show a pop-up message in Outlook to confirm it the user want's to report the message** in the **Before a message is reported** section: This setting controls whether users see a pop-up before they report a message.

  Select this setting and select **Customize before message** to enter the **Title** and **Message** text in the **Customize text before message is reported** flyout that opens. Use the variable `%type%` to include the submission type (junk, not junk, phishing, etc.).

  When you're finished, select **Confirm** to return to the **User reported** page.

- **Show a success pop-up message in Outlook after the user reports** in the **After a message is reported** section: This setting controls whether users see a pop-up after they report a message.

  Select this setting and select **Customize after message** to enter the **Title** and **Message** text in the **Customize text after message is reported** flyout that opens. Use the variable `%type%` to include the submission type (junk, not junk, phishing, etc.).

  When you're finished, select **Confirm** to return to th **User reported** page.

  > [!IMPORTANT]
  > Currently, users who report messages from Outlook on the web using the built-in **Report** button don't get these before or after pop-up messages. The pop-ups work for users who report messages using the Microsoft Report Message and Report Phishing add-ins.

- **Email sent to user after admin review** section: The following settings are available:

  - **Specify an Office 365 mailbox to send email notifications from**: Select this option and enter the sender's email address in the box that appears.
  - **Replace the Microsoft logo with my company logo**: Select this option to replace the default Microsoft logo that's used in notifications. Before you do this step, you need to follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your custom logo. This option isn't supported if your organization has a custom logo pointing to a URL instead of an uploaded image file.
  - **Customize email notification messages**: Select this link to customize the email notification that's sent after an admin reviews and marks a reported message. In the **Customize admin review email notifications** flyout that appears, configure the following settings on the **Phishing**, **Junk** and **No threats found** tabs:
    - **Email body results text**: Enter the custom text to use. You can use different text for **Phishing**, **Junk** and **No threats found**.
    - **Email footer text**: Enter the custom message footer text to use. The same text is used for **Phishing**, **Junk** and **No threats found**.

     When you're finished, select **Confirm** to return to the **User reported** page.

When you're finished on the **User reported** page, select **Save**. To restore all settings on the page to their immediately previous values, select **Restore**.

### Options for third-party reporting tools

When the toggle is **On** :::image type="icon" source="../../media/scc-toggle-on.png"::: and you've selected **Use a non-Microsoft add-in button**, the following options are available on the **User reported** page:

- **Add a mailbox to send reported messages to** in the **Reported message destinations** section: Enter the email address of an existing Exchange Online mailbox to use as the reporting mailbox that holds user-reported messages from third-party reporting tools. These messages aren't submitted to Microsoft.

  These user-reported messages appear on the **User reported** tab of the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>. The **Result** value for these entries is **Not Submitted to Microsoft**.

  Messages sent to the reporting mailbox must include the original user reported message as an uncompressed .EML or .MSG attachment. Don't forward the original user-reported message to the reporting mailbox.

  > [!CAUTION]
  > Messages that contain multiple attached messages are discarded. We support only one attached original message in a user reported message.

  The message formatting requirements are described in the next section. This formatting is optional, but if user reported messages don't follow the prescribed format, they're always identified as phishing.

  **Let your organization report messages from quarantine** in the **Report from quarantine** section: Verify that this setting is selected to let users report messages from quarantine. Otherwise, uncheck this setting.

When you're finished on the **User reported** page, select **Save**. To restore all settings on the page to their immediately previous values, select **Restore**.

#### Message submission format

To correctly identify the original attached messages, messages sent to the custom mailbox require specific formatting. If the messages don't use this format, the original attached messages are always identified as phishing.

To specify the reason why the original, attached messages were reported, messages sent to the reporting mailbox must meet the following criteria:

- The user reported message is unmodified and is included as an attachment.
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

  Messages that don't follow this format aren't displayed properly on the **User reported** tab of the **Submissions** page at <https://security.microsoft.com/reportsubmission>.

## Use Exchange Online PowerShell to configure the reported message settings

After you [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell), you use the **\*-ReportSubmissionPolicy** and **\*-ReportSubmissionRule** cmdlets to manage and configure the user reported settings.

In Exchange Online PowerShell, the basic elements of the user reported settings are:

- **The report submission policy**: Turns the Microsoft integrated reporting experience on or off, turns sending reported messages to Microsoft on or off, turns sending reported messages to the reporting mailbox on or off, and most other settings.
- **The report submission rule**: Specifies the email address of the reporting mailbox or a blank value when the reporting mailbox isn't used (report messages to Microsoft only).

The difference between these two elements isn't obvious when you manage the user reported settings in the Microsoft 365 Defender portal:

- There's only one report submission policy named DefaultReportSubmissionPolicy and one report submission rule named DefaultReportSubmissionRule by default.

  If you've never gone to <https://security.microsoft.com/securitysettings/userSubmission>, there's no report submission policy or report submission rule (the Get-ReportSubmissionPolicy and Get-ReportSubmissionRule cmdlets return nothing).

  As soon as you visit <https://security.microsoft.com/securitysettings/userSubmission> and even before you configure any settings, the report submission policy is created with the default values and is visible in PowerShell.

  Only after you specify a reporting mailbox (used by Microsoft or third-party reporting tools) and save the changes is the report submission rule named DefaultReportSubmissionRule automatically created. It takes several seconds before the rule is visible in PowerShell.

- You can delete the report submission rule and recreate it with a different name, but the rule is always associated with the report submission policy whose name you can't change. So, we recommend that you name the rule DefaultReportSubmissionRule whenever you create or recreate the rule.

- When you specify the email address of the reporting mailbox in the Microsoft 365 Defender portal, that value is primarily set in the report submission rule, but the value is also copied into the related properties in the report submission policy. In PowerShell, when you set the email address in the rule, the value isn't copied into the related properties in the policy. For consistency with the Microsoft 365 Defender portal and for clarity, we recommend that you add or update the email address in the policy and the rule.

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

Remember, if you've never gone to <https://security.microsoft.com/securitysettings/userSubmission> or manually created the report submission policy or the report submission rule in PowerShell, there's no report submission policy or report submission rule, so the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets return nothing.

For detailed syntax and parameter information, see [Get-ReportSubmissionPolicy](/powershell/module/exchange/get-reportsubmissionpolicy) and [Get-ReportSubmissionRule](/powershell/module/exchange/get-reportsubmissionrule).

### Use PowerShell to create the report submission policy and the report submission rule

If the **Get-ReportSubmissionPolicy** and **Get-ReportSubmissionRule** cmdlets return no output, you can create the report submission policy and the report submission rule. If you try to create them after they already exist, you'll get an error.

Always create the report submission policy first, because you specify the report submission policy in the report submission rule.

For detailed syntax and parameter information, see [New-ReportSubmissionPolicy](/powershell/module/exchange/new-reportsubmissionpolicy) and [New-ReportSubmissionRule](/powershell/module/exchange/new-reportsubmissionrule).

#### Use PowerShell to configure the Microsoft integrated reporting experience with report messages to Microsoft only

This example creates the report submission policy with the default settings (the same settings as when you first visit <https://security.microsoft.com/securitysettings/userSubmission>, but before you save any setting changes):

- The Microsoft integrated reporting experience is turned on: toggle **On** :::image type="icon" source="../../media/scc-toggle-on.png"::: and **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options** is selected (`-EnableReportToMicrosoft $true -EnableThirdPartyAddress $false` are the default values).

- **Reported message destinations** section: **Send messages to** \> **Microsoft only** is selected (`-ReportJunkToCustomizedAddress $false -ReportNotJunkToCustomizedAddress $false -ReportPhishToCustomizedAddress $false` are the default values).

Other settings:

- **Before a message is reported** section:
  - **Show a pop-up message in Outlook to confirm if the user wants to report the message** is selected (`-PreSubmitMessageEnabled $true | $false` is available only on **Set-ReportSubmissionPolicy**; the unconfigurable value on **New-ReportSubmissionPolicy** is `$true`).
  - **Customize before message** link: Nothing is entered in the **Title** or **Message** boxes in the flyout (`-EnableCustomizedMsg $false` is the default value).

- **After a message is reported** section:
  - **Show a success pop-up message in Outlook after the user reports message** is selected (`-PostSubmitMessageEnabled $true | $false` is available only on **Set-ReportSubmissionPolicy**; the unconfigurable value on **New-ReportSubmissionPolicy** is `$true`).
  - **Customize after message** link: Nothing is entered in the **Title** or **Message** boxes in the flyout (`-EnableCustomizedMsg $false` is the default value).

  > [!NOTE]
  > Currently, pop-up messages before or after a user reports a message are supported only by the Microsoft Report Message and Report Phishing add-ins. Users who report messages with the built-in **Report** button in Outlook on the web don't see these pop-ups.

- **Email sent to user after admin review** section:
  - **Specify an Office 365 mailbox to send email notifications from** isn't selected (`-EnableCustomNotificationSender $false` is the default value).
  - **Replace the Microsoft logo with my company logo** isn't selected (`-EnableOrganizationBranding $false` is the default value).
  - **Customize email notification messages** link: Nothing is entered in the **Email body results text** or **Email footer text** boxes on the **Phishing**, **Junk**, or **No threats found** tabs in the flyout (`-EnableCustomizedMsg $false` is the default value).
- **Report from quarantine** section: **Let your organization report messages from quarantine** is selected (`-DisableQuarantineReportingOption $false` is the default value).

```powershell
New-ReportSubmissionPolicy
```

Because a reporting mailbox isn't use, the report submission rule isn't needed or created.

#### Use PowerShell to configure the Microsoft integrated reporting experience with report messages to Microsoft and the reporting mailbox

This example creates the report submission policy and the report submission rule with the following settings:

- The Microsoft integrated reporting experience is **On** :::image type="icon" source="../../media/scc-toggle-on.png"::: and **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options** is selected (`-EnableReportToMicrosoft $true -EnableThirdPartyAddress $false` are the default values).

- **Reported message destinations** section:
  - **Send messages to** \> **Microsoft and my reporting mailbox** is selected.
  - **Add a mailbox to send reported messages to** specifies the email address of the reporting mailbox.

    - **New-ReportSubmissionPolicy**: `-ReportJunkToCustomizedAddress $true -ReportJunkAddresses <emailaddress> -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses <emailaddress> -ReportPhishToCustomizedAddress $true -ReportPhishAddresses <emailaddress>`.
    - **New-ReportSubmissionRule**: `-SentTo <emailaddress>`.

    In this example, the email address of the reporting mailbox is reportedmessages@contoso.com in Exchange Online (you can't specify an external email address).

    > [!NOTE]
    > You must use the same email address value in all parameters that identify the reporting mailbox.

The remaining settings are the default values in "Other settings" as described in [Use PowerShell to configure the Microsoft integrated reporting experience with report to Microsoft only](#use-powershell-to-configure-the-microsoft-integrated-reporting-experience-with-report-messages-to-microsoft-only).

```powershell
$usersub = "reportedmessages@contoso.com"

New-ReportSubmissionPolicy -ReportJunkToCustomizedAddress $true -ReportJunkAddresses $usersub -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses $usersub -ReportPhishToCustomizedAddress $true -ReportPhishAddresses $usersub

New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
```

#### Use PowerShell to configure the Microsoft integrated reporting experience with report messages to the reporting mailbox only

This example creates the report submission policy and the report submission rule with the following settings:

- The Microsoft integrated reporting experience is **On** :::image type="icon" source="../../media/scc-toggle-on.png"::: and **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options** is selected (you need to set `-EnableReportToMicrosoft $false`; `-EnableThirdPartyAddress $false` is the default value).

- **Reported message destinations** section:
  - **Send messages to** \> **Microsoft and my reporting mailbox** is selected.
  - **Add a mailbox to send reported messages to** specifies the email address of the reporting mailbox.

    - **New-ReportSubmissionPolicy**: `-ReportJunkToCustomizedAddress $true -ReportJunkAddresses <emailaddress> -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses <emailaddress> -ReportPhishToCustomizedAddress $true -ReportPhishAddresses <emailaddress>`.
    - **New-ReportSubmissionRule**: `-SentTo <emailaddress>`.

    In this example, the email address of the reporting mailbox is userreportedmessages@fabrikam.com in Exchange Online (you can't specify an external email address).

    > [!NOTE]
    > You must use the same email address value in all parameters that identify the reporting mailbox.

The remaining settings are the default values in "Other settings" as described in [Use PowerShell to configure the Microsoft integrated reporting experience with report to Microsoft only](#use-powershell-to-configure-the-microsoft-integrated-reporting-experience-with-report-messages-to-microsoft-only).

```powershell
$usersub = "userreportedmessages@fabrikam.com"

New-ReportSubmissionPolicy -EnableReportToMicrosoft $false -ReportJunkToCustomizedAddress $true -ReportJunkAddresses $usersub -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses $usersub -ReportPhishToCustomizedAddress $true -ReportPhishAddresses $usersub

New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
```

#### Use PowerShell to configure the Microsoft integrated reporting experience to use third-party reporting tools

This example creates the report submission policy and the report submission rule with the following settings:

- The Microsoft integrated reporting experience is **On** :::image type="icon" source="../../media/scc-toggle-on.png"::: and **Use a non-Microsoft add-in button** is selected (`-EnableReportToMicrosoft $false -EnableThirdPartyAddress $true`).

- **Reported message destinations** section: **Add a mailbox to send reported messages to** specifies the email address of the reporting mailbox.

  - **New-ReportSubmissionPolicy**:`-ThirdPartyReportAddresses <emailaddress>`.
  - **New-ReportSubmissionRule**: `-SentTo <emailaddress>`.

    In this example, the email address of the reporting mailbox is thirdpartyreporting@wingtiptoys.com in Exchange Online (you can't specify an external email address).

    > [!NOTE]
    > You must use the same email address value in all parameters that identify the reporting mailbox.

Other settings:

- **Report from quarantine** section: **Let your organization report messages from quarantine** is selected (`-DisableQuarantineReportingOption $false` is the default value).

```powershell
$usersub = "thirdpartyreporting@wingtiptoys.com"

New-ReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableThirdPartyAddress $true -ThirdPartyReportAddresses $usersub

New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
```

#### Use PowerShell to turn off the Microsoft integrated reporting experience

Turning off the Microsoft integrated reporting experiences has the following consequences:

- The **Report** button in Outlook on the web and the Microsoft Report Message and Report Phishing add-ins are unavailable in all Outlook platforms.
- Third-party reporting tools still work, but reported messages don't appear on the **Submissions** page in the Microsoft 365 Defender portal.

This example creates the report submission policy with the Microsoft integrated reporting experience turned **Off** :::image type="icon" source="../../media/scc-toggle-on.png"::: (`-EnableReportToMicrosoft $false`; `-EnableThirdPartyAddress $false -ReportJunkToCustomizedAddress $false -ReportNotJunkToCustomizedAddress $false -ReportPhishToCustomizedAddress $false` are the default values).

```powershell
New-ReportSubmissionPolicy -EnableReportToMicrosoft $false
```

### Use PowerShell to modify the report submission policy and the report submission rule

Virtually all of the same settings are available when you modify the report submission policy in PowerShell as when you created the policy as described in [the previous section](#use-powershell-to-create-the-report-submission-policy-and-the-report-submission-rule). The exception is:

- You can turn off **Show a pop-up message in Outlook to confirm if the user wants to report the message** and **Show a success pop-up message in Outlook after the user reports** using the _PreSubmitMessageEnabled_ and _PostSubmitMessageEnabled_ parameters on **Set-ReportSubmissionPolicy**.

  > [!NOTE]
  > Currently, users who report messages from Outlook on the web using the built-in **Report** button don't get these pop-up messages. The pop-ups work for users who report messages using the Microsoft Report Message and Report Phishing add-ins.

When you modify the existing settings in the report submission policy, you might need to undo or nullify some important settings that you previously configured or didn't configure. And, you might need to create or delete the report submission rule to allow or prevent message reporting to a reporting mailbox.

For detailed syntax and parameter information, see [Set-ReportSubmissionPolicy](/powershell/module/exchange/set-reportsubmissionpolicy).

The following examples show how to change the user reporting experience without concern for the existing settings or values:

- Change to **Use built-in "Report" button with "Phishing", "Junk" and "Not Junk" options** and **Send messages to** \> **Microsoft only**:

  ```powershell
   Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $true -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $false -ReportJunkAddresses $null -ReportNotJunkToCustomizedAddress $false -ReportNotJunkAddresses $null -ReportPhishToCustomizedAddress $false -ReportPhishAddresses $null

  Get-ReportSubmissionRule | Remove-ReportSubmissionRule
  ```

- Change to **Use built-in "Report" button with "Phishing", "Junk" and "Not Junk" options** and **Send messages to** \> **Microsoft and my reporting mailbox*** (for example, reportedmessages@contoso.com):

  ```powershell
  $usersub = "reportedmessages@contoso.com"

  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $true -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $true -ReportJunkAddresses $usersub -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses $usersub -ReportPhishToCustomizedAddress $true -ReportPhishAddresses $usersub
  ```

  The following command is required only if you don't already have the report submission rule:

  ```powershell
  New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
  ```

- Change to **Use built-in "Report" button with "Phishing", "Junk" and "Not Junk" options** and **Send messages to** \> **Microsoft and my reporting mailbox** (for example, userreportedmessages@fabrikam.com):

  ```powershell
  $usersub = "userreportedmessages@fabrikam.com"

  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $true -ReportJunkAddresses $usersub -ReportNotJunkToCustomizedAddress $true -ReportNotJunkAddresses $usersub -ReportPhishToCustomizedAddress $true -ReportPhishAddresses $usersub
  ```

  The following command is required only if you don't already have the report submission rule:

  ```powershell
  New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
  ```

- Change to **Use a non-Microsoft add-in button** (for example, thirdpartyreporting@wingtiptoys.com):

  ```powershell
  $usersub = "thirdpartyreporting@wingtiptoys.com"

  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableThirdPartyAddress $true -ThirdPartyReportAddresses $usersub -ReportJunkToCustomizedAddress $false -ReportJunkAddresses $null -ReportNotJunkToCustomizedAddress $false -ReportNotJunkAddresses $null -ReportPhishToCustomizedAddress $false -ReportPhishAddresses $null
  ```

  The following command is required only if you don't already have the report submission rule:

  ```powershell
  New-ReportSubmissionRule -Name DefaultReportSubmissionRule -ReportSubmissionPolicy DefaultReportSubmissionPolicy -SentTo $usersub
  ```

- Turn off the Microsoft integrated reporting experience **Off** :::image type="icon" source="../../media/scc-toggle-off.png"::::

  ```powershell
  Set-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy -EnableReportToMicrosoft $false -EnableThirdPartyAddress $false -ThirdPartyReportAddresses $null -ReportJunkToCustomizedAddress $false -ReportJunkAddresses $null -ReportNotJunkToCustomizedAddress $false -ReportNotJunkAddresses $null -ReportPhishToCustomizedAddress $false -ReportPhishAddresses $null
  ```

  The following command is required only if you don't already have the report submission rule:

  ```powershell
  Get-ReportSubmissionRule | Remove-ReportSubmissionRule
  ```

The only meaningful setting that you can modify in the report submission rule is the email address of the reporting mailbox (the _SentTo_ parameter value). For example:

```powershell
Get-ReportSubmissionRule | Set-ReportSubmissionRule -SentTo newemailaddress@contoso.com
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

To enable the report submission rule again, use [Enable-ReportSubmissionRule](/powershell/module/exchange/enable-reportsubmissionrule). For example:

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

To remove both the report submission policy and report submission rule in the same command without prompts, run the following command:

```powershell
Remove-ReportSubmissionPolicy -Identity DefaultReportSubmissionPolicy; Get-ReportSubmissionRule | Remove-ReportSubmissionRule -Confirm:$false
```

For detailed syntax and parameter information, see [Remove-ReportSubmissionPolicy](/powershell/module/exchange/remove-reportsubmissionpolicy) and [Remove-ReportSubmissionRule](/powershell/module/exchange/remove-reportsubmissionrule).
