---
title: Go to the Action center to view and approve your automated investigation and remediation tasks
description: Use the Action Center to view details about automated investigation and approve pending actions
keywords: Action Center, threat protection, investigation, alert, pending, automated, detection
search.appverid: met150
ms.prod: M365-security-compliance
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: conceptual
ms.custom: autoir
---

# Go to the Action center to view remediation actions

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

## A "single pane of glass" experience

![Action Center](../../media/air-actioncenter.png)

Use the Action center to see the results of current and past investigations across your organization's devices and mailboxes. Depending on the type of threat and [resulting verdict](mtp-autoir-results.md#remediation-actions-following-automated-investigation), remediation actions occur automatically or upon approval by your organization’s security operations team. All remediation actions, whether they are pending approval or were already approved, are consolidated in the Action center. 

The Action center provides a "single pane of glass" experience for tasks, such as:
- Approving pending remediation actions;
- Viewing an audit log of already approved remediation actions; and
- Reviewing completed remediation actions.

Your security operations team can operate more effectively and efficiently, because the Action center provides a comprehensive view of Microsoft Threat Protection at work.

## Remediation actions

The following table lists remediation actions that are currently supported in the Action center: 

|Endpoints remediation actions  |Email remediation actions  |
|---------|---------|
|Quarantine file<br/>Remove registry key<br/>Kill process <br/>Stop service <br/>Remove registry key <br/>Disable driver <br/>Remove scheduled task      |Soft delete email messages or clusters<br/>Block URL (time-of-click)<br/>Turn off external mail forwarding          |

## Go to the Action center

1. Go to [https://security.microsoft.com](https://security.microsoft.com) and sign in. 

2. In the navigation pane, choose **Action center**. 

3. In the Action center, you’ll see two tabs: **Pending** and **History**.

    - The **Pending** tab lists investigations that require review and approval by someone in your security operations team to continue. Make sure to review and take action on pending items you see here.

    - The **History** tab lists past investigations and remediation actions that were taken automatically. You can view data for the past day, week, month, or six months.

4. To show only the columns you want to see, select **Customize columns**.<br/>![Action Center in Microsoft Threat Protection](../../media/mtp-action-center.png)

5. Select an item in the list to view more details about an investigation. The investigation details view opens.<br/>![Investigation details](../../media/mtp-air-investdetails.png)

    - If the investigation pertains to email content (such as, the entity is a mailbox), investigation details open in the Office 365 Security & Compliance Center ([https://protection.office.com/threatinvestigation](https://protection.office.com/threatinvestigation)). 

    - If the investigation involves a device, investigation details open in the security center ([https://security.microsoft.com](https://security.microsoft.com)). 


> [!TIP]
> If you think something was missed or wrongly detected by automated investigation and response features in Microsoft Threat Protection, let us know! See [How to report false positives/negatives in automated investigation and response (AIR) capabilities in Microsoft Threat Protection](mtp-autoir-report-false-positives-negatives.md).

## Required permissions for Action center tasks

To approve or reject pending actions in the Action center, you must have permissions assigned as listed in the following table:

|Remediation action |Required roles and permissions |
|--|----|
|Microsoft Defender ATP remediation (devices) |**Security Administrator** role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>--- or ---<br/>**Active remediation actions** role assigned in Microsoft Defender ATP <br/> <br/> To learn more, see the following resources: <br/>- [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)<br/>- [Create and manage roles for role-based access control (Microsoft Defender ATP)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles)  |
|Office 365 ATP remediation (Office content and email)  |**Security Administrator** role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>--- and --- <br/>**Search and Purge** role assigned the Office 365 Security & Compliance Center ([https://protection.office.com](https://protection.office.com)) <br/><br/>**IMPORTANT**: If you have the Security Administrator role assigned only in the Office 365 Security & Compliance Center, you will not be able to access the Action center or Microsoft Threat Protection capabilities. You must have the Security Administrator role assigned in Azure Active Directory or the Microsoft 365 admin center. <br/><br/>To learn more, see the following resources: <br/>- [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)<br/>- [Permissions in the Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center) |

> [!NOTE]
> Users who have the **Global Administrator** role assigned in Azure Active Directory can approve or reject any pending action in the Action center. However, as a best practice, your organization should limit the number of people who have the Global Administrator role assigned. We recommend using the **Security Administrator**, **Active remediation actions**, and **Search and Purge** roles listed above for Action center permissions.

## Next steps 

- [Learn more about incidents in Microsoft Threat Protection](incidents-overview.md)
- [View the results of an automated investigation](mtp-autoir-results.md)
- [Learn about hunting in Microsoft Threat Protection](advanced-hunting-overview.md)

