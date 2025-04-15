---
title: "Manage self-service purchases and trials (for admins)"
f1.keywords:
- NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: sijoshi, socheng
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-acquisition
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
  - admindeeplinkMAC
  - GAUpdates
  - campaignIDs-batch1
search.appverid:
- MET150
description: "Learn how admins can use the Microsoft 365 admin center to manage self-service purchases and trials made by users in their organization."
ms.date: 01/06/2025
---

# Manage self-service purchases and trials (for admins)

As an admin, you can use the Microsoft 365 admin center to see self-service purchases and trials (referred to in this article as *purchases and trials*) made by people in your organization. You have the same data management and access policies over products bought through self-service purchase or centrally in the Microsoft 365 admin center marketplace.

For each purchase or trial subscription, you can see the following details:

- product name
- purchaser name
- subscriptions purchased
- expiration date
- purchase price
- assigned users

You can also control whether users in your organization can make purchases or sign up for trials. To learn how to manage these settings, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

> [!IMPORTANT]
> Self-service purchases and trials can't be completely turned off at the tenant level with a single command. The [AllowSelfServicePurchase](allowselfservicepurchase-powershell.md) policy is managed on a per-product basis. You can only turn off self-services purchases and trials for the entire tenant by turning off each product individually. By default, all new products are set to allow users to make a self-service purchase.

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a Billing account owner or contributor or a Billing profile owner or contributor to do the tasks in this article. For more information about billing account roles, see [Understand your Microsoft business billing account](../manage-billing-accounts.md) and [Manage your Microsoft business billing profiles](../billing-and-payments/manage-billing-profiles.md).
- If you have a Microsoft Online Services Agreement (MOSA) billing account type, you must be at least a Billing Administrator to do the tasks in this article. For more information, see [About admin roles in the Microsoft 365 admin center](../../admin/add-users/about-admin-roles.md).
- If you're a partner who's an Admin On Behalf Of (AOBO) a customer, you must have a role that's set to Global Administrator in order to do the tasks in this article.

