---
title: "Unassign licenses from users"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_TOC
- commerce
ms.custom: 
- AdminSurgePortfolio
- manage_licenses
search.appverid:
- MET150
description: "Learn how to unassign licenses from user accounts."
ms.date: 07/01/2020
---

# Unassign licenses from users

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see 
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet).

::: moniker-end

::: moniker range="o365-worldwide"

You can unassign licenses from users on either the **Active users** page, or on the **Licenses** page. The method you use depends on whether you want to unassign product licenses from specific users or unassign users licenses from a specific product.

::: moniker-end

## Before you begin

- You must be a Global, License, User admin to unassign licenses. For more information, see [About Microsoft 365 admin roles](../add-users/about-admin-roles.md).
- You can [remove licenses from user accounts with Office 365 PowerShell](https://docs.microsoft.com/microsoft-365/enterprise/remove-licenses-from-user-accounts-with-microsoft-365-powershell).
- You can also [delete user accounts](../add-users/delete-a-user.md) that were assigned a license to make their license available to other users. When you delete a user account, their license is immediately available to assign to someone else.

::: moniker range="o365-worldwide"

## Use the Licenses page to unassign licenses

When you use the **Licenses** page to unassign licenses, you unassign licenses for a specific product for up to 20 users.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. Select the product for which you want to unassign licenses.
3. Select the users for which you want to unassign licenses.
4. Select **Unassign licenses**.
5. In the **Unassign licenses** box, select **Unassign**.

::: moniker-end

::: moniker range="o365-worldwide"

## Use the Active users page to unassign licenses

When you use the **Active users** page to unassign licenses, you unassign product licenses from users.

### Unassign licenses from one user
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the row of the user that you want to unassign a license for.
3. In the right pane, select **Licenses and Apps**.
4. Expand the **Licenses** section, clear the boxes for the licenses that you want to unassign, then select **Save changes**.

::: moniker-end

::: moniker range="o365-germany"

## Unassign licenses from one user

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.
2. Pick the user that you want to unassign the license for.
3. On the right, in the **Product licenses** row, select **Edit**.
4. In the **Product licenses** pane, switch the toggle to the **Off** position for the license you want to unassign for the user. For example, if you switch off the Office 365 Enterprise E3 license, it unassigns that license and all services under that license for that user.
5. At the bottom of the **Product licenses** pane, select **Save** \> **Close** \> **Close**.

::: moniker-end

::: moniker range="o365-21vianet"

## Unassign licenses from one user

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.
2. Pick the user that you want to unassign the license for.
3. On the right, in the **Product licenses** row, select **Edit**.
4. In the **Product licenses** pane, switch the toggle to the **Off** position for the license you want to unassign for the user. For example, if you switch off the Office 365 Enterprise E3 license, it unassigns that license and all services under that license for that user.
5. At the bottom of the **Product licenses** pane, select **Save** \> **Close** \> **Close**.

::: moniker-end

::: moniker range="o365-worldwide"
###  Unassign licenses from multiple users

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.
2. Select the circles next to the names of the users that you want to unassign licenses for.
3. At the top, select **More options (...)**, then select **Manage product licenses**.
4. In the **Manage product licenses** pane, select **Replace existing product license assignments** \> **Next**.
5. At the bottom of the **Replace existing products** pane, select the **Remove all product licenses from the selected users** check box, then select **Replace** \> **Close**.

::: moniker-end

::: moniker range="o365-germany"

##  Unassign licenses from multiple users

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.
2. Select the boxes next to the names of the users that you want to unassign all licenses for.
3. In the **Bulk actions** pane, select **Edit product licenses**.
4. In the **Replace existing products** pane, select **Replace existing product license assignments** \> **Next**.
5. At the bottom of the **Replace existing products** pane, select the **Remove all product licenses from the selected users** check box, then select **Replace** \> **Close** \> **Close**.

::: moniker-end

::: moniker range="o365-21vianet"

##  Unassign licenses from multiple users
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.
2. Select the boxes next to the names of the users that you want to unassign all licenses for.
3. In the **Bulk actions** pane, select **Edit product licenses**.
4. In the **Replace existing products** pane, select **Replace existing product license assignments** \> **Next**.
5. At the bottom of the **Replace existing products** pane, select the **Remove all product licenses from the selected users** check box, then select **Replace** \> **Close** \> **Close**.

::: moniker-end

## What happens to a user's data when you remove their license?

- When a license is removed from a user, data that is associated with that account is held for 30 days. After the 30-day grace period, the data is deleted and can't be recovered.
- Files saved in OneDrive for Business aren't deleted unless the user is deleted from the Microsoft 365 admin center or is removed through Active Directory synchronization. For more information, see [OneDrive retention and deletion](https://docs.microsoft.com/onedrive/retention-and-deletion).
- When the license is removed, the user's mailbox is no longer searchable by using an eDiscovery tool such as Content Search or Advanced eDiscovery. For more information, see "Searching disconnected or de-licensed mailboxes" in [Content Search in Microsoft 365](https://docs.microsoft.com/microsoft-365/compliance/content-search#searching-disconnected-or-de-licensed-mailboxes).
- If you have an Enterprise subscription, like Office 365 Enterprise E3, Exchange Online lets you preserve the mailbox data of a deleted user account by using [inactive mailboxes](https://docs.microsoft.com/microsoft-365/compliance/inactive-mailboxes-in-office-365). For more information, see [Create and manage inactive mailboxes in Exchange Online](https://docs.microsoft.com/microsoft-365/compliance/create-and-manage-inactive-mailboxes).
- To learn how to block a user's access to Microsoft 365 data after their license is removed, and how to get access to the data afterwards, see [Remove a former employee](../add-users/remove-former-employee.md).
- If you remove a user's license and they still have Office apps installed, they see [Unlicensed Product and activation errors in Office](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380) when they use Office apps.

## Next steps

If you’re not going to [reassign the unused licenses to other users](../../managed-desktop/get-started/assign-licenses.md), consider [removing the licenses from your subscription](../../commerce/licenses/buy-licenses.md) so that you’re not paying for more licenses than you need.

## Related content

[Remove licenses from your subscription](../../commerce/licenses/remove-licenses-from-subscription.md) (article)\
[Assign licenses to users](assign-licenses-to-users.md) (article)\
[Understand subscriptions and licenses in Microsoft 365 for business](../../commerce/licenses/subscriptions-and-licenses.md) (article)