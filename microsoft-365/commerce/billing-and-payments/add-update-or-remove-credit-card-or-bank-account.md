---
title: "Add, update, or remove your payment methods"
f1.keywords:
- NOCSH
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
ms.custom:
- TopSMBIssues
- okr_SMB
search.appverid:
- BCS160
- MET150
- MOE150
- BEA160
ms.assetid: 30ba9c83-50d8-4020-90ed-830a5b8c8724
description: "Learn how to manage your payment methods in the Microsoft 365 admin center."
---

# Add, update, or remove your payment methods

::: moniker range="o365-worldwide"
You can purchase products and services from Microsoft with a credit or debit card, or bank account. You can enter your payment information on the **Payment methods** page, or when you make a purchase.

You can only manage payment methods that you've added.

> [!NOTE]
> The option to pay with a bank account is not available in some countries or regions.
>
> You must use a credit card issued from the same country as your tenant.

## Add a payment method

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Select **Add a payment method**.
3. On the **Payment methods** page, pick a payment method from the drop-down menu.
4. Enter the information for the new card or bank account, then select **Add**.

## Update an existing payment method

You can't change the number on an existing card or bank account. If the card or bank account number has changed, add it as a new payment method. Next, pick it as the payment option for your subscription, then remove the existing card or bank account. You must use a card issued from the same country as your tenant.

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. On the **Payment methods** page, pick the card or bank account to update, then select **Edit**.
3. Update your payment method information (name on the card or bank account, billing address, phone number, or expiration date), then select **Save**.

## Change a payment method

You can change the payment method that is used to pay for a single subscription. You can also move all subscriptions from one payment method to another.

### Change the payment method used for a single subscription

1. In the admin center, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Products & services</a> page.
2. Select the subscription that you want to pay for with the new card or bank account. Under **Billing**, next to the payment method, select **Edit**.
3. Next to your existing payment method, select **Change**.
4. From the drop-down menu, select an alternate payment method, or choose to add a payment method.
5. If you add a payment method, enter the card or account details, then select **Save**.
6. Verify that the selected payment method is correct, then select **Save**.

### Change the payment method used for multiple subscriptions

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Next to the payment method you want to change, select the **More** menu (three dots), and then select **Change subscriptions**.
3. The **Change payment method** pane lists existing subscriptions that use that payment method.
4. From the **Select payment method** drop-down, select a different payment method, then select **Save**.

