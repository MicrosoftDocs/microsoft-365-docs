---
title: Protect against threats in Microsoft Defender for Office 365, Anti-malware, Anti-Phishing, Anti-spam, Safe links, Safe attachments, Zero-hour auto purge (ZAP), MDO security configuration
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: Admin
ms.topic: overview
ms.localizationpriority: medium
ms.date: 7/12/2023
search.appverid: 
  - MOE150
  - MET150
ms.assetid: b10023f6-f30f-45d3-b3ad-b71aa4aa0d58
ms.collection: 
  - m365-security
  - tier1
  - highpri
description: Admins can learn about threat protection in Microsoft 365 and configure how to use it for your organization.
ms.custom: seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Protect against threats

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Here's a quick-start guide that breaks the configuration of Defender for Office 365 into chunks. If you're new to threat protection features in Office 365, not sure where to begin, or if you learn best by *doing*, use this guidance as a checklist and a starting point.

> [!IMPORTANT]
> **Initial recommended settings are included for each kind of policy; however, many options are available, and you can adjust your settings to meet your specific organization's needs**. Allow approximately 30 minutes for your policies or changes to work their way through your datacenter.
>
> To skip manual configuration of policies in Defender for Office 365, you can use preset security policies at the Standard or Strict level. For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md). Unless you have a very large or complex environment, preset security policies are the best way to start.

## Requirements

### Subscriptions

Threat protection features are included in *all* Microsoft or Office 365 subscriptions; however, some subscriptions have advanced features. The table below lists the protection features included in this article together with the minimum subscription requirements.

> [!TIP]
> Notice that beyond the directions to turn on auditing, *steps* start anti-malware, anti-phishing, and anti-spam, which are marked as part of Office 365 Exchange Online Protection (**EOP**). This can seem odd in a Defender for Office 365 article, until you remember (**Defender for Office 365**) contains, and builds on, EOP.

