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

# Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

Microsoft 365 Defender provides integrated threat protection, detection, and response across endpoints, email, identities, applications, and data within a single portal. Controlling a user's permissions around their access to view data or complete tasks is essential for organizations to minimize the risks associated with unauthorized access.

The Microsoft 365 Defender role-based access control (RBAC) model provides a single permissions management experience that provides one central location for administrators to control user permissions across different security solutions.

## What's supported by the Microsoft 365 Defender RBAC model

Centralized permissions management is supported for the following solutions:

| Solution| Description |
|:-------|:-----|:-------|
|Microsoft Defender for Endpoint | Full support for all endpoint data and actions. All roles are compatible with the device group's scope as defined on the device groups page. |
| Microsoft Defender for Office 365 | Support for all scenarios that were controlled by <strong>Exchange Online Protection roles</strong> (EOP), configured in the Office 365 Security &amp; Compliance Center (protection.office.com)|
| Microsoft for Identity | Full support for all identity data and actions.

>[!Note]
> Scenarios that adhere to Exchange Online roles are not impacted by this new model and will still be managed by Exchange Online. The Microsoft 365 Defender RBAC model will initially be available for organizations with Microsoft Defender for Office Plan 2 licenses.

>[!Note]
> This offering isn't currently for available for Microsoft Defender for CloudApps

## Before you start

This section provides useful information as well as details on accounts you need before you start using Microsoft 365 Defender RBAC.

### Permissions pre-requisites

You need to be a global administrator or security administrator in Azure Active Directory to gain initial access to [Permissions and roles](https://security.microsoft.com/mtp_roles) in the Microsoft 365 Defender portal.

Once you have navigated to this page, you can create a custom role that can manage custom and built in roles. This will remove the need for Azure Active Directory global roles to manage permissions.

The Microsoft 365 Defender security portal will continue to respect existing Azure Active Directory global roles when you activate the Microsoft 365 Defender RBAC model for some or all of your workloads i.e. Global Admins will retain assigned admin privileges.

### Migration of existing permissions

The new Microsoft 365 Defender RBAC model provides easy migration of the existing permissions in the individual supported RBAC models to the new RBAC model.

All permissions listed within the Microsoft 365 Defender RBAC model align to permissions in the individual RBAC models to ensure backward compatibility. For more information on how the permissions align, see [Compare permissions in Microsoft 365 Defender role-based access control (RBAC)](compare-rbac-roles.md).

### Opt-in mode

The new Microsoft 365 Defender RBAC model gives you the flexibility to create more granular roles where appropriate, using a principle of least privilege and granting users only the privileges they need. It's important to understand the different permissions available in the Microsoft 365 Defender RBAC model and what their impact is when the model is activated.

Microsoft 365 Defender RBAC is available in an “opt-in” mode. This means Microsoft 365 Defender will continue to respect the existing RBAC models until you activate the new RBAC model per workload. For more information about activating Microsoft 365 Defender RBAC, see [Active Microsoft 365 Defender RBAC](activate-defender-rbac.md).

## Start using Microsoft 365 Defender RBAC model

Use the following steps as a guide to start using the Microsoft 365 Defender RBAC model:

1. **Get started with creating custom roles**
    - [Create custom roles](create-custom-rbac-roles.md)
    - [Learn about RBAC permissions](custom-permissions-details.md)

2. **Learn about importing roles from existing RBAC role models**
    - [Compare existing RBAC roles to Microsoft 365 Defender RBAC roles](compare-rbac-roles.md)
    - [Import existing RBAC roles](import-rbac-roles.md)

3. **Activate and manage your roles with the Microsoft 365 Defender RBAC model**
   - [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
   - [View, edit and delete rbac roles](edit-delete-rbac-roles.md)
