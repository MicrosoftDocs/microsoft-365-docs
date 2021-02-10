---
title: Manage access to Microsoft 365 Defender data in the Microsoft 365 security center
description: Learn how to manage permissions to data in Microsoft 365 Defender
keywords: access, permissions, MTP, Microsoft Threat Protection, M365, security, MCAS, MDATP, Cloud App Security, Microsoft Defender Advanced Threat Protection, scope, scoping, RBAC
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: lomayor
author: lomayor
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Manage access to Microsoft 365 Defender with Azure Active Directory global roles

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

There are two ways to manage access to Microsoft 365 Defender
- **Global Azure Active Directory (AD) roles**
- **Custom role access**

Accounts assigned the following **Global Azure Active Directory (AD) roles** can access Microsoft 365 Defender functionality and data:
- Global administrator
- Security administrator
- Security Operator
- Global Reader
- Security Reader

To review accounts with these roles, [view Permissions in the Microsoft 365 security center](https://security.microsoft.com/permissions).

**Custom role** access is a new capability in Microsoft 365 Defender and allows you to manage access to specific data, tasks, and capabilities in Microsoft Defender 365. Custom roles offer more control than global Azure AD roles, providing users only the access they need with the least-permissive roles necessary.  Custom roles can be created in addition to global Azure AD roles. [Learn more about custom roles](custom-roles.md).

> ![NOTE]
> This article applies only to managing global Azure Active Directory roles. For more information about using custom role-based access control, see [Custom roles for role-based access control](custom-roles.md)

## Access to functionality
Access to specific functionality is determined by your [Azure AD role](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). Contact a global administrator if you need access to specific functionality that requires you or your user group be assigned a new role.

### Approve pending automated tasks
[Automated investigation and remediation](mtp-autoir-actions.md) can take action on emails, forwarding rules, files, persistence mechanisms, and other artifacts found during investigations. To approve or reject pending actions that require explicit approval, you must have certain roles assigned in Microsoft 365. To learn more, see [Action center permissions](mtp-action-center.md#required-permissions-for-action-center-tasks).

## Access to data
Access to Microsoft 365 Defender data can be controlled using the scope assigned to user groups in Microsoft Defender for Endpoint role-based access control (RBAC). If your access has not been scoped to a specific set of devices in the Defender for Endpoint, you will have full access to data in Microsoft 365 Defender. However, once your account is scoped, you will only see data about the devices in your scope.

For example, if you belong to only one user group with a Microsoft Defender for Endpoint role and that user group has been given access to sales devices only, you will see only data about sales devices in Microsoft 365 Defender. [Learn more about RBAC settings in Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac)

### Microsoft Cloud App Security access controls
During the preview, Microsoft 365 Defender does not enforce access controls based on  Cloud App Security settings. Access to Microsoft 365 Defender data is not affected by these settings.

## Related topics
- [Custom roles in role-based access control for Microsoft 365 Defender](custom-roles.md)
- [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles)
- [Microsoft Defender for Endpoint RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac)
- [Cloud App Security roles](https://docs.microsoft.com/cloud-app-security/manage-admins)
