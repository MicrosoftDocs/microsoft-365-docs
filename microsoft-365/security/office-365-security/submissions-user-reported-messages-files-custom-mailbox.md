---
title: User reported message settings
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.collection:
  - m365-security
  - m365initiative-defender-office365
ms.custom:
description: "Admins can configure where user reported messages go for analysis: to an internal reporting mailbox, to Microsoft, or to both. Other settings complete the reporting experience for users when they report good or bad messages."
ms.subservice: mdo
ms.service: microsoft-365-security
---

# User reported message settings

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

**Applies to**
- [Exchange Online Protection](eop-about.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

In Microsoft 365 organizations with Exchange Online mailboxes, you can identify a _reporting mailbox_ (formerly known as a _custom mailbox_ or _submissions mailbox_) to hold messages that users report as malicious or not malicious using supported reporting tools in Outlook. For Microsoft reporting tools, you can decide whether to send user reported messages to the reporting mailbox, to Microsoft, or to the reporting mailbox and Microsoft. These selections were formerly part of the _User submissions policy_ or _User submissions_.

User reported message settings and the reporting mailbox work with the following message reporting tools:

- [The built-in Report button in Outlook on the web](submissions-outlook-report-messages.md#use-the-built-in-report-button-in-outlook-on-the-web)
- [The Microsoft Report Message or Report Phishing add-ins](submissions-users-report-message-add-in-configure.md)
- [Third-party reporting tools](#options-for-third-party-reporting-tools)

Delivering user reported messages to a reporting mailbox instead of directly to Microsoft allows admins to selectively and manually report messages to Microsoft from the **Emails** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>. For more information, see [Admin submission](submissions-admin.md).

> [!NOTE]
> The _ReportJunkEmailEnabled_ parameter on the [Set-OwaMailboxPolicy](/powershell/module/exchange/set-owamailboxpolicy) cmdlet no longer controls whether user message reporting is enabled or disabled. User reporting of messages is now controlled on the **User reported** page at <https://security.microsoft.com/securitysettings/userSubmission> as described in this article.

## Configuration requirements for the reporting mailbox

Before you get started, you need to configure Exchange Online Protection and Defender for Office 365 so user reported messages are delivered to the reporting mailbox without being filtered as described in the following steps:

- Identify the reporting mailbox as a SecOps mailbox. For instructions, see [Use the Microsoft 365 Defender portal to configure SecOps mailboxes in the advanced delivery policy](skip-filtering-phishing-simulations-sec-ops-mailboxes.md#use-the-microsoft-365-defender-portal-to-configure-secops-mailboxes-in-the-advanced-delivery-policy).

- Create a custom anti-malware policy for the reporting mailbox with the following settings:

  - Turn off Zero-hour auto purge (ZAP) for malware (**Protection settings** section \> **Enable zero-hour auto purge for malware** is not selected or `-ZapEnabled $false` in PowerShell).

  - Turn off common attachments filtering (**Protection settings** section \> **Enable the common attachments filter** is not selected or `-EnableFileFilter $false` in PowerShell).
  
  For instructions, see [Create an anti-malware policy](anti-malware-policies-configure.md#use-the-microsoft-365-defender-portal-to-create-anti-malware-policies).

- Verify that the reporting mailbox is not included in the **Standard** or **Strict** preset security policies. For instructions, see [Preset security policies](preset-security-policies.md).

- **Defender for Office 365**: Configure the following additional settings:

  - Exclude the reporting mailbox from the **Built-in protection** preset security policy. For instructions, see [Preset security policies](preset-security-policies.md).

  - Create a Safe Attachments policy for the mailbox where Safe Attachments scanning, including Dynamic Delivery, is turned off (**Settings** \> **Safe Attachments unknown malware response** section \> **Off** or `-Enable $false` in PowerShell). For instructions, see [Set up Safe Attachments policies in Microsoft Defender for Office 365](safe-attachments-policies-configure.md).

  - Create a Safe Links policy for the reporting mailbox where Safe Links scanning in email is turned off (**URL & click protection settings** \> **On: Safe Links checks a list of known, malicious links when users click links in email** is not selected or `EnableSafeLinksForEmail $false` in PowerShell). For instructions, see [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md).

- If you have data loss prevention (DLP), exclude the reporting mailbox from DLP. For instructions, see [Creating exceptions in DLP](/microsoft-365/compliance/dlp-conditions-and-exceptions).

After you've verified that the reporting mailbox meets all of these requirements, use the rest of the instructions in this article to identify the reporting mailbox to configure related settings for user reported message.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **User reported** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- To modify the settings for user reported messages, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

- You need access to Exchange Online PowerShell. If the account that you're trying to use doesn't have access to Exchange Online PowerShell, you'll receive an error that looks like this when specifying the submissions mailbox:

  > Specify an email address in your domain

  For more information about enabling or disabling access to Exchange Online PowerShell, see the following topics:

  - [Enable or disable access to Exchange Online PowerShell](/powershell/exchange/disable-access-to-exchange-online-powershell)
  - [Client Access Rules in Exchange Online](/exchange/clients-and-mobile-in-exchange-online/client-access-rules/client-access-rules)

## Use the Microsoft 365 Defender portal to user reported message settings

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Settings** \> **Email & collaboration** \> **User reported** tab. To go directly to the **User reported** page, use <https://security.microsoft.com/securitysettings/userSubmission>.

2. On the **User reported** page, what you see and can configure is determined entirely by the toggle at the top of the page:

   - **On** ![Toggle on.](../../media/scc-toggle-on.png): The following configurations are supported:
     - Users in your organization can see and use the the built-in **Report** button in Outlook on the web or the Microsoft Report Message or Report Phishing add-ins in virtually all Outlook platforms to report messages.
       - You can configure user reported messages to go to the reporting mailbox, to Microsoft, or both.
       - You decide whether users receive **Before a message is reported** and **After a message is reported** pop-ups in Outlook.
       - You decide how to customize the feedback email that's sent to users from **Mark and notify** on the **Submissions** page at <https://security.microsoft.com/reportsubmission>.
       - You decide whether users can report messages from quarantine.

       You choose this configuration by selecting **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options** in the **Outlook report button configuration** section. The available configuration options from this selection are explained in the [Options for Microsoft reporting tools](#options-for-microsoft-reporting-tools) section in this article.

     - Users in your organization use a third-party, non-Microsoft add-in to report messages.
       - You decide whether Microsoft can read end user report from the third-party reporting mailbox.
       - You decide whether users can report messages from quarantine to third-party reporting mailbox.

       You choose this configuration by selecting **Use a non-Microsoft add-in button** in the **Outlook report button configuration** section. The available configuration options from this selection are explained in the [Options for third-party reporting tools](#options-for-third-party-reporting-tools) section in this article.

   - **Off** ![Toggle off.](../../media/scc-toggle-off.png): The Microsoft-integrated reporting experience is turned off, and all other settings on the **User reported** page are unavailable, including the ability for users to report messages from quarantine.

### Options for Microsoft reporting tools

When the toggle is **On** ![Toggle on.](../../media/scc-toggle-on.png) and you've selected **Use the built-in "Report" button with "Phishing", "Junk", and "Not Junk options**, the following options are available on the **User reported** page:

- **Send the reported messages to** in the **Reported message destinations** section: Select one of the following options:

  - **Microsoft only**: User reported messages go directly to Microsoft for analysis. Only metadata from the user reported messages (for example, senders, recipients, reported by, and message details) is available on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>.

  - **My reporting mailbox only**: User reported messages go only to the specified reporting mailbox for an admin or the security operations team to analyze.

    In the **Add a mailbox to send reported messages to** box that appears, enter the email address of an existing Exchange Online mailbox to use as the reporting mailbox that holds user reported messages from Microsoft reporting tools. Distribution groups are not allowed. 

    Messages don't go to Microsoft for analysis unless an admin manually submits the message from the **Emails** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=email>.

  - **Microsoft and my reporting mailbox**: User reported messages go to Microsoft for analysis and to the reporting mailbox for an admin or security operations team to analyze.

    In the **Add a mailbox to send reported messages to** box that appears, enter the email address of an existing Exchange Online mailbox to use as the reporting mailbox. Distribution groups are not allowed.

  > [!IMPORTANT]
  > In U.S. Government organizations (Microsoft 365 GCC, GCC High, and DoD), the only available selection in the **Send the reported messages to** section is **My reporting mailbox only**. The other two options are grayed out.
  >
  > If you select **My reporting mailbox only**, the **Result** value of messages entries on the **User reported** tab on the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user> will always be empty, because the messages were not rescanned.
  >
  > If you use [Attack simulation training](attack-simulation-training-get-started.md) or a third-party product to do phishing simulations, you must configure the reporting mailbox as a SecOps mailbox as previously described in the [Configuration requirements for the reporting mailbox](#configuration-requirements-for-the-reporting-mailbox) section earlier in this article. If you don't, a user reporting a message might trigger a training assignment in the phishing simulation product.

The following settings are also available on the page:

- **Show a pop-up message in Outlook to confirm it the user want's to report the message** in the **Before a message is reported** section: This setting controls whether users see a pop-up before they report a message using the Report Message add-in or the Report Phishing add-in. Currently, this setting does not affect the built-in **Report** button in Outlook on the web.

  If this setting is selected, click **Customize before message** to enter the the **Title** and **Message** text in the **Customize text before message is reported** flyout that opens. Use the variable `%type%` to include the submission type (junk, not junk, phishing, etc.).

  When you're finished, click **Confirm** to return to the **User reported** page.

- **Show a success pop-up message in Outlook after the user reports** in the **After a message is reported** section: This setting controls whether users see a pop-up after they report a message using the Report Message add-in or the Report Phishing add-in. Currently, this setting does not affect the built-in **Report** button in Outlook on the web.

  If this setting is selected, click **Customize after message** to enter the the **Title** and **Message** text in the **Customize text after message is reported** flyout that opens. Use the variable `%type%` to include the submission type (junk, not junk, phishing, etc.).

  When you're finished, click **Confirm** to return to th **User reported** page.

- **Email sent to user after admin review** section: The following settings are available:

  - **Specify an Office 365 mailbox to send email notifications from**: Select this option and enter the sender's email address in the box that appears.
  - **Replace the Microsoft logo with my company logo**: Select this option to replace the default Microsoft logo that's used in notifications. Before you do this step, you need to follow the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your custom logo. This option is not supported if your organization has a custom logo pointing to a URL instead of an uploaded image file.
  - **Customize email notification messages**: Click this link to customize the email notification that's sent after an admin reviews and marks a reported message. In the **Customize admin review email notifications** flyout that appears, configure the following settings on the **Phishing**, **Junk** and **No threats found** tabs:
    - **Email body results text**: Enter the custom text to use. You can use different text for **Phishing**, **Junk** and **No threats found**.
    - **Email footer text**: Enter the custom message footer text to use. The same text is used for **Phishing**, **Junk** and **No threats found**.

     When you're finished, click **Confirm** to return to the **User reported** page.

When you're finished on the **User reported** page, click **Save**. To restore all settings on the page to their immediately previous values, click **Restore**.

### Options for third-party reporting tools

When the toggle is **On** ![Toggle on.](../../media/scc-toggle-on.png) and you've selected **Use a non-Microsoft add-in button**, the following options are available on the **User reported** page:

- **Add a mailbox to send reported messages to** in the **Reported message destinations** section: Enter the email address of an existing Exchange Online mailbox to use as the reporting mailbox that holds user reported messages from third-party reporting tools. These messages are not submitted to Microsoft.

  These user reported messages appear on the **User reported** tab of the **Submissions** page at <https://security.microsoft.com/reportsubmission?viewid=user>. The **Result** value for these entries is **Not Submitted to Microsoft**.
  
  A messages sent to the reporting mailbox must include the original user reported message as an uncompressed .EML or .MSG attachment. Don't forward the original user reported message to the reporting mailbox.

  > [!NOTE]
  > Messages that contain multiple attached messages will be discarded. We support only one attached original message in a user reported message.

  The message formatting requirements are described in the next section. This formatting is optional, but if user reported messages don't follow the prescribed format, they're always identified as phishing.

  **Let your organization report messages from quarantine** in the **Report from qurantine** section: Verify that this setting is selected to let users report messages from quarantine. Otherwise, uncheck this setting

When you're finished on the **User reported** page, click **Save**. To restore all settings on the page to their immediately previous values, click **Restore**.

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

  Messages that don't follow this format will not display properly on the **Submissions** page at <https://security.microsoft.com/reportsubmission>.
