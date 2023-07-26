---
title: Edit or delete roles Microsoft 365 Defender role-based access control (RBAC)
description: Edit or delete roles in Microsoft 365 Defender Security portal experiences using role-based access control (RBAC)
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
ms.topic: how-to
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer: 
search.appverid: met150
---

# Edit or delete roles in Microsoft 365 Defender role-based access control (RBAC)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

In Microsoft 365 Defender role-based access control (RBAC), you can edit and delete custom roles or roles that were imported from Defender for Endpoint, Defender for Identity, or Defender for Office 365.

## Edit roles

The following steps guide you on how to edit roles in Microsoft 365 Defender RBAC:

> [!IMPORTANT]
> You must be a Global Administrator or Security Administrator in Azure Active Directory, or have all the **Authorization** permissions assigned in Microsoft 365 Defender RBAC to perform this task. For more information on permissions, see [Permission pre-requisites](../defender/manage-rbac.md#permissions-pre-requisites).

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com) as global administrator or security administrator.
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.
4. Select the role you want to edit. You can only edit one role at a time.
5. Select the **Edit** button or select **Edit** from the action menu next to the role name. This opens a flyout pane where you can edit the role:

    :::image type="content" source="../../media/defender/m365-defender-rbac-edit-roles.png" alt-text="Screenshot of the activate workloads page" lightbox="../../media/defender/m365-defender-rbac-edit-roles.png":::

> [!NOTE]
> After editing an imported role, the changes made in Microsoft 365 Defender RBAC will not be reflected back in the individual product RBAC model.

## Delete Roles

To delete roles in Microsoft 365 Defender RBAC, select the role or roles you want to delete and select **Delete roles**.

If the workload is active, by removing the role all assigned user permission will be deleted.

> [!NOTE]
> After deleting an imported role, the role won't be deleted from the individual product RBAC model. If needed, you can re-import it to the Microsoft 365 Defender RBAC list of roles.

## Next steps

- [Learn about RBAC permissions](custom-permissions-details.md)
- [Map existing RBAC roles to Microsoft 365 Defender RBAC roles](compare-rbac-roles.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
