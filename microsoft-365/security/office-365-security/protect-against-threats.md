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
ms.date: 06/22/2021
search.appverid: 
  - MOE150
  - MET150
ms.assetid: b10023f6-f30f-45d3-b3ad-b71aa4aa0d58
ms.collection: 
  - M365-security-compliance
  - m365initiative-defender-office365
description: Admins can learn about threat protection in Microsoft 365 and configure how to use it for your organization.
ms.custom: seo-marvel-apr2020
ms.technology: mdo
ms.prod: m365-security
---

# Protect against threats

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]

**Applies to**
- [Exchange Online Protection](exchange-online-protection-overview.md)
- [Microsoft Defender for Office 365 plan 1 and plan 2](defender-for-office-365.md)
- [Microsoft 365 Defender](../defender/microsoft-365-defender.md)

Here's a quick-start guide that breaks the configuration of Defender for Office 365 into chunks. If you're new to threat protection features in Office 365, not sure where to begin, or if you learn best by *doing*, use this guidance as a checklist and a starting point.

> [!IMPORTANT]
> **Initial recommended settings are included for each kind of policy; however, many options are available, and you can adjust your settings to meet your specific organization's needs**. Allow approximately 30 minutes for your policies or changes to work their way through your datacenter.
>
> To skip manual configuration of most policies in Defender for Office 365, you can use preset security policies at the Standard or Strict level. For more information, see [Preset security policies in EOP and Microsoft Defender for Office 365](preset-security-policies.md).

## Requirements

### Subscriptions

Threat protection features are included in *all* Microsoft or Office 365 subscriptions; however, some subscriptions have advanced features. The table below lists the protection features included in this article together with the minimum subscription requirements.

> [!TIP]
> Notice that beyond the directions to turn on auditing, *steps* start anti-malware, anti-phishing, and anti-spam, which are marked as part of Office 365 Exchange Online Protection (**EOP**). This can seem odd in a Defender for Office 365 article, until you remember (**Defender for Office 365**) contains, and builds on, EOP.

<br>

****

|Protection type|Subscription requirement|
|---|---|
|Audit logging (for reporting purposes)|[Exchange Online](/office365/servicedescriptions/exchange-online-service-description/exchange-online-service-description)|
|Anti-malware protection|[Exchange Online Protection](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description) (**EOP**)|
|Anti-phishing protection|[EOP](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description)|
|Anti-spam protection|[EOP](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description)|
|Protection from malicious URLs and files in email and Office documents (Safe Links and Safe Attachments)|[Microsoft Defender for Office 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)|

### Roles and permissions

To configure Defender for Office 365 policies, you must be assigned an appropriate role. Take a look at the table below for roles that can do these actions.

<br>

****

|Role or role group|Where to learn more|
|---|---|
|global administrator|[About Microsoft 365 admin roles](../../admin/add-users/about-admin-roles.md)|
|Security Administrator|[Azure AD built-in roles](/azure/active-directory/roles/permissions-reference#security-administrator)
|Exchange Online Organization Management|[Permissions in Exchange Online](/exchange/permissions-exo/permissions-exo)|
|

To learn more, see [Permissions in the Microsoft 365 Defender portal](permissions-microsoft-365-security-center.md).

### Turn on audit logging for reporting and investigation

- Start your audit logging early. You'll need auditing to be **ON** for some of the following steps. Audit logging is available in subscriptions that include [Exchange Online](/office365/servicedescriptions/exchange-online-service-description/exchange-online-service-description). In order to view data in threat protection reports, [email security reports](view-email-security-reports.md), and [Explorer](threat-explorer.md), audit logging must be *On*. To learn more, see [Turn audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

## Part 1 - Anti-malware protection in EOP

For more information about the recommended settings for anti-malware, see [EOP anti-malware policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-malware-policy-settings).

1. Open the **Anti-malware** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antimalwarev2>.

2. On the **Anti-malware** page, select the policy named **Default (Default)** by clicking on the name.

3. In the policy details flyout that opens, click **Edit protection settings**, and then configure the following settings:
   - **Protection settings** section:
     - **Enable the common attachments filter**: Select (turn on). Click **Customize file types** to add more file types.
     - **Enable zero-hour auto purge for malware**: Verify this setting is selected. For more information about ZAP for malware, see [Zero-hour auto purge (ZAP) for malware](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-malware).
   - **Quarantine policy**: Leave the default value AdminOnlyAccessPolicy selected. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Quarantine policies](quarantine-policies.md).
   - **Notification** section: Verify that none of the notification settings are selected.

   When you're finished, click **Save**.

