---
title: "Upgrade or change to a different Microsoft 365 for business plan"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: mijeffer, nicholak
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
- commerce_subscriptions
- SaRA
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
- GAUpdates
search.appverid: MET150 
description: "Learn how to upgrade or change to a different plan in the Microsoft 365 admin center."
ms.date: 12/05/2024
---

# Upgrade or change to a different Microsoft 365 for business plan

When your business needs change, or you want more features, you can change to a different Microsoft 365 for business plan. Most of the time, you can change plans automatically. An automatic change walks you through the entire process from beginning to end. After you buy a new plan, all users are automatically assigned licenses in the new plan, and your old plan is canceled for you. In some cases, you can't automatically change to a new plan, and instead must [change plans manually](#change-plans-manually).

## Before you begin

- [Find out what type of billing account you have.](../manage-billing-accounts.md#view-my-billing-accounts)
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a Billing account owner or contributor, or a Billing profile owner or contributor to do the tasks in this article. For information about billing account and billing profile roles, see [Understand your Microsoft business billing account](../manage-billing-accounts.md) and [Manage your Microsoft business billing profiles](../billing-and-payments/manage-billing-profiles.md).
- If you have a Microsoft Online Services Agreement (MOSA) billing account type, you must be at least a Billing Administrator to do the tasks in this article. For more information, see [About admin roles in the Microsoft 365 admin center](../../admin/add-users/about-admin-roles.md).

> [!NOTE]
> If you’re the person who signed up for the subscription, you’re automatically a Billing account owner.

## When should I change plans?

Changing plans is the right choice when you want to move all users assigned to a single plan. When you change plans, all users in the current plan are assigned licenses for the new plan at the same time. If you only want to move some users to a new plan, buy a new plan with the number of licenses you need, and assign those licenses to the users that you want to move. For more information, see [Move users to a different subscription](move-users-different-subscription.md).

> [!NOTE]
> If you have an MCA billing account, you can follow the steps to [Automatically change your subscription to a new plan](/microsoft-365/commerce/subscriptions/upgrade-to-different-plan) and move some users to a new plan by entering the number of licenses that you want. You must assign the new licenses to the users you want to move. 

## Automatically change your subscription to a new plan

### If you have an MCA billing account type

[!INCLUDE [office-365-operated-by-21vianet-admin-center-link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
   - If you’re using the **Simplified view**, select **Subscriptions**.
   - If you’re using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the subscription that you want to manage.
1. On the subscription details page, in the **Other subscription options** section, select **Change to a different subscription option**.
1. Choose when to schedule the change, enter the number of licenses that you want, select a subscription length and a billing frequency, then select **Change plan**.
### If you have an MOSA billing account type

[!INCLUDE [office-365-operated-by-21vianet-admin-center-link](../../includes/office-365-operated-by-21vianet-admin-center-link.md)]

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
   - If you’re using the **Simplified view**, select **Subscriptions**.
   - If you’re using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the subscription that you want to manage.
3. On the subscription details page, in the **Product details and upgrades** section, select **View upgrades recommended for your org**.
    > [!NOTE]
    > If the **View upgrades recommended for your org** link is grayed out, see [Why can't I change plans?](#why-cant-i-change-plans)
4. On the **Available upgrades** page, find a new product, then select **Upgrade**.
5. On the **Checkout** page, select or add a payment method, then select **Place order**.

After you place the order, it might take a few minutes to finalize the change. You can start using your new subscription right away.

## Why can't I change plans?

> [!NOTE]
> The information in this section only applies if you have an MOSA billing account type.

If you can't select the **View upgrades recommended for your org** link, it means that you can't automatically change your plan right now. In some cases, you can resolve the issue so that you can view available plans. In other cases, you can [change plans manually](#change-plans-manually), instead. The following table lists issues you might encounter when you try to change your plan, and tells how to resolve them.

|Issue  |Resolution  |
|---------|---------|
|You have more users than licenses. |To change plans automatically, all users must have valid licenses. [Unassign licenses from users](../../admin/manage/assign-licenses-to-users.md) until you have the same or fewer users as your number of licenses. |
|The current subscription isn't fully set up or the service isn't available. |For example, if a service in your existing plan has an incident, you can't change plans until all services are healthy. To see if there are provisioning or service health issues, in the admin center, go to the **Health** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842900" target="_blank">Service health</a> page. </br></br>If you find that a service isn't fully provisioned, or there's a service health issue, wait a few hours for the service to become available and try again. If you still have a problem, [contact support](../../admin/get-help-support.md). |
|Another plan is in the process of being changed or a credit check is pending. |Wait until the credit check is complete before you change plans. Credit checks can take up to two working days. |
|The subscription isn't currently eligible to change plans. |You can [change plans manually](#change-plans-manually). |
|You have two or more plans for the same product. |You can only change plans automatically if all users have licenses to the same plan. For example, if you have two Microsoft 365 Business Standard plans, you can't automatically change one of them to a different plan. In this case, move all users into a single plan, cancel the unused plan, then try changing plans again. |
|You have a government or non-profit plan. |If you have a government or non-profit plan, you can [change plans manually](#change-plans-manually). |
|The plan that you want to change to isn't a supported option. |The plans that are available to change to are displayed based on the services in your current plan. You can only automatically change to a plan that has the same data-related services, or to a higher version. This ensures that users don't lose data related to those services during the change.</br></br>If you want to change to a plan with fewer services, you can [change plans manually](#change-plans-manually). |
|Your subscription has an add-on. |If you start to change plans and your subscription has an add-on that prevents you from continuing, remove the add-on. You can add it back later if you still need it. You can also [change plans manually](#change-plans-manually).  |
|Your invoice has an unpaid balance.  |This only applies if you pay for your subscription by invoice. To resolve this issue, find the subscription on the **Your products** page, and select the **Pay now** or **Settle balance** link in the **Billing** section. After the payment is made, try changing plans again.  |
|I have a different problem than what's listed here.  |You can [change plans manually](#change-plans-manually) or [contact support](../../admin/get-help-support.md).  |

## What does automatically changing plans do to my service and billing?

When you change plans automatically, your services and billing are affected in the following ways.

### Access to services

- **Admins:** Admins can't make changes to the subscription details page while the change is in process, but you can use the rest of the admin center. The change between plans can take up to an hour.
- **Users:** Users experience no interruption of service during the plan change. They continue to have the existing service until the change is finished.

### Users and licenses

- **Users:** Users on the old subscription are automatically moved to the new subscription.
- **Services:** If your old subscription includes multiple services, and if you changed which of these services your users are assigned to, make note of these changes before you change plans. Your notes can help you can recreate these changes afterwards. All users are given access to all services in the new subscription. For example, if you previously bought Microsoft 365 Business Premium for all 10 of your users, but you unassigned the SharePoint Online service from five of them, this change isn't kept after you change plans.
- **License assignments:** If you have more than one subscription before you change plans, and users have licenses to more than one subscription, this assignment pattern is kept as much as possible in the new subscription.
- **Data:** All user data is retained during the change, including Exchange mailboxes and SharePoint Online documents, lists, and other information.

### Billing

The day your plan change is complete, the billing on your old subscription is turned off and the billing on your new subscription is turned on. Depending on the new plan you selected, you might receive a prorated credit. You receive a new invoice that includes the credit for your old subscription within 30 days of changing to the new subscription.

> [!NOTE]
> The length of time it takes to receive your prorated credit depends on the payment method used for the old subscription.

## Change plans manually

Most of the time, you can change plans automatically. However, sometimes this isn't possible. You can change plans manually if:

- You can't select the **View upgrades recommended for your org** link.
- When you select the **View upgrades recommended for your org** link, the plan you want isn't listed.
- You don't want to move all your users to the same plan. Some businesses need different users licensed for different plans.

> [!IMPORTANT]
> If you're changing to a plan with fewer data-related services than your current plan, you must manually back up any data that you want to keep. For more information, see [Back up data before changing Microsoft 365 for business plans](move-users-different-subscription.md#back-up-data-before-changing-microsoft-365-for-business-plans).

### Step 1: Buy a new subscription

**Already bought a new subscription?** If you already have the subscription that you want to move users to, skip this step and go to [Step 2: Check your new subscription and licenses](#step-2-check-your-new-subscription-and-licenses).

**Need to buy a new subscription and licenses?** Follow the steps in [Buy a different subscription](../try-or-buy-microsoft-365.md#buy-a-different-subscription).

Make sure that you buy a subscription for the same organization that the users are in now. For example, check the email addresses for the users that you want to move. If their email addresses include @contoso.com, you must buy a new subscription for contoso.com. Buy a license for each user that you want to move.

### Step 2: Check your new subscription and licenses

In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page, then do the following:

- **Verify that both the old and new subscriptions are listed and active.** The subscription that you're moving users from and the subscription that you're moving users to must be listed together. If the new subscription isn't there when you first check, try again later. Verify that both subscriptions are listed as **Active**.
- **Check that you have enough licenses for each user.** Each user needs a license that matches their subscription. If you want to move 10 users to Microsoft 365 Business Premium, make sure 10 unassigned licenses are available in that subscription.
- **Need more licenses for the new subscription?** Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page, select the subscription, and [buy more licenses](../licenses/buy-licenses.md).

#### The new subscription isn't listed, or isn't active

If you bought two subscriptions and they aren't both listed on the <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page, you might have bought them for different organizations (for different domains). Subscriptions can't cross organization boundaries.

If you know you have another subscription, and it isn't listed here, or isn't active, [contact support](../../admin/get-help-support.md).

#### What about old licenses?

The licenses for the current subscription are removed in [Step 4: Cancel subscriptions or remove licenses that you no longer need (Optional)](#step-4-cancel-subscriptions-or-remove-licenses-that-you-no-longer-need-optional). After that, you only pay for the new licenses.

### Step 3: Move users to the new subscription

After you confirm the number of licenses in your new subscription, you can [move users from the old subscription to the new one](move-users-different-subscription.md).

### Step 4: Cancel subscriptions or remove licenses that you no longer need (Optional)

If you moved all users from one subscription to another, and you don't need the original subscription anymore, just [cancel the subscription](cancel-your-subscription.md).

> [!IMPORTANT]
> If you have an MCA billing account type, you can only cancel and receive a prorated credit or refund if you cancel within seven days after the start or renewal of your subscription. If you cancel during this limited time window, the prorated amount is either credited towards your next invoice or returned to you in the next billing cycle. For details, see [Determine your cancellation option](cancel-your-subscription.md#determine-your-cancellation-option).

If you moved only some users to a different subscription, [remove licenses that you no longer need](../licenses/buy-licenses.md).

## Next steps

If you upgraded to Microsoft 365 Business Premium, use the steps in the Business Premium library to set up your new security capabilities.

>[!div class="nextstepaction"]
>[Visit the Microsoft 365 Business Premium library](/microsoft-365/business-premium/index)

## Related content

[Move users to a different subscription](move-users-different-subscription.md) (article)\
[Try or buy a Microsoft 365 for business subscription](../try-or-buy-microsoft-365.md) (article)
