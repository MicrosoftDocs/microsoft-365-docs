---
title: Turn on Office 365 ATP - SharePoint, OneDrive, & Teams
f1.keywords:
- NOCSH
ms.author: tracyp
author: msfttracyp
manager: dansimp
audience: ITPro
ms.topic: article
ms.date: 02/06/2019
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: 07e76024-0c80-40dc-8c48-1dd0d0f863cb
ms.collection:
- M365-security-compliance
- SPO_Content
description: "Learn how to turn on ATP for SharePoint, OneDrive, and Teams, including how to set alerts for detected files."
ms.custom: seo-marvel-apr2020
---

# Turn on ATP for SharePoint, OneDrive, and Microsoft Teams

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](office-365-atp.md). If you are a home user looking for information about Safelinks in Outlook, see [Advanced Outlook.com security](https://support.microsoft.com/office/882d2243-eab9-4545-a58a-b36fee4a46e2).

Office 365 Advanced Threat Protection (ATP) for SharePoint, OneDrive, and Microsoft Teams protects your organization from inadvertently sharing malicious files. For more information, see [ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md).

This article contains the steps for enabling and configuring ATP for SharePoint, OneDrive, and Microsoft Teams.

## What do you need to know before you begin?

- To disable or enable ATP for SharePoint, OneDrive, and Microsoft Teams, you need to be a member of one of the following role groups:

  - **Organization Management** or **Security Administrator** in the [Security & Compliance Center](permissions-in-the-security-and-compliance-center.md).
  - **Organization Management** or **Hygiene Management** in [Exchange Online](https://docs.microsoft.com/Exchange/permissions-exo/permissions-exo#role-groups).

- To connect to Exchange Online PowerShell, see [Connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell).

- Verify that audit logging is enabled for your organization. For more information, see [Turn audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

- Allow up to 30 minutes for the settings to take effect.

## Step 1: Use the Security & Compliance Center to turn on ATP for SharePoint, OneDrive, and Microsoft Teams

1. In the [Security & Compliance Center](https://protection.office.com), go to **Threat management** \> **Policy** \> **ATP Safe Attachments**. To go directly to this page, open <https://protection.office.com/safeattachmentv2>.

2. Select **Global settings**. In the **Global settings** fly out that appears, go to the **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** setting. Move the toggle to the right ![Toggle on](../../media/963dfcd0-1765-4306-bcce-c3008c4406b9.png) to turn on ATP for SharePoint, OneDrive, and Microsoft Teams.

   When you're finished, click **Save**.

### Use Exchange Online PowerShell to turn on ATP for SharePoint, OneDrive, and Microsoft Teams

If you'd rather use PowerShell, [connect to Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-exchange-online-powershell) and run the following command to turn on ATP for SharePoint, OneDrive, and Microsoft Teams:

```powershell
Set-AtpPolicyForO365 -EnableATPForSPOTeamsODB $true
```

For detailed syntax and parameter information, see [Set-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/set-atppolicyforo365).

## Step 2: (Recommended) Use SharePoint Online PowerShell to block the ability to download malicious files

By default, users can't open, move, copy, or share malicious files that were detected by ATP for SharePoint, OneDrive, and Microsoft Teams. However, they can delete and download malicious files.

To prevent users from **downloading** malicious files, [connect to SharePoint Online PowerShell](https://docs.microsoft.com/powershell/sharepoint/sharepoint-online/connect-sharepoint-online) and run the following command:

```powershell
Set-SPOTenant -EnableATPForSPOTeamsODB $true
```

Note that this setting still allows users to delete malicious files.

For detailed syntax and parameter information, see [Set-SPOTenant](https://docs.microsoft.com/powershell/module/sharepoint-online/Set-SPOTenant).

## Step 3 (Recommended) Use the Security & Compliance Center to create an alert policy for detected files

1. In the [Security & Compliance Center](https://protection.office.com), go to **Alerts** \> **Alert policies** or open <https://protection.office.com/alertpolicies>.

2. On the **Alert policies** page, click **New alert policy**.

3. The **New alert policy** wizard opens in a new fly out. On the **Name your alert** page, configure the following settings:

   - **Name**: Type a unique and descriptive name. For example, Malicious Files in Libraries.
   - **Description**: Type an optional description. For example, Notifies admins when malicious files are detected in SharePoint Online, OneDrive, or Microsoft Teams.
   - **Severity**: Leave the default value **Low** selected, or select **Medium** or **High**.
   - **Select a category**: Select **Threat management**.

   When you're finished, click **Next**.

4. On the **Create alert settings** page, configure the following settings:

   - **What do you want to alert on?: Activity is**: Select **Detected malware in file**.
   - **How do you want the alert to be triggered?**: Leave the default value **Every time an activity matches the rule** selected.

   When you're finished, click **Next**.

5. On the **Set your recipients** page, configure the following settings:

   - **Send email notifications**: Verify this setting is selected. In the **Email recipients** box, select one or more global administrators, security administrators, or security readers who should receive notification when a malicious file is detected.
   - **Daily notification limit**: Leave the default value **No limit** selected.

   When you're finished, click **Next**.

6. On the **Review your settings** page, review the settings, and click **Edit** in any of the sections to make changes.

   In the **Do you want to turn the policy on right away?** section, leave the default value **Yes, turn it on right away** selected.

   When you're finished, click **Finish**.

### Use Security & Compliance PowerShell to create an alert policy for detected files

If you'd rather use PowerShell, [connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell) and run the following command to create the same alert policy as described in the previous section:

```powershell
New-ActivityAlert -Name "Malicious Files in Libraries" -Description "Notifies admins when malicious files are detected in SharePoint Online, OneDrive, or Microsoft Teams" -Category ThreatManagement -Operation FileMalwareDetected -NotifyUser "admin1@contoso.com","admin2@contoso.com"
```

**Note**: The default _Severity_ value is Low. To specify Medium or High, include the _Severity_ parameter and value in the command.

For detailed syntax and parameter information, see [New-ActivityAlert](https://docs.microsoft.com/powershell/module/exchange/new-activityalert).

To learn more about alerts, see [Create activity alerts in the Security & Compliance Center](../../compliance/create-activity-alerts.md).

### How do you know these procedures worked?

1. To verify that you've turned on ATP for SharePoint, OneDrive, and Microsoft Teams, use either of the following steps:

   - In the [Security & Compliance Center](https://protection.office.com), go to **Threat management** \> **Policy** \> **ATP Safe Attachments**, select **Global settings**, and verify the value of the **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** setting.

   - In Exchange Online PowerShell, run the following command to verify the property setting:

     ```powershell
     Get-AtpPolicyForO365 | Format-List EnableATPForSPOTeamsODB
     ```

     For detailed syntax and parameter information, see [Get-AtpPolicyForO365](https://docs.microsoft.com/powershell/module/exchange/get-atppolicyforo365).

2. To verify that you've successfully blocked people from downloading malicious files, open SharePoint Online PowerShell, and run the following command to verify the property value:

   ```powershell
   Get-SPOTenant | Format-List DisallowInfectedFileDownload
   ```

   For detailed syntax and parameter information, see [Get-SPOTenant](https://docs.microsoft.com/powershell/module/sharepoint-online/Set-SPOTenant).

3. To verify that you've successfully configured an alert policy for detected files, use any of the following steps:

   - In the Security & Compliance Center, go to **Alerts** \> **Alert policies** \> select the alert policy, and verify the settings.

   - In Security & Compliance Center PowerShell, replace \<AlertPolicyName\> with the name of the alert policy, run the following command, and verify the property values:

     ```powershell
     Get-ActivityAlert -Identity "<AlertPolicyName>"
     ```

     For detailed syntax and parameter information, see [Get-ActivityAlert](https://docs.microsoft.com/powershell/module/exchange/get-activityalert).

## Next steps

1. [View information about malicious files detected in SharePoint, OneDrive, or Microsoft Teams](malicious-files-detected-in-spo-odb-or-teams.md)

2. [Manage quarantined messages and files as an administrator in Microsoft 365](manage-quarantined-messages-and-files.md)
