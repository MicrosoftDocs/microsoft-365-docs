---
title: Import roles (migrate) to Microsoft 365 Defender RBAC 
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

# Import roles (migrate) to Microsoft 365 Defender RBAC 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Import roles to Microsoft 365 Defender RBAC from individual RBAC models

You can import existing roles that are maintained as part of the individual products (for example, Microsoft Defender for Endpoint) to the Microsoft 365 Defender RBAC model.

Importing roles will migrate existing data (permissions, assignments) and will maintain full parity with the Microsoft 365 Defender RBAC model.

>[!Note]
> The Microsoft 365 Defender RBAC model is more granular than the individual RBAC models. Once roles migrated, you will be able modifying imported roles and change level of permissions as needed.

The following steps guide you on how to import roles into Microsoft 365 Defender RBAC.

1. Sign in to the [Microsoft 365 Defender portal](https://security.microsoft.com) as global administrator or security administrator.
2. In the navigation pane, select **Permissions**.
3. Select **Roles** under Microsoft 365 Defender to get to the Permissions and roles page.
4. Select **Import role**.

    :::image type="content" source="../../media/defender/m365-defender-import-workloads.png.png" alt-text="Screenshot of the import workloads page page" lightbox="../../media/defender/m365-defender-import-workloads.png":::

5. Select the products you want to import roles from.
6. Select **Next**. to choose the roles to import. You can choose all roles or select a few roles from the list. You can always repeat the import action and to import other roles at a later date.
7. Review the roles you want to import and select **Submit**.
8. A confirmation message appears and at this point you select **Done**.  

Now that you have imported your roles you will be able to [View and edit roles](edit-delete-rbac-roles.md) and Activate the workloads.

For the Microsoft 365 Defender security portal to start enforcing the permissions and assignments configured in your new or imported roles, you’ll need to activate the new Microsoft 365 Defender RBAC model. For more information, see [Activate the workloads](activate-defender-rbac.md).

Imported roles appear in the **Permissions and roles** list together with any custom roles you might have created. All imported roles will be marked as **Imported** in the description. Once you edit a imported role it will no longer be marked as **Imported**.

>[!Note]
> You can import roles as frequently as required. After you edit an imported role, the changes will not affect the original role where it was imported from. This means you have the option to delete an imported role and re-import the original role, if required. If you import the same role twice you will create a duplicate role.

## Next steps

- [Activate Microsoft 365 Defender RBAC](activate-defender-rbac.md)
- [Edit or delete roles](edit-delete-rbac-roles.md)
