---
title: "Protect against threats"
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Normal
ms.date: 05/09/2019
search.appverid:
- MOE150
- MET150
ms.assetid: b10023f6-f30f-45d3-b3ad-b71aa4aa0d58
ms.collection:
- M365-security-compliance
description: "Use this article as a guide to configure your threat protection features now."
---

# Protect against threats

Office 365 includes a variety of threat protection features. Here's a quick-start guide you can use as a checklist to make sure your threat protection features are set up for your organization. If you're new to threat protection features in Office 365, or you're just not sure where to begin, use the following guidance as a starting point.

> [!IMPORTANT]
> **Initial recommended settings are included for each kind of policy; however, many options are available, and you can adjust your settings to meet your specific organization's needs**. Allow approximately 30 minutes for your policies or changes to work their way through your datacenter.

## Requirements

### Subscriptions

Threat protection features are included in all Office 365 subscriptions; however, some subscriptions include more advanced features. The following table lists the protection features included in this article together with the minimum subscription requirements.<br/>

|Protection type|Subscription requirement|
|---------|---------|
|Anti-malware protection|[Exchange Online Protection](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description) (EOP)|
|Protection from malicious URLs and files in email and Office documents|[Office 365 Advanced Threat Protection](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description) (ATP)|
|Anti-phishing protection|[EOP](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description)|
|Advanced anti-phishing protection|[Office 365 ATP](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description)|
|Anti-spam protection|[EOP](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description)|
|Zero-hour auto purge (for email)|[EOP](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description)|
|Audit logging (this is used for reporting purposes)|[Exchange Online](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description)|

### Roles and permissions

You must be assigned an appropriate role to configure policies in the [Security & Compliance Center](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/office-365-securitycompliance-center). The following table includes some examples:

