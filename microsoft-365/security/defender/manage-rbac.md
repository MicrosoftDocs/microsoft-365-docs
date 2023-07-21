---
title: Microsoft 365 Defender role-based access control (RBAC)
description: Manage permissions and access to Microsoft 365 Defender Security portal experiences using role-based access control (RBAC)
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: 
ms.topic: overview
ms.subservice: mde
ms.date: 05/31/2023
ms.reviewer: 
search.appverid: met150
---

# Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

Microsoft 365 Defender provides integrated threat protection, detection, and response across endpoints, email, identities, applications, and data within a single portal. Controlling a user's permissions around their access to view data or complete tasks is essential for organizations to minimize the risks associated with unauthorized access.

The Microsoft 365 Defender role-based access control (RBAC) model provides a single permissions management experience that provides one central location for administrators to control user permissions across different security solutions.

## What's supported by the Microsoft 365 Defender RBAC model

Centralized permissions management is supported for the following solutions:

|Solution|Description|
|---|---|---|
|Microsoft 365 Defender|Centralized permissions management for Microsoft 365 Defender experiences.|
|Microsoft Defender for Endpoint|Full support for all endpoint data and actions. All roles are compatible with the device group's scope as defined on the device groups page.|
|Microsoft Defender for Office 365|Support for all scenarios that were controlled by **Exchange Online Protection roles** (EOP), configured in the Microsoft 365 Defender portal under **Permissions** \> **Email & collaboration roles**. </br></br> **Note:** Scenarios that adhere to Exchange Online roles are not impacted by this new model and will still be managed by Exchange Online. The Microsoft 365 Defender RBAC model will initially be available for organizations with Microsoft Defender for Office Plan 2 licenses only. This capability is not available to users on trial licenses.|
|Microsoft for Identity|Full support for all identity data and actions. </br></br> **Note:** Defender for Identity experiences will also adhere to permissions granted from [Microsoft Defender for Cloud Apps](https://security.microsoft.com/cloudapps/permissions/roles). For more information, see [Microsoft Defender for Identity role groups](https://go.microsoft.com/fwlink/?linkid=2202729).|

> [!NOTE]
> Scenarios and experiences controlled by Compliance permissions are still managed in the Microsoft Purview compliance portal.
>
> This offering isn't currently available for Microsoft Defender for CloudApps.

## Before you start

This section provides useful information on what you need to know before you start using Microsoft 365 Defender RBAC.

### Permissions pre-requisites

- You must be a Global Administrator or Security Administrator in Azure Active Directory to:

  - Gain initial access to [Permissions and roles](https://security.microsoft.com/mtp_roles) in the Microsoft 365 Defender portal.

  - Manage roles and permissions in Microsoft 365 Defender RBAC.

  - Create a custom role that can grant access to security groups or individual users to manage roles and permissions in Microsoft 365 Defender RBAC. This will remove the need for Azure Active Directory global roles to manage permissions. To do this you need assign the **Authorization** permission in Microsoft 365 Defender RBAC. For details on how to assign the Authorization permission, see [Create a role to access and manage roles and permissions](../defender/create-custom-rbac-roles.md#create-a-role-to-access-and-manage-roles-and-permissions).

- The Microsoft 365 Defender security solution will continue to respect existing Azure Active Directory global roles when you activate the Microsoft 365 Defender RBAC model for some or all of your workloads i.e. Global Admins will retain assigned admin privileges.

### Migration of existing roles and permissions

The new Microsoft 365 Defender RBAC model provides easy migration of the existing permissions in the individual supported RBAC models to the new RBAC model.

All permissions listed within the Microsoft 365 Defender RBAC model align to permissions in the individual RBAC models to ensure backward compatibility. For more information on how the permissions align, see [Map permissions in Microsoft 365 Defender role-based access control (RBAC)](compare-rbac-roles.md).

### Activation of the Microsoft 365 Defender RBAC model

You must activate the workloads in Microsoft 365 Defender to use the Microsoft 365 Defender RBAC model. Until activated, Microsoft 365 Defender will continue to respect the existing RBAC models. For more information, see [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md).

When you activate some or all of your workloads to use the new permission model, the roles and permissions for these workloads will be fully controlled by the Microsoft 365 Defender RBAC model in the Microsoft 365 Defender portal.

## Start using Microsoft 365 Defender RBAC model

Use the following steps as a guide to start using the Microsoft 365 Defender RBAC model:

1. **Get started with creating custom roles and importing roles from existing RBAC role models**
    - [Create custom roles](create-custom-rbac-roles.md)
    - [Import existing RBAC roles](import-rbac-roles.md)
    - [View, edit and delete RBAC roles](edit-delete-rbac-roles.md)

2. **Activate and manage your roles with the Microsoft 365 Defender RBAC model**
   - [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)

3. **Learn more about the Microsoft 365 Defender RBAC model**
   - [Microsoft 365 Defender RBAC permissions](custom-permissions-details.md)
   - [Map existing RBAC roles to Microsoft 365 Defender RBAC roles](compare-rbac-roles.md)

Watch the following video to see the steps above in action:

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RW12hyh]
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
