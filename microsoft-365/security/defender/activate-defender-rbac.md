---
title: Activate Microsoft 365 Defender role-based access control (RBAC)
description: Activate Microsoft 365 Defender Security role-based access control (RBAC)
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

# Activate Microsoft 365 Defender Security role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

For the Microsoft 365 Defender security portal to start enforcing the permissions and assignments configured in your new [custom roles](create-custom-rbac-roles.md) or [imported roles](import-rbac-roles.md) you must activate the Microsoft 365 Defender RBAC model for some or all of your workloads.

## Pre-requisites

- You need to be a Global Administrator or Security Administrator in Azure Active Directory to:

  - gain initial access to [Permissions and roles](https://security.microsoft.com/mtp_roles) in the Microsoft 365 Defender portal.
  - manage roles and permissions in Microsoft 365 Defender RBAC.

- To access and manage roles and permissions, without being a Global Administrator or Security Administrator in Azure Active Directory, you need to have the **Authorization** permission granted in Microsoft 365 Defender RBAC. For details on how to assign the Authorization permission, see [Create a role to access and manage roles and permissions](../defender/create-custom-rbac-roles.md#create-a-role-to-access-and-manage-roles-and-permissions).

## Activate Microsoft 365 Defender RBAC

To active the Microsoft 365 Defender RBAC model:

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com).
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.
4. Select **Workload settings**. This brings you to the Microsoft 365 Defender settings page which can also be accessed by navigating to **Settings** > **Microsoft 365 Defender** > **Permissions and roles**.

    :::image type="content" source="../../media/defender/m365-defender-rbac-activate-workloads.png" alt-text="Screenshot of the activate workloads page" lightbox="../../media/defender/m365-defender-rbac-activate-workloads.png":::

5. Select the workloads you want to activate.
6. Select **Activate** on the confirmation message.

>[!Note]
> When you activate the Microsoft 365 Defender RBAC model, any existing roles that you managed in Defender for Endpoint, Defender for Identity, or Defender for Office 365 (Exchange Online Protection), will no longer be active. All access to these workloads in the Microsoft 365 Defender portal will be controlled by the Microsoft 365 Defender RBAC model.

>[!Note]
> For Defender for Office 365 customers, the Microsoft 365 Defender RBAC model does not impact the Office 365 Security & Compliance center (protection.office.com), or the Microsoft Compliance center (compliance.microsoft.com).

## Deactivate Microsoft 365 Defender RBAC

You can deactivate Microsoft 365 Defender RBAC and revert to the individual RBAC models from Defender for Endpoint, Defender for Identity, and Defender for Office 365 (Exchange Online Protection).

To Deactivate the workloads, repeat the steps above and select the workloads you want to deactivate. The status will be set to **Not Active**.

If you deactivate a workload, the roles created and edited within Microsoft 365 Defender RBAC won't be effective and you'll return to using the previous permissions model. This will remove any access that users assigned these roles have.

## Next steps

- [Edit or delete roles](edit-delete-rbac-roles.md)
