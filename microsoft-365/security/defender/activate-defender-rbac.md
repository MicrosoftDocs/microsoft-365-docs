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

[!include[Prerelease information](../../includes/prerelease.md)]

For the Microsoft 365 Defender security portal to start enforcing the permissions and assignments configured in your new or imported roles, you need to activate the Microsoft 365 Defender RBAC model.

>[!Note]
> When you activate the Microsoft 365 Defender RBAC model, any existing roles that you managed in Defender for Endpoint, Defender for Identity, or Defender for Office 365 (Exchange Online Protection), will no longer be active. All access to these workloads in the Microsoft 365 Defender portal will be controlled by the Microsoft 365 Defender RBAC model.

## Activate Microsoft 365 Defender RBAC

To active the Microsoft 365 Defender RBAC model:

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com) as global administrator or security administrator.
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.
4. Select **Workload settings**. This brings you to the Microsoft 365 Defender settings page which can also be accessed by navigating to **Settings** > **Microsoft 365 Defender** > **Permissions and roles**.

    :::image type="content" source="../../media/defender/m365-defender-rbac-activate-workloads.png" alt-text="Screenshot of the activate workloads page" lightbox="../../media/defender/m365-defender-rbac-activate-workloads.png":::

5. Select the workloads you want to activate.
6. Select **Activate** on the confirmation message.

>[!Note]
> For Defender for Office 365 customers, the Microsoft 365 Defender RBAC model does not impact the Office 365 Security & Compliance center (protection.office.com), or the Microsoft Compliance center (compliance.microsoft.com).

## Deactivate Microsoft 365 Defender RBAC

If needed, you can deactivate Microsoft 365 Defender RBAC and revert to the individual RBAC roles from Defender for Endpoint, Defender for Identity, and Defender for Office 365 (Exchange Online Protection).

To Deactivate the workload, repeat the steps above and select the workloads you want to deactivate. The status will be set to **Not Active**.

If you deactivate this workload, the roles created and edited within Microsoft 365 Defender RBAC won't be effective and you'll return to using the previous permissions model. This will remove any access that users assigned these roles have. You can reactivate by coming back to Workload settings.

## Next steps

- [Edit or delete roles](edit-delete-rbac-roles.md)