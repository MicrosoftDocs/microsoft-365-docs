---
title: Import roles to Microsoft 365 Defender RBAC
description: Create custom Microsoft 365 Defender Security portal role-based access control (RBAC)
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

# Import roles to Microsoft 365 Defender RBAC

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

## Import roles to Microsoft 365 Defender RBAC from individual RBAC models

You can import existing roles that are maintained as part of individual supported products in Microsoft 365 Defender (for example, Microsoft Defender for Endpoint) to the Microsoft 365 Defender RBAC model.

Importing roles will migrate and maintain the roles with full parity in relation to their permissions and user assignments in the Microsoft 365 Defender RBAC model.

> [!NOTE]
> Once roles are migrated, you can modify the imported roles and change the level of permissions as needed.

The following steps guide you on how to import roles into Microsoft 365 Defender RBAC:

> [!IMPORTANT]
> You must be a Global Administrator or Security Administrator in Azure Active Directory, or have all the **Authorization** permissions assigned in Microsoft 365 Defender RBAC to perform this task. For more information on permissions, see [Permission pre-requisites](../defender/manage-rbac.md#permissions-pre-requisites).

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com).
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.
4. Select **Import role**.
5. Select the products you want to import roles from.

    :::image type="content" source="../../media/defender/m365-defender-import-workloads.png" alt-text="Screenshot of the import workloads page" lightbox="../../media/defender/m365-defender-import-workloads.png":::

6. Select **Next** to choose the roles to import. You can choose all roles or select specific roles from the list. You can always repeat the import action and import other roles at a later date.
7. Review the roles you want to import and select **Submit**.
8. A confirmation message appears and at this point you select **Done**.

Now that you have imported your roles you will be able to [View and edit roles](edit-delete-rbac-roles.md) and activate the workloads.

For the Microsoft 365 Defender security portal to start enforcing the permissions and assignments configured in your new or imported roles, you'll need to activate the new Microsoft 365 Defender RBAC model. For more information, see [Activate the workloads](activate-defender-rbac.md).

Imported roles appear in the **Permissions and roles** list together with any custom roles you might have created. All imported roles will be marked as **Imported** in the description. Once you edit an imported role it will no longer be marked as **Imported**.

> [!NOTE]
> You can import roles as frequently as required. After you edit an imported role, the changes will not affect the original role where it was imported from. This means you have the option to delete an imported role and re-import the original role, if required. If you import the same role twice you will create a duplicate role.

## Next steps

- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
- [Edit or delete roles](edit-delete-rbac-roles.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
