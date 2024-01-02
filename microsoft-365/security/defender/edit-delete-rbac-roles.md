---
title: Edit or delete roles Microsoft Defender XDR Unified role-based access control (RBAC)
description: Edit or delete roles in Microsoft Defender XDR Security portal experiences using role-based access control (RBAC)
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

# Edit, delete and export roles in Microsoft Defender XDR Unified role-based access control (RBAC)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)
- [Microsoft Defender Vulnerability Management](https://go.microsoft.com/fwlink/?linkid=2229011)
- [Microsoft Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction)

In Microsoft Defender XDR Unified role-based access control (RBAC), you can edit and delete custom roles or roles that were imported from Defender for Endpoint, Defender for Identity, or Defender for Office 365.

## Edit roles

The following steps guide you on how to edit roles in Microsoft Defender XDR Unified RBAC:

> [!IMPORTANT]
> You must be a Global Administrator or Security Administrator in Microsoft Entra ID, or have all the **Authorization** permissions assigned in Microsoft Defender XDR Unified RBAC to perform this task. For more information on permissions, see [Permission pre-requisites](../defender/manage-rbac.md#permissions-pre-requisites).

1. Sign in to the [Microsoft Defender portal](https://security.microsoft.com) as global administrator or security administrator.
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft Defender XDR to get to the Permissions and roles page.
4. Select the role you want to edit. You can only edit one role at a time.
5. Once selected, this opens a flyout pane where you can edit the role:

    :::image type="content" source="../../media/defender/m365-defender-rbac-edit-roles.png" alt-text="Screenshot of the edit roles flyout page" lightbox="../../media/defender/m365-defender-rbac-edit-roles.png":::

> [!NOTE]
> After editing an imported role, the changes made in Microsoft Defender XDR Unified RBAC will not be reflected back in the individual product RBAC model.

## Delete roles

To delete roles in Microsoft Defender XDR Unified RBAC, select the role or roles you want to delete and select **Delete roles**.

If the workload is active, by removing the role all assigned user permission will be deleted.

> [!NOTE]
> After deleting an imported role, the role won't be deleted from the individual product RBAC model. If needed, you can re-import it to the Microsoft Defender XDR Unified RBAC list of roles.

## Export roles

The Export feature enables you to export the following roles data:

- Role name
- Role description
- Permissions included in the role
- The assignment name
- The assigned data sources
- The assigned users or user groups

When a role has multiple assignments, each assignment will be represented as a separate row in the CSV file.

The CSV also includes a snapshot of the Unified RBAC activation status for each workload available on the tenant.

The following steps guide you on how to export roles in Microsoft Defender XDR Unified RBAC:

>[!Note]
>To export roles, you must be a Global Administrator or Security Administrator in Microsoft Entra ID, or have the **Authorization (manage)** permission assigned for all data sources in Microsoft Defender XDR Unified RBAC and have at least one workload activated for Unified RBAC.
>
>For more information on permissions, see [Permission pre-requisites](../defender/manage-rbac.md#permissions-pre-requisites).

1. Sign in to the [Microsoft Defender portal](https://security.microsoft.com) with the required roles or permissions.
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft Defender XDR to get to the Permissions and roles page.
4. Select the **Export** button.

    :::image type="content" source="../../media/defender/m365-defender-rbac-export-roles.png" alt-text="Screenshot of the export roles page" lightbox="../../media/defender/m365-defender-rbac-export-roles.png":::

A CSV file containing all the roles data will be generated and downloaded to the local machine.

## Next steps

- [Learn about RBAC permissions](custom-permissions-details.md)
- [Map existing RBAC roles to Microsoft Defender XDR Unified RBAC roles](compare-rbac-roles.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
