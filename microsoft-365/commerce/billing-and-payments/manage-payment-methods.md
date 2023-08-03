---
title: "Manage payment methods for Microsoft business accounts"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: lishepar, vikdesai
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.localizationpriority: high
ms.collection: 
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- commerce_billing
- TopSMBIssues
- okr_SMB
- AdminSurgePortfolio
- AdminTemplateSet
- adminvideo
- business_assist
search.appverid: MET150
description: "Learn how to manage your payment methods for Microsoft business products or services in the Microsoft 365 admin center."
ms.date: 07/13/2023
---

# Manage payment methods for Microsoft business accounts

When you buy business products or services from Microsoft, you can use an existing payment method to pay for things, or add a new one. You can use a credit or debit card to pay for the things you buy.

> [!IMPORTANT]
>
> - You must use a payment method issued from the same country/region as your tenant.
> - The option to pay with a bank account is no longer available.

> [!TIP]
> If you need help with the steps in this topic, consider [working with a Microsoft small business specialist](https://go.microsoft.com/fwlink/?linkid=2186871). With Business Assist, you and your employees get around-the-clock access to small business specialists as you grow your business, from onboarding to everyday use.

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a billing account owner or billing account contributor to manage the payment method on the account. For more information about billing account roles, see [Understand your Microsoft business billing account](../manage-billing-accounts.md).
- If you have an MCA billing account type and you’re a billing profile owner or billing profile contributor, you can use the billing profile that's backed by a credit or debit card or invoice payment to make purchases or pay bills. If you're a billing invoice manager, you can only use a billing profile to pay bills. To learn more about billing profiles and roles, see [Understand your Microsoft business billing profile](manage-billing-profiles.md).

## Add a payment method

> [!IMPORTANT]
>
> Adding a payment method doesn't associate it with any subscriptions or billing profiles you have. If you want to use the new payment method to pay for a subscription, you must move a subscription to it, or replace an existing payment method in a billing profile.

If you have an MOSA billing account type, you can replace the payment method for all subscriptions that use another payment method as part of adding one. You can also [replace a payment method](#replace-a-payment-method) later on. To assign a single subscription to the payment method, see [Replace the payment method for a single subscription](#replace-the-payment-method-for-a-single-subscription).

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
   - If you're using the **Simplified view**, select **Subscriptions**, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=848039" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.
2. Select **Add a payment method**.
3. On the **Add a payment method** page, enter the information for the new payment method, then select **Save**.
4. To use the new payment method to pay for all subscriptions currently paid for with another payment method, select **Replace an existing payment method**.
5. Select the payment method you want to replace, then select **Replace**.

## Update payment method details

You can change the name, billing address, or expiration date for an existing credit or debit card. However, you can't change the card number. If the account number has changed, [replace it with a different payment method](#replace-a-payment-method), and then [delete the old one](#delete-a-payment-method).

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Subscriptions**, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=848039" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.
2. Select the payment method to update. In the right pane, select **Edit**.
3. Update your payment method information, including the name on the credit or debit card, billing address, or expiration date, and then select **Save**.

> [!IMPORTANT]
>
> If you update a credit or debit card, you must enter the security code before any changes are saved.

## Replace a payment method

When you replace an existing payment method, you can add a new payment method, or use a payment method that’s already in your account. To replace a payment method, you can do any of the following tasks:

- [Replace the payment method for a billing profile](#replace-the-payment-method-for-a-billing-profile) (MCA billing account types only)
- [Replace the payment method for a single subscription](#replace-the-payment-method-for-a-single-subscription) (MOSA billing account types only)
- [Replace a single payment method for all subscriptions](#replace-a-single-payment-method-for-all-subscriptions) (MOSA billing account types only)

> [!IMPORTANT]
>
> Replacing a payment method doesn't delete the existing payment method. It's still available for you to select and use for other subscriptions and billing profiles. Learn how to delete a payment method.

### Replace the payment method for a billing profile

If you have an MCA billing account type, you can replace the payment method for a billing profile.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Subscriptions** > **View payment methods**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=848039" target="_blank">Bills & payments</a> page.
2. Select the **Billing profiles** tab, then select the billing profile to update.
3. On the **Billing profile** page, under **Payment method**, select **Replace**.
4. If you need to add a new payment method first, select **Add payment method**, enter the details, then select **Save**.
5. In the **Replace payment method** pane, select a different payment method from the drop-down list, then select **Replace**.

### Replace the payment method for a single subscription

If you have an MOSA billing account type, you can change the payment method used to pay for a single subscription.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Subscriptions**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the subscription that you want to pay for with the alternate payment method.
3. On the product details page, in the **Subscription and payment settings** section, select **Replace payment method**.
4. If you want to add a new payment method first, select **Add payment method**, enter the details, then select **Save**.
5. In the **Replace payment method** pane select a different payment method from the drop-down list, then select **Replace**.

### Replace a single payment method for all subscriptions

If you have an MOSA billing account type, you can change the payment method used to pay for all your subscriptions. If you only want to change the payment method for one subscription, see [Replace the payment method for a single subscription](#replace-the-payment-method-for-a-single-subscription).

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Subscriptions**, then select **View payment methods**.
   - If you're using the Dashboard view, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=848039" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.
2. Select the payment method to replace. The right pane lists all the individual subscriptions that use the selected payment method.
3. In the right pane, select **Replace payment method for all items**.
4. Review the payment method details, then select **Next**.
5. To use a different payment method already on file, select Use another payment method. To add a new payment method, select **Add a payment method**.
6. Select **Next**.
7. To use an existing payment method, choose one from the drop-down list, then select **Next**. To add a new payment method, enter the information, then select **Next**.
8. Review the list of subscriptions or billing profiles that will move to the new payment method, then select **Next**.
9. Review the final details for replacing your payment method, then select **Replace payment method**.
10. When you’re finished, you can select the link to **Review payment methods**, or select **Close**.

## Delete a payment method

You can only delete a payment method that isn't attached to a subscription or billing profile. This applies to all subscriptions, regardless of their status.

### Delete a payment method with no subscriptions or billing profiles attached

If a payment method isn't associated with any subscriptions or billing profiles, you can immediately delete it.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Subscriptions**, then select **View payment methods**.
   - If you're using the Dashboard view, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=848039" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.
2. Find the payment method to delete, select the **More actions** button (the three dots), then select **Delete**.
3. Review the payment method details, then select **Next**.
4. On the next page, select **Delete**, then select **Close**.

### Delete a payment method with subscriptions or billing profiles attached

If a payment method is attached to any subscriptions or billing profiles, first replace it with an existing payment method or add a new one, then delete the old payment method.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Subscriptions**, then select **View payment methods**.
   - If you're using the Dashboard view, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=848039" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.
2. Find the payment method to delete, select the **More actions** button (the three dots), then select **Delete**. The **Delete a payment method** pane lists existing subscriptions and billing profiles that use that payment method.
3. Select **Next**.
4. To use a different payment method already on file, select Use another payment method. To add a new payment method, select **Add a payment method**.
5. Select **Next**.
6. To use an existing payment method, choose one from the drop-down list, then select **Next**. To add a new payment method, enter the information, then select **Next**.
7. Review the subscriptions or billing profiles to move, then select **Move subscriptions**.
8. Review the details of the payment method you want to delete, select **Delete**, then select **Close**.

## Troubleshoot payment methods

| Issue                                    | Troubleshooting steps |
|:-----------------------------------------|:----------------------|
|**My credit or debit card was declined.** |If you pay by credit or debit card, and your card is declined, you receive an email that says Microsoft was unable to process the payment. Double-check that the card details&mdash;card number, expiration date, name on the card, and address, including city, state, and ZIP code&mdash;appear exactly as they do on the card and your statement. You can update your card information and resubmit the payment. For more information, see [What if I have an outstanding balance?](pay-for-your-subscription.md#what-if-i-have-an-outstanding-balance)</br></br>If you continue to see the “declined” message, contact your bank. It’s possible that your card isn’t active, or you might have insufficient funds. |
|**I want to update a credit or debit card number.** |You can't change the card on an existing payment method. If you want to replace a credit or debit card number, [replace it with a different payment method](#replace-a-payment-method), which moves all active subscriptions from the payment method to the new one. |
|**I only have one credit or debit card on my account and I want to remove it.** |If you only have one payment method, follow the steps in [Delete a payment method](#delete-a-payment-method). |
|**I can't add my credit or debit card.**  |You must use a payment method issued from the same country/region as your tenant. If you have trouble entering your credit or debit card information, you can  [contact support](../../admin/get-help-support.md). |


## Related content

[Pay for your business subscription](pay-for-your-subscription.md) (article) \
[Manage billing profiles](manage-billing-profiles.md) (article) \
[Change your billing frequency](change-payment-frequency.md) (article)
