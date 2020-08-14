---
title: "Buy or remove subscription licenses"
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_TOC
- commerce
ms.custom:
- SaRA
- okr_SMB
- AdminSurgePortfolio
- manage_licenses
search.appverid:
- MET150
description: "Learn how to buy more licenses or reduce the number of licenses for your Microsoft 365 for business subscription."
ms.date: 07/01/2020
---

# Buy or remove subscription licenses

::: moniker range="o365-21vianet"

> [!NOTE]
> The admin center is changing. If your experience doesn't match the details presented here, see 
[About the new Microsoft 365 admin center](https://docs.microsoft.com/microsoft-365/admin/microsoft-365-admin-center-preview?view=o365-21vianet).

::: moniker-end

You can buy more licenses or reduce the number of licenses for your subscriptions by using these steps.

## Before you begin

- You must be either a Global admin or a Billing admin to do the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
- You can [add users and assign licenses at the same time](../../admin/add-users/add-users.md).

## Buy or remove licenses for your business subscription

::: moniker range="o365-worldwide"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. On the **Products** tab, find the subscription for which you want to buy or remove licenses. Select **More actions** (three dots), then select **Buy licenses**. [What if I don't see the Add/Remove licenses link?](#what-if-i-dont-see-the-addremove-licenses-link)
3. If you want to decrease the number of licenses, at the top of the **Buy licenses** pane, select **remove licenses**.
4. To buy or remove licenses, under **New quantity** in the **Total licenses** box, enter the total number of licenses that you want for this subscription. For example, if you have 100 licenses and you want to add five more, enter 105. If you want to remove five of them, enter 95.
5. Select **Save**.

::: moniker-end

::: moniker range="o365-germany"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page.
2. On the **Subscriptions** page, select the subscription to which you want to buy or remove licenses, and then select **Add/Remove licenses**. [What if I don't see the Add/Remove licenses link?](#what-if-i-dont-see-the-addremove-licenses-link)
3. In the **Total licenses** box, enter the total number of licenses that you want for this subscription, then select **Submit** \> **Close**. For example, if you have 100 licenses and you want to add five more, enter 105. If you want to remove five licenses, enter 95.

::: moniker-end

::: moniker range="o365-21vianet"

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page.
2. On the **Subscriptions** page, select the subscription to which you want to buy or remove licenses, and then select **Add/Remove licenses**. [What if I don't see the Add/Remove licenses link?](#what-if-i-dont-see-the-addremove-licenses-link)
3. In the **Total licenses** box, enter the total number of licenses that you want for this subscription, and then select **Submit** \> **Close**. For example, if you have 100 licenses and you need to add 5 more, enter 105. If you want to remove 5 of them, enter 95.

::: moniker-end

> [!NOTE]
> You can't reduce the number of licenses for your subscription if all licenses are currently assigned to users. To reduce the number of licenses, first [unassign one or more licenses from users](../../admin/manage/remove-licenses-from-users.md), then remove the licenses from the subscription.

## What if I don't see the Add/Remove licenses link?

This table describes the reasons why the **Add/Remove licenses** link might not be available, and what you can do about it.

|Reason  |Description  |Solution  |
|---------|---------|---------|
|A credit check is pending. |If a credit check is pending, you see a "Pending credit check" message. You can't buy licenses until the credit check is complete.  | Check back later to see if the credit check has completed. Credit checks typically take up to two working days to complete.<br/>After the credit check is complete, you should see the **Add/Remove licenses** link. |
|You activated the subscription by using a product key.| If the subscription was purchased and activated by using a 25-character product key, you see the text "Prepaid."  |See [Add licenses to a subscription paid for using a product key](add-licenses-using-product-key.md). |
|You bought your subscription through a partner. | If the subscription was purchased via a partner, you see the Volume Licensing Service Center (VLSC) link. | See [Add licenses to a subscription purchased through the Volume Licensing Service Center](add-licenses-bought-through-vlsc.md). |
|You bought your subscription through a reseller.|| If the subscription was purchased via a Cloud Solution Provider (CSP) partner, contact your CSP partner to buy more licenses.        |
|You have a trial subscription. |A trial version of Microsoft 365 displays the text "Trial". | First buy your trial subscription, then you can add more licenses. See [Buy a subscription to Microsoft 365 for business from your free trial](../buy-a-subscription-from-your-free-trial.md).|

## What you need to know about buying licenses for your business subscription

### License availability

- **If you have a billing profile**: The credit card associated with your billing profile is charged as soon as you buy more licenses for a subscription. The licenses are immediately available for you to assign to users. [What's a billing profile?](../billing-and-payments/manage-billing-profiles.md)
- **If you don't have a billing profile**: If you pay for your subscription by credit or debit card, or bank account, any new licenses that you buy are immediately available after you receive an order confirmation. If you pay by invoice, you might have to wait for a credit check before your new licenses are available to use.
  > [!NOTE]
  > Paying by bank account is not available in some countries or regions.
- **If you prepaid for your subscription with a product key**: You can add more licenses by adding a credit or debit card, or bank account to cover the additional cost of the new licenses. After you buy the new licenses, we add a second subscription with the number of new licenses that you just added. For example, if you have a prepaid subscription with five licenses, and then bought 10 more licenses, you see two subscriptions listed: one with the five prepaid licenses, and one with the 10 new licenses.

### Changing your payment method

- **If you have a billing profile**: The credit card associated with your billing profile is charged as soon as you buy more licenses for a subscription. [What's a billing profile?](../billing-and-payments/manage-billing-profiles.md)
- **If you don’t have a billing profile:** If you pay by credit card, debit card, or bank account, the charge for buying new licenses appears on your payment method in two days.

### Billing statements

- Licenses added in the middle of your billing period appear on your next invoice. If you pay annually, you are invoiced within a month for these changes.
- On your next billing statement, the previous charge for the original number of licenses is deducted. We add a prorated charge for the time period with the original number of licenses, and add a charge for the new license count. There is also a charge for the current license count for the remainder of your billing period.

## Next steps

If you bought more licenses for your subscription, the next thing you should do is [assign those licenses to users in your organization](../../admin/manage/assign-licenses-to-users.md).

If you reduced the number of licenses for your subscription because someone has left your organization, you might want to remove that user’s account. To learn more, see [Remove a former employee](../../admin/add-users/remove-former-employee.md).

## Related content

[Assign licenses to users](../../admin/manage/assign-licenses-to-users.md) (article)\
[Understand subscriptions and licenses](subscriptions-and-licenses.md) (article)\
[Try or buy a Microsoft 365 subscription](../try-or-buy-microsoft-365.md) (article)