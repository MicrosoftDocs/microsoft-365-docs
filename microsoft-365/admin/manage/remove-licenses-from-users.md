---
title: "Unassign licenses from users"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
ms.audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
- GEA150
ms.assetid: 9b497c85-d0a4-4735-80fa-d3565bc05bd1
description: "Learn how to remove licenses from user accounts."
---

# Unassign licenses from users

::: moniker range="o365-worldwide"
You  can remove, or unassign, licenses from users on either the **Active users** page, or on the **Licenses** page. Which method you use depends on whether you want to unassign product licenses from specific users, or unassign users licenses from specific products.

## Unassign licenses from users on the Licenses page

When you use the **Licenses** page to unassign licenses, you unassign licenses for a specific product for up to 20 users. 

> [!NOTE]
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a>  page.
2. Select the product for which you want to unassign licenses.
3. Select the users for which you want to unassign licenses.
4. Select **Unassign licenses**.
5. In the **Unassign licenses** box, select **Unassign**.

::: moniker-end

## Unassign licenses from one user on the Active users page

::: moniker range="o365-worldwide"

> [!NOTE]
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active Users** page, select the row of the user you want to unassign a license for.

3. In the right pane, select **Licenses and Apps**.

4. Expand the **Licenses** section, clear the boxes for the licenses that you want to unassign, then select **Save changes**.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Pick the user you want to unassign the license for.

3. On the right, in the **Product licenses** row, select **Edit**.

4. In the **Product licenses** pane, switch the toggle to the **Off** position for the license you want to unassign for the user. For example, if you switch off the Office 365 Enterprise E3 license, it unassigns that license and all services under that license for that user.

5. At the bottom of the **Product licenses** pane, select **Save** \> **Close** \> **Close**.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Pick the user you want to unassign the license for.

3. On the right, in the **Product licenses** row, select **Edit**.

4. In the **Product licenses** pane, switch the toggle to the **Off** position for the license you want to unassign for the user. For example, if you switch off the Office 365 Enterprise E3 license, it unassigns that license and all services under that license for that user.

5. At the bottom of the **Product licenses** pane, select **Save** \> **Close** \> **Close**.

::: moniker-end

## Unassign licenses from multiple users on the Active users page

::: moniker range="o365-worldwide"

> [!NOTE]
> If you're not using the new Microsoft 365 admin center, you can turn it on by selecting the **Try the new admin center** toggle located at the top of the Home page.

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. Select the circles next to the names of the users you want to unassign licenses for.

3. At the top, select **More options (...)**, then select **Manage product licenses**.

4. In the **Manage product licenses** pane, select **Replace existing product license assignments** \> **Next**.

5. At the bottom of the **Replace existing products** pane, select the **Remove all product licenses from the selected users** check box, then select **Replace** \> **Close**.

::: moniker-end

::: moniker range="o365-germany"
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847686" target="_blank">Active users</a> page.

2. Select the boxes next to the names of the users you want to unassign all licenses for.

3. In the **Bulk actions** pane, select **Edit product licenses**.

4. In the **Replace existing products** pane, select **Replace existing product license assignments** \> **Next**.

5. At the bottom of the **Replace existing products** pane, select the **Remove all product licenses from the selected users** check box, then select **Replace** \> **Close** \> **Close**.

::: moniker-end

::: moniker range="o365-21vianet"
  
1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

2. Select the boxes next to the names of the users you want to unassign all licenses for.

3. In the **Bulk actions** pane, select **Edit product licenses**.

4. In the **Replace existing products** pane, select **Replace existing product license assignments** \> **Next**.

5. At the bottom of the **Replace existing products** pane, select the **Remove all product licenses from the selected users** check box, then select **Replace** \> **Close** \> **Close**.

::: moniker-end

## What you need to know about unassigning licenses for users

- You must be a Global admin, Billing admin, License admin, or User management admin. For more information, see [About Office 365 admin roles](../add-users/about-admin-roles.md).

- You can [remove licenses from user accounts with Office 365 PowerShell](https://go.microsoft.com/fwlink/p/?linkid=848428).

- You can also [delete user accounts](../add-users/delete-a-user.md) that have been assigned a license to make their license available to other users. When you delete a user account, their license is immediately available to be assigned to someone else.

- When a license is removed from a user, data that is associated with that  account is held for 30 days. After the 30-day grace period, the data is deleted and can't be recovered. Files that are saved in OneDrive or SharePoint Online aren't deleted. For more information, See [OneDrive retention and deletion](https://docs.microsoft.com/onedrive/retention-and-deletion)

   Also, the user's mailbox is no longer searchable by using an eDiscovery tool such as Content Search or Advanced eDiscovery when the license is removed. For more information, see the "Searching disconnected or de-licensed mailboxes" section in [Content Search in Office 365](https://docs.microsoft.com/office365/securitycompliance/content-search#searching-disconnected-or-de-licensed-mailboxes).

- If you have an Enterprise subscription, like Office 365 Enterprise E3, Exchange Online lets you preserve the mailbox data of a deleted user account by using [inactive mailboxes](https://docs.microsoft.com/office365/securitycompliance/inactive-mailboxes-in-office-365). For more information, see [Create and manage inactive mailboxes in Exchange Online](https://docs.microsoft.com/office365/securitycompliance/create-and-manage-inactive-mailboxes).

- For information about how to block a user's access to Office 365 data after their license has been removed and how to get access to the data afterwards, see [Remove a former employee](../add-users/remove-former-employee.md).

- If you remove a user's license and they still have Office installed, they see [Unlicensed Product notifications](https://support.office.com/article/0d23d3c0-c19c-4b2f-9845-5344fedc4380.aspx) when they use Office.

## Related articles

[Understand subscriptions and licenses in Office 365 for business](../../commerce/licenses/subscriptions-and-licenses.md)

[Remove licenses from your subscription](../../commerce/licenses/remove-licenses-from-subscription.md)

[Assign licenses to users](assign-licenses-to-users.md)
