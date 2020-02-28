---
title: "Manage payment methods"
f1.keywords:
- CSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_TOC
- commerce
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
description: "Learn how to manage your payment methods in the Microsoft 365 admin center."
---

# Manage payment methods

When you buy business products or services from Microsoft, you can use an existing payment method, or add a new one. You can use a credit or debit card, or bank account to pay for the things you buy. But you can only manage payment methods that you add.

> [!NOTES]
> The option to pay with a bank account is not available in some countries or regions.
>
> You must use a payment method issued from the same country as your tenant.

## Update payment method details

You can change the name on the credit or debit card, billing address, or expiration date for an existing payment method. However, you can't change the account number. If the account number has changed, you can [replace it with a different payment method](#replace-a-payment-method), and then [delete the old one](#delete-a-payment-method).

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Select the row of the payment method to update. In the right pane, select **Edit**.
3. Update your payment method information (name on the credit or debit card, billing address, or expiration date), then select **Save**.

## Replace a payment method

When you replace a payment method, you replace it for all subscriptions and billing profiles that use the same payment method. To change the payment method for a single subscription, see [Change a payment method for a single subscription](#change-a-payment-method-for-a-single-subscription). Replacing a payment method doesn’t delete the existing payment method. It’s still available for you to select and use for other subscriptions and billing profiles.

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Select the row of the payment method to replace. The right pane lists all billing profiles and individual subscriptions that use the selected payment method.
3. In the right pane, select **Replace payment method for all items**.
4. To use an existing payment method, choose one from the drop-down list, then select **Replace**.
    > [!NOTE]
    > If you have subscriptions associated with a billing profile, you can only use a credit or debit card to pay for them. If you have bank accounts listed on the **Payment methods** page, they aren’t available to select in the drop-down list.
5. To add a new payment method, select **Add payment method**.
6. In the **Add a payment method** pane, enter the account information, then select **Save**. You must use a payment method from the same country as your tenant.
7. Next, choose the new payment method from the drop-down list, then select **Replace**.

## Change a payment method for a single subscription

You can change the payment method used to pay for a single subscription.

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Products & services</a> page.
2. On the **Subscriptions** tab, select the subscription that you want to pay for with the alternate payment method. 
3. Under **Billing**, next to the payment method, select **Edit**.
4. Next to your existing payment method, select **Change**.
5. From the drop-down list, choose an alternate payment method, or choose to add a payment method.
6. If you add a payment method, enter the card or account details, then select **Save**.
7. Verify that the selected payment method is correct, then select **Save**.

## Delete a payment method

You can only delete a payment method that isn’t attached to a subscription or billing profile. This applies to all subscriptions, whatever their status. If your payment method isn't associated with any subscriptions or billing profiles, you can immediately delete it. If a payment method is attached to any subscriptions or billing profiles, first replace it with an existing payment method, or add a new one, then delete the old payment method. If the payment method is only associated with a billing profile, change the payment method used for the billing profile, and then delete the payment method.

### Delete a payment method with no subscriptions or billing profiles attached

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Find the payment method to delete, select the 3 dots, then select **Delete**.
3. At the bottom of the right pane, select **Delete**.

### Delete a payment method with subscriptions or billing profiles attached

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Select the row for the payment method to delete. The right pane lists existing subscriptions that use that payment method.
3. In the right pane, select **Delete**.
4. To use an existing payment method, choose one from the drop-down list, select **Next**, and then **select Delete**.
    > [!NOTE]
    > If you have subscriptions associated with a billing profile, you can only use a credit card to pay for them. If you have bank accounts listed on the **Payment methods** page, they aren’t available to choose in the drop-down list.
5. To add a new payment method, select **Add payment method**.
6. Choose the type of payment method that you want to add, enter the account information, and then select **Save**.
7. Choose the new payment method from the drop-down list, then select **Next**.
8. Select **Delete**.

## Troubleshoot payment methods

|**Issue**|**Troubleshooting steps**|
|:----------|:-----|
|**I get an error message that says, "The browser is currently set to block cookies."** |Set your browser to allow third-party cookies and try again. |
|**My credit or debit card was declined.** |If you pay by credit or debit card, and your card is declined, you receive an email that says Microsoft was unable to process the payment. Double-check that the card details &mdash; card number, expiration date, name on the card, and address, including city, state, and ZIP code — appear exactly as they do on the card and your statement. You can update your card information and immediately submit the payment by using the **Settle balance** link in the **Billing** section of the subscription details page. For more information, see [What if my credit card was declined and my payment is past due?](pay-for-your-subscription.md#what-if-my-credit-card-was-declined-and-my-payment-is-past-due)  <br/><br/>  If you continue to see the "declined" message, contact your bank. It's possible that your card isn't active. If you recently received the card in the mail with an updated expiration date, make sure it's activated. Your bank can also tell you whether your card isn't approved for online, international, or recurring transactions. |
|**I want to update a card or bank account number.** |You can't change the card or account number on an existing payment method. If your card or account number has changed, [replace it with a different payment method](#replace-a-payment-method), which moves all active subscriptions from the payment method to the new one, then [delete the old payment method](#delete-a-payment-method-with-no-subscriptions-or-billing-profiles-attached). |
|**I only have one card or bank account on my account and I want to remove it.** |If you only have one payment method, you must [replace it with a new payment method](#replace-a-payment-method) before you can delete it. |
|**I can't add my card or bank account.**  |You must use a payment method issued from the same country as your tenant. If you have trouble entering your card or bank account information, you can [contact support](../../admin/contact-support-for-business-products.md). |

## Related articles

[Pay for your Office 365 for business subscription](pay-for-your-subscription.md)

[Manage billing profiles](manage-billing-profiles.md)

[Change your payment frequency](change-payment-frequency.md)