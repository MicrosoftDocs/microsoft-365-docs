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
ms.date: 8/01/2023
---

# What's new in Microsoft 365 Defender Unified role-based access control (RBAC)

This article provides information about new features and important product updates for the latest release of Microsoft 365 Defender Unified role-based access control (RBAC).

## August 2023

### Export roles for Microsoft 365 Defender Unified role-based access control (RBAC)

Now you can easily export your existing roles in Unified RBAC to a CSV file. The exported file will include details such as the role name, the included permissions, the assigned users or user groups, and assigned data sources. When a role has multiple assignments, each assignment will be listed on a separate row in the CSV file. The CSV also includes a snapshot of the Unified RBAC activation status for each workload available on the tenant. For more information, see [Edit, delete and export roles](./edit-delete-rbac-roles.md#export-roles).

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
