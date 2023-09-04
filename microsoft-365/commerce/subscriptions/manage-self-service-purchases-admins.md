---
title: Manage self-service purchases and trials (for admins)
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: prlachhw, pablom
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
  - commerce_ssp
  - AdminSurgePortfolio
  - okr_smb
  - has-azure-ad-ps-ref
search.appverid:
- MET150
description: "Learn how admins can use the Microsoft 365 admin center to manage self-service purchases and trials made by users in their organization."
ms.date: 02/15/2023
---

# Manage self-service purchases and trials (for admins)

As an admin, you can use the Microsoft 365 admin center to see self-service purchases and trials (referred to in this article as *purchases and trials*) made by people in your organization. You can see the product name, purchaser name, subscriptions purchased, expiration date, purchase price, and assigned users for each purchase or trial subscription. You have the same data management and access policies over products bought through self-service purchase or centrally.

You can also control whether users in your organization can make purchases or sign up for trials. To learn how to manage these settings, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## Understand purchases and trials

Purchases require a payment method at sign-up, and automatically renew at the end of the subscription term.

Some trials require a payment method at sign-up, and automatically convert to a paid version when the trial ends.

Other trials don't require a payment method at sign-up, and don't automatically renew. Trials without a payment method are only available to select customers with an existing subscription agreement.

## How we use a user's directory data

When you enable the **AllowSelfServicePurchase** policy, you permit Microsoft's Commerce service to process a user's directory data, which is outside the boundaries of the Microsoft 365 tenant. Specifically, Microsoft Commerce collects an Azure Active Directory v1.0 access token, which contains the user's first and last name, email address, IP address, and tenant and user GUID. For a full list of attributes included in the access token, see [Microsoft identity platform access tokens](/azure/active-directory/develop/access-tokens).

We use the directory data to provide the user with a license and to send email about the subscription to the user. The directory data processed by Microsoft Commerce is governed by the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement). To learn more about the terms that apply to self-service trials, see [Organizational trial – Terms of service](/legal/microsoft-365/in-app-trials-terms-of-service). Like other Microsoft products used by your organization, use of a self-service purchase or trial product is governed by the [Microsoft Product Terms](https://www.microsoft.com/licensing/terms). Before a user makes a purchase or starts a trial, we advise the user of the personal data that we process and the terms that apply.

## View self-service subscriptions

::: moniker range="o365-worldwide"

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Your products</a> page.
::: moniker-end

2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. To view more details about a subscription, choose one from the list.

## View who has licenses for a purchase or trial subscription

> [!NOTE]
> As an admin, you can't assign or unassign licenses for a purchase or trial subscription bought by a user in your organization. You can [take over a purchase or trial subscription](#take-over-a-purchase-or-trial-subscription), and then assign or unassign licenses.

::: moniker range="o365-worldwide"

1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

 1. In the Microsoft 365 admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. Select a product to see licenses assigned to people.
    > [!NOTE]
    > If there are multiple purchases or trials for a product, that product is only listed once, and the **Available quantity** column shows the total of all subscriptions acquired for that product.
4. The **Users** list is grouped by the names of people who made purchases or started trials.
5. To export a list of users with licenses for these subscriptions, choose the subscriptions that you want to export, then choose **Export users**.

## Enable or disable purchases and trials

You can enable or disable purchases and trials for users in your organization. The **MSCommerce** PowerShell module includes a **PolicyID** parameter value for **AllowSelfServicePurchase** that lets you control whether users in your organization can make purchases or start trials, and for which products.

You can use the **MSCommerce** PowerShell module to:

- View the default state of the **AllowSelfServicePurchase** parameter value—whether it's enabled or disabled by product
- View a list of applicable products and whether purchases or trials are enabled or disabled for those products
- View or modify the current setting for a specific product to either enable or disable it

> [!IMPORTANT]
> When you use the **AllowSelfServicePurchase** policy, it controls both purchases and trials. For a list of the products available, see [View a list of self-service purchase products and their status](allowselfservicepurchase-powershell.md#view-a-list-of-self-service-purchase-products-and-their-status).

For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## Use PowerShell and Azure AD to enable or disable all self-service sign-ups

You can use PowerShell commands to change the settings that control self-service sign-ups. To turn off all self-service sign-ups, use the **MSOnline** PowerShell module to change the **MsolCompanySettings** setting for **AllowAdHocSubscriptions** in Azure Active Directory. For the steps to turn off self-service sign-ups, see [Set MsolCompanySettings](/powershell/module/msonline/set-msolcompanysettings).

## Centralize licenses under a single subscription

You can assign existing licenses or buy extra subscriptions through existing agreements for users assigned to purchases or trials. After you assign these centrally purchased licenses, you can request that users cancel their existing subscriptions. Alternatively, you can take over the subscription and cancel it yourself in the admin center. For steps to do that, see [Take over a purchase or trial subscription](#take-over-a-purchase-or-trial-subscription).

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=868433" target="_blank">Purchase services</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Purchase services** page.

::: moniker-end

2. Find and choose the product that you want to buy, then choose **Buy**.
3. Complete the remaining steps to complete your purchase.
4. Follow the steps in [View who has licenses for a purchase or trial subscription](#view-who-has-licenses-for-a-purchase-or-trial-subscription) to export a list of users to reference in the next step.
5. Assign licenses to everyone who has a license in the other subscription. For full steps, see [Assign licenses to users](../../admin/manage/assign-licenses-to-users.md).
6. Contact the person who bought the original subscription and ask them to [cancel it](manage-self-service-purchases-users.md#cancel-a-subscription).

## Take over a purchase or trial subscription

You can take over a purchase or trial subscription made by a user in your organization. When you take over a purchase or trial subscription, you have two options:

1. Move the users to a different subscription and cancel the original subscription.
2. Cancel the subscription and remove licenses from assigned users.

### Move users to a different subscription

When you move users to a different subscription, the old subscription is automatically canceled. The user who originally bought the purchase or trial subscription receives an email that says the subscription was canceled.

> [!NOTE]
> You must have an available license for each user you're moving in the subscription that you're moving users to.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=850627" target="_blank">admin center</a>, go to the **Billing** > **Your products** page.

::: moniker-end

2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. Select the subscription that you want to take over.
4. On the subscription details page, in the **Subscriptions and settings** section, select **Take control of this subscription**.
5. In the right pane, select **Move users**.
6. Select the product that you want to move the users to, then select **Move users**.
7. In the **Move users to** box, select **Move users**. The move process might take several minutes. Don't close your browser while the process runs.
8. When the move process is finished, close the **Move completed pane**.
9. On the subscription details page, the **Subscription status** for the purchase or trial subscription shows as **Deleted**.

### Cancel a purchase or trial subscription

When you choose to cancel a purchase or trial subscription, users with licenses lose access to the product. The user who originally signed up for the purchase or trial subscription receives an email that says the subscription was canceled.

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

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

## Need help? Contact us

For common questions about purchases and trials, see [Self-service purchases FAQ](self-service-purchase-faq.yml).

If you have questions or need help with purchases and trials, [contact support](../../admin/get-help-support.md).
