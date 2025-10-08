---
title: Assign admin roles in the Microsoft 365 admin center
description: Learn how to assign administrator roles to a user or multiple users in your organization so that they can perform specific tasks in the Microsoft 365 admin center.
#customer intent: As an admin, I want to assign specific roles to users so that they can perform designated tasks in the Microsoft 365 admin center.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 09/17/2025
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
- trust-pod
ms.custom:
- MSStore_Link
- okr_smb
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
- AdminTemplateSet
- adminvideo
---


# Assign admin roles in the Microsoft 365 admin center

A Microsoft 365 subscription comes with a set of admin roles that you can assign to users in your organization by using the Microsoft 365 admin center. Each admin role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers. For more information, see [About admin roles](about-admin-roles.md).

> [!IMPORTANT]
> If you purchase your Microsoft business subscription, you're the global admin. This role gives you unlimited control over the products in your subscriptions and access to most data.

When you add new users, if you don't assign them an admin role, they are in the *user role*. They don't have admin privileges to any of the Microsoft admin centers. To get help with administrative tasks, assign an admin role to a trusted user. For example, if you need someone to help reset passwords, don't assign them the global admin role. Assign them the password admin role. Having too many global admins, with unlimited access to your data and online business, is a security risk.

> [!IMPORTANT]
> Use roles with the fewest permissions. Lower permissioned accounts help improve security for your organization. Global Administrator is a highly privileged role. Limit its use to emergency scenarios when you can't use an existing role. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

You can assign users to a role in two different ways:

- Go to the user's details and select **Manage roles** to assign a role to the user.
- Go to **Roles**, select the role, and then add multiple users to it.

## Overview to add an admin

The following video shows how to add another admin in the Microsoft 365 admin center. It's one minute and 13 seconds long.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=a36dde8d-891d-422f-bb4d-7301df75fe4a]

> [!TIP]
> If you found this video helpful, check out the [complete training series for small businesses and customers new to Microsoft 365](https://www.youtube.com/channel/UCBcPPMQmVe5O3on4v5VKrYA) on YouTube.

## Add an admin

1. When you sign up for Microsoft 365 Business, you automatically become a global admin. To help manage the business, you can make other people admins as well.
1. In the Microsoft 365 admin center, select **Users** > **[Active users](https://admin.cloud.microsoft/?#/users)**.
1. Choose the user you want to make an admin, then select **Manage roles**.
1. Select the admin access you want the user to have and select **Save changes**.

### Assign admin roles to users using Roles

1. In the admin center, go to **Roles** -> **[Role assignments](https://admin.cloud.microsoft/?#/rbac/directory)**. To view the admin roles available for your organization, choose the **Microsoft Entra ID**, **Exchange**, **Intune**, or **Billing** tab.

    > [!NOTE]
    > You might not see all the tabs depending on your Microsoft 365 subscription.

1. Select the admin role that you want to assign the user to.
1. On the Assigned tab, select **Add users** or **Add groups**.
1. Type the user's **display name** or **username**, then select the user from the list of suggestions.
1. Add multiple users until you're done.
1. Select **Add**, and the user or users are added to the list of assigned admins.

### Assign a user to an admin role from Active users

::: moniker range="o365-worldwide"

1. In the admin center, go to **Users** > **[Active users](https://admin.cloud.microsoft/?#/users)**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to **Users** > **[Active users](https://portal.partner.microsoftonline.cn/AdminPortal/Home?ref=users)**.

::: moniker-end

1. On **Active users**, select the user whose admin role you want to change. In the flyout pane, under **Roles**, select **Manage roles**.

1. Select the admin role that you want to assign to the user. If you don't see the role you're looking for, select **Show all** at the bottom of the list.

## Assign admin roles to multiple users

If you know PowerShell, see [Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md). It's ideal for assigning roles to hundreds of users.
  
Use the following instructions to assign roles to tens of users.

## Export, search, and filter

You can export the admin list and search and filter by role.

:::image type="content" source="../../media/export-search-filter-roles.jpg" alt-text="Screenshot: Export your list of admin roles, search for roles and filter by role ":::

- Use **Export admin list** to get a full list of all the admin users in your organization. The list is stored in an Excel .csv file.

- Use **Search** to search for an admin role and see your users who are assigned to that role.

- Use **Filter** to change your view of displayed admin roles.

## Check admin roles in your organization

You might not have the correct permissions to assign admin roles to other users. Check to make sure you have the correct permissions or ask another admin to assign roles for you.

You can check admin role permissions in two different ways:

- Go to the user's details and look under **Roles** on the **Account** page.
- Go to **Roles**, select the admin role, and select assigned admins to see which users are assigned.

## Compare roles

You can now compare permissions for up to three roles at a time so you can find the least permissive role to assign.

In the admin center:

- Select up to three roles and choose **Compare roles** to see the permissions each role has.

:::image type="content" source="../../media/compare-roles-list.png" alt-text="A figure that shows a comparison of admin roles.":::

## Related content

- [About Microsoft 365 admin roles](about-admin-roles.md)
- [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference)
- [Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md)
- [Add, change, or remove partner relationships](../misc/add-partner.md)
