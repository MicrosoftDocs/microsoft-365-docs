---
title: "Change Microsoft 365 for business plans manually"
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
- AdminSurgePortfolio
- commerce_subscriptions
search.appverid: MET150
description: "Change subscriptions manually by buying a new subscription and ensuring that both the subscriptions are listed and active."
ROBOTS: NOINDEX
ms.date: 03/17/2021
---
# Change plans manually

## Step 1: Decide how to change plans

The best way to change all your users from one plan to another is to [use the Upgrade tab](upgrade-to-different-plan.md). Sometimes this isn't possible. Change plans manually instead:

- If the **Upgrade** tab indicates you can't upgrade the current plan.

- If, when you select the **Upgrade** tab, the plan you want isn't listed.

- If you don't want to upgrade all your users in the same way. Some businesses need different users subscribed to different plans. Use a manual change for this.

To continue with a manual change, read [Step 2: Buy a new subscription](#step-2-buy-a-new-subscription) in this topic.

> [!IMPORTANT]
> If you are changing to a plan with fewer data-related services than your current plan (downgrading), you need to manually back up any data you wish to keep. For more information, see [Back up data before changing plans](back-up-data-before-switching-plans.md).

> [!NOTE]
> If you are renewing your Office 365 subscription and are upgrading from an Office 365 licensing plan (SKU) to a Microsoft 365 SKU, this will require you to change the license assignment for all users. The switch from an Office 365 SKU to a Microsoft 365 SKU will not happen automatically. For example, If users are currently assigned an Office 365 E3 SKU and you renew your subscription to Microsoft 365 E3, you will need to update the user license assignments to reflect this SKU change.

## Step 2: Buy a new subscription

**Already purchased?** If you already have a subscription you want to move users to, skip this step and go to [Step 3: Check your new subscription and licenses](#step-3-check-your-new-subscription-and-licenses) in this topic.

OR

**Purchase a new subscription and licenses:** Follow the steps in [Buy another Microsoft 365 for business subscription](../try-or-buy-microsoft-365.md) to buy a new subscription.

Make sure you purchase a subscription for the same organization that the users are in now. For example, check the email addresses for the users you want to move. If their email addresses include \@contoso.com, you must purchase a new subscription for contoso.com.
Include a license for each user that you want to move.

## Step 3: Check your new subscription and licenses

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.

2. **Verify that both subscriptions are listed and active**
   The subscription that you're moving users from and the subscription that you're moving users to must be listed together. If the new subscription isn't there when you first check, try again later. Check that both subscriptions are active. [The new subscription isn't listed, or isn't active](#the-new-subscription-isnt-listed-or-isnt-active).

3. **Check that you have enough licenses for each user**
   Each user needs a license that matches their subscription. So if you want to move ten users to Microsoft 365 Business Premium, you'll need
    to make sure ten licenses are available.

4. **Need more licenses for the new subscription?**
   Go to the **Your products** page and [buy more licenses](../licenses/buy-licenses.md).

> [What about the old licenses?](#what-about-the-old-licenses)

### The new subscription isn't listed, or isn't active

- **If you purchased two subscriptions and they are not both listed here**, they may have been purchased for different organizations
    (for different domains). Subscriptions can't cross organization boundaries.

- **If you know you have an additional subscription**, and it's not listed here, or is not active, [call Microsoft support](../../business-video/get-help-support.md).

### What about the old licenses?

The licenses for the current subscription will be removed later; you'll only pay for the new user licenses from then on.

## Step 4: Reassign licenses

### Reassign a license for one user

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a> page.

2. On the **Active users** page, select the user to whom you want to assign a license.

3. On the **Licenses and Apps** tab, expand **Licenses**, select the boxes for the licenses that you want to assign, then select **Save changes**.

### Reassign licenses for multiple users at once

1. In the admin center, go to the **Users** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=834822" target="_blank">Active users</a>
    page.

2. Select the circles next to the names of the users for whom you want to replace existing licenses.

3. At the top, select the three dots (more actions), and then choose **Manage product licenses**.

4. Select **Replace existing product license assignments** \> **Next**.

5. Switch the toggle to the **On** position for the products you want to assign to these users.

    > [!TIP]
    > - To limit which services are available to the user, switch to toggles to the **Off** position for the services that you want to remove for that user. For example, if you want the user to have access to all available services except Skype for Business Online, you can switch the toggle for the Skype for Business Online service to the **Off** position.
    > - Any previous license assignments for the selected users will be removed.

6. At the bottom of the **Replace existing products** pane, select **Replace** \> **Close**.

## Step 5: Cancel subscriptions or remove licenses that you no longer need (Optional)

If you moved all users from one subscription to another, and you no longer need the original subscription, you can [cancel the subscription](cancel-your-subscription.md).

If you moved only some users to a different subscription, [remove licenses](../licenses/buy-licenses.md) that you no longer need.

## Call support to help you change plans
[Call Microsoft support](../../business-video/get-help-support.md)