|Protection type|Subscription requirement|
|---|---|
|Audit logging (for reporting purposes)|[Exchange Online](/office365/servicedescriptions/exchange-online-service-description/exchange-online-service-description)|
|Anti-malware protection|[Exchange Online Protection](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description) (**EOP**)|
|Anti-phishing protection ([spoof intelligence](anti-spoofing-spoof-intelligence.md))|[EOP](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description)|
|Anti-phishing protection ([impersonation protection](anti-phishing-policies-about.md#exclusive-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365))|[Microsoft Defender for Office 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)|
|Anti-spam protection|[EOP](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description)|
|Protection from malicious URLs and files in email and Office documents (Safe Links and Safe Attachments)|[Microsoft Defender for Office 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)|

### Roles and permissions

To configure Defender for Office 365 policies, you must be assigned an appropriate role. Take a look at the table below for roles that can do these actions.

|Role or role group|Where to learn more|
|---|---|
|Global Administrator in Azure AD|[About Microsoft 365 admin roles](../../admin/add-users/about-admin-roles.md)|
|Organization Management in Email & collaboration role groups|[Role groups in Microsoft Defender for Office 365](scc-permissions.md#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance)|
|Security Administrator in Azure AD|[Azure AD built-in roles](/azure/active-directory/roles/permissions-reference#security-administrator)
|Security Administrator in Email & collaboration role groups|[Role groups in Microsoft Defender for Office 365](scc-permissions.md#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance)|
|Exchange Online Organization Management|[Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo)|

To learn more, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

### Turn on audit logging for reporting and investigation

- Audit logging is turned on by default for Microsoft 365 and Office 365 enterprise organizations. To view data in threat protection reports, [email security reports](reports-email-security.md), and [Explorer](threat-explorer-about.md), audit logging must be *On*. To verify that audit logging is turned on or to turn it on, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).

## Part 1 - Anti-malware protection in EOP

For more information about the recommended settings for anti-malware, see [EOP anti-malware policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-malware-policy-settings).

1. Open the **Anti-malware** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antimalwarev2>.

2. On the **Anti-malware** page, select the policy named **Default (Default)** by clicking anywhere in the row other than the check box next to the name.

3. In the policy details flyout that opens, select **Edit protection settings** in the **Protection settings** section, and then configure the following settings in the **Edit protection settings** flyout that opens:
   - **Protection settings** section:
     - **Enable the common attachments filter**: Select (turn on). Select **Select file types** to add more file types.
       - **When these file types are found**: Verify **Reject the message with a non-delivery report (NDR)** is selected.
     - **Enable zero-hour auto purge for malware**: Verify this setting is selected. For more information about ZAP for malware, see [Zero-hour auto purge (ZAP) for malware](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-malware).
   - **Quarantine policy**: Leave the default value AdminOnlyAccessPolicy selected. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).
   - **Notification** section: Verify that none of the notification settings are selected.

   When you're finished in the **Edit protection settings** flyout, select **Save**.

4. Back on the policy details flyout, select **Close**.

For detailed instructions for configuring anti-malware policies, see [Configure anti-malware policies in EOP](anti-malware-policies-configure.md).

## Part 2 - Anti-phishing protection in EOP and Defender for Office 365

[Anti-phishing protection](anti-phishing-protection-about.md) is available in subscriptions that include [EOP](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description). Advanced anti-phishing protection is available in [Defender for Office 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

For more information about the recommended settings for anti-phishing policies, see [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings) and [Anti-phishing policy settings in Microsoft Defender for Office 365](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365).

The following procedure describes how to configure the default anti-phishing policy. Settings that are only available in Defender for Office 365 are clearly marked.

1. Open the **Anti-phishing** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antiphishing>.

2. On the **Anti-phishing** page, select the policy named **Office365 AntiPhish Default (Default)** by clicking on the name.

3. In the policy details flyout that appears, configure the following settings:
   - **Phishing threshold & protection** section: Select **Edit protection settings** and configure the following settings in the flyout that opens:
     - **Phishing email threshold**<sup>\*</sup>: Select **2 - Aggressive** (Standard) or **3 - More Aggressive** (Strict).
     - **Impersonation** section<sup>\*</sup>: Configure the following values:
       - Select **Enable users to protect**, select the **Manage (nn) sender(s)** link that appears, and then add internal and external senders to protect from impersonation, such as your organization's board members, your CEO, CFO, and other senior leaders.
       - Select **Enable domains to protect**, and then configure the following settings that appear:
         - Select **Include domains I own** to protect internal senders in your accepted domains (visible by clicking **View my domains**) from impersonation.
         - To protect senders in other domains, select **Include custom domains**, select the **Manage (nn) custom domain(s)** link that appears, and then add other domains to protect from impersonation.
     - **Add trusted senders and domains** section<sup>\*</sup>: Select **Manage (nn) trusted sender(s) and domains(s)** to configure sender and sender domain exceptions to impersonation protection if needed.
     - Mailbox intelligence settings<sup>\*</sup>: Verify that **Enable mailbox intelligence** and **Enable intelligence for impersonation protection** are selected.
     - **Spoof** section: Verify **Enable spoof intelligence** is selected.

     When you're finished, select **Save**.

   - **Actions** section: Select **Edit actions** and configure the following settings in the flyout that opens:
     - **Message actions** section: Configure the following settings:
       - **If a message is detected as user impersonation**<sup>\*</sup>: Select **Quarantine the message**. Select nothing in the **Apply quarantine policy** box that appears to use the default [quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy) that applies to messages that are quarantined by user impersonation protection.
       - **If a message is detected as domain impersonation**<sup>\*</sup>: Select **Quarantine the message**. Select nothing in the **Apply quarantine policy** box that appears to use the default [quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy) that applies to messages that are quarantined by user domain impersonation protection.
       - **If mailbox intelligence detects an impersonated user**<sup>\*</sup>: Select **Move the message to the recipients' Junk Email folders** (Standard) or **Quarantine the message** (Strict). Select nothing in the **Apply quarantine policy** box that appears to use the default [quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy) that applies to messages that are quarantined by mailbox intelligence protection.
       - **If the message is detected as spoof by spoof intelligence**: Select **Move the message to the recipients' Junk Email folders** (Standard) or **Quarantine the message** (Strict). Select nothing in the **Apply quarantine policy** box that appears to use the default [quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy) that applies to messages that are quarantined by spoof intelligence protection.
     - **Safety tips & indicators** section: Configure the following settings:
       - **Show first contact safety tip**: Select (turn on).
       - **Show user impersonation safety tip**<sup>\*</sup>: Select (turn on).
       - **Show domain impersonation safety tip**<sup>\*</sup>: Select (turn on).
       - **Show user impersonation unusual characters safety tip**<sup>\*</sup>: Select (turn on).
       - **Show (?) for unauthenticated senders for spoof**: Select (turn on).
       - **Show "via" tag**: Select (turn on).

     When you're finished, select **Save**.

   <sup>\*</sup> This setting is available only in Defender for Office 365.

4. Select **Save** and then select **Close**

For detailed instructions for configuring anti-phishing policies, see [Configure anti-phishing policies in EOP](anti-phishing-policies-eop-configure.md) and [Configure anti-phishing policies in Microsoft Defender for Office 365](anti-phishing-policies-mdo-configure.md).

## Part 3 - Anti-spam protection in EOP

For more information about the recommended settings for anti-spam, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

1. Open the **Anti-spam policies** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select the policy named **Anti-spam inbound policy (Default)** from the list by clicking on the name.

3. In the policy details flyout that appears, configure the following settings:
   - **Bulk email threshold & spam properties** section: Select **Edit spam threshold and properties**. In the flyout that appears, configure the following settings:
     - **Bulk email threshold**: Set this value to 5 (Strict) or 6 (Standard).
     - Leave other settings at their default values (**Off** or **None**).

     When you're finished, select **Save**.

   - **Actions** section: Select **Edit actions**. In the flyout that appears, configure the following settings:
     - **Message actions** section:
       - **Spam**: Verify **Move message to Junk Email folder** is selected (Standard) or select **Quarantine message** (Strict).
       - **High confidence spam**: Select **Quarantine message**.
       - **Phishing**: Select **Quarantine message**.
       - **High confidence phishing**: Verify **Quarantine messages** is selected.
       - **Bulk compliant level (BCL) met or exceeded**: Verify **Move message to Junk Email folder** is selected (Standard) or select **Quarantine message** (Strict).

       For each action where you select **Quarantine message**, leave the default value in the **Select quarantine policy** box that appears (including blank values) to use the default [quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy) that applies to messages that are quarantined by anti-spam protection.

     - **Retain spam in quarantine for this many days**: Verify the value **30** days.
     - **Enable spam safety tips**: Verify this setting is selected (turned on).
     - **Enable zero-hour auto purge (ZAP)**: Verify this setting is selected (turned on).
       - **Enable for phishing messages**: Verify this setting is selected (turned on). For more information, see [Zero-hour auto purge (ZAP) for phishing](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-phishing).
       - **Enable for spam messages**:  Verify this setting is selected (turned on). For more information, see [Zero-hour auto purge (ZAP) for spam](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-spam).

     When you're finished, select **Save**.

   - **Allowed and blocked senders and domains** section: Review or edit your allowed senders and allowed domains as described in [Create blocked sender lists in EOP](create-block-sender-lists-in-office-365.md) or [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md).

     When you're finished, select **Save**.

4. When you're finished, select **Close**.

For detailed instructions for configuring anti-spam policies, see [Configure anti-spam policies in EOP](anti-spam-policies-configure.md).

## Part 4 - Protection from malicious URLs and files (Safe Links and Safe Attachments in Defender for Office 365)

Time of click protection from malicious URLs and files is available in subscriptions that include [Microsoft Defender for Office 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description). It's set up through [Safe Attachments](safe-attachments-about.md) and [Safe Links](safe-links-about.md) policies.

### Safe Attachments policies in Microsoft Defender for Office 365

For more information about the recommended settings for Safe Attachments, see [Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings).

1. Open the **Safe Attachments** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, select **Global settings**, and then configure the following settings on the flyout that appears:
   - **Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams**: Turn on this setting (![Toggle on.](../../media/scc-toggle-on.png)).

     > [!IMPORTANT]
     > **Before you turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams, verify that audit logging is turned in your organization** (it's on by default). To verify that audit logging is turned on or to turn it on, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).

   - **Turn on Safe Documents for Office clients**: Turn on this setting (![Toggle on.](../../media/scc-toggle-on.png)). Note that this feature is available and meaningful only with the required types of licenses. For more information, see [Safe Documents in Microsoft 365 E5](safe-documents-in-e5-plus-security-about.md).
   - **Allow people to click through Protected View even if Safe Documents identified the file as malicious**: Verify this setting is turned off (![Toggle off.](../../media/scc-toggle-off.png)).

   When you're finished, select **Save**

3. Back on the **Safe Attachments** page, select ![Create icon.](../../media/m365-cc-sc-create-icon.png).

4. In the **Create Safe Attachments policy** wizard that opens, configure the following settings:
   - **Name your policy** page:
     - **Name**: Enter something unique and descriptive.
     - **Description**: Enter an optional description.
   - **Users and domains** page: Because this is your first policy and you likely want to maximize coverage, consider entering your [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in the **Domains** box. Otherwise, you can use the **Users** and **Groups** boxes for more granular control. You can specify exceptions by selecting **Exclude these users, groups, and domains** and entering values.
   - **Settings** page:
     - **Safe Attachments unknown malware response**: Select **Block**.
     - **Quarantine policy**: The default value is blank, which means the default AdminOnlyAccessPolicy policy is used. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Anatomy of a quarantine policy](quarantine-policies.md#anatomy-of-a-quarantine-policy).
     - **Redirect attachment with detected attachments** : **Enable redirect**: Turn this setting on (select) and enter an email address to receive detected messages.

5. When you're finished, select **Submit**, and then select **Done**.

6. (Recommended) As a global administrator or a SharePoint Online administrator, run the **[Set-SPOTenant](/powershell/module/sharepoint-online/Set-SPOTenant)** cmdlet with the *DisallowInfectedFileDownload* parameter set to `$true` in SharePoint Online PowerShell.
   - `$true` blocks all actions (except Delete) for detected files. People can't open, move, copy, or share detected files.
   - `$false` blocks all actions except Delete and Download. People can choose to accept the risk and download a detected file.

7. Allow up to 30 minutes for your changes to spread to all Microsoft 365 datacenters.

For detailed instructions for configuring Safe Attachments policies and global settings for Safe Attachments, see the following topics:

- [Set up Safe Attachments policies in Microsoft Defender for Office 365](safe-attachments-policies-configure.md)
- [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-configure.md)
- [Safe Documents in Microsoft 365 E5](safe-documents-in-e5-plus-security-about.md)

### Safe Links policies in Microsoft Defender for Office 365

For more information about the recommended settings for Safe Links, see [Safe Links policy settings](recommended-settings-for-eop-and-office365.md#safe-links-policy-settings).

1. Open the **Safe Links** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/safelinksv2>, and then select ![Create icon.](../../media/m365-cc-sc-create-icon.png).

2. In the **Create Safe Links policy** wizard that opens, configure the following settings:
   - **Name your policy** page:
     - **Name**: Enter something unique and descriptive.
     - **Description**: Enter an optional description.
   - **Users and domains** page: Because this is your first policy and you likely want to maximize coverage, consider entering your [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in the **Domains** box. Otherwise, you can use the **Users** and **Groups** boxes for more granular control. You can specify exceptions by selecting **Exclude these users, groups, and domains** and entering values.
   - **Url & click protection settings** page:
     - **Action on potentially malicious URLs within Emails** section:
       - **On: Safe Links checks a list of known, malicious links when users click links in email**: Select his setting (turn on).
       - **Apply Safe Links to email messages sent within the organization**: Select this setting (turn on).
       - **Apply real-time URL scanning for suspicious links and links that point to files**: Select this setting (turn on).
         - **Wait for URL scanning to complete before delivering the message**: Select this setting (turn on).
       - **Do not rewrite URLs, do checks via Safe Links API only**: Verify this setting is not selected (turn off).
     - **Do not rewrite the following URLs in email**: We have no specific recommendation for this setting. For more information, see ["Do not rewrite the following URLs" lists in Safe Links policies](safe-links-about.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies).
     - **Action for potentially malicious URLs in Microsoft Teams** section:
       - ***On: Safe Links checks a list of known, malicious links when users click links in Microsoft Teams**: Select this setting (turn on).
     - **Click protection settings** section:
       - **Track user clicks**: Verify this setting is selected (turned on).
         - **Let users click through to the original URL**: Turn off this setting (not selected).
         - **Display the organization branding on notification and warning pages**: Selecting this setting (turning it on) is meaningful only after you've followed the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your company logo.
   - **Notification** page:
     - **How would you like to notify users?** section: Optionally, you can select **Use custom notification text** to enter customized notification text to use. You can also select **Use Microsoft Translator for automatic localization** to translate the custom notification text into the user's language. Otherwise, leave **Use the default notification text** selected.

3. When you're finished, select **Submit**, and then select **Done**.

For detailed instructions for configuring Safe Links policies and global settings for Safe Links, see [Set up Safe Links policies in Microsoft Defender for Office 365](safe-links-policies-configure.md).

### Now set up alerts for detected files in SharePoint Online or OneDrive for Business

To receive notification when a file in SharePoint Online or OneDrive for Business has been identified as malicious, you can set up an alert as described in this section.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Polices & rules** \> **Alert policy**.

2. On the **Alert policy** page, select **New alert policy**.

3. The **New alert policy** wizard opens. On the **Name** page, configure the following settings:
   - **Name**: Enter a unique and descriptive name. For example, you could type Malicious Files in Libraries.
   - **Description**: Enter an optional description.
   - **Severity**: Select **Low**, **Medium** or **High**.
   - **Category**: Select **Threat management**.

   When you're finished, select **Next**

4. On the **Create alert settings** page, configure the following settings:
   - **What do you want to alert on?** section: **Activity is** \> **Detected malware in file**.
   - **How do you want the alert to be triggered** section: Verify **Every time an activity matches the rule** is selected.

   When you're finished, select **Next**

5. On the **Set your recipients** page, configure the following settings:
   - **Send email notifications**: Verify this setting is selected.
   - **Email recipients**: Select one or more global administrators, security administrators, or security readers who should receive notification when a malicious file is detected.
   - **Daily notification limit**: Verify **No limit** is selected.

   When you're finished, select **Next**

6. On the **Review your settings** page, review your settings, verify **Yes, turn it on right away** is selected, and then select **Finish**

To learn more about alert policies, see [Alert policies in the Microsoft Purview compliance portal](../../compliance/alert-policies.md).

> [!NOTE]
> When you're finished configuring, use these links to start workload investigations:
>
> - [Threat protection status report](reports-email-security.md#threat-protection-status-report)
> - [Use the Microsoft 365 Defender portal to manage quarantined files in Defender for Office 365](quarantine-admin-manage-messages-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-files-in-defender-for-office-365)
> - [What to do when a malicious file is found in SharePoint Online, OneDrive, or Microsoft Teams](https://support.microsoft.com/office/01e902ad-a903-4e0f-b093-1e1ac0c37ad2)
> - [Manage quarantined messages and files as an admin in Microsoft 365](quarantine-admin-manage-messages-files.md)

## Post-setup tasks and next steps

After configuring the threat protection features, make sure to monitor how those features are working! Review and revise your policies so that they do what you need them to. Also, watch for new features and service updates that can add value.

|What to do|Resources to learn more|
|---|---|
|See how threat protection features are working for your organization by viewing reports|[Email security reports](reports-email-security.md) <p> [Reports for Microsoft Defender for Office 365](reports-defender-for-office-365.md) <p> [Threat Explorer](threat-explorer-about.md)|
|Periodically review and revise your threat protection policies as needed|[Secure Score](../defender/microsoft-secure-score.md) <p> [Microsoft 365 threat investigation and response features](./office-365-ti.md)|
|Watch for new features and service updates|[Standard and Targeted release options](../../admin/manage/release-options-in-office-365.md) <p> [Message Center](../../admin/manage/message-center.md) <p> [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=advanced%2Cthreat%2Cprotection) <p> [Service Descriptions](/office365/servicedescriptions/office-365-service-descriptions-technet-library)|
