---
title: Manage self-service purchases (Admins)
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
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
- AdminSurgePortfolio
- okr_smb
- commerce 
search.appverid:
- MET150
description: "Admins can learn how to manage self-service purchases made by users in their organization."
---

# Manage self-service purchases (Admin)

As an admin, you can see self-service purchases made by people in your organization. You see the product name, purchaser name, subscriptions purchased, expiration date, purchase price, and assigned users for each self-service purchase. If required by your organization, you can turn off self-service purchasing on a per product basis via PowerShell. You have the same data management and access policies over products bought through self-service purchase or centrally.

You can also control whether users in your organization can make self-service purchases. For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## View self-service subscriptions

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Your products</a> page.
::: moniker-end

2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. To view more details about a subscription, choose one from the list.

## View who has licenses for a self-service purchase subscription

> [!NOTE]
> As an admin, you can't assign or unassign licenses for a self-service purchase subscription bought by a user in your organization. You can [take over a self-service purchase subscription](#take-over-a-self-service-purchase-subscription), and then assign or unassign licenses.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

::: moniker-end

::: moniker range="o365-germany"

 1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=848038" target="_blank">Licenses</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

 1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850625" target="_blank">Licenses</a> page.

::: moniker-end

2. Select the filter icon, then choose **Self-service**.
3. Select a product to see licenses assigned to people.
    > [!NOTE]
    > If there are multiple purchases for a product, that product is only listed once, and the **Available quantity** column shows the total of all subscriptions bought for that product.
4. The **Users** list is grouped by the names of people who made self-service purchases.
5. To export a list of users with licenses for these subscriptions, choose the subscriptions that you want to export, then choose **Export users**.

## Disable or enable self-service purchases

You can disable or enable self-service purchases for users in your organization. The **MSCommerce** PowerShell module includes a **PolicyID** parameter value for **AllowSelfServicePurchase** that lets you control whether users in your organization can make self-service purchases, and for which products.

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** parameter value—whether it's enabled or disabled by product
- View a list of applicable products and whether self-service purchase is enabled or disabled
- View or modify the current setting for a specific product to either enable or disable it

For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## Centralize licenses under a single subscription

You can assign existing licenses or purchase additional subscriptions through existing agreements for users assigned to self-service purchases. After you assign these centrally purchased licenses, you can request that purchasers cancel their existing subscriptions.

::: moniker range="o365-worldwide"

1. In the admin center go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=868433" target="_blank">Purchase services</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Billing** > **Purchase services** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Purchase services** page.

::: moniker-end

2. Find and choose the product that you want to buy, then choose **Buy**.
3. Complete the remaining steps to complete your purchase.
4. Follow the steps in [View who has licenses for a self-service purchased subscription](#view-who-has-licenses-for-a-self-service-purchase-subscription) to export a list of users to reference in the next step.
5. Assign licenses to everyone who has a license in the other subscription. For full steps, see [Assign licenses to users](../../admin/manage/assign-licenses-to-users.md).
6. Contact the person who bought the self-service purchase subscription and ask them to [cancel it](manage-self-service-purchases-users.md#cancel-a-subscription).

## Take over a self-service purchase subscription

You can take over a self-service purchase subscription made by a user in your organization. When you take over a self-service purchase subscription, you have two options:

1. Move the users to a different subscription and cancel the original subscription.
2. Cancel the self-service purchase subscription and remove licenses from assigned users.

### Move users to a different subscription

When you move users to a different subscription, the old subscription is automatically canceled. The user who originally bought the self-service purchase subscription receives an email that says the subscription was canceled.

> [!NOTE]
> You must have an available license for each user you’re moving in the subscription that you’re moving users to.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Billing** > **Your products** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Your products** page.

::: moniker-end

2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. Select the subscription that you want to take over.
4. On the subscription details page, in the **Subscriptions and settings** section, select **Take control of this subscription**.
5. In the right pane, select **Move users**.
6. Select the product that you want to move the users to, then select **Move users**.
7. In the **Move users to** box, select **Move users**. The move process might take several minutes. Don’t close your browser while the process runs.
8. When the move process is finished, close the **Move completed pane**.
9. On the subscription details page, the **Subscription status** for the self-service purchased subscription shows as **Deleted**.

### Cancel a self-service purchase subscription

When you choose to cancel a self-service purchase subscription, users with licenses lose access to the product. The user who originally bought the self-service purchase subscription receives an email that says the subscription was canceled.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-germany"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=848041" target="_blank">admin center</a>, go to the **Billing** > **Your products** page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Your products** page.

::: moniker-end

2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. Select the subscription that you want to cancel.
4. On the subscription details page, in the **Subscriptions and settings** section, select **Take control of this subscription**.
5. In the right pane, select **Cancel subscription**.
6. Select a reason for your cancellation from the drop-down list, then select **Cancel subscription**.
7. In the **Are you sure you want to cancel?** box, select **Cancel subscription**.
8. Close the right pane.
9. On the subscription details page, the **Subscription status** shows as **Deleted**.

## Need help? Contact us.

For common questions about self-service purchases, see [Self-service purchases FAQ](self-service-purchase-faq.md).

If you have questions or need help with self-service purchases, [contact support](../../admin/contact-support-for-business-products.md).