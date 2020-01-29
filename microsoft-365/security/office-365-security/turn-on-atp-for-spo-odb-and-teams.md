---
title: "Turn on Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams"
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
---

# Turn on Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams

> [!IMPORTANT]
> This article is intended for business customers who have [Office 365 Advanced Threat Protection](office-365-atp.md). If you are a home user looking for information about Safe Links in Outlook, see [Advanced Outlook.com security](https://support.office.com/article/882d2243-eab9-4545-a58a-b36fee4a46e2).

[Office 365 ATP for SharePoint, OneDrive, and Microsoft Teams](atp-for-spo-odb-and-teams.md) protects your organization from inadvertently sharing malicious files. When a malicious file is detected, that file is blocked so that no one can open, copy, move, or share it until further actions are taken by the organization's security team. Read this article to turn on ATP for SharePoint, OneDrive, and Teams, set up alerts to be notified about detected files, and take your next steps.

To define (or edit) ATP policies, you must be assigned an appropriate role. Some examples are described in the following table:

|Role|Where/how assigned|
|---------|---------|
|Office 365 Global Administrator|The person who signs up to buy Office 365 is a global admin by default. (See [About Office 365 admin roles](https://docs.microsoft.com/office365/admin/add-users/about-admin-roles) to learn more.)|
|Security Administrator|Azure Active Directory admin center ([https://aad.portal.azure.com](https://aad.portal.azure.com))|
|Exchange Online Organization Management|Exchange admin center ([https://outlook.office365.com/ecp](https://outlook.office365.com/ecp)) <br>or <br>  PowerShell cmdlets (See [Exchange Online PowerShell](https://docs.microsoft.com/powershell/exchange/exchange-online/exchange-online-powershell))|

## Turn on ATP for SharePoint, OneDrive, and Microsoft Teams

**Before you begin this procedure, make sure that audit logging is already turned on for your Office 365 environment**. This is typically done by someone who has the Audit Logs role assigned in Exchange Online. For more information, see [Turn Office 365 audit log search on or off](../../compliance/turn-audit-log-search-on-or-off.md).

1. Go to [https://protection.office.com](https://protection.office.com), and sign in with your work or school account.

2. In the Office 365 Security & Compliance Center, in the left navigation pane, under **Threat management**, choose **Policy** \> **Safe Attachments**.

   ![In the Security & Compliance Center, choose Threat management \> Policy](../media/08849c91-f043-4cd1-a55e-d440c86442f2.png)

3. Select **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams**.

   ![Turn on Advanced Threat Protection for SharePoint Online, OneDrive for Business, and Microsoft Teams](../media/48cfaace-59cc-4e60-bf86-05ff6b99bdbf.png)

4. Click **Save**.

5. Review (and, as appropriate, edit) your organization's [Safe Attachments policies](set-up-atp-safe-attachments-policies.md) and [Safe Links policies](set-up-atp-safe-links-policies.md).

6. (Recommended) As a global administrator or a SharePoint Online administrator, run the **[Set-SPOTenant](https://docs.microsoft.com/powershell/module/sharepoint-online/Set-SPOTenant)** cmdlet with the _DisallowInfectedFileDownload_ parameter set to *true*.

   - Setting the parameter to *true* blocks all actions (except Delete) for detected files. People cannot open, move, copy, or share detected files.

   - Setting the parameter to *false* blocks all actions except Delete and Download. People can choose to accept the risk and download a detected file.

7. Allow up to 30 minutes for your changes to spread to all Office 365 datacenters.

8. (Recommended) Proceed to set up alerts for detected files.

To learn more about using PowerShell with Office 365, see [Manage Office 365 with PowerShell](https://docs.microsoft.com/office365/enterprise/powershell/manage-office-365-with-office-365-powershell).

To learn more about the user experience when a file has been detected as malicious, see [What to do when a malicious file is found in SharePoint Online, OneDrive, or Microsoft Teams](https://support.office.com/article/01e902ad-a903-4e0f-b093-1e1ac0c37ad2).

## Set up alerts for detected files

To receive notification when a file in SharePoint Online, OneDrive for Business, or Microsoft Teams has been identified as malicious, you can set up an alert.

1. In the [Office 365 Security & Compliance Center](https://protection.office.com), choose **Alerts** \> **Manage alerts**.

2. Choose **New alert policy**.

3. Specify a name for the alert. For example, you could type Malicious Files in Libraries.

4. Type a description for the alert. For example, you could type Notifies admins when malicious files are detected in SharePoint Online, OneDrive, or Microsoft Teams.

5. In the **Send this alert when...** section, do the following:

   a. In the **Activities** list, choose **Detected malware in file**.

   b. Leave the **Users** field empty.

6. In the **Send this alert to...** section, select one or more global administrators, security administrators, or security readers who should receive notification when a malicious file is detected.

7. Click **Save**.

To learn more about alerts, see [Create activity alerts in the Office 365 Security & Compliance Center](../../compliance/create-activity-alerts.md).

## Next steps

1. [View information about malicious files detected in SharePoint, OneDrive, or Microsoft Teams](malicious-files-detected-in-spo-odb-or-teams.md)

2. [Manage quarantined messages and files as an administrator in Office 365](manage-quarantined-messages-and-files.md)
