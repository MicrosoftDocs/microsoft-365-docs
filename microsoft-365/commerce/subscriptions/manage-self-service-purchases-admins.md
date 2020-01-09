---
title: Manage self-service purchases (Admins)
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration 
localization_priority: Normal
ms.collection:
- commerce 
search.appverid:
- MET150
description: "Admins can learn how to manage self-service purchases made by users in their organization."
---

# Manage self-service purchases (Admin)

As an admin, you can see self-service purchases made by people in your organization. You can also see a list of users who have licenses for subscriptions bought through a self-service purchase.

Because self-service purchases are made by other people in your organization, you can’t see invoices, payment methods, or order history for those subscriptions. You can only see this information for subscriptions you buy. You also can’t make changes to self-service purchases made by users in your organization.

To disable self-service purchase and prevent the purchase of certain products in your organization, use the [AllowSelfServicePurchase](allowselfservicepurchase-powershell.md) parameter value for the **MSCommerce** PowerShell module.

## View self-service subscriptions

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Products & services</a> page.

2. Next to **Refine results**, from the **Account type** drop-down, choose **Self-service**.

3. To view more details about a subscription, choose one from the list.

## View who has licenses for a self-service purchase subscription

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842264" target="_blank">Licenses</a> page.

2. Choose the filter icon, then choose **Self-service**.

3. Select a product to see licenses assigned to people.

    > [!NOTE]
    > If there are multiple purchases for a product, that product is only listed once, and the **Available quantity** column shows the total of all subscriptions bought for that product.

4. The **Users** list is grouped by the names of people who made self-service purchases.

5. To export a list of users with licenses for these subscriptions, choose the subscriptions you want to export, then choose **Export users**.

## Disable or enable self-service purchases

You can disable or enable self-service purchases for users in your organization. The **MSCommerce** PowerShell module includes a **PolicyID** parameter value for **AllowSelfServicePurchase** that lets you control whether users in your organization can make self-service purchases, and for which products.

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** parameter value &mdash; whether it's enabled or disabled by product
- View a list of applicable products and whether self-service purchase is enabled or disabled
- View or modify the current setting for a specific product to either enable or disable it

For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## Centralize licenses under a single subscription

If you want to centralize licenses under one subscription, you can do that. For example, if someone made a self-service purchase and then left your company, you can centralize the people who have licenses for that subscription under a single subscription.

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a> with your Global admin or Billing admin account.

2. Go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=868433" target="_blank">Purchase services</a> page.

3. Find and choose the product you want to buy, then choose **Buy**.

4. Complete the remaining steps to complete your purchase.

5. Follow the steps in [View who has licenses for a self-service purchased subscription](#view-who-has-licenses-for-a-self-service-purchase-subscription) to export a list of users to reference in step 6.

6. Assign licenses to everyone who has a license in the other subscription. For full steps, see [Assign licenses to users](https://docs.microsoft.com/office365/admin/subscriptions-and-billing/assign-licenses-to-users).

7. If possible, contact the person who bought the self-service purchase subscription and ask them to cancel it.

## Need help? Contact us.

For common questions about self-service purchases, see [Self-service purchases FAQ](self-service-purchase-faq.md).

If you have questions or need help with self-service purchases, [contact support](https://docs.microsoft.com/office365/admin/contact-support-for-business-products).