---
title: Microsoft Defender XDR Unified role-based access control (RBAC)
description: Manage permissions and access to Microsoft Defender XDR Security portal experiences using unified role-based access control (RBAC)
ms.service: defender-xdr
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
ms.date: 1/16/2024
ms.reviewer: 
search.appverid: met150
---

# Microsoft Defender XDR Unified role-based access control (RBAC)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)
- [Microsoft Defender Vulnerability Management](https://go.microsoft.com/fwlink/?linkid=2229011)
- [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction)

Microsoft Defender XDR provides integrated threat protection, detection, and response across endpoints, email, identities, applications, and data within a single portal. Controlling a user's permissions around their access to view data or complete tasks is essential for organizations to minimize the risks associated with unauthorized access.

The Microsoft Defender XDR Unified role-based access control (RBAC) model provides a single permissions management experience that provides one central location for administrators to control user permissions across different security solutions.

<a name='whats-supported-by-the-microsoft-365-defender-unified-rbac-model'></a>

## What's supported by the Microsoft Defender XDR Unified RBAC model

Centralized permissions management is supported for the following solutions:

|Solution|Description|
|---|---|
|Microsoft Defender XDR|Centralized permissions management for Microsoft Defender XDR experiences.|
|Microsoft Defender for Endpoint|Full support for all endpoint data and actions. All roles are compatible with the device group's scope as defined on the device groups page.|
|Microsoft Defender Vulnerability Management|Centralized permissions management for all  Defender Vulnerability Management capabilities.|
|Microsoft Defender for Office 365|Full support for all data and actions scenarios that are controlled by [Email & Collaboration roles](../office-365-security/mdo-portal-permissions.md) and scenarios controlled by [Exchange Online permissions](/exchange/permissions-exo/permissions-exo). </br></br> **Note:** <ul><li>The Microsoft Defender XDR RBAC model is initially available for organizations with Microsoft Defender for Office 365 Plan 2 licenses only. This capability isn't available to users on trial licenses.</li><li>Granular delegated admin privileges (GDAP) isn't supported.</li><li>Cmdlets in Exchange Online PowerShell and Security & Compliance PowerShell continue to use the old RBAC models and aren't affected by Microsoft Defender XDR Unified RBAC.</ul><li>Azure B2B invited guests aren't supported by Defender XDR RBAC, for experiences that were previously under EXO RBAC.
|Microsoft Defender for Identity|Full support for all identity data and actions. </br></br> **Note:** Defender for Identity experiences will also adhere to permissions granted from [Microsoft Defender for Cloud Apps](https://security.microsoft.com/cloudapps/permissions/roles). For more information, see [Microsoft Defender for Identity role groups](https://go.microsoft.com/fwlink/?linkid=2202729).|
|Microsoft Defender for Cloud|Support access management for all Defender for Cloud data that is available in Microsoft Defender portal.|
|Microsoft Secure Score|Full support for all Secure Score data from the [Products included in Secure Score](../defender/microsoft-secure-score.md#products-included-in-secure-score).|

> [!NOTE]
> Scenarios and experiences controlled by Compliance permissions are still managed in the Microsoft Purview compliance portal.
>
> This offering isn't currently available for Microsoft Defender for CloudApps.

## Before you start

This section provides useful information on what you need to know before you start using Microsoft Defender XDR Unified RBAC.

### Permissions pre-requisites

- You must be a Global Administrator or Security Administrator in Microsoft Entra ID to:
  - Gain initial access to [Permissions and roles](https://security.microsoft.com/mtp_roles) in the Microsoft Defender portal.

  - Manage roles and permissions in Microsoft Defender XDR Unified RBAC.

  - Create a custom role that can grant access to security groups or individual users to manage roles and permissions in Microsoft Defender XDR unified RBAC. This will remove the need for Microsoft Entra global roles to manage permissions. To do this you need assign the **Authorization** permission in Microsoft Defender XDR Unified RBAC. For details on how to assign the Authorization permission, see [Create a role to access and manage roles and permissions](../defender/create-custom-rbac-roles.md#create-a-role-to-access-and-manage-roles-and-permissions).

- The Microsoft Defender XDR security solution will continue to respect existing Microsoft Entra global roles when you activate the Microsoft Defender XDR Unified RBAC model for some or all of your workloads i.e. Global Admins will retain assigned admin privileges.

### Migration of existing roles and permissions

The new Microsoft Defender XDR Unified RBAC model provides easy migration of the existing permissions in the individual supported unified RBAC models to the new RBAC model.

All permissions listed within the Microsoft Defender XDR Unified RBAC model align to permissions in the individual RBAC models to ensure backward compatibility. For more information on how the permissions align, see [Map permissions in Microsoft Defender XDR unified role-based access control (RBAC)](compare-rbac-roles.md).

<a name='activation-of-the-microsoft-365-defender-unified-rbac-model'></a>

### Activation of the Microsoft Defender XDR Unified RBAC model

You must activate the workloads in Microsoft Defender XDR to use the Microsoft Defender XDR Unified RBAC model. Until activated, Microsoft Defender XDR will continue to respect the existing RBAC models. For more information, see [Activate Microsoft Defender XDR Unified RBAC](activate-defender-rbac.md).

When you activate some or all of your workloads to use the new permission model, the roles and permissions for these workloads will be fully controlled by the Microsoft Defender XDR Unified RBAC model in the Microsoft Defender portal.

<a name='start-using-microsoft-365-defender-unified-rbac-model'></a>

## Start using Microsoft Defender XDR Unified RBAC model

Use the following steps as a guide to start using the Microsoft Defender XDR Unified RBAC model:

1. **Get started with creating custom roles and importing roles from existing RBAC role models**
    - [Create custom roles](create-custom-rbac-roles.md)
    - [Import existing RBAC roles](import-rbac-roles.md)
    - [View, edit and delete RBAC roles](edit-delete-rbac-roles.md)

2. **Activate and manage your roles with the Microsoft Defender XDR Unified RBAC model**
   - [Activate Microsoft Defender XDR Unified RBAC](activate-defender-rbac.md)

3. **Learn more about the Microsoft Defender XDR Unified RBAC model**
   - [Microsoft Defender XDR Unified RBAC permissions](custom-permissions-details.md)
   - [Map existing RBAC roles to Microsoft Defender XDR Unified RBAC roles](compare-rbac-roles.md)

Watch the following video to see the steps above in action:

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RW12hyh]

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