> [!NOTE]
> You can only change between existing payment methods in the **Change payment method** pane. If you want to change to pay by invoice, see [Change from credit card or bank account to invoice](change-payment-method.md#change-from-credit-card-or-bank-account-to-invoice).

## Remove a payment method

You can only remove a credit or debit card or bank account from your list of payment methods if it’s not attached to a subscription. This applies to all subscriptions, whatever their status. Add a payment method for the subscription, then remove the old one from that subscription. If the payment method is associated with a billing profile, change the payment method used for the billing profile, and then remove the payment method.

### Delete a payment method

If your payment method isn't associated with any subscriptions, you can immediately delete it.

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Hover over the card or bank account, then select the delete icon.
3. At the bottom of the **Delete payment method** pane, select **Delete**.

### Add an alternate payment method used to pay for subscriptions

If your payment method is associated with any subscriptions and you don't have an alternate payment method on file, first add a payment method. Next, change the payment method used to pay for the subscriptions. Then you can delete the payment method.

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Hover over the card or bank account, then select the delete icon.
3. The **Delete payment method** pane lists existing subscriptions that use that payment method.
4. Select **Add a payment method**.
5. Select the type of payment method you want to add, enter the account information, then select **Add**.
6. Select the new payment method from the drop-down list, then select **Change**.
    > [!WARNING]
    > This will move all subscriptions to the new payment method.
7. Select **Delete**.

### Change the payment method used to pay for subscriptions

If your payment method is associated with any subscriptions, and you have at least one alternate payment method on file, first change the payment method used to pay for the subscriptions. Then you can delete the payment method.

1. In the admin center, go to the **Billing** > **Bills & payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2018806" target="_blank">Payment methods</a> page.
2. Hover over the card or bank account, then select the delete icon.
3. The **Delete payment method** pane lists existing subscriptions that use that payment method.
4. Select **Change payment method**.
5. Select an alternate payment method from the drop-down list, then select **Change**.
    > [!WARNING]
    > This will move all subscriptions to the alternate payment method.
6. Select **Delete**.

### Change the payment method for a billing profile

If your payment method is associated with a billing profile and isn't also used to directly pay for other subscriptions, first change the payment method associated with it. Then you can delete the payment method.

1. In the admin center, go to the **Billing** > **Bills &amp; payments** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2103629" target="_blank">Billing profiles</a> page.
2. Select the billing profile you want to update.
3. On the billing profile details page, under **Payment method**, select **Edit**.
4. If you add an alternate payment method, select **Add a payment method**. Enter your account information, then select **Add**.
5. From the **Select a payment method** drop-down, select a different payment method, then select **Save**.
6. Follow the steps in [Delete a payment method](#delete-a-payment-method).

### Change the payment method used for both a billing profile and subscriptions

If your payment method is associated with a billing profile and is also used to directly pay for any subscriptions, first change the payment method associated with the billing profile. Next, change the payment method used to pay for the subscriptions. Then you can delete the payment method.

1. Follow steps 1 through 5 in [Change the payment method for a billing profile](#change-the-payment-method-for-a-billing-profile).
2. If you have no alternate payment method, follow the steps in [Add an alternate payment method used to pay for subscriptions](#add-an-alternate-payment-method-used-to-pay-for-subscriptions).
3. If you already have other payment methods available, follow the steps in [Change a payment method](#change-a-payment-method).

## Troubleshoot payment methods

|**Issue**|**Troubleshooting steps**|
|:-----|:-----|
|**I get an error message that says, "The browser is currently set to block cookies."** <br/> |Set your browser to allow third-party cookies and try again.  <br/> |
|**My credit or debit card was declined.** <br/> |If you pay by credit or debit card, and your card is declined, you receive an email that says Microsoft was unable to process the payment. Double-check that the card details &mdash; card number, expiration date, name on the card, and address, including city, state, and ZIP code — appear exactly as they do on the card and your statement. You can update your card information and immediately submit the payment by using the **Settle balance** link in the **Billing** section of the subscription details page. For more information, see [What if my credit card was declined and my payment is past due?](pay-for-your-subscription.md#what-if-my-credit-card-was-declined-and-my-payment-is-past-due).  <br/><br/>  If you continue to see the "declined" message, contact your bank. It's possible that your card isn't active. If you recently received the card in the mail with an updated expiration date, make sure it's activated. Your bank can also tell you whether your card isn't approved for online, international, or recurring transactions.  <br/> |
|**I want to update a card or bank account number.** <br/> |You can't change the number on an existing card or bank account. If your card or bank account number has changed, add another card number or bank account. Next, move any active subscriptions from the old card or account to the new one. Then delete the old card or account. For more information, see [Add a payment method](#add-a-payment-method) or [Change a payment method](#change-a-payment-method). |
|**I only have one card or bank account on my account and I want to remove it.** <br/> |If you only have one card or bank account, you see an error message when you try to remove it. To fix the error, make sure that you're using a different payment method to pay for all your subscriptions, then try removing the card or bank account again.  <br/> |
|**I can't add my card or bank account.** <br/> |If you have trouble entering your card or bank account information, you can [contact support](../../admin/contact-support-for-business-products.md).  <br/> |

::: moniker-end

::: moniker range="o365-21vianet"

You must be a Global Admin or a Billing Admin to do the tasks described in this article.
  
 **Not an admin?** Contact your IT administrator for help.[Who has admin permissions in my business?](../../admin/admin-overview/admin-overview.md#who-has-admin-permissions-in-my-business)
  
 **For Office 365 Home, or Personal**, see [Change the payment method or credit card linked to your Microsoft account](https://support.microsoft.com/help/4026594).
  
> [!NOTE]
> The option to pay with a bank account is not available in some countries or regions.
>
> You must use a credit card issued from the same country as your tenant.

## Add a credit card or bank account

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page.

2. Pick the subscription you want to pay for with the new credit card or bank account, then select **Update payment details**.

    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method**, then select **New credit card** or **New bank account**.

    ![The drop-down menu that shows the New credit card and New bank account options.](../../admin/media/2de0566c-e527-4ae7-ad6a-8b461c1e5322.png)
  
4. Enter the information for the new credit card or bank account, then select **Submit**.

    > [!NOTE]
    > The new credit card or bank account will only be used for the Office 365 subscription you chose in step 2. If you have other subscriptions that you want to use the new credit card or bank account for, follow the steps in this article to change the credit card or bank account used to pay for each subscription.

::: moniker-end

::: moniker range="o365-germany"
## Add a credit card or bank account

You must be a Global Admin or a Billing Admin to do the tasks described in this article.
  
 **Not an admin?** Contact your IT administrator for help. [Who has admin permissions in my business?](../../admin/admin-overview/admin-overview.md#who-has-admin-permissions-in-my-business)
  
 **For Office 365 Home, or Personal**, see [Change the payment method or credit card linked to your Microsoft account](https://support.microsoft.com/help/4026594).
  
> [!NOTE]
> The option to pay with a bank account is not available in some countries or regions.
>
> You must use a credit card issued from the same country as your tenant.

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page.

2. Pick the subscription you want to pay for with the new credit card or bank account, then select **Update payment details**.

    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method**, then select **New credit card** or **New bank account**.

    ![The drop-down menu that shows the New credit card and New bank account options.](../../admin/media/2de0566c-e527-4ae7-ad6a-8b461c1e5322.png)
  
4. Enter the information for the new credit card or bank account, then select **Submit**.

    > [!NOTE]
    > The new credit card or bank account will only be used for the Office 365 subscription you chose in step 2. If you have other subscriptions that you want to use the new credit card or bank account for, follow the steps in this article to change the credit card or bank account used to pay for each subscription.

::: moniker-end

::: moniker range="o365-21vianet"
## Update an existing credit card or bank account

> [!NOTE]
> You can't change the number on an existing credit card or bank account. If the credit card or bank account number has changed, add it as a new credit card or bank account. Next, pick it as the payment option for your subscription, then remove the existing credit card or bank account.
> You must use a credit card issued from the same country as your tenant.

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page.

2. Pick the subscription you bought with the credit card bank account that you want to update, then select **Update payment details**.

    > [!NOTE]
    > If another admin purchased the subscription, you won't be able to update the credit card or bank account information for it. If the credit card is about to expire and the other administrator isn't able to update it, you can prevent service interruption if you add a different credit card or new bank account for the subscription.
  
    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method**. Select the credit card or bank account that you want to update, then select **Edit details**.

    ![The Update payment details pane when a subscription is paid for by credit card or bank account.](../../admin/media/fa9b3a8f-9a80-4887-88e6-d19e6afd1b3d.png)
  
4. Update your credit card or bank account information (name on the credit card or bank account, billing address. phone number, or expiration date) as needed, then select **Submit**.

5. A confirmation message appears. If it doesn't, see [Troubleshooting credit cards and bank accounts](#troubleshooting-credit-cards-and-bank-accounts).

    ![The confirmation message: "Your payment method was successfully updated."](../../admin/media/23b4aa8e-f5d5-4535-92a2-9111a270f097.png)

::: moniker-end

::: moniker range="o365-germany"
## Update an existing credit card or bank account

> [!NOTE]
> You can't change the number on an existing credit card or bank account. If the credit card or bank account number has changed, add it as a new credit card or bank account. Next, pick it as the payment option for your subscription, then remove the existing credit card or bank account.
> You must use a credit card issued from the same country as your tenant.

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page.

2. Pick the subscription you bought with the credit card bank account that you want to update, then select **Update payment details**.

    > [!NOTE]
    > If another admin purchased the subscription, you won't be able to update the credit card or bank account information for it. If the credit card is about to expire and the other administrator isn't able to update it, you can prevent service interruption if you add a different credit card or new bank account for the subscription.
  
    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method**. Select the credit card or bank account that you want to update, then select **Edit details**.

    ![The Update payment details pane when a subscription is paid for by credit card or bank account.](../../admin/media/fa9b3a8f-9a80-4887-88e6-d19e6afd1b3d.png)
  
4. Update your credit card or bank account information (name on the credit card or bank account, billing address. phone number, or expiration date) as needed, then select **Submit**.

5. A confirmation message appears. If it doesn't, see [Troubleshooting credit cards and bank accounts](#troubleshooting-credit-cards-and-bank-accounts).

    ![The confirmation message: "Your payment method was successfully updated."](../../admin/media/23b4aa8e-f5d5-4535-92a2-9111a270f097.png)

::: moniker-end

::: moniker range="o365-21vianet"
## Remove a credit card or bank account

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page.

2. Pick any subscription, then select **Update payment details**.

    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method**.

4. Select the credit card or bank account, then select **Remove**.

    ![The Update payment details pane when a subscription is paid for by credit card or bank account.](../../admin/media/fa9b3a8f-9a80-4887-88e6-d19e6afd1b3d.png)
  
5. Select **Remove** again to delete the credit card or bank account.

    ![The Remove and Cancel buttons.](../../admin/media/22135f0d-c758-4564-a3b2-9c9050f7601b.png)
  
    > [!NOTE]
    > You won't be able to remove a credit card or bank account if it's currently used to pay for a subscription. If you try, you see a message like this:
    > ![The error message that appears if you try to remove a payment method currently used to pay for an active subscription.](../../admin/media/29319a8b-af0b-4487-853b-6f47d6fe4a28.png) <br/>
    > To remove the credit card or bank account, select **Back** and follow the steps in this article to change the credit card or bank account that you use to pay for the subscription. Then try removing the credit card or bank account again.

::: moniker-end

::: moniker range="o365-germany"
## Remove a credit card or bank account

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page.

2. Pick any subscription, then select **Update payment details**.

    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method**.

4. Select the credit card or bank account, then select **Remove**.

    ![The Update payment details pane when a subscription is paid for by credit card or bank account.](../../admin/media/fa9b3a8f-9a80-4887-88e6-d19e6afd1b3d.png)

5. Select **Remove** again to delete the credit card or bank account.

    ![The Remove and Cancel buttons.](../../admin/media/22135f0d-c758-4564-a3b2-9c9050f7601b.png)
  
    > [!NOTE]
    > You won't be able to remove a credit card or bank account if it's currently used to pay for a subscription. If you try, you see a message like this:
    > ![The error message that appears if you try to remove a payment method currently used to pay for an active subscription.](../../admin/media/29319a8b-af0b-4487-853b-6f47d6fe4a28.png) <br/>
    > To remove the credit card or bank account, select **Back** and follow the steps in this article to change the credit card or bank account that you use to pay for the subscription. Then try removing the credit card or bank account again.

::: moniker-end

::: moniker range="o365-21vianet"
## Change the credit card or bank account used to pay for a subscription

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=850626" target="_blank">Subscriptions</a> page.

2. Pick the subscription that you want to pay for with the new credit card or bank account, then select **Update payment details**.

    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method** and select the credit card or bank account that you want to use.

    ![The Update payment details pane when a subscription is paid for by credit card or bank account.](../../admin/media/fa9b3a8f-9a80-4887-88e6-d19e6afd1b3d.png)
  
4. Select **Submit**. If the credit card or bank account that you want to use isn't listed yet, pick **New credit card** or **New bank account** to add it.

::: moniker-end

::: moniker range="o365-germany"
## Change the credit card or bank account used to pay for a subscription

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=847745" target="_blank">Subscriptions</a> page.

2. Pick the subscription that you want to pay for with the new credit card or bank account, then select **Update payment details**.

    ![The Payment method section of the Subscription page that shows the Update payment details link.](../../admin/media/03839d72-773c-4030-88d0-484d1efe49c5.png)
  
3. Select the drop-down arrow under **Add or select a payment method** and select the credit card or bank account that you want to use.

    ![The Update payment details pane when a subscription is paid for by credit card or bank account.](../../admin/media/fa9b3a8f-9a80-4887-88e6-d19e6afd1b3d.png)
  
4. Select **Submit**. If the credit card or bank account that you want to use isn't listed yet, pick **New credit card** or **New bank account** to add it.

::: moniker-end

::: moniker range="o365-21vianet"
## Troubleshooting credit cards and bank accounts

|**Issue**|**Troubleshooting steps**|
|:-----|:-----|
|**I get an error message that says "The browser is currently set to block cookies."** <br/> |Set your browser to allow third-party cookies and try again.  <br/> |
|**My credit card was declined.** <br/> |If you pay by credit card, and your credit card is declined, you receive an email that we were unable to process the payment. Verify that the credit card details (card number, expiration date, name on the credit card, and address, including city, state, and ZIP code) appear exactly as they do on the credit card and your credit card statement. You can update your credit card information and immediately submit the payment by using the **Pay now** feature. For more information, see [What if my credit card was declined and my payment is past due?](pay-for-your-subscription.md#what-if-my-credit-card-was-declined-and-my-payment-is-past-due).  <br/><br/>  If you continue to see the "declined" message, contact your bank. It's possible that your credit card isn't active. If you recently received the credit card in the mail with an updated expiration date, make sure it's activated. Your bank can also tell you whether your credit card isn't approved for online, international, or recurring transactions.  <br/> |
|**I want to update a credit card or bank account number.** <br/> |You can't change the number on an existing credit card or bank account. If your credit card or bank account number has changed, [add a new credit card or bank account](#add-a-credit-card-or-bank-account), [change your subscription to that card or bank account](#change-the-credit-card-or-bank-account-used-to-pay-for-a-subscription), and then [delete the old credit card or bank account](#remove-a-credit-card-or-bank-account). |
|**I only have one credit card or bank account on my account and I want to remove it.** <br/> |If you only have one credit card or bank account, you see an error message when you try to remove it. To fix error, make sure that you're using a different payment method to pay for all of your subscriptions, then try removing the credit card or bank account again.  <br/> |
|**I can't add my credit card or bank account.** <br/> |If you have trouble entering your credit card or bank account information, you can [contact support](../../admin/contact-support-for-business-products.md).  <br/> |

::: moniker-end

::: moniker range="o365-germany"
## Troubleshooting credit cards and bank accounts

|**Issue**|**Troubleshooting steps**|
|:-----|:-----|
|**I get an error message that says "The browser is currently set to block cookies."** <br/> |Set your browser to allow third-party cookies and try again.  <br/> |
|**My credit card was declined.** <br/> |If you pay by credit card, and your credit card is declined, you receive an email that we were unable to process the payment. Verify that the credit card details (card number, expiration date, name on the credit card, and address, including city, state, and ZIP code) appear exactly as they do on the credit card and your credit card statement. You can update your credit card information and immediately submit the payment by using the **Pay now** feature. For more information, see [What if my credit card was declined and my payment is past due?](pay-for-your-subscription.md#what-if-my-credit-card-was-declined-and-my-payment-is-past-due).  <br/><br/>  If you continue to see the "declined" message, contact your bank. It's possible that your credit card isn't active. If you recently received the credit card in the mail with an updated expiration date, make sure it's activated. Your bank can also tell you whether your credit card isn't approved for online, international, or recurring transactions.  <br/> |
|**I want to update a credit card or bank account number.** <br/> |You can't change the number on an existing credit card or bank account. If your credit card or bank account number has changed, [add a new credit card or bank account](#add-a-credit-card-or-bank-account-1), [change your subscription to that the credit card or bank account](#change-the-credit-card-or-bank-account-used-to-pay-for-a-subscription-1), and then [delete the old credit card or bank account](#remove-a-credit-card-or-bank-account-1). |
|**I only have one credit card or bank account on my account and I want to remove it.** <br/> |If you only have one credit card or bank account, you see an error message when you try to remove it. To fix error, make sure that you're using a different payment method to pay for all of your subscriptions, then try removing the credit card or bank account again.  <br/> |
|**I can't add my credit card or bank account.** <br/> |If you have trouble entering your credit card or bank account information, you can [contact support](../../admin/contact-support-for-business-products.md).  <br/> |

::: moniker-end

## Related articles

[Change your billing addresses](change-your-billing-addresses.md)
  
[Cancel your subscription](../subscriptions/cancel-your-subscription.md)