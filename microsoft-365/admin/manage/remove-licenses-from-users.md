---
title: "Unassign licenses from users"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: sinakassaw, nicholak
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
ms.custom: 
- commerce_licensing
- AdminSurgePortfolio
- okr_smb
- manage_licenses
- AdminTemplateSet
search.appverid: MET150
description: "The method you use to unassign product licenses depends on whether you unassign licenses from specific users or from a specific product."
ms.date: 06/13/2023
---

# Unassign Microsoft 365 licenses from users

You can unassign licenses from users on either the **Active users** page, or on the **Licenses** page. The method you use depends on whether you want to unassign product licenses from specific users or unassign users licenses from a specific product.

> [!NOTE]
>
> - As an admin, you can't assign or unassign licenses for a self-service purchase subscription bought by a user in your organization. You can [take over a purchase or trial subscription](../../commerce/subscriptions/manage-self-service-purchases-admins.md#take-over-a-purchase-or-trial-subscription), and then assign or unassign licenses.
>
> - For some subscriptions, you can only cancel during a limited window of time after you buy or renew your subscription. If the cancellation window has passed, turn off recurring billing to cancel the subscription at the end of its term.

## Before you begin

- You must be a Global, License, User admin to unassign licenses. For more information, see [About Microsoft 365 admin roles](../add-users/about-admin-roles.md).
- You can [remove licenses from user accounts with Microsoft 365 PowerShell](../../enterprise/remove-licenses-from-user-accounts-with-microsoft-365-powershell.md).
- You can also [delete user accounts](../add-users/delete-a-user.md) that were assigned a license to make their license available to other users. When you delete a user account, their license is immediately available to assign to someone else.
- If you're a Cloud Solution Provider (CSP) and you bought products on behalf of a customer, you can't use the **Your products** page to assign or unassign licenses for certain products, like perpetual software. To assign or unassign licenses for those products, [use the Licenses page](#use-the-licenses-page-to-unassign-licenses).

## Use the Licenses page to unassign licenses

The **Licenses** page lets you assign or unassign licenses for up to 20 users at a time. The page shows the products you own, the number of available licenses for each product, and the number of assigned licenses out of the total licenses available.

The **Licenses** page shows an aggregate total of licenses for all subscriptions for the same product name. For example, you might have one subscription for Microsoft 365 Business Premium that has 5 licenses, and another subscription that has 8 licenses for the same product. The **Licenses** page shows that you have a total of 13 licenses for Microsoft 365 Business Premium across all your subscriptions. This is different from what you see on the **Your products** page, which displays a row for each subscription you own, even if they are for the same product.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850625" target="_blank">Licenses</a> page.

::: moniker-end

2. Select a product.

3. Select the check boxes of the users for whom you want to unassign licenses.

4. Select **Unassign licenses**.

5. In the **Unassign licenses** box, select **Unassign**.

## Use the Active users page to unassign licenses

When you use the **Active users** page to unassign licenses, you unassign product licenses from users.

### Unassign licenses from one user

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. Select the row of the user that you want to unassign a license for.

3. In the right pane, select **Licenses and Apps**.

4. Expand the **Licenses** section, clear the boxes for the licenses that you want to unassign, then select **Save changes**.

### Unassign licenses from multiple users

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850628" target="_blank">Active users</a> page.

::: moniker-end

2. Select the circles next to the names of the users who you want to unassign licenses for.

3. At the top, select **Manage product licenses**.

4. In the **Manage product licenses** pane, select **Unassign all** > **Save changes**.

5. At the bottom of the pane, select **Done**.  

## What happens to a user's data when you remove their license?

- When a license is removed from a user, Exchange Online data that is associated with that account is held for 30 days. After the 30-day grace period, the data is deleted and can't be recovered. However, it is linked to the retention policy, and the content that matches retention labels is retained for discovery.
- Files saved in OneDrive for Business aren't deleted unless the user is deleted from the Microsoft 365 admin center or is removed through Active Directory synchronization. For more information, see [OneDrive retention and deletion](/onedrive/retention-and-deletion).
- When the license is removed, the user's mailbox is no longer searchable by using an eDiscovery tool such as Content Search or eDiscovery (Premium). For more information, see "Searching disconnected or de-licensed mailboxes" in [Content Search in Microsoft 365](../../compliance/ediscovery-content-search.md).
- If you have an Enterprise subscription, like Office 365 Enterprise E3, Exchange Online lets you preserve the mailbox data of a deleted user account by using [inactive mailboxes](../../compliance/inactive-mailboxes-in-office-365.md). For more information, see [Create and manage inactive mailboxes in Exchange Online](../../compliance/create-and-manage-inactive-mailboxes.md).
- To learn how to block a user's access to Microsoft 365 data after their license is removed, and how to get access to the data afterwards, see [Remove a former employee](../add-users/remove-former-employee.md).
- If you remove a user's license and they still have Microsoft 365 apps installed, they see [Unlicensed Product and activation errors in Office](https://support.microsoft.com/office/0d23d3c0-c19c-4b2f-9845-5344fedc4380) when they use Microsoft 365 apps.

## Next steps

If you're not going to [reassign the unused licenses to other users](assign-licenses-to-users.md), consider [removing the licenses from your subscription](../../commerce/licenses/buy-licenses.md) so that you're not paying for more licenses than you need.

## Related content

[Remove licenses from your subscription](../../commerce/licenses/buy-licenses.md) (article)\
[Assign licenses to users](assign-licenses-to-users.md) (article)\
[Understand subscriptions and licenses in Microsoft 365 for business](../../commerce/licenses/subscriptions-and-licenses.md) (article)
