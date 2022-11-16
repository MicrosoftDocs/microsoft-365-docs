---
title: Manage permissions with Microsoft 365 Defender role-based access control (RBAC)
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

# Manage permissions with Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Microsoft 365 Defender provides integrated threat protection, detection, and response across endpoints, email, identities, applications, and data within a single portal. Managing a user's permission to view data and complete tasks is vital to keep your organization secure.

The Microsoft 365 Defender role-based access control (RBAC) model provides a single permissions management experience that provides one central location for administrators to give users permission to view data and complete tasks across different security solutions.

## Solutions supported in the Microsoft 365 Defender RBAC model

| Solution| Description | Status |
|:-------|:-----|:-------|
|Microsoft Defender for Endpoint | Full support for all endpoint data and actions. All roles are compatible with the device group's scope as defined on the device groups page. | Public preview |
| Microsoft Defender for Office 365 | Support for all scenarios that were controlled by <strong>Exchange Online Protection roles</strong> (EOP), configured in the Office 365 Security &amp; Compliance Center (protection.office.com)| Public preview|
| Microsoft for Identity | Full support for all identity data and actions. Note that Defender for Identity experiences will also adhere to permissions granted from portal.cloudapsecurity.com. [Learn more](https://go.microsoft.com/fwlink/?linkid=2202729)| Public preview|
| Microsoft for CloudApps |Not supported| On the roadmap |

>[!Note]
> Scenarios controlled by **Exchange Online** roles (EXO) are not changed and will still be managed in [https://admin.exchange.microsoft.com](https://admin.exchange.microsoft.com/).

All permissions listed within the Microsoft 365 Defender RBAC model align with previous individual RBAC models and ensure backward compatibility. This product enables easy migration of existing roles from previous individual RBAC models.

Please refer to the tables presented in this document to view permissions mapping: [Map of individual RBAC permissions to the Microsoft 365 Defender RBAC permissions](#map-permissions-to-1)


## Before you begin

- **Opt-in mode** - Microsoft 365 Defender RBAC is available in an “opt-in” mode. That means no change is enforced on existing individual RBAC roles within your workloads. You can explore the new model, to create your new custom roles or to migrate existing roles and only when you are ready, you can explicitly activate any of your workloads to be enforced by Microsoft 365 Defender RBAC model. More information about activating Microsoft 365 Defender RBAC you can read here.

- Before using Microsoft 365 Defender RBAC, it's important that you read this document and understand the different permissions that can grant access to your users as the consequences of activating it.

- **First login** – At first access to Permissions and roles area in Microsoft 365 Defender portal, you must be granted with Global Administrator or Security Administrator global role in Azure Active Directory. This will enable you access and the ability to create custom roles. You can create a role that will grant access to create and manage roles and permissions without the need of Azure Active Directory global roles.  
More information about creating a role which will authorize users creating and managing roles and permissions you can read here.

- **Respecting Azure Active Directory global roles** - The Microsoft 365 Defender RBAC model enables creating flexible and granular roles, granting as narrow privileges as needed. It enables replacing the use, for most experiences, of Azure Active Directory global roles (i.e. Global Admin, Security Admin). However, Microsoft 365 Defender security portal will continue to respect Azure Active Directory global roles side by side while activating Microsoft 365 Defender RBAC model with some or all of your workloads.

## Next steps

- Create custom roles
- Map existing RBAC roles to Microsoft 365 Defender RBAC roles
- Import existing RBAC roles
