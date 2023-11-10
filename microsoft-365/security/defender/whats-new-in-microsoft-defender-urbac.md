---
title: What's new in Microsoft 365 Defender Unified role-based access control (RBAC)
description: See what features are available in the latest release of Microsoft 365 Defender Unified role-based access control (RBAC)
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - tier2
ms.topic: conceptual
ms.date: 11/8/2023
---

# What's new in Microsoft 365 Defender Unified role-based access control (RBAC)

This article provides information about new features and important product updates for the latest release of Microsoft 365 Defender Unified role-based access control (RBAC).

[!include[Prerelease information](../../includes/prerelease.md)]

## October 2023

### Exchange Online permission management for Microsoft Defender for Office 365 is now supported in Microsoft 365 Defender Unified role-based access control (RBAC) providing full integration of Defender for Office 365 roles and permissions

Microsoft 365 Defender Unified Role-Based Access Control (RBAC) model now supports all security permission management scenarios for Microsoft Defender for Office 365.

In addition to the existing support for scenarios that are controlled by Email & collaboration roles (configured in the Microsoft 365 Defender portal at <https://security.microsoft.com/emailandcollabpermissions>), Microsoft 365 Defender Unified RBAC now also supports the management of protection-related Exchange Online permissions, which could previously only be managed in the Exchange admin center (EAC) at <https://admin.exchange.microsoft.com/#/adminRoles>. To learn more about the Exchange Online permissions that are now supported, see [Exchange Online permissions mapping](compare-rbac-roles.md#exchange-online-permissions-mapping).

## September 2023

### Export roles for Microsoft 365 Defender Unified role-based access control (RBAC)

Now you can easily export your existing roles in Unified RBAC to a CSV file. The exported file will include details such as the role name, the included permissions, the assigned users or user groups, and assigned data sources. When a role has multiple assignments, each assignment will be listed on a separate row in the CSV file. The CSV also includes a snapshot of the Unified RBAC activation status for each workload available on the tenant. For more information, see [Edit, delete and export roles](./edit-delete-rbac-roles.md#export-roles).

## August 2023

### Detection tuning and Security settings permissions

You can now assign a new granular permission called **Detection tuning (manage)** in Microsoft Defender 365 Unified RBAC. Granting the **Detection Tuning (manage)** permission allows security operations analysts to create and manage Custom Detection, Alerts Tuning, and Threat Indicators of Compromise rules without granting them the full **Security Settings (manage)** permission. </br> </br> You can add the new permissions to a custom role by selecting **Authorization and settings \ Security settings** when creating or updating the role. For more information, see [Create custom roles with Microsoft 365 Defender Unified RBAC](./create-custom-rbac-roles.md).

The **Security settings** permission name has been updated to **Core security settings**. This change has no impact on existing roles and permissions.

### Microsoft Defender Vulnerability Management permissions are now integrated with Microsoft 365 Defender Unified role-based access control (RBAC)

You can now control access and grant granular permissions for Microsoft Defender Vulnerability Management as part of the Microsoft 365 Defender Unified RBAC model. For more information, see [Microsoft Defender 365 Unified role-based access control (RBAC)](../defender/manage-rbac.md). You can add the new permissions to a custom role by selecting them from the **Security posture** permissions group when creating the role. For more information, see [Create custom roles with Microsoft 365 Defender Unified RBAC](./create-custom-rbac-roles.md).

### Microsoft Secure Score permissions integration with Microsoft 365 Defender Unified role-based access control (RBAC) is now in Public Preview

You can control access and grant granular permissions for the Microsoft Secure Score experience as part of the Microsoft 365 Defender Unified RBAC model. For more information, see [Manage permissions with Microsoft 365 Defender Unified role-based access control(RBAC)](./microsoft-secure-score.md#manage-permissions-with-microsoft-365-defender-unified-role-based-access-controlrbac).

### A new file collection permission in Microsoft 365 Defender Unified RBAC is now in Public Preview

You can now assign a new granular permission in Microsoft 365 Defender Unified RBAC that allows users to collect or download files for analysis. This permission enables Microsoft Defender for Endpoint users download files directly from the file page and during a live response investigation in the live response console. You can add the new permission to a custom role by selecting it from the **Security operations** permissions group when creating the role. For more information, see [Create custom roles with Microsoft 365 Defender Unified RBAC](./create-custom-rbac-roles.md).

For more information on what's new with other Microsoft Defender security products, see:

- [What's new in Microsoft Defender Vulnerability Management](../defender-vulnerability-management/whats-new-in-microsoft-defender-vulnerability-management.md)
- [What's new in Microsoft Defender for Endpoint](../defender-endpoint/whats-new-in-microsoft-defender-endpoint.md)
- [What's new in Microsoft 365 Defender](../defender/whats-new.md)
- [What's new in Microsoft Defender for Office 365](../office-365-security/defender-for-office-365-whats-new.md)
- [What's new in Microsoft Defender for Identity](/defender-for-identity/whats-new)
- [What's new in Microsoft Defender for Cloud Apps](/cloud-app-security/release-notes)



