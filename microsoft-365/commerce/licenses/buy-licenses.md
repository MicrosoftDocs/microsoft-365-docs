---
title: "Buy or remove licenses for a Microsoft business subscription"
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
- Adm_o365
ms.custom:
- commerce_licensing
- okr_SMB
- AdminSurgePortfolio
- manage_licenses
- AdminTemplateSet
- adminvideo
search.appverid: MET150
description: "Learn how to buy more licenses or reduce the number of licenses for your business subscription in the Microsoft 365 admin center."
ms.date: 10/17/2023
---

# Buy or remove licenses for a Microsoft business subscription

Check out [Microsoft 365 small business help](https://go.microsoft.com/fwlink/?linkid=2197659) on YouTube.

As an admin, you can add or remove licenses for your business subscriptions in the Microsoft 365 admin center.

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a Billing account owner or contributor, or a Billing profile owner or contributor to do the tasks in this article.
- If you have a Microsoft Online Subscription Agreement (MOSA) billing account type, you must be a Global or Billing admin to to the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
- You can [add users and assign licenses at the same time](../../admin/add-users/add-users.md).
- If you bought your Microsoft 365 for business or Office 365 Enterprise plan through a third-party partner, you must buy additional licenses through that partner.

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Billing account owner or Global admin.

## Buy or remove licenses for your business subscription

[Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).

> [!NOTE]
>
> - You can't reduce the number of licenses for your subscription if all licenses are currently assigned to users. To reduce the number of licenses, first [unassign one or more licenses from users](../../admin/manage/remove-licenses-from-users.md), then remove the licenses from the subscription.
> - If you bought your subscription through a Microsoft Representative, contact them directly for help with reducing your license count.

### If you have an MCA billing account type

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
   - If you’re using the **Simplified view**, select **Subscriptions**.
   - If you’re using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the subscription that you want to change.
3. On the subscription details page, select **Buy licenses** or **Remove license**s. [What if I don't see the Buy licenses or Remove licenses buttons](#what-if-i-dont-see-the-buy-licenses-or-remove-licenses-buttons)?
4. Choose when to schedule the license change to happen.
   - If recurring billing is turned on, you can choose to make the change now, or when the subscription renews.
   - If recurring billing is turned off, you can only make the change now.
5. To change the number of licenses, under **New quantity** in the **Total licenses** box, enter the total number of licenses that you want for this subscription. For example, if you have 100 licenses and you want to add five more, enter 105. If you want to remove five of them, enter 95.
6. Select **Save**.

### If you have an MOSA billing account type

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
    - If you’re using the **Simplified view**, select **Subscriptions**.
    - If you’re using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the subscription that you want to change.
3. On the subscription details page, select **Buy licenses** or **Remove licenses**. [What if I don't see the Buy licenses or Remove licenses buttons](#what-if-i-dont-see-the-buy-licenses-or-remove-licenses-buttons)?
4. To change the number of licenses, under **New quantity** in the **Total licenses** box, enter the total number of licenses that you want for this subscription. For example, if you have 100 licenses and you want to add five more, enter 105. If you want to remove five of them, enter 95.
5. Select **Save**.

## Add licenses to a prepaid subscription by using a product key

Prepaid product licenses are issued to you as a 25-character alphanumeric code, called a product key. After you buy the licenses you need, you can add them to your subscription by using the steps below. You can also use a product key to [extend the expiration date of your subscription](../enter-your-product-key.md#extend-the-expiration-date-for-an-existing-subscription).

> [!NOTE]
> If you don't want to buy a new product key, you can always choose to add a credit card or debit card to your subscription to pay for more licenses. For more information, see [Renew your subscription](../subscriptions/renew-your-subscription.md).
  
1. Go to the admin center.
   - If you’re using the **Simplified view**, select **Subscriptions**.
   - If you’re using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the subscription to which you want to add licenses.
3. On the subscription details page, in the **Licenses** section, select **Add more licenses**.
4. In the **Add more licenses** pane, select **Use a new and unused product key**, then select **Next**.
5. Enter the product key, then select **Next**.
    > [!NOTE]
    > If you have more than one product key, you can select **Add another product key** to enter them.
6. Review your order details, then select **Redeem**.

## What if I don't see the Buy licenses or Remove licenses buttons?

This table describes the reasons why the **Buy licenses** or **Remove licenses** buttons aren't available, and possible solutions.

|Reason  |Description  |Solution  |
|---------|---------|---------|
|A credit check is pending. |If a credit check is pending, you can't buy or remove licenses until the credit check is complete.  | Check back later to see if the credit check has completed. Credit checks typically take up to two working days to complete.<br/><br/>After the credit check is complete, you should see the **Buy licenses** and **Remove licenses** buttons. |
|You activated the subscription by using a product key.| If the subscription was bought and activated by using a 25-character product key, you see the word "Prepaid" in the **Purchase channel** column of the **Your products** page.  |See [Add licenses to a prepaid subscription by using a product key](#add-licenses-to-a-prepaid-subscription-by-using-a-product-key). |
|You bought your subscription through a reseller.| You see the word "Reseller" in the **Purchase information** section under **Purchase channel** on the subscription details page, and in the **Purchase channel** column of the **Your products** page. | If you bought the subscription through a Cloud Solution Provider (CSP) partner, contact your CSP partner to buy more licenses.        |
|You have a trial subscription. | To view your trial subscriptions, select the filter button, then choose **Trial**. | First buy your trial subscription, then you can buy more licenses.|

## When will the new licenses be available to assign?

If you have an MOSA billing account type, the payment method associated with your subscription or billing profile is charged as soon as you buy more licenses for a subscription. The licenses are immediately available for you to assign to users.

If you prepaid for your subscription with a product key, you can add more licenses by using another product key, or by adding a credit card or debit card to cover the additional cost of the new licenses. If your subscription is prepaid, you can't remove licenses.

## How does buying or removing licenses affect my billing statements?

If you have an MOSA billing account type, licenses added in the middle of your billing period appear on your next invoice. If you pay annually, you are invoiced within a month for these changes.

On your next billing statement, the previous charge for the original number of licenses is deducted. We add a prorated charge for the time period with the original number of licenses and add a charge for the new license count. There's also a charge for the current license count for the remainder of your billing period.

## Next steps

If you bought more licenses for your subscription, the next thing you should do is [assign those licenses to users in your organization](../../admin/manage/assign-licenses-to-users.md).

If you reduced the number of licenses for your subscription because someone has left your organization, you might want to remove that user's account. To learn more, see [Remove a former employee](../../admin/add-users/remove-former-employee.md).

## Related content

[Assign Microsoft 365 licenses to users](../../admin/manage/assign-licenses-to-users.md) (article)\
[Understand subscriptions and licenses in Microsoft 365 for business](subscriptions-and-licenses.md) (article)\
[Try or buy a Microsoft 365 subscription](../try-or-buy-microsoft-365.md) (article)