[!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Billing account owner.

## Payment methods for self-service purchases and trials

Self-service purchases require a payment method at sign-up, and automatically renew at the end of the subscription term.

Some self-service trials require a payment method at sign-up, and automatically convert to a paid version when the trial ends.

Other self-service trials don't require a payment method at sign-up, and don't automatically renew. Trials without a payment method are only available to select customers with an existing subscription agreement.

## How we use directory data

When you enable the **AllowSelfServicePurchase** policy, you allow Microsoft's Commerce service to process a user's directory data, which is outside the boundaries of the Microsoft 365 tenant. Specifically, Microsoft Commerce collects a Microsoft Entra ID v1.0 access token, which contains the user's first and last name, email address, IP address, and tenant and user GUID. For a full list of attributes included in the access token, see [Microsoft identity platform access tokens](/azure/active-directory/develop/access-tokens).

We use the directory data to provide the user with a license and to send email about the subscription to that user. The directory data processed by Microsoft Commerce is governed by the [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement). To learn more about the terms that apply to self-service trials, see [Organizational trial – Terms of service](/legal/microsoft-365/in-app-trials-terms-of-service). Like other Microsoft products used by your organization, the use of a self-service purchase or trial product is governed by the [Microsoft Product Terms](https://www.microsoft.com/licensing/terms). Before a user makes a purchase or starts a trial, we notify the user of the personal data that we process and the terms that apply.

## View self-service subscriptions

[!INCLUDE [office-365-operated-by-21vianet-admin-center-link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the **Self-service trials** tab.
3. To view more details about a subscription, select one from the list.

## View who has licenses for a self-service purchase or trial subscription

As an admin, you can't assign or unassign licenses for a purchase or trial subscription bought by a user in your organization. However, you can [Take over a self-service purchase or trial subscription](#take-over-a-self-service-purchase-or-trial-subscription), and then assign or unassign licenses.

[!INCLUDE [office-365-operated-by-21vianet-admin-center-link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. Select a product to see licenses assigned to people.
    > [!NOTE]
    > If there are multiple purchases or trials for a product, that product is only listed once, and the **Available quantity** column shows the total of all subscriptions acquired for that product.
4. The **Users** list is grouped by the names of people who made purchases or started trials.
5. To export a list of users with licenses for these subscriptions, select the subscriptions that you want to export, then select **Export users**.

## Allow or block self-service purchases and trials

You can allow or block self-service purchases and trials for users in your organization in two ways:

1. [By using the Microsoft 365 admin center](#use-the-microsoft-365-admin-center-to-allow-or-block-self-service-purchases-and-trials).
2. [By using the MSCommerce PowerShell module](#use-the-mscommerce-powershell-module-to-manage-self-service-purchases-and-trials).

Both methods let you do the following tasks:

- View a list of applicable products and their statuses.
- View or modify the current setting for a specific product.

### Use the Microsoft 365 admin center to allow or block self-service purchases and trials

> [!NOTE]
> You must be a Global Administrator to do the following steps. Partners who are Admins On Behalf Of (AOBO) a customer must have a role that is set to Global Administrator to do the following steps.

[!INCLUDE [ga-roles-limitation](../../includes/ga-roles-limitation.md)]

You can use the Microsoft 365 admin center to manage self-service purchases and trials for users in your organization.

1. In the Microsoft 365 admin center, so to the **Settings** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2053743" target="_blank">Org settings</a> page.
2. On the **Services** tab of the **Org settings** page, select **Self-service trials and purchases**.
3. The **Self-service trials and purchases** page lists the products that are eligible for self-service, and shows their current self-service setting.
4. To manage the settings for a specific product, select the product name. A panel opens and shows the current setting for the product you selected.
5. To change the setting for the product, select **Allow**, **Allow for trials only**, or **Do not allow**.
6. Select **Save changes**.

### Use the MSCommerce PowerShell module to manage self-service purchases and trials

The **MSCommerce** PowerShell module includes a **PolicyID** parameter value for **AllowSelfServicePurchase**. This parameter lets you control whether users in your organization can make purchases or start trials, and for which products. The module lets you do the same tasks available in the Microsoft 365 admin center, only from the command line. In addition, the module lets you view the default state of the **AllowSelfServicePurchase** parameter value for each product.

> [!IMPORTANT]
> When you use the **AllowSelfServicePurchase** policy, it controls both purchases and trials. For a list of the products available, see [View a list of self-service purchase Microsoft products and their status](allowselfservicepurchase-powershell.md#view-a-list-of-self-service-purchase-microsoft-products-and-their-status).

For more information, see [Use AllowSelfServicePurchase for the MSCommerce PowerShell module](allowselfservicepurchase-powershell.md).

## Centralize licenses under a single subscription

You can assign existing licenses or buy extra subscriptions through existing agreements for users assigned to self-service purchases or trials. After you assign these centrally purchased licenses, you can request that users cancel their existing subscriptions. Alternatively, you can take over the subscription and cancel it yourself in the admin center. For steps to do that, see [Take over a self-service purchase or trial subscription](#take-over-a-self-service-purchase-or-trial-subscription).

[!INCLUDE [office-365-operated-by-21vianet-admin-center-link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=868433" target="_blank">Purchase services</a> page. For some customers, the page is named **Marketplace**.
2. Find and select the product that you want to buy, then select **Buy**.
3. To complete your purchase, complete the remaining steps.
4. To export a list of users to reference in the next step, follow the steps in [View who has licenses for a self-service purchase or trial subscription](#view-who-has-licenses-for-a-self-service-purchase-or-trial-subscription).
5. Assign licenses to everyone who has a license in the other subscription. For instructions, see [Assign licenses to users](../../admin/manage/assign-licenses-to-users.md).
6. Contact the person who bought the original subscription and ask them to [cancel it](manage-self-service-purchases-users.md#cancel-a-subscription).

## Take over a self-service purchase or trial subscription

You can take over a self-service purchase or trial subscription made by a user in your organization. When you take over a purchase or trial subscription, you have two options:

1. Move the users to a different subscription and cancel the original subscription.
2. Cancel the subscription and remove licenses from assigned users.

### Move users to a different subscription

When you move users to a different subscription, the old subscription is automatically canceled. The user who originally bought the self-service purchase or trial subscription receives an email that says the subscription was canceled.

> [!NOTE]
> You must have an available license for each user you're moving in the subscription that you're moving users to.

[!INCLUDE [office-365-operated-by-21vianet-admin-center-link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. Select the subscription that you want to take over.
4. On the subscription details page, in the **Subscriptions and settings** section, select **Take control of this subscription**.
5. In the details pane, select **Move users**.
6. Select the product that you want to move the users to, then select **Move users**.
7. In the **Move users to** box, select **Move users**. The move process might take several minutes. Don't close your browser while the process runs.
8. When the move process is finished, close the **Move completed pane**.
9. On the subscription details page, the **Subscription status** for the purchase or trial subscription shows as **Deleted**.

### Cancel a self-service purchase or trial subscription

When you choose to cancel a self-service purchase or trial subscription, users with licenses lose access to the product. The user who originally signed up for the subscription receives an email that says the subscription was canceled.

[!INCLUDE [office-365-operated-by-21vianet-admin-center-link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, select the filter icon, then select **Self-service**.
3. Select the subscription that you want to cancel.
4. On the subscription details page, in the **Subscriptions and settings** section, select **Take control of this subscription**.
5. In the details pane, select **Cancel subscription**.
6. Select a reason for your cancellation from the drop-down list, then select **Cancel subscription**.
7. In the **Are you sure you want to cancel?** box, select **Cancel subscription**.
8. Close the details pane.
9. On the subscription details page, the **Subscription status** shows as **Deleted**.

## Need help? Contact us

For common questions about self-service purchases and trials, see [Self-service purchases FAQ](self-service-purchase-faq.yml).

If you have questions or need help with self-service purchases and trials, [contact support](../../admin/get-help-support.md).
