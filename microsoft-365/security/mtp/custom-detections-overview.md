---
title: Overview of custom detections in Microsoft Threat Protection
description: Understand how you can use advanced hunting to create custom detections and generate alerts
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, custom detections, schema, kusto, microsoft 365, Microsoft Threat Protection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Custom detections overview

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured endpoints. This is made possible by customizable detection rules that automatically trigger alerts as well as response actions.

Custom detections work with [advanced hunting](advanced-hunting-overview.md), which provides a powerful, flexible query language that covers a broad set of event and system information from your network. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

Custom detections provide:
- Alerts for rule-based detections built from advanced hunting queries
- Automatic response actions

## Required permissions for managing custom detections [STUB - TBD]

To create or manage custom detections, you need certain permissions as described in the following table:

| Task |Required roles or permissions |
|----|----|
| Create or modify detection rules |**Security Administrator** role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>--- or ---<br/>**Active remediation actions** role assigned in Microsoft Defender ATP <br/> <br/> To learn more, see the following resources: <br/>- [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)<br/>- [Create and manage roles for role-based access control (Microsoft Defender ATP)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles)  |
| View existing rules and details | **Security Administrator** role assigned in either Azure Active Directory ([https://portal.azure.com](https://portal.azure.com)) or the Microsoft 365 admin center ([https://admin.microsoft.com](https://admin.microsoft.com))<br/>--- and --- <br/>**Search and Purge** role assigned the Office 365 Security & Compliance Center ([https://protection.office.com](https://protection.office.com)) <br/><br/>**IMPORTANT**: If you have the Security Administrator role assigned only in the Office 365 Security & Compliance Center, you will not be able to access the Action center or Microsoft Threat Protection capabilities. You must have the Security Administrator role assigned in Azure Active Directory or the Microsoft 365 admin center. <br/><br/>To learn more, see the following resources: <br/>- [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)<br/>- [Permissions in the Office 365 Security & Compliance Center](https://docs.microsoft.com/microsoft-365/security/office-365-security/permissions-in-the-security-and-compliance-center) |

>[!NOTE]
>To create or manage custom detection rules, [your role](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group) needs to have the **manage security settings** permission.

## Related topic
- [Create and manage custom detection rules](custom-detection-rules.md)
- [Advanced hunting overview](advanced-hunting-overview.md)