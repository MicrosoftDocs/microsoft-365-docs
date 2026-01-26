---
title: Assign admin roles in the Microsoft 365 admin center
description: Learn how to assign administrator roles to a user or multiple users in your organization so that they can perform specific tasks in the Microsoft 365 admin center.
customer intent: As an admin, I want to assign specific roles to users so that they can perform designated tasks in the Microsoft 365 admin center.
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.date: 01/06/2026
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-security
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_TOC
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

A Microsoft 365 subscription comes with a set of administrator roles that you can assign to users in your organization by using the [Microsoft 365 admin center](https://admin.microsoft.com). Each administrator role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers. For more information, see [About administrator roles](about-admin-roles.md).

> [!IMPORTANT]
> If you're the one who purchased your organization's Microsoft 365 for business subscription, you're the [Global Administrator](/entra/identity/role-based-access-control/permissions-reference#global-administrator) by default. This role gives you unlimited control over the products in your subscriptions and access to most data. The Global Administrator role is a highly privileged role. As a best practice, make sure to limit the number of people in your organization who have the Global Administrator role assigned.

When you add new users, if you don't assign them an administrator role, they're assigned a user role. Users don't have administrator privileges to any of the Microsoft admin centers. Remember also to [assign licenses](../manage/assign-licenses-to-users.md) when you add new users.

If you need help with administrative tasks, you can assign an administrator role to a trusted user. In keeping with [best practices](/entra/identity/role-based-access-control/best-practices), assign the role that's needed to complete specific tasks. For example, if you need someone to help reset user passwords, assign them the [Password Administrator role](/entra/identity/role-based-access-control/permissions-reference#password-administrator) and not the Global Administrator role. 

You can assign users to a role in two different ways in the Microsoft 365 admin center:

- Go to the user's details and select **Manage roles** to assign a role to the user.
- Go to **Roles**, select the role, and then add multiple users to it.

## Overview to add an administrator

The following video shows how to add another administrator in the Microsoft 365 admin center. It's one minute and 13 seconds long.

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=a36dde8d-891d-422f-bb4d-7301df75fe4a]

> [!TIP]
> If you found this video helpful, check out the [complete training series for small businesses and customers new to Microsoft 365](https://www.youtube.com/channel/UCBcPPMQmVe5O3on4v5VKrYA) on YouTube.

## Add an administrator

When you sign up for Microsoft 365 for business for your organization, you're automatically a Global Administrator. You can assign other administrator roles as well.

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), select **Users** > **Active users**. (Or, go directly to the [Active users page](https://admin.cloud.microsoft/?#/users).)

1. Choose the user you want to make an administrator, then select **Manage roles**.

1. Select the administrator access you want the user to have and select **Save changes**. For recommendations about least privileged roles, see [Least privileged roles by task in Microsoft Entra ID](/entra/identity/role-based-access-control/delegate-by-task).

### Assign administrator roles to users using Roles

1. In the [Microsoft 365 admin center](https://admin.microsoft.com), go to **Roles** > **Role assignments**. (Or go directly to the [Role assignments page](https://admin.cloud.microsoft/?#/rbac/directory).) 

   To view the administrator roles available for your organization, choose the **Microsoft Entra ID**, **Exchange**, **Intune**, or **Billing** tab. The specific tabs you see depend on your organization's Microsoft 365 subscription.

1. Select the administrator role that you want to assign the user to. (See [Least privileged roles by task in Microsoft Entra ID](/entra/identity/role-based-access-control/delegate-by-task).)

1. On the Assigned tab, select **Add users** or **Add groups**.

1. Type the user's **display name** or **username**, then select the user from the list of suggestions.

1. Add multiple users until you're done.

1. Select **Add**, and the user or users are added to the list of assigned administrators.

### Assign a user to an administrator role from Active users

::: moniker range="o365-worldwide"

1. In the admin center, go to **Users** > **Active users**. (Or, go directly to the [Active users page](https://admin.cloud.microsoft/?#/users).)

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to **Users** > **Active users**. (Or, go directly to the [Active users page](https://portal.partner.microsoftonline.cn/AdminPortal/Home?ref=users).)

::: moniker-end

2. On **Active users**, select the user whose administrator role you want to change. In the flyout pane, under **Roles**, select **Manage roles**.

3. Select the administrator role that you want to assign to the user. If you don't see the role you're looking for, select **Show all** at the bottom of the list. (See [Least privileged roles by task in Microsoft Entra ID](/entra/identity/role-based-access-control/delegate-by-task).)

## Assign administrator roles to multiple users

If you know PowerShell, see [Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md). It's ideal for assigning roles to hundreds of users.
  
Use the following instructions to assign roles to tens of users.

## Export, search, and filter

You can export the administrator list and search and filter by role.

:::image type="content" source="../../media/export-search-filter-roles.jpg" alt-text="Screenshot: Export your list of administrator roles, search for roles and filter by role ":::

- Use **Export admin list** to get a full list of all the administrator users in your organization. The list is stored in an Excel .csv file.

- Use **Search** to search for an administrator role and see your users who are assigned to that role.

- Use **Filter** to change your view of displayed administrator roles.

## Check administrator roles in your organization

You might not have the correct permissions to assign administrator roles to other users. Check to make sure you have the correct permissions or ask another administrator to assign roles for you.

You can check administrator role permissions in two different ways:

- Go to the user's details and look under **Roles** on the **Account** page.
- Go to **Roles**, select the administrator role, and select assigned administrators to see which users are assigned.

## Compare roles

You can now compare permissions for up to three roles at a time so you can find the least permissive role to assign.

In the admin center:

- Select up to three roles and choose **Compare roles** to see the permissions each role has.

:::image type="content" source="../../media/compare-roles-list.png" alt-text="A figure that shows a comparison of administrator roles.":::

## Related content

- [About Microsoft 365 administrator roles](about-admin-roles.md)
- [Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference)
- [Least privileged roles by task in Microsoft Entra ID](/entra/identity/role-based-access-control/delegate-by-task)
- [Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md)
- [Add, change, or remove partner relationships](../misc/add-partner.md)
- [Assign or unassign licenses for users in the Microsoft 365 admin center](../manage/assign-licenses-to-users.md)
