---
title: "Assign admin roles the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom:
- MSStore_Link
- okr_smb
- TRN_M365B
- OKR_SMB_Videos
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: eac4d046-1afd-4f1a-85fc-8219c79e1504
description: "Learn how to assign administrator roles to a user or multiple users in your business so that they can perform specific tasks in the admin center."
---

# Assign admin roles

If you're the person who purchased your Microsoft business subscription, you are the global admin. This means you have unlimited control over the products in your subscriptions and you can access most data.

For more information, see [About admin roles](about-admin-roles.md).

When you add new users, if you don't assign them an admin role then they are in the *user role* and don't have admin privileges to any of the Microsoft admin centers. But if you need help getting things done, you can assign an admin role to a user. For example, if you need someone to help reset passwords, you shouldn't assign them the global admin role, you should assign them the password admin role. Having too many global admins, with unlimited access to your data and online business, is a security risk.

## Watch: Add an admin.<br><br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE1FOfO] 

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](../../business-video/index.yml).

## Assign admin roles 

::: moniker range="o365-worldwide"

You can assign users to a role in 2 different ways:

- You can go to the user's details and **Manage roles** to assign a role to the user.
- Or you can go to **Roles** and select the role, and then add multiple users to it.

### Assign admin roles to users using Roles

1. In the admin center, go to **Roles**. Choose the **Azure AD** or **Intune** tabs to view the admin roles available for your organization.
2. Select the admin role that you want to assign the user to.
3. Select **Assigned admins** > **Add**.
4. Type the user's **display name** or **username**, and then select the user from the list of suggestions.
5. Add multiple users until you're done.
6. Select **Save**, and then the user will be added to the list of assigned admins.

### Assign a user to an admin role from Active users

1. In the admin center, go to **Users** > [Active users](https://go.microsoft.com/fwlink/p/?linkid=834822) page.

2. On the **Active users** page, select the user whose admin role you want to change. In the flyout pane, under **Roles**, select **Manage roles**.

3. Select the admin role that you want to assign to the user. If you don't see the role you're looking for, select **Show all** at the bottom of the list.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. On the **Active users** page, select the user whose admin role you want to change. In the flyout pane, next to **Roles**, select **Edit**. 

    If you don't see the **Edit** option, then you don't have a permission to edit and can't assign admin roles to other people. Ask a global admin in your business to assign roles for you. In a small business, the business owner (the person who purchased your subscription) is a global admin. In a large business, key people in the IT department are global admins.

3. Select **Customized administrator** to see a list of roles we've customized for you. For a description of each role, see [About admin roles.](about-admin-roles.md)

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. On the **Active users** page, select the user whose admin role you want to change. In the flyout pane, next to **Roles**, select **Edit**.

    If you don't see the **Edit** option, then you don't have a permission to edit and can't assign admin roles to other people. Ask a global admin in your business to assign roles for you. In a small business, the business owner (the person who purchased your subscription) is a global admin. In a large business, key people in the IT department are global admins.

3. Select **Customized administrator** to see a list of roles we've customized for you. For a description of each role, see [About admin roles.](about-admin-roles.md)

::: moniker-end

## Assign admin roles to multiple users

If you know PowerShell, see [Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md). It's ideal for assigning roles to hundreds of users.
  
Use the following instructions to assign roles to tens of users.

::: moniker range="o365-worldwide"

## Check admin roles in your organization

You might not have the correct permissions to assign admin roles to other users. Check to make sure you have the correct permissions or ask another admin to assign roles for you.

You can check admin role permissions in 2 different ways:

- You can go to the user's details and look under **Roles** on the **Account** page.
- Or you can go to **Roles** and select the admin role, and select assigned admins to see which users are assigned.

::: moniker-end

## Related articles

[About Microsoft 365 admin roles](about-admin-roles.md)

[Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles)

[Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md)

[Authorize or remove partner relationships](../misc/add-partner.md)