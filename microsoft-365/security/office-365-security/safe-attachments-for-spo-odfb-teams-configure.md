---
title: Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams
f1.keywords: 
  - NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: ITPro
ms.topic: how-to
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.assetid: 07e76024-0c80-40dc-8c48-1dd0d0f863cb
ms.collection: 
  - m365-security
  - SPO_Content
  - tier2
description: Admins can learn how to turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams, including how to set alerts for detected files.
ms.custom: 
- seo-marvel-apr2020
ms.subservice: mdo
ms.service: microsoft-365-security
ms.date: 6/19/2023
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

In organizations with Microsoft Defender for Office 365, Safe Attachments for Office 365 for SharePoint, OneDrive, and Microsoft Teams protects your organization from inadvertently sharing malicious files. For more information, see [Safe Attachments for SharePoint, OneDrive, and Microsoft Teams](safe-attachments-for-spo-odfb-teams-about.md).

You turn on or turn off Safe Attachments for Office 365 for SharePoint, OneDrive, and Microsoft Teams in the Microsoft 365 Defender portal or in Exchange Online PowerShell.

## What do you need to know before you begin?

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

- You open the Microsoft 365 Defender portal at <https://security.microsoft.com>. To go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- To turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams, you need to be a member of the **Organization Management** or **Security Administrator** role groups in the Microsoft 365 Defender portal. For more information, see [Permissions in the Microsoft 365 Defender portal](mdo-portal-permissions.md).

