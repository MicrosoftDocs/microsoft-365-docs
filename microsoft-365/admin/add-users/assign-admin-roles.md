---
title: "Assign admin roles the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 06/25/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
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
description: "Learn how to assign administrator roles to a user or multiple users in your business so that they can perform specific tasks in the admin center."
---

# Assign admin roles in the Microsoft 365 admin center

A Microsoft 365 subscription comes with a set of admin roles that you can assign to users in your organization using the Microsoft 365 admin center. Each admin role maps to common business functions and gives people in your organization permissions to do specific tasks in the admin centers. For more information, see [About admin roles](about-admin-roles.md).

> [!IMPORTANT]
> If you're the person who purchased your Microsoft business subscription, you are the global admin. This means you have unlimited control over the products in your subscriptions and you can access most data.

When you add new users, if you don't assign them an admin role then they are in the *user role* and don't have admin privileges to any of the Microsoft admin centers. But if you need help getting things done, you can assign an admin role to a user. For example, if you need someone to help reset passwords, you shouldn't assign them the global admin role, you should assign them the password admin role. Having too many global admins, with unlimited access to your data and online business, is a security risk.

To help keep your organization secure, Microsoft recommends that you use roles with the minimum level of permissions needed to perform a job. Global administrator is a highly privileged role that should be limited to scenarios where you can't use a less-privileged role.

You can assign users to a role in two different ways:

- You can go to the user's details and **Manage roles** to assign a role to the user.
- Or you can go to **Roles** and select the role, and then add multiple users to it.

## Watch: Add an admin

Check out this video and others on our [YouTube channel](https://go.microsoft.com/fwlink/?linkid=2198030).

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=a36dde8d-891d-422f-bb4d-7301df75fe4a]

If you found this video helpful, check out the [complete training series for small businesses and those new to Microsoft 365](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

## Steps: Add an admin

1. When you sign up for Microsoft 365 Business, you automatically become a global admin. To help manage the business, you can make other people admins as well.
1. In the Microsoft 365 admin center, select **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">**Active users**</a>.
1. Choose the user you want to make an admin, and then select **Manage roles**.
1. Select the admin access you want the user to have and select **Save changes**.

### Assign admin roles to users using Roles

1. In the admin center, go to <a href="https://go.microsoft.com/fwlink/p/?linkid=2097861" target="_blank"> **Roles** -> **Role assignments**</a>. Choose the **Microsoft Entra ID**, **Exchange**, **Intune** or **Billing** tab to view the admin roles available for your organization.

    > [!NOTE]
    > You might not see all the tabs depending on your Microsoft 365 subscription.

1. Select the admin role that you want to assign the user to.
1. On the Assigned tab, select **Add users** or **Add groups**.
1. Type the user's **display name** or **username**, and then select the user from the list of suggestions.
1. Add multiple users until you're done.
1. Select **Add**, and the user or users will be added to the list of assigned admins.

### Assign a user to an admin role from Active users

::: moniker range="o365-worldwide"

1. In the admin center, go to **Users** > [Active users](https://go.microsoft.com/fwlink/p/?linkid=834822) page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** > <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. On the **Active users** page, select the user whose admin role you want to change. In the flyout pane, under **Roles**, select **Manage roles**.

3. Select the admin role that you want to assign to the user. If you don't see the role you're looking for, select **Show all** at the bottom of the list.

## Assign admin roles to multiple users

If you know PowerShell, see [Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md). It's ideal for assigning roles to hundreds of users.
  
Use the following instructions to assign roles to tens of users.

## Export, search and filter

You can export the admin list as well as search and filter by role.

:::image type="content" source="../../media/export-search-filter-roles.jpg" alt-text="Screenshot: Export your list of admin roles, search for roles and filter by role ":::

- Use Export admin list to get a full list of all the admin users in your organization. The list is stored in an Excel .csv file.

- Use Search to search for an admin role and see your users who are assigned to that role.

- Use Filter to change your view of displayed admin roles.

## Check admin roles in your organization

You might not have the correct permissions to assign admin roles to other users. Check to make sure you have the correct permissions or ask another admin to assign roles for you.

You can check admin role permissions in 2 different ways:

- You can go to the user's details and look under **Roles** on the **Account** page.
- Or you can go to **Roles** and select the admin role, and select assigned admins to see which users are assigned.

## Compare roles

You can now compare permissions for up to 3 roles at a time so you can find the least permissive role to assign.

In the admin center:

- Select up to 3 roles and choose **Compare roles** to see the permissions each role has.

![A figure that shows a comparison of admin roles.](../../media/compare-roles-list.png)

## Related content

[About Microsoft 365 admin roles](about-admin-roles.md) (article)\
[Microsoft Entra built-in roles](/azure/active-directory/roles/permissions-reference) (article)\
[Assign roles to user accounts with PowerShell](../../enterprise/assign-roles-to-user-accounts-with-microsoft-365-powershell.md) (article)\
[Add, change, or remove partner relationships](../misc/add-partner.md) (article)