|Role or role group|Where to learn more|
|---------|---------|
|global administrator|[About Office 365 admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles)|
|Security Administrator|[Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)|
|Exchange Online Organization Management|[Permissions in Exchange Online](https://docs.microsoft.com/exchange/permissions-exo/permissions-exo) <br>and<br> [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell)|

To learn more, see [Permissions in the Office 365 Security &amp; Compliance Center](permissions-in-the-security-and-compliance-center.md).

## Part 1 - Anti-malware protection

[Anti-malware protection](anti-malware-protection.md) is available in subscriptions that include [EOP](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description).

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** > **Policy** > **Anti-malware**.

2. Double-click the **Default** policy, and then choose **settings**.

3. Specify the following settings:

    - In the **Malware Detection Response** section, keep the default setting of **No**.

    - In the **Common Attachment Types Filter** section, choose **On**.

4. Click **Save**.

To learn more about anti-malware policy options, see [Configure anti-malware policies](configure-anti-malware-policies.md).

## Part 2 - Protection from malicious URLs and files

Time-of-click protection from malicious URLs and files is available in subscriptions that include [Office 365 ATP](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description) (ATP), and is set up through [ATP Safe Attachments](atp-safe-attachments.md) and [ATP Safe Links](atp-safe-links.md) policies.

### ATP Safe Attachments policies

To set up [ATP Safe Attachments](atp-safe-attachments.md), you must define at least one ATP Safe Attachments policy.

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** > **Policy** > **ATP safe attachments**.

2. Select the option **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams**.

3. In the **Protect email attachments** section, click the plus sign (**+**).

4. Specify the following settings:

   - In the **Name** box, type `Block malware`.

   - In the response section, choose **Block**.

   - In the **Redirect attachment** section, select the option **Enable redirect**, and then specify the email address for your organization's security administrator or operator who will review detected files.

   - In the **Applied to** section, choose **The recipient domain is**. Then, select your domain, choose **Add**, and then click **OK**.

5. Click **Save**.

6. (**Recommended additional step**) As a global administrator or a SharePoint Online administrator run the **[Set-SPOTenant](https://docs.microsoft.com/powershell/module/sharepoint-online/Set-SPOTenant)** cmdlet with the **DisallowInfectedFileDownload** parameter set to  *true* for your Office 365 environment. (This prevents people from opening, moving, copying, or sharing files that are detected as malicious.)

To learn more, see [Set up Office 365 ATP Safe Attachments policies](set-up-atp-safe-attachments-policies.md) and [Turn on Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](turn-on-atp-for-spo-odb-and-teams.md).

### ATP Safe Links policies

To set up [ATP Safe Links](atp-safe-links.md), review and edit your default policy, and add a policy for specific users.

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** > **Policy** > **ATP Safe Links**.

2. Double-click the **Default** policy.

3. In the **Use safe links in** section, select the option **Microsoft 365 Apps for enterprise, Office for iOS and Android**, and then click **Save**.

4. In the **Policies that apply to specific recipients** section, click the plus sign (**+**).

5. Specify the following settings:

   - In the **Name** box, type a name, such as `Safe Links`.

   - In the **Select the action** section, choose **On**.

   - Select these options:

     - **Use safe attachments to scan downloadable content**

     - **Apply safe links to email messages sent within the organization**

     - **Do not let users click through safe links to original URL**

   - In the **Applied to** section, choose **The recipient domain is**. Then, select your domain, choose **Add**, and then click **OK**.

6. Click **Save**.

To learn more, see [Set up Office 365 ATP Safe Links policies](set-up-atp-safe-links-policies.md).

## Part 3 - Anti-phishing protection

[Anti-phishing protection](anti-phishing-protection.md) is available in subscriptions that include [EOP](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description). Advanced anti-phishing protection is available in [ATP](https://docs.microsoft.com/office365/servicedescriptions/office-365-advanced-threat-protection-service-description). The following procedure describes how to configure an ATP anti-phishing policy. The steps are similar for configuring an anti-phishing policy (without ATP).

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** > **Policy** > **ATP anti-phishing**.

2. Click **Default policy**.

3. In the **Impersonation** section, click **Edit**, and then specify the following settings:

   - On the **Add users to protect** tab, turn protection on. Then add users, such as your organization's board members, your CEO, CFO, and other senior leaders. (You can type an individual email address, or click to display a list.)

   - On the **Add domains to protect** tab, turn on **Automatically include the domains I own**. If you have custom domains, add those as well.

   - On the **Actions** tab, select **Quarantine the message** for both the **impersonated user** and **impersonated domain** options. In addition, turn on impersonation safety tips.

   - On the **Mailbox intelligence** tab, make sure mailbox intelligence is turned on. In addition, turn on mailbox intelligence based impersonation protection. In the **If email is sent by an impersonated user** list, choose **Quarantine the message**.

   - On the **Add trusted senders and domains** tab, specify any trusted senders or domains that you want to add.

   - On the **Review your settings** tab, after you have reviewed your settings, click **Save**.

4. In the **Spoof** section, click **Edit**, and then specify the following settings:

   - On the **Spoofing filter settings** tab, make sure anti-spoofing protection is turned on.

   - On the **Actions** tab, choose **Quarantine the message**.

   - On the **Review your settings** tab, after you have reviewed your settings, click **Save**. (If you didn't make any changes, click **Cancel**.)

5. Close the default policy settings page.

To learn more about your anti-phishing policy options, see [Set up anti-phishing policies](set-up-anti-phishing-policies.md).

## Part 4 - Anti-spam protection

[Anti-spam protection](anti-spam-protection.md) is available in subscriptions that include [EOP](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description).

1. In the [Security & Compliance Center](https://protection.office.com), choose **Threat management** > **Policy** > **Anti-spam**.

2. On the **Custom** tab, turn **Custom settings** on.

3. Expand **Default spam filter policy**, click **Edit policy**, and then specify the following settings:

   - In the **Spam and bulk actions** section, set the threshold to a value of 5 or 6.

   - In the **Allow lists** section, review (and if necessary, edit) your allowed senders and domains.

4. Click **Save**.

To learn more about your anti-spam policy options, see [Configure the anti-spam policies](configure-the-anti-spam-policies.md).

## Part 5 - Additional settings to configure

In addition to configuring protection from malware, malicious URLs and files, phishing, and spam, we recommend that you configure your zero-hour auto purge and audit logging settings.

### Zero-hour auto purge for email

[Zero-hour auto purge](zero-hour-auto-purge.md) (ZAP) is available in subscriptions that include [EOP](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-protection-service-description). This protection is turned on by default; however, the following conditions must be met for protection to be in effect:

- Spam actions are set to **Move message to Junk Email folder** in [anti-spam policies](anti-spam-protection.md).

- Users have kept their default [junk email settings](ensure-that-spam-is-routed-to-each-user-s-junk-email-folder.md), and have not turned off junk email protection.

To learn more, see [Zero-hour auto purge - protection against spam and malware](zero-hour-auto-purge.md).

### Audit logging for reporting and investigation

Audit logging is available in subscriptions that include [Exchange Online](https://docs.microsoft.com/office365/servicedescriptions/exchange-online-service-description). In order to view data in threat protection reports, such as the [Security Dashboard](security-dashboard.md), [email security reports](view-email-security-reports.md), and [Explorer](threat-explorer.md), audit logging must be turned on for your organization. To learn more, see [Turn audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

## Post-setup tasks

After you have configured your threat protection features, make sure to monitor how those features are working, review and revise your policies as needed, and watch for new features and service updates.

|What to do|Resources to learn more|
|---------|---------|
|See how threat protection features are working for your organization by viewing reports|[Security dashboard](security-dashboard.md)<br/>[Email security reports](view-email-security-reports.md)<br/>[Reports for Office 365 ATP](view-reports-for-atp.md)<br/>[Threat Explorer](threat-explorer.md)|
|Periodically review and revise your threat protection policies as needed|[Secure Score](../mtp/microsoft-secure-score.md)<br/>[Smart reports and insights](reports-and-insights-in-security-and-compliance.md)<br/>[Office 365 threat investigation and response features](keep-users-safe-with-office-365-ti.md)|
|Watch for new features and service updates|[Standard and Targeted release options](https://docs.microsoft.com/office365/admin/manage/release-options-in-office-365?view=o365-worldwide)<br/>[Message Center](https://docs.microsoft.com/office365/admin/manage/message-center?view=o365-worldwide)<br/>[Microsoft 365 Roadmap](https://www.microsoft.com/microsoft-365/roadmap?filters=&searchterms=advanced%2Cthreat%2Cprotection)<br/>[Service Descriptions](https://docs.microsoft.com/office365/servicedescriptions/office-365-service-descriptions-technet-library)|
