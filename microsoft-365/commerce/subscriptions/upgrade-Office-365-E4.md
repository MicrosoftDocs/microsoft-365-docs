---
title: "Upgrade from an Office 365 E4 subscription"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: jkinma, jmueller
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
ms.custom: 
- customer-email
- commerce_subscriptions
search.appverid: MET150 
description: "Learn how to upgrade from an Office 365 E4 subscription."
ms.date: 08/14/2020
ROBOTS: NOINDEX, NOFOLLOW
---

# Upgrade from an Office 365 E4 subscription

This article steps you through the process of upgrading from an Office 365 E4 to a new subscription. For information about the options available when you upgrade from Office 365 E4, see [Important information for Office 365 E4 customers](important-information-e4.md).

> [!IMPORTANT]
> This article applies to Office 365 E4 subscriptions that were bought directly from Microsoft via credit card or invoice only. If your subscription was bought another way, such as through a partner or through the Volume Licensing Service Center, contact your Microsoft account representative or partner to help you upgrade plans.

## What are my options for how to upgrade?

The easiest way to upgrade your plan is to use the **Upgrade** tab in the Microsoft 365 admin center. However, using the **Upgrade** tab isn’t supported in all situations. If your scenario isn’t supported, you might be able to upgrade plans manually.

## What is the Upgrade tab?

The **Upgrade** tab does the following tasks for you:

- Leads you through the process of buying a new plan.
- Reassigns all user licenses from your old plan to the new plan.
- Cancels your old plan.

## What does it mean to upgrade plans manually?

Upgrading plans manually means completing the following separate procedures instead of using the **Upgrade** tab.

- Buy a new subscription with the right number of licenses.
- Verify the new subscription is ready to use.
- Reassign licenses to users.
- Cancel the original Office 365 E4 subscription.

## Find out if you can use the Upgrade tab to upgrade to a new plan

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select your Office 365 E4 subscription.
3. Select the **Upgrade** tab. If you see other plans listed, it means you can upgrade plans automatically.
4. If you can’t upgrade automatically, you see a message that describes the reason why you can’t upgrade.

There are several reasons why you can't upgrade plans automatically. Most of the issues are temporary ones, such as service health issues that you can resolve. For more information, see [Why can't I upgrade plans?](upgrade-to-different-plan.md#why-cant-i-upgrade-plans) If you need help with your upgrade, [contact support](../../business-video/get-help-support.md).

## Will a credit check be required?

If you're paying for your new plan by invoice or your purchase is above a certain cost, a credit check might be required. If a credit check is needed, the upgrade can take up to two business days. Admins don’t have access to the Microsoft 365 admin center until the credit check is complete. However, users still have full access to the E4 plan until the upgrade is finished.

## Upgrade your plan by using the Upgrade tab

### Before you begin

Here are some things that are important to know before you begin.

- **Plan for administrative downtime.** Admins can't use the Microsoft 365 admin center while the plan is being upgraded. Depending on the number of users you have, the upgrade can take from minutes to hours. We recommend you plan to do the upgrade when you don’t need to make updates using the Microsoft 365 admin center.

    Users don't experience any interruption of service while the plan is upgraded - they continue to have full access to the E4 subscription during the upgrade process. When the upgrade is finished, users have access to the new plan.
- **Users, licenses, billing, and custom domains.** To understand how users and licenses are handled during the upgrade, how upgrading plans affects your billing, and how to handle custom domains, see [What does upgrading a plan do to my service and billing?](upgrade-to-different-plan.md#what-does-upgrading-a-plan-do-to-my-service-and-billing)
- **Change the number of user licenses.** You can't remove licenses as part of upgrading plans. However, you can [reduce the number of licenses](../licenses/buy-licenses.md) before or after you upgrade plans.

### Start the upgrade by using the Upgrade tab

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select your Office 365 E4 subscription.
3. On the subscription details page, select the **Upgrade** tab.
4. Find the subscription that you want to buy, then select **Upgrade**.
5. On the **Cart** page, verify that everything is correct. Select whether to pay monthly or yearly, and verify the number of licenses under **Quantity**.
    > [!NOTE]
    > Any add-on subscriptions associated with your Office 365 E4 subscription, such as Office 365 Extra File Storage are also listed. However, if you have any add-on subscriptions that are included in the subscription that you’re upgrading to, we’ll remove them.
6. After you've reviewed your order, select **Go to checkout**.
7. On the **Checkout** page, review **Sold to**, **Billed to**, and **Items in this order**. Select **Change** next to any of these items to edit the information.
    > [!NOTE]
    > The option to use invoice as a payment method is only available for orders that are above a certain cost amount. Selecting the invoice payment option can delay the upgrade process by up to two business days if a credit check is required.
8. When you're finished, select **Place order**.

> [!NOTE]
> Upgrading plans typically takes less than ten minutes if there are no errors or issues. You can check the status of your upgrade by looking at either your old or new subscription.

## Upgrade your plan manually

To manually upgrade users to another subscription, complete the following steps in the order shown.

- [Step 1: Buy a new subscription](#step-1-buy-a-new-subscription)
- [Step 2: Verify that your subscription has the right number of licenses](#step-2-verify-that-your-subscription-has-the-right-number-of-licenses)
- [Step 3: Reassign licenses to users](#step-3-reassign-licenses-to-users)
- [Step 4: Cancel the Office 365 E4 subscription](#step-4-cancel-the-office-365-e4-subscription)

### Step 1: Buy a new subscription

If you don’t yet have a new subscription, you can [buy another Microsoft 365 for business subscription](../try-or-buy-microsoft-365.md).

If you already have a subscription, continue to the next step.

### Step 2: Verify that your subscription has the right number of licenses

Before moving on to the next step, it’s important to make sure that all the services inside your new subscription have been set up. If the subscription isn’t ready when you first check, try again later.

> [!NOTE]
> If you chose to pay for the new subscription by invoice, a credit check might be required. It can take up to two business days before the subscription is available.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. From the **Subscription status** drop-down, select **Active**.
3. Make sure that your new subscription is displayed, and that the number of licenses is the same as what you had for Office 365 E4.
4. If you need to buy more licenses, follow the steps in [Buy or remove subscription licenses](../licenses/buy-licenses.md).

### Step 3: Reassign licenses to users

You can use the Microsoft 365 admin center to reassign licenses for up to 20 users at a time. To learn how, see [Move users to a different subscription](move-users-different-subscription.md).

> [!TIP]
> If you have a lot of users, you can [use Office 365 PowerShell to assign user licenses in bulk](../../enterprise/assign-licenses-to-user-accounts-with-microsoft-365-powershell.md).

### Step 4: Cancel the Office 365 E4 subscription

After all your users have been reassigned to your new subscription, [cancel the Office 365 E4 subscription](cancel-your-subscription.md).

## Related content

[Upgrade to a different plan](upgrade-to-different-plan.md) (article)\
[Buy or remove subscription licenses](../licenses/buy-licenses.md) (article)\
[Assign licenses to users](../../admin/manage/assign-licenses-to-users.md) (article)