4. Back on the policy details flyout, click **Close**.

For detailed instructions for configuring anti-malware policies, see [Configure anti-malware policies in EOP](configure-anti-malware-policies.md).

## Part 2 - Anti-phishing protection in EOP and Defender for Office 365

[Anti-phishing protection](anti-phishing-protection.md) is available in subscriptions that include [EOP](/office365/servicedescriptions/exchange-online-protection-service-description/exchange-online-protection-service-description). Advanced anti-phishing protection is available in [Defender for Office 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

For more information about the recommended settings for anti-phishing policies, see [EOP anti-phishing policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-phishing-policy-settings) and [Anti-phishing policy settings in Microsoft Defender for Office 365](recommended-settings-for-eop-and-office365.md#anti-phishing-policy-settings-in-microsoft-defender-for-office-365).

The following procedure describes how to configure the default anti-phishing policy. Settings that are only available in Defender for Office 365 are clearly marked.

1. Open the **Anti-phishing** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antiphishing>.

2. On the **Anti-phishing** page, select the policy named **Office365 AntiPhish Default (Default)** by clicking on the name.

3. In the policy details flyout that appears, configure the following settings:
   - **Phishing threshold & protection** section: Click **Edit protection settings** and configure the following settings in the flyout that opens:
     - **Phishing email threshold**<sup>\*</sup>: Select **2 - Aggressive** (Standard) or **3 - More Aggressive** (Strict).
     - **Impersonation** section<sup>\*</sup>: Configure the following values:
       - Select **Enable users to protect**, click the **Manage (nn) sender(s)** link that appears, and then add internal and external senders to protect from impersonation, such as your organization's board members, your CEO, CFO, and other senior leaders.
       - Select **Enable domains to protect**, and then configure the following settings that appear:
         - Select **Include domains I own** to protect internal senders in your accepted domains (visible by clicking **View my domains**) from impersonation.
         - To protect senders in other domains, select **Include custom domains**, click the **Manage (nn) custom domain(s)** link that appears, and then add other domains to protect from impersonation.
     - **Add trusted senders and domains** section<sup>\*</sup>: Click **Manage (nn) trusted sender(s) and domains(s)** to configure sender and sender domain exceptions to impersonation protection if needed.
     - Mailbox intelligence settings<sup>\*</sup>: Verify that **Enable mailbox intelligence** and **Enable intelligence for impersonation protection** are selected.
     - **Spoof** section: Verify **Enable spoof intelligence** is selected.

     When you're finished, click **Save**.

   - **Actions** section: Click **Edit actions** and configure the following settings in the flyout that opens:
     - **Message actions** section: Configure the following settings:
       - **If message is detected as an impersonated user**<sup>\*</sup>: Select **Quarantine the message**. An **Apply quarantine policy** box appears where you select the [quarantine policy](quarantine-policies.md) that applies to messages that are quarantined by user impersonation protection.
       - **If message is detected as an impersonated domain**<sup>\*</sup>: Select **Quarantine the message**. An **Apply quarantine policy** box appears where you select the [quarantine policy](quarantine-policies.md) that applies to messages that are quarantined by domain impersonation protection.
       - **If mailbox intelligence detects an impersonated user**<sup>\*</sup>: Select **Move message to the recipients' Junk Email folders** (Standard) or **Quarantine the message** (Strict). If you select **Quarantine the message**, an **Apply quarantine policy** box appears where you select the [quarantine policy](quarantine-policies.md) that applies to messages that are quarantined by mailbox intelligence protection.
       - **If message is detected as spoof**: Select **Move message to the recipients' Junk Email folders** (Standard) or **Quarantine the message** (Strict).  If you select **Quarantine the message**, an **Apply quarantine policy** box appears where you select the [quarantine policy](quarantine-policies.md) that applies to messages that are quarantined by spoof intelligence protection.
     - **Safety tips & indicators** section: Configure the following settings:
       - **Show first contact safety tip**: Select (turn on).
       - **Show user impersonation safety tip**<sup>\*</sup>: Select (turn on).
       - **Show domain impersonation safety tip**<sup>\*</sup>: Select (turn on).
       - **Show user impersonation unusual characters safety tip**<sup>\*</sup>: Select (turn on).
       - **Show (?) for unauthenticated senders for spoof**: Select (turn on).
       - **Show "via" tag**: Select (turn on).

     When you're finished, click **Save**.

   <sup>\*</sup> This setting is available only in Defender for Office 365.

4. Click **Save** and then click **Close**

For detailed instructions for configuring anti-phishing policies, see [Configure anti-phishing policies in EOP](configure-anti-phishing-policies-eop.md) and [Configure anti-phishing policies in Microsoft Defender for Office 365](configure-mdo-anti-phishing-policies.md).

## Part 3 - Anti-spam protection in EOP

For more information about the recommended settings for anti-spam, see [EOP anti-spam policy settings](recommended-settings-for-eop-and-office365.md#eop-anti-spam-policy-settings).

1. Open the **Anti-spam policies** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/antispam>.

2. On the **Anti-spam policies** page, select the policy named **Anti-spam inbound policy (Default)** from the list by clicking on the name.

3. In the policy details flyout that appears, configure the following settings:
   - **Bulk email threshold & spam properties** section: Click **Edit spam threshold and properties**. In the flyout that appears, configure the following settings:
     - **Bulk email threshold**: Set this value to 5 (Strict) or 6 (Standard).
     - Leave other settings at their default values (**Off** or **None**).

     When you're finished, click **Save**.

   - **Actions** section: Click **Edit actions**. In the flyout that appears, configure the following settings:
     - **Message actions** section:
       - **Spam**: Verify **Move message to Junk Email folder** is selected (Standard) or select **Quarantine message** (Strict).
       - **High confidence spam**: Select **Quarantine message**.
       - **Phishing**: Select **Quarantine message**.
       - **High confidence phishing**: Verify **Quarantine messages** is selected.
       - **Bulk**: Verify **Move message to Junk Email folder** is selected (Standard) or select **Quarantine message** (Strict).

       For each action where you select **Quarantine message**, a **Select quarantine policy** box appears where you select the [quarantine policy](quarantine-policies.md) that applies to messages that are quarantined by anti-spam protection.

     - **Retain spam in quarantine for this many days**: Verify the value **30** days.
     - **Enable spam safety tips**: Verify this setting is selected (turned on).
     - **Enable zero-hour auto purge (ZAP)**: Verify this setting is selected (turned on).
       - **Enable for phishing messages**: Verify this setting is selected (turned on). For more information, see [Zero-hour auto purge (ZAP) for phishing](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-phishing).
       - **Enable for spam messages**:  Verify this setting is selected (turned on). For more information, see [Zero-hour auto purge (ZAP) for spam](zero-hour-auto-purge.md#zero-hour-auto-purge-zap-for-spam).

     When you're finished, click **Save**.

   - **Allowed and blocked senders and domains** section: Review or edit your allowed senders and allowed domains as described in [Create blocked sender lists in EOP](create-block-sender-lists-in-office-365.md) or [Create safe sender lists in EOP](create-safe-sender-lists-in-office-365.md).

     When you're finished, click **Save**.

4. When you're finished, click **Close**.

For detailed instructions for configuring anti-spam policies, see [Configure anti-spam policies in EOP](configure-your-spam-filter-policies.md).

## Part 4 - Protection from malicious URLs and files (Safe Links and Safe Attachments in Defender for Office 365)

Time-of-click protection from malicious URLs and files is available in subscriptions that include [Microsoft Defender for Office 365](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description). It's set up through [Safe Attachments](safe-attachments.md) and [Safe Links](safe-links.md) policies.

### Safe Attachments policies in Microsoft Defender for Office 365

For more information about the recommended settings for Safe Attachments, see .[Safe Attachments settings](recommended-settings-for-eop-and-office365.md#safe-attachments-settings).

1. Open the **Safe Attachments** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, click **Global settings**, and then configure the following settings on the flyout that appears:
   - **Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams**: Turn on this setting (![Toggle on.](../../media/scc-toggle-on.png)).

     > [!IMPORTANT]
     > **Before you turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams, verify that audit logging is turned in your organization**. This action is typically done by someone who has the Audit Logs role assigned in Exchange Online. For more information, see [Turn audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md)!

   - **Turn on Safe Documents for Office clients**: Turn on this setting (![Toggle on.](../../media/scc-toggle-on.png)). Note that this feature is available and meaningful only with the required types of licenses. For more information, see [Safe Documents in Microsoft 365 E5](safe-docs.md).
   - **Allow people to click through Protected View even if Safe Documents identified the file as malicious**: Verify this setting is turned off (![Toggle off.](../../media/scc-toggle-off.png)).

   When you're finished, click **Save**

3. Back on the **Safe Attachments** page, click ![Create icon.](../../media/m365-cc-sc-create-icon.png).

4. In the **Create Safe Attachments policy** wizard that opens, configure the following settings:
   - **Name your policy** page:
     - **Name**: Enter something unique and descriptive.
     - **Description**: Enter an optional description.
   - **Users and domains** page: Because this is your first policy and you likely want to maximize coverage, consider entering your [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in the **Domains** box. Otherwise, you can use the **Users** and **Groups** boxes for more granular control. You can specify exceptions by selecting **Exclude these users, groups, and domains** and entering values.
   - **Settings** page:
     - **Safe Attachments unknown malware response**: Select **Block**.
     - **Quarantine policy**: The default value is blank, which means the AdminOnlyAccessPolicy policy is used. Quarantine policies define what users are able to do to quarantined messages, and whether users receive quarantine notifications. For more information, see [Quarantine policies](quarantine-policies.md).
     - **Redirect attachment with detected attachments** : **Enable redirect**: Turn this setting on (select) and enter an email address to receive detected messages.
     - **Apply the Safe Attachments detection response if scanning can't complete (timeout or errors)**: Verify this setting is selected.

5. When you're finished, click **Submit**, and then click **Done**.

6. (Recommended) As a global administrator or a SharePoint Online administrator, run the **[Set-SPOTenant](/powershell/module/sharepoint-online/Set-SPOTenant)** cmdlet with the _DisallowInfectedFileDownload_ parameter set to `$true` in SharePoint Online PowerShell.
   - `$true` blocks all actions (except Delete) for detected files. People can't open, move, copy, or share detected files.
   - `$false` blocks all actions except Delete and Download. People can choose to accept the risk and download a detected file.

7. Allow up to 30 minutes for your changes to spread to all Microsoft 365 datacenters.

For detailed instructions for configuring Safe Attachments policies and global settings for Safe Attachments, see the following topics:

- [Set up Safe Attachments policies in Microsoft Defender for Office 365](set-up-safe-attachments-policies.md)
- [Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](turn-on-mdo-for-spo-odb-and-teams.md)
- [Safe Documents in Microsoft 365 E5](safe-docs.md)

### Safe Links policies in Microsoft Defender for Office 365

For more information about the recommended settings for Safe Links, see [Safe Links settings](recommended-settings-for-eop-and-office365.md#safe-links-settings).

1. Open the **Safe Links** page in the Microsoft 365 Defender portal at <https://security.microsoft.com/safelinksv2>.

2. On the **Safe Links** page, click **Global settings**, and then configure the following settings on the flyout that appears:
   - **Settings that apply to content in supported Office 365 apps** section:
     - **Use Safe Links in Office 365 apps**: Verify this setting is turned on (![Toggle on.](../../media/scc-toggle-on.png)).
     - **Do not track when users click protected links in Office 365 apps**: Turn this setting off (![Toggle off.](../../media/scc-toggle-off.png)).
     - **Do not let users click through to the original URL in Office 365 apps**: Verify this setting is turned on (![Toggle on.](../../media/scc-toggle-on.png)).

   When you're finished, click **Save**

3. Back on the **Safe Links** page, click ![Create icon.](../../media/m365-cc-sc-create-icon.png).

4. In the **Create Safe Links policy** wizard that opens, configure the following settings:
   - **Name your policy** page:
     - **Name**: Enter something unique and descriptive.
     - **Description**: Enter an optional description.
   - **Users and domains** page: Because this is your first policy and you likely want to maximize coverage, consider entering your [accepted domains](/exchange/mail-flow-best-practices/manage-accepted-domains/manage-accepted-domains) in the **Domains** box. Otherwise, you can use the **Users** and **Groups** boxes for more granular control. You can specify exceptions by selecting **Exclude these users, groups, and domains** and entering values.
   - **Protection settings** page:
     - **Select the action for unknown potentially malicious URLs in messages**: Turn this setting **On**.
     - **Select the action for unknown or potentially malicious URLs within Microsoft Teams**: Turn this setting **On**. As of March 2020, this setting is in Preview and is available or functional only for members of the Microsoft Teams Technology Adoption Program (TAP).
     - **Apply real-time URL scanning for suspicious links and links that point to files**: Select this setting (turn on).
       - **Wait for URL scanning to complete before delivering the message**: Select this setting (turn on).
     - **Apply Safe Links to email messages sent within the organization**: Select this setting (turn on).
     - **Do not track user clicks**: Verify this setting is not selected (turned off).
     - **Do not let users click through to the original URL**: Verify this setting is turned on (selected).
     - **Display the organization branding on notification and warning pages**: Selecting this setting (turning it on) is meaningful only after you've followed the instructions in [Customize the Microsoft 365 theme for your organization](../../admin/setup/customize-your-organization-theme.md) to upload your company logo.
     - **Do not rewrite the following URLs**: We have no specific recommendation for this setting. For more information, see ["Do not rewrite the following URLs" lists in Safe Links policies](safe-links.md#do-not-rewrite-the-following-urls-lists-in-safe-links-policies).
   - **Notification** page:
     - **How would you like to notify users?** section: Optionally, you can select **Use custom notification text** to enter customized notification text to use. You can also select **Use Microsoft Translator for automatic localization** to translate the custom notification text into the user's language. Otherwise, leave **Use the default notification text** selected.

5. When you're finished, click **Submit**, and then click **Done**.

For detailed instructions for configuring Safe Links policies and global settings for Safe Links, see the following topics:

- [Set up Safe Links policies in Microsoft Defender for Office 365](set-up-safe-links-policies.md)
- [Configure global settings for Safe Links in Microsoft Defender for Office 365](configure-global-settings-for-safe-links.md)

### Now set up alerts for detected files in SharePoint Online or OneDrive for Business

To receive notification when a file in SharePoint Online or OneDrive for Business has been identified as malicious, you can set up an alert as described in this section.

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Email & collaboration** \> **Polices & rules** \> **Alert policy**.

2. On the **Alert policy** page, click **New alert policy**.

3. The **New alert policy** wizard opens. On the **Name** page, configure the following settings:
   - **Name**: Enter a unique and descriptive name. For example, you could type Malicious Files in Libraries.
   - **Description**: Enter an optional description.
   - **Severity**: Select **Low**, **Medium** or **High**.
   - **Category**: Select **Threat management**.

   When you're finished, click **Next**

4. On the **Create alert settings** page, configure the following settings:
   - **What do you want to alert on?** section: **Activity is** \> **Detected malware in file**.
   - **How do you want the alert to be triggered** section: Verify **Every time an activity matches the rule** is selected.

   When you're finished, click **Next**

5. On the **Set your recipients** page, configure the following settings:
   - **Send email notifications**: Verify this setting is selected.
   - **Email recipients**: Select one or more global administrators, security administrators, or security readers who should receive notification when a malicious file is detected.
   - **Daily notification limit**: Verify **No limit** is selected.

   When you're finished, click **Next**

6. On the **Review your settings** page, review your settings, verify **Yes, turn it on right away** is selected, and then click **Finish**

To learn more about alert policies, see [Alert policies in the Microsoft 365 compliance center](../../compliance/alert-policies.md).

> [!NOTE]
> When you're finished configuring, use these links to start workload investigations:
>
> - [Threat protection status report](view-email-security-reports.md#threat-protection-status-report)
> - [Use the Microsoft 365 Defender portal to manage quarantined files in Defender for Office 365](manage-quarantined-messages-and-files.md#use-the-microsoft-365-defender-portal-to-manage-quarantined-files-in-defender-for-office-365)
> - [What to do when a malicious file is found in SharePoint Online, OneDrive, or Microsoft Teams](https://support.microsoft.com/office/01e902ad-a903-4e0f-b093-1e1ac0c37ad2)
> - [Manage quarantined messages and files as an admin in Microsoft 365](manage-quarantined-messages-and-files.md)

## Post-setup tasks and next steps

After configuring the threat protection features, make sure to monitor how those features are working! Review and revise your policies so that they do what you need them to. Also, watch for new features and service updates that can add value.

<br>

****

|What to do|Resources to learn more|
|---|---|
|See how threat protection features are working for your organization by viewing reports|[Email security reports](view-email-security-reports.md) <p> [Reports for Microsoft Defender for Office 365](view-reports-for-mdo.md) <p> [Threat Explorer](threat-explorer.md)|
|Periodically review and revise your threat protection policies as needed|[Secure Score](../defender/microsoft-secure-score.md) <p> [Microsoft 365 threat investigation and response features](./office-365-ti.md)|
|Watch for new features and service updates|[Standard and Targeted release options](../../admin/manage/release-options-in-office-365.md) <p> [Message Center](../../admin/manage/message-center.md) <p> [Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=advanced%2Cthreat%2Cprotection) <p> [Service Descriptions](/office365/servicedescriptions/office-365-service-descriptions-technet-library)|
|
