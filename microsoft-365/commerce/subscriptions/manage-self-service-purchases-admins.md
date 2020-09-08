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
- commerce 
ms.custom: AdminSurgePortfolio
search.appverid:
- MET150
description: "Admins can learn how to manage self-service purchases made by users in their organization."
---

# Manage self-service purchases (Admin)

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see 
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet).

::: moniker-end

As an admin, you can see self-service purchases made by people in your organization. You can see the product, purchaser name, subscriptions purchased, expiry date, purchase price, and assigned users for each self-service purchase. If required for your organization, you can turn off self-service purchasing on a per product basis via PowerShell. You have the same data management and access policies over products bought through self-service purchase or centrally.

You can also control whether users in your organization can make self-service purchases. For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## View self-service subscriptions

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. To view more details about a subscription, choose one from the list.

## View who has licenses for a self-service purchase subscription

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.
2. Select the filter icon, then choose **Self-service**.
3. Select a product to see licenses assigned to people.
    > [!NOTE]
    > If there are multiple purchases for a product, that product is only listed once, and the **Available quantity** column shows the total of all subscriptions bought for that product.
4. The **Users** list is grouped by the names of people who made self-service purchases.
5. To export a list of users with licenses for these subscriptions, choose the subscriptions that you want to export, then choose **Export users**.

## Disable or enable self-service purchases

You can disable or enable self-service purchases for users in your organization. The **MSCommerce** PowerShell module includes a **PolicyID** parameter value for **AllowSelfServicePurchase** that lets you control whether users in your organization can make self-service purchases, and for which products.

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** parameter value &mdash; whether it's enabled or disabled by product
- View a list of applicable products and whether self-service purchase is enabled or disabled
- View or modify the current setting for a specific product to either enable or disable it

For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## Centralize licenses under a single subscription

You can assign existing licenses or purchase additional subscriptions through existing agreements for users assigned to self-service purchases. After you assign these centrally purchased licenses, you can request that purchasers cancel their existing subscriptions.

1. In the admin center go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=868433" target="_blank">Purchase services</a> page.
2. Find and choose the product that you want to buy, then choose **Buy**.
3. Complete the remaining steps to complete your purchase.
4. Follow the steps in [View who has licenses for a self-service purchased subscription](#view-who-has-licenses-for-a-self-service-purchase-subscription) to export a list of users to reference in the next step.
5. Assign licenses to everyone who has a license in the other subscription. For full steps, see [Assign licenses to users](../../admin/manage/assign-licenses-to-users.md).
6. Contact the person who bought the self-service purchase subscription and ask them to [cancel it](manage-self-service-purchases-users.md#cancel-a-subscription).

## Need help? Contact us.

For common questions about self-service purchases, see [Self-service purchases FAQ](self-service-purchase-faq.md).

If you have questions or need help with self-service purchases, [contact support](../../admin/contact-support-for-business-products.md).
