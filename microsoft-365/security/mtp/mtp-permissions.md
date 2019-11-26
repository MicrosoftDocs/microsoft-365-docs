---
title: Manage access to Microsoft Threat Protection data in Microsoft 365 security center
description: Learn how to manage permissions to data in Microsoft Threat Protection 
keywords: access, permissions, MTP, Microsoft Threat Protection, M365, security, MCAS, MDATP, Cloud App Security, Microsoft Defender Advanced Threat Protection, scope, scoping, RBAC
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Manage access to Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

Accounts assigned the following Azure Active Directory or Office 365 roles have full access to all available Microsoft Threat Protection functionality and data:
- Global administrator
- Security administrator

All other accounts, however, must be given access through the role-based access control (RBAC) settings in various integrated services.
 
## Access to functionality
Access to functionality is determined by your [Azure Active Directory or Office 365 role](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). Contact a global administrator if you need access to specific functionality that requires you or your user group be assigned a new role.

## Access to data
Access to Microsoft Threat Protection data is based on the scope assigned to you or your user group in Microsoft Defender ATP and Microsoft Cloud App Security.

### Tenants with Microsoft Defender ATP
If your tenant has Microsoft Defender ATP, your access to data in Microsoft Threat Protection is determined by the your account's scope in Microsoft Defender ATP. For example, if you belong to only one user group with a Microsoft Defender ATP role and that user group has been given access to sales devices only, you will see only data about sales devices in Microsoft Threat Protection. [Learn more about RBAC settings in Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac)

### Tenants with Microsoft Cloud App Security
Scoping settings in Cloud App Security determine whether you have access to all data or no data in Microsoft Threat Protection:

- **Full access to data** — scoping settings do not apply to your role, or scoping has been turned on
- **No access to data** — scoping settings apply to your role and scoping has been turned off

If both Microsoft Defender ATP and Cloud App Security settings apply to your account, the most restrictive settings will apply. This means that if Cloud App Security scoping settings determine that you don't have access to data, you will not be able to access even data from machines you  can access in Microsoft Defender ATP. At the same time, even if you have full access to data based on Cloud App Security settings, your access will be restricted by the scope defined in the Microsoft Defender ATP RBAC.

## Related topics

- [Azure AD roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles)
- [Microsoft Defender ATP RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac)
- [Cloud App Security roles](https://docs.microsoft.com/cloud-app-security/manage-admins)
