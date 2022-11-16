---
title: What is Microsoft 365 Defender role-based access control (RBAC)
description: Manage permissions and access to Microsoft 365 Defender Security portal experiences using role-based access control (RBAC)
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: 
ms.topic:
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer: 
search.appverid: met150
---

# What is Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Microsoft 365 Defender provides integrated threat protection, detection, and response across endpoints, email, identities, applications, and data within a single portal. Managing a user's permission to view data and complete tasks is vital to keep your organization secure.

The Microsoft 365 Defender role-based access control (RBAC) model provides a single permissions management experience that provides one central location for administrators to give users permission to view data and complete tasks across different security solutions.

## Solutions supported in the Microsoft 365 Defender RBAC model

| Solution| Description |
|:-------|:-----|:-------|
|Microsoft Defender for Endpoint | Full support for all endpoint data and actions. All roles are compatible with the device group's scope as defined on the device groups page. |
| Microsoft Defender for Office 365 | Support for all scenarios that were controlled by <strong>Exchange Online Protection roles</strong> (EOP), configured in the Office 365 Security &amp; Compliance Center (protection.office.com)|
| Microsoft for Identity | Full support for all identity data and actions. Note that Defender for Identity experiences will also adhere to permissions granted from portal.cloudapsecurity.com. [Learn more](https://go.microsoft.com/fwlink/?linkid=2202729)|

>[!Note]
> Scenarios controlled by **Exchange Online** roles (EXO) are not changed and will still be managed in [https://admin.exchange.microsoft.com](https://admin.exchange.microsoft.com/).

>[!Note]
> This offering isn't currently for available for Microsoft Defender for CloudApps

The Microsoft 365 Defender RBAC model enables easy migration of existing roles from the individual supported RBAC models listed above.

All permissions listed within the Microsoft 365 Defender RBAC model align to each of the roles in the individual RBAC models to ensure backward compatibility. For more information on how the permissions in the Microsoft 365 Defender RBAC model align with individual RBAC permissions, see [Compare permissions in Microsoft 365 Defender role-based access control (RBAC)](compare-rbac-roles.md)

It's important that you become familiar with and understand the different permissions that are available and what the impact is of granting access to your users once you activate it.

## Pre-requisites

This section provides details on the steps you should take  before using Microsoft 365 Defender RBAC.

### Permissions

For initial access to the permissions and roles area in Microsoft 365 Defender portal you need to be a global administrator or security administrator in Azure Active Directory. Once you are on the permissions page you can add a custom role that will grant access to create and manage roles and permissions without the need of Azure Active Directory global roles.  

The Microsoft 365 Defender RBAC model enables creating flexible and granular roles, granting as narrow privileges as needed. It enables replacing the use, for most experiences, of Azure Active Directory global roles (i.e. Global Admin, Security Admin). However, Microsoft 365 Defender security portal will continue to respect Azure Active Directory global roles side by side while activating Microsoft 365 Defender RBAC model with some or all of your workloads.

### Opt-in mode

Microsoft 365 Defender RBAC is available in an “opt-in” mode. This means Microsoft 365 Defender will continue to respect the existing RBAC models until you activate the new RBAC model per workload. For more information about activating Microsoft 365 Defender RBAC, see [Active Microsoft 365 Defender RBAC](activate-defender-rbac.md)

## Next steps

- Create custom roles
- Map existing RBAC roles to Microsoft 365 Defender RBAC roles
- Import existing RBAC roles
