---
title: "Manage payment methods for Microsoft business accounts"
f1.keywords:
- CSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: lishepar, jobailey
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-management
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
- OKR_SMB_Videos
- AdminSurgePortfolio
- AdminTemplateSet
- adminvideo
- business_assist
- admindeeplinkMAC
- GAUpdates
- campaignIDs-batch1
search.appverid: MET150
description: "Learn how to manage your payment methods for Microsoft business products or services in the Microsoft 365 admin center."
ms.date: 07/23/2025
---

# Manage payment methods for Microsoft business accounts

> [!NOTE]
> This article only applies to Microsoft business accounts. If you have an app, game, or nonbusiness subscriptions, see [Change your Microsoft subscription payment method and options - Microsoft Support](https://support.microsoft.com/account-billing/39ab4bc1-01f9-fc28-c3a5-49e87b6e7611).

When you buy Microsoft business products or services, you can use an existing payment method to pay for them or add a new one. You can use a credit card or debit card to pay for the things you buy. Depending on your country/region, alternative payment methods might be supported.

> [!IMPORTANT]
> - You must use a payment method issued from the same country/region as your tenant.
> - The option to pay with a bank account is no longer available.
> - Prepaid cards like stored value cards, Visa gift cards, and MasterCard gift cards aren't accepted as valid payment methods.

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a Billing account owner or contributor, or a Billing profile owner or contributor to do the tasks in this article. For more information about billing account and billing profile roles, see [Understand your Microsoft business billing account](../manage-billing-accounts.md) and [Manage your Microsoft business billing profiles](manage-billing-profiles.md).
- If you have a Microsoft Online Subscription Agreement (MOSA), you must be at least a Billing Administrator to do the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
- If you have an MCA billing account type and you're a Billing profile owner or contributor, you can use the billing profile backed by a credit or debit card or invoice payment to make purchases or pay bills. If you're a Billing invoice manager, you can only use a billing profile to pay bills. To learn more about billing profiles and roles, see [Manage your Microsoft business billing profiles](manage-billing-profiles.md).

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Billing account owner.

## View your payment methods

The **Payment methods** page lists the payment methods associated with your account. If you have an MCA billing account, you also see a section that shows the payment methods associated with the current billing account.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

   - If you're using the **Simplified view**, select **Products**, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.

2. If you have more than one billing account, under **Billing account view**, select **Change billing account** to view payment methods associated with each billing account.

The following screenshot shows an example of the **Payment methods** page that includes the first table that contains the payment methods you own, and have added. The second table lists the payment methods associated with a billing profile for the selected billing account.

:::image type="content" source="../../media/m365-billing-payment-methods.png" alt-text="Screenshot of the Payment methods page that shows payment methods and billing profiles for the selected billing account." lightbox="../../media/m365-billing-payment-methods.png":::

## Add a payment method

> [!IMPORTANT]
> Adding a payment method doesn't associate it with any subscriptions or billing profiles you have. If you want to use the new payment method to pay for a subscription, you must move a subscription to it or replace an existing payment method in a billing profile or subscription.

If you have an MOSA billing account type, you can replace the payment method for all subscriptions that use another payment method as part of adding a new one. You can also replace a payment method later on.

### Add a payment method for an MCA or MOSA account

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.

   - If you're using the **Simplified view**, select the **Products** tab, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.

2. Select **Add a payment method**.
3. If your country/region supports an alternate payment option, you see the selection in this step. Select the option you want to add and follow the **Add payment method** form.

   - Some alternate payment types might redirect you to your bank for verification. Don't click away of the Microsoft 365 admin center tab. After the verification is complete, you're automatically redirected back to the admin center.

4. In the **Add a payment method** pane, enter the information for the new payment method, then select **Save**.
5. To use the new payment method to pay for a subscription, you must move a subscription to it or replace an existing payment method in a billing profile.

## Replace a payment method

When you replace an existing payment method, you can add a new one or use a payment method that's already in your account.

If you have an MCA billing account type, you can replace the payment method currently linked with a billing profile. If you have an MOSA billing account type, you can replace the payment method associated with one or more subscriptions.

> [!IMPORTANT]
> Replacing a payment method doesn't delete the existing payment method. The old payment method is still available for you to select and use for other subscriptions and billing profiles. Learn how to delete a payment method.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.

   - If you're using the **Simplified view**, select the **Products** tab, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.

2. Select the **More actions** button (three dots) for the payment method you want to replace, then select **Replace**.
3. The **Replace payment method** wizard opens and you see the details for the current payment method. The **Replace for** section indicates if you're replacing the payment method for subscriptions (MOSA) or a billing profile (MCA).
4. Under **Choose payment method to move subscriptions**, select either **Use another payment method** or **Add a payment method**.

   - If you chose **Use another payment method**, select an alternate payment method from the drop-down list, and then select **Next**.
   - If you chose **Add a payment method**, select **Next**. On the **Add a new payment method** page, enter the payment method details, and then select **Next**.

5. On the **Review details and replace** page, you see the current payment method, the new payment method, and the associated subscriptions or billing profiles associated with the new payment method. Select **Replace payment method**, then select **Close**.

## Edit payment method details

You can change the name, billing address, or expiration date for an existing credit or debit card. However, you can't change the card number. If the account number changed, replace it with a different payment method, and then delete the old one.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.

   - If you're using the **Simplified view**, select the **Products** tab, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.

2. Select the **More actions** button (three dots) for the payment method you want to update, then select Edit.
3. In the **Edit payment method** pane, update your payment method information, including the name on the credit or debit card, billing address, or expiration date.

   > [!IMPORTANT]
   > If you update a credit or debit card, you must enter the security code before any changes are saved.

4. Select **Save**.

## Delete a payment method

You can only delete a payment method that isn't attached to a subscription or billing profile. This applies to all subscriptions, regardless of their status.

> [!NOTE]
> If you have an [Entra Free subscription](/azure/cost-management-billing/manage/microsoft-entra-id-free) inside your billing account you cannot delete or detach the last payment method on file. To remove the last payment method, you must delete the tenant. For more information about deleting a tenant, see [Delete the organization](/entra/identity/users/directory-delete-howto#delete-the-organization).

### Delete a payment method with no subscriptions or billing profiles attached

If a payment method isn't associated with any subscriptions or billing profiles, you can immediately delete it.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.

   - If you're using the **Simplified view**, select the **Products** tab, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.

2. Select the **More actions** button (three dots) for the payment method you want to delete, then select **Delete**.
3. The **Delete payment method** wizard opens. If the payment method isn't associated with any billing profiles or subscriptions, you see the message "No subscriptions linked to this payment method."
4. Select **Delete payment method**. When you see the success message, select **Close**.

### Delete a payment method with subscriptions or billing profiles attached

If a payment method is attached to any subscriptions or billing profiles, you must replace it with an existing payment method or add a new one before deleting the payment method. This can be completed in the **Delete payment method** flow.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.

   - If you're using the **Simplified view**, select the **Products** tab, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a> > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page, and select the **Payment methods** tab.

2. Select the **More actions** button (three dots) for the payment method you want to delete then select **Delete**.
3. The **Delete payment method** wizard opens and you see the payment method details of the payment method that's currently in use. The **Replace for** section shows the number of billing profiles or subscriptions associated with the payment method.
4. Under **Choose payment method to move subscriptions**, select either **Select a payment method** or **Add a new payment method**.

   - If you chose **Select a payment method**, select an alternate payment method from the drop-down list, and then select **Next**.
   - If you chose **Add a new payment method**, select **Next**. On the **Add a new payment method** page, enter the payment method details, and then select **Next**.

5. On the **Review details and delete** page, you see the current payment method, the new payment method, and the associated subscriptions or billing profiles associated with the new payment method. Select **Replace and delete**, and then select **Close**.

## Troubleshoot payment methods

| Issue                                    | Troubleshooting steps |
|:-----------------------------------------|:----------------------|
|**My credit or debit card was declined.** |If you pay by credit or debit card, and your card is declined, you receive an email that says Microsoft was unable to process the payment. Double-check that the card details&mdash;card number, expiration date, name on the card, and address, including city, state, and ZIP code&mdash;appear exactly as they do on the card and your statement. You can update your card information and resubmit the payment.<br/><br/>Also confirm you have sufficient funds in your account to support the payment.<br/><br/>For more information, see [What if I have an outstanding balance?](pay-for-your-subscription.md#what-if-i-have-an-outstanding-balance)<br/><br/>If you continue to see the "declined" message, contact your bank. It's possible that your card isn't active, or you might have insufficient funds. |
|**I want to update a credit or debit card number.** |You can't change the card on an existing payment method. If you want to replace a credit or debit card number, [replace it with a different payment method](#replace-a-payment-method), which moves all active subscriptions from the payment method to the new one. |
|**I only have one credit or debit card on my account and I want to remove it.** |If you only have one payment method, follow the steps in [Delete a payment method](#delete-a-payment-method). |
|**I can't add my credit or debit card.**  |You must use a payment method issued from the same country/region as your tenant. If you have trouble entering your credit or debit card information, you can [contact support](../../admin/get-help-support.md). |

## Related content

[Payment options for your Microsoft business subscription](pay-for-your-subscription.md) (article) <br/>
[View your invoice in the Microsoft 365 admin center](view-your-bill-or-invoice.md) (article)<br/>
[Manage your Microsoft business billing profiles](manage-billing-profiles.md) (article)<br/>
[Change your billing frequency](change-payment-frequency.md) (article)<br/>
[Upgrade or change to a different Microsoft 365 for business plan](../subscriptions/upgrade-to-different-plan.md) (article)<br/>
[Cancel your subscription in the Microsoft 365 admin center](../subscriptions/cancel-your-subscription.md) (article) <br/>
[Get support for Microsoft 365 for business](../../admin/get-help-support.md) (article)