- To use SharePoint Online PowerShell to prevent people from downloading malicious files, you need to be member of the [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator) or [SharePoint Administrator](/azure/active-directory/roles/permissions-reference#sharepoint-administrator) roles in Azure AD.

- Verify that audit logging is enabled for your organization (it's on by default). For instructions, see [Turn auditing on or off](../../compliance/audit-log-enable-disable.md).

- Allow up to 30 minutes for the settings to take effect.

## Step 1: Use the Microsoft 365 Defender portal to turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Threat policies** \> **Safe Attachments** in the **Policies** section. Or, to go directly to the **Safe Attachments** page, use <https://security.microsoft.com/safeattachmentv2>.

2. On the **Safe Attachments** page, select :::image type="icon" source="../../media/m365-cc-sc-gear-icon.png" border="false"::: **Global settings**.

3. In the **Global settings** flyout that opens, go to the **Protect files in SharePoint, OneDrive, and Microsoft Teams** section.

   Move the **Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** toggle to the right :::image type="icon" source="../../media/scc-toggle-on.png" border="false"::: to turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams.

   When you're finished in the **Global settings** flyout, select **Save**.

### Use Exchange Online PowerShell to turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams

If you'd rather use PowerShell to turn on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams, [connect to Exchange Online PowerShell](/powershell/exchange/connect-to-exchange-online-powershell) and run the following command:

```powershell
Set-AtpPolicyForO365 -EnableATPForSPOTeamsODB $true
```

For detailed syntax and parameter information, see [Set-AtpPolicyForO365](/powershell/module/exchange/set-atppolicyforo365).

## Step 2: (Recommended) Use SharePoint Online PowerShell to prevent users from downloading malicious files

By default, users can't open, move, copy, or share<sup>\*</sup> malicious files that are detected by Safe Attachments for SharePoint, OneDrive, and Microsoft Teams. However, they can delete and download malicious files.

<sup>\*</sup> If users go to **Manage access**, the **Share** option is still available.

To prevent users from downloading malicious files, [connect to SharePoint Online PowerShell](/powershell/sharepoint/sharepoint-online/connect-sharepoint-online) and run the following command:

```powershell
Set-SPOTenant -DisallowInfectedFileDownload $true
```

**Notes**:

- This setting affects both users and admins.
- People can still delete malicious files.

For detailed syntax and parameter information, see [Set-SPOTenant](/powershell/module/sharepoint-online/Set-SPOTenant).

## Step 3 (Recommended) Use the Microsoft 365 Defender portal to create an alert policy for detected files

You can create an alert policy that notifies admins when Safe Attachments for SharePoint, OneDrive, and Microsoft Teams detects a malicious file. To learn more about alert policies, see [Alert policies](../../compliance/alert-policies.md).

1. In the Microsoft 365 Defender portal at <https://security.microsoft.com>, go to **Policies & rules** \> **Alert policy**. To go directly to the **Alert policy** page, use <https://security.microsoft.com/alertpolicies>.

2. On the **Alert policy** page, select :::image type="icon" source="../../media/m365-cc-sc-create-icon.png" border="false"::: **New alert policy** to start the new alert policy wizard.

3. On the **Name your alert, categorize it, and choose a severity** page, configure the following settings:
   - **Name**: Type a unique and descriptive name. For example, **Malicious Files in Libraries**.
   - **Description**: Type an optional description. For example, **Notifies admins when malicious files are detected in SharePoint Online, OneDrive, or Microsoft Teams**.
   - **Severity**: Select **Low**, **Medium**, or **High** from the dropdown list.
   - **Category**: Select **Threat management** from the dropdown list.

   When you're finished on the **Name your alert, categorize it, and choose a severity** page, select **Next**.

4. On the **Choose an activity, conditions and when to trigger the alert** page, configure the following settings:
   - **What do you want to alert on?** section \> **Activity is** \> **Common user activities** section \> Select **Detected malware in file** from the dropdown list.
   - **How do you want the alert to be triggered?** section: Select **Every time an activity matches the rule**.

   When you're finished on the **Choose an activity, conditions and when to trigger the alert** page, select **Next**.

5. On the **Decide if you want to notify people when this alert is triggered** page, configure the following settings:
   - Verify **Opt-in for email notifications** is selected. In the **Email recipients** box, select one or more global administrators, security administrators, or security readers who should receive notification when a malicious file is detected.
   - **Daily notification limit**: Leave the default value **No limit** selected.

   When you're finished on the **Decide if you want to notify people when this alert is triggered** page, select **Next**.

6. On the **Review your settings** page, review your settings. You can select **Edit** in each section to modify the settings within the section. Or you can select **Back** or the specific page in the wizard.

   In the **Do you want to turn the policy on right away?** section, select **Yes, turn it on right away**.

   When you're finished n the **Review your settings** page, select **Submit**.

7. On this page, you can review the alert policy in read-only mode.

   When you're finished, select **Done**.

   Back on the **Alert policy** page, the new policy is listed.

### Use Security & Compliance PowerShell to create an alert policy for detected files

If you'd rather use PowerShell to create the same alert policy as described in the previous section, [connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell) and run the following command:

```powershell
New-ActivityAlert -Name "Malicious Files in Libraries" -Description "Notifies admins when malicious files are detected in SharePoint Online, OneDrive, or Microsoft Teams" -Category ThreatManagement -Operation FileMalwareDetected -NotifyUser "admin1@contoso.com","admin2@contoso.com"
```

**Note**: The default _Severity_ value is Low. To specify Medium or High, include the _Severity_ parameter and value in the command.

For detailed syntax and parameter information, see [New-ActivityAlert](/powershell/module/exchange/new-activityalert).

### How do you know these procedures worked?

- To verify that you've successfully turned on Safe Attachments for SharePoint, OneDrive, and Microsoft Teams, use either of the following steps:

  - In the Microsoft 365 Defender portal, go to **Policies & rules** \> **Threat Policies** \> **Policies** section \> **Safe Attachments**, select **Global settings**, and verify the value of the **Turn on Defender for Office 365 for SharePoint, OneDrive, and Microsoft Teams** setting.

  - In Exchange Online PowerShell, run the following command to verify the property setting:

    ```powershell
    Get-AtpPolicyForO365 | Format-List EnableATPForSPOTeamsODB
    ```

    For detailed syntax and parameter information, see [Get-AtpPolicyForO365](/powershell/module/exchange/get-atppolicyforo365).

- To verify that you've successfully blocked people from downloading malicious files, open SharePoint Online PowerShell, and run the following command to verify the property value:

  ```powershell
  Get-SPOTenant | Format-List DisallowInfectedFileDownload
  ```

  For detailed syntax and parameter information, see [Get-SPOTenant](/powershell/module/sharepoint-online/Set-SPOTenant).

- To verify that you've successfully configured an alert policy for detected files, use either of the following methods:
  - In the Microsoft 365 Defender portal at <https://security.microsoft.com/alertpolicies>, select the alert policy, and verify the settings.
  - In Security & Compliance PowerShell, replace \<AlertPolicyName\> with the name of the alert policy, run the following command, and verify the property values:

    ```powershell
    Get-ActivityAlert -Identity "<AlertPolicyName>"
    ```

    For detailed syntax and parameter information, see [Get-ActivityAlert](/powershell/module/exchange/get-activityalert).

- Use the [Threat protection status report](reports-email-security.md#threat-protection-status-report) to view information about detected files in SharePoint, OneDrive, and Microsoft Teams. Specifically, you can use the **View data by: Content \> Malware** view.
