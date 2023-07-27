---
title: "Manage auto-claim policies in the Microsoft 365 admin center"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: argani, pablom
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_licensing
- AdminSurgePortfolio
description: "Learn how to create and manage auto-claim policies that automatically assign licenses to users for certain apps."
search.appverid: MET150
ms.date: 07/24/2023
---

# Manage auto-claim policies in the Microsoft 365 admin center

As an admin, you typically assign licenses to users either manually, or by using group-based licensing. An *auto-claim policy* lets users automatically claim a license for a product the first time that they sign into an app that requires a license. By using auto-claim policies, you manage the products for which users can automatically claim licenses. You can also control which products those licenses come from.

> [!IMPORTANT]
> Auto-claim policies are currently only available on a product-by-product basis.

## Before you begin

You must be a Global admin to create and manage auto-claim policies. For more information, see [About Microsoft 365 admin roles](../../admin/add-users/about-admin-roles.md).

## Turn the auto-claim policy feature on or off

By default, the auto-claim policy feature is turned off. Before you can use the feature, you must first turn it on. After you turn on the feature, you can create an auto-claim policy.

### Turn on auto-claim policies

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. In the center of the page, select the **Turn on setting** button.

### Turn off auto-claim policies

Only a Global admin can turn off an auto-claim policy setting.

1. In the admin center, go to the **Settings** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">Org settings</a> page.
2. Near the bottom of the table, select **User owned apps and services**.
3. In the right pane, clear the box for **Let users auto-claim licenses the first time they sign in**.

If you already have an active policy, but you don't want any more users to claim licenses, [turn off the policy](#turn-a-policy-on-or-off). When you turn off an auto-claim policy, no more users can claim a license from that point on. Users who already claimed a license don't lose their license.

## Create an auto-claim policy

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab lists the policies that you create. On this tab, you can see: the name of the policy, the app that is associated with the policy, the product that's assigned to the policy, the number of available licenses, and the status of the policy.

When you create an auto-claim policy, you can add a backup product to it. If the primary product is out of licenses, the backup product is used to assign licenses to users. You can add up to four backup products and [change the order in which they're used](#change-the-assigning-order-for-backup-products). To learn more, see [Add or remove backup products](#add-or-remove-backup-products).

> [!NOTE]
> Currently, you can only create one auto-claim policy. The number of policies you can create will increase as more products are able to use this feature.

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select **Add a policy**.
3. On the **Name this auto-claim policy** page, enter a name for the policy, then select **Next**.
4. On the **Set an auto-claim app and product** page, select an app and the subscription to assign licenses from.
5. If you want to add a backup product, select **Add a backup product to this policy**, then select the product from the list.
6. Select **Next**.
7. On the **Select apps** page, clear or select the boxes for the apps to exclude or include with the license, then select **Next**.
8. If you added one or more backup products, repeat step 7 for each product. Otherwise, go to step 9.
9. On the **Review and finish** page, verify the new policy information, make any necessary changes, then select **Create policy**.
10. Select **Close**.

## Turn a policy on or off

When you turn off a policy, no more users can claim licenses under that policy. The change doesn't affect users who already claimed licenses under that policy.

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select the policy that you want to edit.
3. In the details pane, under **Turn this policy on or off**, select or clear the check box.
4. Select **Save** to close the details pane.

## Edit the policy friendly name

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select the policy that you want to edit.
3. In the details pane, in the **Policy name** section, select **Edit**.
4. Enter a new policy name, then select **Save**.
5. Select **Save** to close the details pane.

## Add or remove backup products

When you create a policy, you add a product to it. Licenses are then automatically assigned to users from that pool of licenses. You can add or remove products for an auto-claim policy at any time. If you already have one product associated with the policy, any products that you add are considered backup products. When the available number of licenses from the first product are used up, the policy uses the next backup product on the list to assign licenses from. You [can reorder the list of products](#change-the-assigning-apps-and-services) as you like.

When you remove a backup product, it's no longer used to assign licenses. Users with an existing license still have that license, but no new users can receive licenses for that product.

> [!NOTE]
> An auto-claim policy must contain at least one product. You can't remove all products from a policy. If you don't want to assign licenses from a specific auto-claim policy anymore, [turn off the policy](#view-an-auto-claim-policy-report).

### Add a backup product

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select the policy that you want to edit.
3. In the details pane, at the bottom, select **Add a backup product to this policy**.
    > [!NOTE]
    > If you don't see this link, it's because you only have one product associated with your account.
4. In the **Add a product** pane, use the drop-down to choose a product to add to the policy, then select **Add**.
5. Select **Save** to close the details pane.

### Remove a backup product

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select the policy that you want to edit.
3. In the details pane, at the bottom, select **Remove a product**.
4. In the **Remove a product from the policy** pane, select the box for the policy that you want to remove, then select **Save**.
5. Close the details pane.

## Change the assigning apps and services

Each product has a collection of apps and services associated with it. For each product in your auto-claim policy, you can specify which apps and services to include when a user is automatically assigned a license to that product.

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select the policy that you want to edit.
3. In the details pane, under **Apps and services**, select **Edit**.
4. In the **Apps and services** pane, from the **Product** drop-down, select a single product, or select **All products**.
5. Check or clear the boxes for apps and services that you want users to have or not have access to.
6. When you're finished, select **Save**, then close the details pane.

## Change the assigning order for backup products

If you have backup products assigned to the policy, you can change the order in which they're used to assign licenses when users sign in to the app.

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select the policy that you want to edit.
3. In the details pane, in the **Product licenses** section, select the box next to the product that you want to move, then select **Move up** or **Move down**.
4. Repeat step 3 for each product that you want to reorder.
5. When you're finished reordering the products, select **Save** to close the details pane.

## View an auto-claim policy report

1. In the admin center, go to the **Billing** \> **Licenses** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2134398" target="_blank">Auto-claim policy</a> tab.
2. Select **View report**. The **Auto-claim policy report** page lists all licenses assigned from each policy in the last 90 days. By default, the page shows the past 90 days.
3. To change the time period shown, select the **Past 30 days** drop-down list. You can view reports for the past 1, 7, 30, and 90 days.

## Next steps

You can periodically return to the **Auto-claim policy** tab to see a list of users who have claimed licenses under the policies you created.

## Related content

[Assign licenses to users](../../admin/manage/assign-licenses-to-users.md) (article)\
[Buy or remove subscription licenses](buy-licenses.md) (article)\
[Understand subscriptions and licenses](subscriptions-and-licenses.md) (article)
