---
title: Import roles to Microsoft Defender XDR Unified role-based access control (RBAC)
description: Create custom Microsoft Defender XDR Security portal role-based access control (RBAC)
ms.service: defender-xdr
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
ms.date: 08/03/2023
ms.reviewer: 
search.appverid: met150
---

# Import roles to Microsoft Defender XDR Unified role-based access control (RBAC)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)
- [Microsoft Defender Vulnerability Management](https://go.microsoft.com/fwlink/?linkid=2229011)
- [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction)

<a name='import-roles-to-microsoft-365-defender-unified-rbac-from-individual-rbac-models'></a>

## Import roles to Microsoft Defender XDR Unified RBAC from individual RBAC models

You can import existing roles that are maintained as part of individual supported products in Microsoft Defender XDR (for example, Microsoft Defender for Endpoint) to the Microsoft Defender XDR Unified RBAC model.

Importing roles will migrate and maintain the roles with full parity in relation to their permissions and user assignments in the Microsoft Defender XDR Unified RBAC model.

> [!NOTE]
> Once roles are migrated, you can modify the imported roles and change the level of permissions as needed.

The following steps guide you on how to import roles into Microsoft Defender XDR Unified RBAC:

> [!IMPORTANT]
> You must be a Global Administrator or Security Administrator in Microsoft Entra ID, or have all the **Authorization** permissions assigned in Microsoft Defender XDR Unified RBAC to perform this task. For more information on permissions, see [Permission pre-requisites](../defender/manage-rbac.md#permissions-pre-requisites).

1. Sign in to the [Microsoft Defender portal](https://security.microsoft.com).
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft Defender XDR to get to the Permissions and roles page.
4. Select **Import role**.
5. Select the products you want to import roles from.

    :::image type="content" source="../../media/defender/m365-defender-import-workloads.png" alt-text="Screenshot of the import workloads page" lightbox="../../media/defender/m365-defender-import-workloads.png":::

6. Select **Next** to choose the roles to import. You can choose all roles or select specific roles from the list. You can always repeat the import action and import other roles at a later date.
7. Select a role name to review the permissions and assigned users or groups for a specific role.

> [!NOTE]
> If the role you want to import appears in the **Roles not eligible for import** list, it contains assignments for users or user groups that no longer exist in Entra ID. To import this role to Unified RBAC, remove the user or user group from the role in the original RBAC model. Select the role to view the list of users that still exist for that role to determine which user or group to remove.

8. Select the roles you want to import and select **Next**.
9. Select **Submit**.
10. Select **Done** on the confirmation page.

Now that you have imported your roles you will be able to [View and edit roles](edit-delete-rbac-roles.md) and activate the workloads.

For the Microsoft Defender XDR security portal to start enforcing the permissions and assignments configured in your new or imported roles, you'll need to activate the new Microsoft Defender XDR Unified RBAC model. For more information, see [Activate the workloads](activate-defender-rbac.md).

Imported roles appear in the **Permissions and roles** list together with any custom roles you might have created. All imported roles will be marked as **Imported** in the description. Once you edit an imported role it will no longer be marked as **Imported**.

> [!NOTE]
> You can import roles as frequently as required. After you edit an imported role, the changes will not affect the original role where it was imported from. This means you have the option to delete an imported role and re-import the original role, if required. If you import the same role twice you will create a duplicate role.

## Next steps

- [Activate Microsoft Defender XDR Unified RBAC](activate-defender-rbac.md)
- [Edit or delete roles](edit-delete-rbac-roles.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]

