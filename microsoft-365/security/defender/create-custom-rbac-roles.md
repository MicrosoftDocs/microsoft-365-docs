---
title: Create custom roles with Microsoft 365 Defender role-based access control (RBAC)
description: Create custom roles in Microsoft 365 Defender Security portal role-based access control (RBAC)
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

# Create custom roles with Microsoft 365 Defender RBAC

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?LinkID=2198108)
- [Microsoft Defender for Office 365 P2](https://go.microsoft.com/fwlink/?LinkID=2158212)

[!include[Prerelease information](../../includes/prerelease.md)]

## Create a custom role

The following steps guide you on how to create custom roles in Microsoft 365 Defender RBAC.

> [!IMPORTANT]
> You must be a Global Administrator or Security Administrator in Azure Active Directory, or have all the **Authorization** permissions assigned in Microsoft 365 Defender RBAC to perform this task. For more information on permissions, see [Permission pre-requisites](../defender/manage-rbac.md#permissions-pre-requisites).

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com).
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.
4. Select **Create custom role**.
5. Enter the Role name and description.
6. Select **Next** to choose the permissions you want to assign. Permissions are organized in three different categories:

   :::image type="content" source="../../media/defender/m365-defender-rbac-permissions1.png" alt-text="Screenshot of the permissions screen" lightbox="../../media/defender/m365-defender-rbac-permissions1.png":::

7. Select a permission category (for example, Security operations), and then review the permissions available. You can choose to assign the following different levels of permissions:
    - Select all read-only permissions – Users will be assigned with all the read-only permissions in this category.
    - Select all read and manage permissions – Users will be assigned all permissions in this category (read and manage permissions).
    - Select custom permissions – Users will be assigned the custom permissions selected.

   :::image type="content" source="../../media/defender/m365-defender-rbac-permissions-secops-flyout.png" alt-text="Screenshot of the permissions flyout screen" lightbox="../../media/defender/m365-defender-rbac-permissions-secops-flyout.png":::

    For more information on the RBAC custom permissions, see [About RBAC custom permissions](custom-permissions-details.md).

    > [!NOTE]
    > If all read-only or all read and manage permissions are assigned, any new permissions added to this category in the future will be automatically assigned under this role.
    >
    > If you have assigned custom permissions and new permissions are added to this category, you will need to re-assign your roles with the new permissions if needed.

8. Once you have selected your permissions, select **Apply** and then **Next** to assign users and data sources.
9. Select **Add assignments** and Enter the Assignment name.
10. Under **data sources**, choose if the assigned users will have the selected permissions across all the available products, or only for specific data sources:

     :::image type="content" source="../../media/defender/m365-defender-rbac-assignments.png" alt-text="Screenshot of the assignments screen" lightbox="../../media/defender/m365-defender-rbac-assignments.png":::

    If a user selects all read-only permissions for a single data source, for example, Microsoft Defender for Endpoint, they will not be able to read alerts for Microsoft Defender for Office 365 or Microsoft Defender for Identity.

    > [!NOTE]
    > By selecting **Choose all data sources** all supported data sources within Microsoft 365 Defender RBAC and any future data sources that are added will be automatically assigned to this assignment.

11. In **Assigned users and groups** choose the Azure Active Directory security groups or individual users to assign the role to, and select **Add**.

    > [!NOTE]
    > In Microsoft 365 Defender RBAC, you can create as many assignments as needed under the same role with same permissions. For example, you can have an assignment within a role that has access to all data sources and then a separate assignment for a team that only needs access to Endpoint alerts from the Defender for Endpoint data source. This enables maintaining the minimum number of roles.

12. Select **Next** to review and finish creating the role and then select **Submit**.

## Create a role to access and manage roles and permissions

To access and manage roles and permissions, without being a Global Administrator or Security Administrator in Azure Active Directory, you need to create a role with **Authorization** permissions. To create this role:

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com) as Global Administrator or Security Administrator.
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender.
4. Select **Create custom role**.
5. Enter the Role name and description.
6. Select **Next** and choose the **Authorization and settings** option.
7. On the Authorization and settings category flyout, choose **Select custom permissions** and under **Authorization** select either:
    - Select all permissions - users will be able to create and manage roles and permissions.
    - Read-only - uses will be able to access and view roles and permissions in a read-only mode.

    :::image type="content" source="../../media/defender/m365-defender-rbac-authorization-role.png" alt-text="Screenshot of the Permissions and roles page" lightbox="../../media/defender/m365-defender-rbac-authorization-role.png":::

8. Select **Apply** and then **Next** to assign users and data sources.
9. Select **Add assignments** and enter the Assignment name.
10. To choose the **data sources** users assigned the Authorization permission will have access to:

    - Select **Choose all data sources** to grant users permissions to create new roles and manage roles for all data sources.
    - Select **Select specific data sources** to grant users permissions to create new roles and manage roles for a specific data source. For example, select Microsoft Defender for Endpoint from the dropdown to grant users the Authorization permission for the Microsoft Defender for Endpoint data source only.

11. In **Assigned users and groups** – choose the Azure Active Directory security groups or individual users to assign the role to, and select **Add**.
12. Select **Next** to review and finish creating the role and then select **Submit**.

> [!NOTE]
> For the Microsoft 365 Defender security portal to start enforcing the permissions and assignments configured in your new or imported roles, you'll need to activate the new Microsoft 365 Defender RBAC model. For more information, see [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md).

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
