---
title: Create custom roles in Microsoft 365 Defender role-based access control (RBAC)
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
ms.topic:
ms.subservice: mde
ms.date: 11/10/2022
ms.reviewer: 
search.appverid: met150
---

# Create Microsoft 365 Defender RBAC custom roles

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Pre-requisite

- You need to be a global administrator or security administrator in Azure Active Directory to gain initial access to [Permissions and roles](https://security.microsoft.com/mtp_roles) in the Microsoft 365 Defender portal.
- To manage custom and built in roles you must have the “Authorization” manage permission granted in Microsoft 365 Defender RBAC. For details on how to assign the Authorization permission, see [Create a role to manage custom and built in roles](#create-a-role-to-manage-custom-and-built-in-roles)

## Create a custom role

The following steps guide you on how to create custom roles in Microsoft 365 Defender RBAC. It assumes that you already have the **Authorization** manage permission assigned in Microsoft 365 Defender RBAC.

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com) as user with the **Authorization** manage permission assigned.
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.
4. Select **Create custom role**.
5. Enter the Role name and description.
6. Select **Next** to choose the permissions you want to assign. Permissions are organized in three different groups:

   :::image type="content" source="../../media/defender/m365-defender-rbac-permissions.png" alt-text="Screenshot of the permissions screen" lightbox="../../media/defender/m365-defender-rbac-permissions.png":::

7. Select a permission group (for example, Security posture), and then review the permissions available. You can choose to assign the following different levels of permissions:
    - Select all read-only permissions – assigns all permissions included in this group as read-only.
    - Select all read and manage permissions – assigns all permissions included in this group as read-only and manage.
    - Choose custom permissions – assign the role with specific permissions.

    >[!Note]
    > If all read-only or all read and manage permissions are assigned, any new permissions added to this group in the future will be automatically assigned the same permissions.
    >
    > If you have assigned custom permissions and new permissions are added to this group, you will need to re-assign your roles with the new permissions as needed.

8. Once you have selected your permissions, select **Apply** > **Next** to assign users and data sources.
9. Select **Add assignments** and Enter the Assignment name.
10. Under **data sources**, choose if the assigned users will have the selected permissions across all the available products, or only to specific products:

     :::image type="content" source="../../media/defender/m365-defender-rbac-assignments.png" alt-text="Screenshot of the assignments screen" lightbox="../../media/defender/m365-defender-rbac-assignments.png":::

    >[!Note]
    > By choosing the all data sources option in the data source drop down list, all supported data sources within Microsoft 365 Defender RBAC and any future data sources that will be added to Microsoft 365 Defender RBAC will be automatically assigned to this role.  

11. In **Assigned users and groups** – select to assign the role to either Azure AD user groups or individual users in your organization and select **Add**.

    >[!Note]
    > In Microsoft 365 Defender RBAC, you can create as many assignments as needed under the same role with same permissions. For example, you can have an assignment within a role that has access to all data sources and then a separate assignment for a team that only needs access to Endpoint alerts from the Defender for Endpoint data source. This enables maintaining the minimum number of roles.

12. Select **Next** to review and finish creating the role and then select **Submit**.

## Create a role to manage custom and built in roles

To create a role  with **Authorization** permissions that can manage custom and built in roles:

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com) as global administrator or security administrator.
2. In the navigation pane, select **Permissions**
3. Select **Roles** under Microsoft 365 Defender
4. Select **Create custom role**

   :::image type="content" source="../../media/defender/m365-defender-rbac-custom-role.png" alt-text="Screenshot of the Permissions and roles page" lightbox="../../media/defender/m365-defender-rbac-custom-role.png":::

5. Enter the Role name and description
6. Select **Next** and choose the **Configuration** option

    :::image type="content" source="../../media/defender/m365-defender-rbac-authorization-role.png" alt-text="Screenshot of the Permissions and roles page" lightbox="../../media/defender/m365-defender-rbac-authorization-role.png":::

7. On the Configuration flyout, **Select custom permissions** and under **Authorization** choose **Select all permissions**
8. Select **Apply** > **Next** to assign this role to users and user group in your organization
9. Select **Add assignments**.

## Next steps

- [Import existing RBAC roles](import-rbac-roles.md)
- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
