---
title: Configuration analyzer for security policies
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: deniseb
ms.reviewer:
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid:
  - MET150
ms.assetid:
ms.collection:
  - m365-security
  - tier1
ms.custom:
description: Admins can learn how to use the configuration analyzer to find and fix security policies that are less secure than Standard protection and Strict protection in preset security policies.
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 1/29/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/eop-about" target="_blank">Exchange Online Protection</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-security-comparison#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft Defender XDR</a>
---

# Configuration analyzer for protection policies in EOP and Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

Configuration analyzer in the Microsoft Defender portal provides a central location to find and fix security policies where the settings are less secure than the Standard protection and Strict protection profile settings in [preset security policies](preset-security-policies.md).

The following types of policies are analyzed by the configuration analyzer:

- **Exchange Online Protection (EOP) policies**: Includes Microsoft 365 organizations with Exchange Online mailboxes and standalone EOP organizations without Exchange Online mailboxes:
  - [Anti-spam policies](anti-spam-policies-configure.md).
  - [Anti-malware policies](anti-malware-policies-configure.md).
  - [EOP anti-phishing policies](anti-phishing-policies-about.md#spoof-settings).

- **Microsoft Defender for Office 365 policies**: Includes organizations with Microsoft 365 E5 or Defender for Office 365 add-on subscriptions:
  - Anti-phishing policies in Microsoft Defender for Office 365, which include:
    - The same [spoof settings](anti-phishing-policies-about.md#spoof-settings) that are available in the EOP anti-phishing policies.
    - [Impersonation settings](anti-phishing-policies-about.md#impersonation-settings-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
    - [Advanced phishing thresholds](anti-phishing-policies-about.md#advanced-phishing-thresholds-in-anti-phishing-policies-in-microsoft-defender-for-office-365)
  - [Safe Links policies](safe-links-policies-configure.md).
  - [Safe Attachments policies](safe-attachments-policies-configure.md).

The Standard and Strict policy setting values that are used as baselines are described in [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

The configuration analyzer also checks the following non-policy settings:

- **DKIM**: Whether [SPF](email-authentication-spf-configure.md) and [DKIM](email-authentication-dkim-configure.md) records for the specified domain are detected in DNS.
- **Outlook**: Whether native Outlook external sender identifiers are [enabled](/powershell/module/exchange/set-externalinoutlook) in the organization.

## What do you need to know before you begin?

- You open the Microsoft Defender portal at <https://security.microsoft.com>. To go directly to the **Configuration analyzer** page, use <https://security.microsoft.com/configurationAnalyzer>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- You need to be assigned permissions before you can do the procedures in this article. You have the following options:
  - [Microsoft Defender XDR Unified role based access control (RBAC)](/microsoft-365/security/defender/manage-rbac) (Affects the Defender portal only, not PowerShell): **Authorization and settings/Security settings/Core Security settings (manage)** or **Authorization and settings/Security settings/Core Security settings (read)**.
  - [Email & collaboration permissions in the Microsoft Defender portal](mdo-portal-permissions.md):
    - _Use the configuration analyzer and update the affected security policies_: Membership in the **Organization Management** or **Security Administrator** role groups.
    - _Read-only access to the configuration analyzer_: Membership in the **Global Reader** or **Security Reader** role groups.
  - [Exchange Online permissions](/Exchange/permissions-exo/permissions-exo): Membership in the **View-Only Organization Management** role group gives read-only access to the configuration analyzer.
  - [Microsoft Entra permissions](/microsoft-365/admin/add-users/about-admin-roles): Membership in the **Global Administrator**, **Security Administrator**, **Global Reader**, or **Security Reader** roles gives users the required permissions _and_ permissions for other features in Microsoft 365.

<a name='use-the-configuration-analyzer-in-the-microsoft-365-defender-portal'></a>

## Use the configuration analyzer in the Microsoft Defender portal

In the Microsoft Defender portal at <https://security.microsoft.com>, go to **Email & Collaboration** \> **Policies & Rules** \> **Threat policies** \> **Configuration analyzer** in the **Templated policies** section. To go directly to the **Configuration analyzer** page, use <https://security.microsoft.com/configurationAnalyzer>.

The **Configuration analyzer** page has three main tabs:

- **Standard recommendations**: Compare your existing security policies to the Standard recommendations. You can adjust your settings values to bring them up to the same level as Standard.
- **Strict recommendations**: Compare your existing security policies to the Strict recommendations. You can adjust your settings values to bring them up to the same level as Strict.
- **Configuration drift analysis and history**: Audit and track policy changes over time.

### Standard recommendations and Strict recommendations tabs in the configuration analyzer

By default, the configuration analyzer opens on the **Standard recommendations** tab. You can switch to the **Strict recommendations** tab. The settings, layout, and actions are the same on both tabs.

:::image type="content" source="../../media/configuration-analyzer-settings-and-recommendations-view.png" alt-text="The Settings and recommendations view in the Configuration analyzer" lightbox="../../media/configuration-analyzer-settings-and-recommendations-view.png":::

The first section of the tab displays the number of settings in each type of policy that need improvement as compared to Standard or Strict protection. The types of policies are:

- **Anti-spam**
- **Anti-phishing**
- **Anti-malware**
- **Safe Attachments** (if your subscription includes Microsoft Defender for Office 365)
- **Safe Links** (if your subscription includes Microsoft Defender for Office 365)
- **DKIM**
- **Built-in Protection** (if your subscription includes Microsoft Defender for Office 365)
- **Outlook**

If a policy type and number isn't shown, then all of your policies of that type meet the recommended settings of Standard or Strict protection.

The rest of the tab is the table of settings that need to be brought up to the level Standard or Strict protection. The table contains the following columns<sup>\*</sup>:

- **Recommendations**: The value of the setting in the Standard or Strict protection profile.
- **Policy**: The name of the affected policy that contains the setting.
- **Policy group/setting name**: The name of the setting that requires your attention.
- **Policy type**: Anti-spam, Anti-phishing, Anti-malware, Safe Links, or Safe Attachments.
- **Current configuration**: The current value of the setting.
- **Last modified**: The date that the policy was last modified.
- **Status**: Typically, this value is **Not started**.

<sup>\*</sup> To see all columns, you likely need to do one or more of the following steps:

- Horizontally scroll in your web browser.
- Narrow the width of appropriate columns.
- Zoom out in your web browser.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filters** flyout that opens:

- **Anti-spam**
- **Anti-phishing**
- **Anti-malware**
- **Safe Attachments**
- **Safe Links**
- **ATP Built-in Protection rule**
- **DKIM**
- **Outlook**

When you're finished in the **Filters** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the :::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box and a corresponding value to find specific entries.

#### View details about a recommended policy setting

On the **Standard protection** or **Strict protection** tab of the configuration analyzer, select an entry by clicking anywhere in the row other than the check box next to the recommendation name. In the details flyout that opens, the following information is available:

- **Policy**: The name of the affected policy.
- **Why?**: Information about why we recommend the value for the setting.
- The specific setting to change and the value to change it to.
- **View policy**: The link takes you to the details flyout of the affected policy in the Microsoft Defender portal where you can manually update the setting.
- A link to [Recommended settings for EOP and Microsoft Defender for Office 365 security](recommended-settings-for-eop-and-office365.md).

> [!TIP]
> To see details about other recommendations without leaving the details flyout, use :::image type="icon" source="../../media/updownarrows.png" border="false"::: **Previous** and **Next** at the top of the flyout.

When you're finished in the details flyout, select **Close**.

:::image type="content" source="../../media/configuration-analyzer-details-flyout.png" alt-text="Flyout experience in the Configuration analyzer" lightbox="../../media/configuration-analyzer-details-flyout.png":::

#### Take action on a recommended policy setting

On the **Standard protection** or **Strict protection** tab of the configuration analyzer, select an entry by selecting the check box next to the recommendation name. The following actions appear on the page:

- :::image type="icon" source="../../media/m365-cc-sc-edit-icon.png" border="false"::: **Apply recommendation**: If the recommendation requires multiple steps, this action is grayed out.

  When you select this action, a confirmation dialog (with the option to not show the dialog again) opens. When you select **OK**, the following things happen:

  - The setting is updated to the recommended value.
  - The recommendation is still selected, but the only available action is :::image type="icon" source="../../media/m365-cc-sc-refresh-icon.png" border="false"::: **Refresh**.
  - The **Status** value for the row changes to **Complete**.

- :::image type="icon" source="../../media/m365-cc-sc-view-policy-icon.png" border="false":::**View policy**: You're taken to the details flyout of the affected policy in the Microsoft Defender portal where you can manually update the setting.

- :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export**: Exports the selected recommendation to a .csv file, select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export**.

  You can also export recommendations after you select multiple recommendations or after you select all recommendations by selecting the check box next to the **Recommendations** column header.

After you automatically or manually update the setting, select :::image type="icon" source="../../media/m365-cc-sc-refresh-icon.png" border="false"::: **Refresh** to see the reduced number of recommendations and the removal of the updated row from the results.

### Configuration drift analysis and history tab in the configuration analyzer

> [!NOTE]
> [Unified Auditing](/purview/audit-log-enable-disable) needs to be enabled for drift analysis.

This tab allows you to track the changes to your security policies and how those changes compare to the Standard or Strict settings. By default, the following information is displayed:

- **Last modified**
- **Modified by**
- **Setting Name**
- **Policy**: The name of the affected policy.
- **Type**: Anti-spam, Anti-phishing, Anti-malware, Safe Links, or Safe Attachments.
- **Configuration change**: The old value and the new value of the setting
- **Configuration drift**: The value **Increase** or **Decrease** that indicates the setting increased or decreased security compared to the recommended Standard or Strict setting.

To filter the entries, select :::image type="icon" source="../../media/m365-cc-sc-filter-icon.png" border="false"::: **Filter**. The following filters are available in the **Filters** flyout that opens:

- **Date**: **Start time** and **End time**. You can go back as far as 90 days from today.
- **Type**: **Standard protection** or **Strict protection**.

When you're finished in the **Filters** flyout, select **Apply**. To clear the filters, select :::image type="icon" source="../../media/m365-cc-sc-clear-filters-icon.png" border="false"::: **Clear filters**.

Use the ::image type="icon" source="../../media/m365-cc-sc-search-icon.png" border="false"::: **Search** box to filter the entries by a specific **Modified by**, **Setting name**, or **Type** value.

To export the entries shown on the **Configuration drift analysis and history** tab to a .csv file, select :::image type="icon" source="../../media/m365-cc-sc-download-icon.png" border="false"::: **Export**.

:::image type="content" source="../../media/configuration-analyzer-configuration-drift-analysis-view.png" alt-text="The Configuration drift analysis and history view in the Configuration analyzer" lightbox="../../media/configuration-analyzer-configuration-drift-analysis-view.png":::
