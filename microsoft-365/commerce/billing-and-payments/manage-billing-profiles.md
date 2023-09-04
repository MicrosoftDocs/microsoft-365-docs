---
title: Understand your Microsoft business billing profile
f1.keywords:
- 'MACBillingBillsPaymentsBillingProfiles'
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: jkinma, ramagane
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_billing
- AdminSurgePortfolio
- AdminTemplateSet
search.appverid: MET150
description: "Learn about billing profiles and how they're used to pay invoices for Microsoft business accounts."
ms.date: 07/11/2023 
---

# Understand your Microsoft business billing profile

A billing profile contains payment method and invoice information associated with your billing account. You use a billing profile to pay for business products and services that you buy from Microsoft. A billing profile is automatically created when a billing account is created. For information about billing accounts, see [Understand your Microsoft billing account](../manage-billing-accounts.md).

> [!NOTE]
>
> Not all accounts have a billing profile. If you're not sure if you have a one, you can [view a list of your billing profiles](manage-billing-profiles.md#view-your-billing-profiles).

## Before you begin

- You must be a Global or Billing admin to do the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).
- You must also have any role on the billing account or billing profile. For more information, see [What are billing profile roles?](#what-are-billing-profile-roles) and [What are billing account roles?](../manage-billing-accounts.md#what-are-billing-account-roles)

## View your billing profiles

> [!NOTE]
>
> If you follow these steps and the billing profiles list is empty, it means that you don't have a billing profile, and can't use this feature.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
   - If you're using the **Simplified view**, select **Billing**, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.
2. On the **Bills & payments** page, select the **Billing profile** tab.
3. Select a billing profile name to view its details page.

## Understand the billing profile details page

The top of the **Billing profile** details page contains information about the payment method used to pay for the products and services that you buy, and shows details about how we invoice you. You can update your profile to change your payment method, Bill-to address, email address, and phone number.

The following table lists the terms shown on the **Billing profile** details page.

|Field name            |Description |
|----------------------|------------|
|Name                  |The name of your billing profile. To change the name, select **Update name**. |
|Status                |A read-only field that shows the status of the billing profile. |
|Invoice currency      |The currency used for your invoice, based on the **Sold-to** country or region of the billing account. |
|Payment method        |The payment method used for the billing profile. To make changes, select **Edit** or **Replace**. |
|Invoice frequency     |Shows how often you receive an invoice. |
|Backup payment method |Shows the backup payment method, if one exists. |
|Invoice date          |Shows the date the invoice is created. |
|Billing account       |The billing account that’s associated with the billing profile. To view details about the billing account, select the link. For more information about billing accounts, see [Understand billing accounts](../manage-billing-accounts.md). |
|Get invoices in email statements   |A setting you can turn on to receive the invoice as an email attachment. The default setting is **On**. |
|Bill-to address       |Contains the contact name, address, email address, and phone number for the billing profile. |
|PO number (optional)  |If you provide a purchase order (PO) number in this field, it appears on your invoice. |

## What are billing profile roles?

The bottom of the **Billing profile** details page contains the **Billing profile roles** section. This section lists the names of the users assigned to specific billing profile roles. Billing profile roles have permissions to control purchases, and view and manage invoices. You can assign these roles to users who track, organize, and pay invoices.

Only a billing profile owner can grant access to billing profile roles. You can assign the following roles to users:

| Role                         | Description                                                                      |
|----------------------------- |--------------------------------------------------------------------------------- |
| Billing profile owner        | Can assign roles, edit the billing profile, use it in a purchase, pay bills, and view the billing profile. |
| Billing profile contributor  | Can edit the billing profile, use it in a purchase, pay bills, and view the billing profile. |
| Billing profile reader       | Has a read-only view of everything in a billing profile. |
| Invoice manager              | Can view and pay bills and has a read-only view of everything in a billing profile. |

> [!IMPORTANT]
>
> Billing profile roles only apply to billing profiles, and don't apply to other Microsoft 365 admin center scenarios.

## Assign billing profile roles

> [!NOTE]
>
> You can only assign billing profile roles to users in your organization.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Billing**, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.
2. On the **Bills & payments** page, select the **Billing profile** tab.
3. Select a billing profile name to view its details page.
4. On the **Billing profile** details page, under **Billing profile roles**, select **Assign roles**.
5. In the **Assign roles** pane, type the name or email address, select the role you want to assign to them, then select **Assign**.

## View related role assignments

You can view the roles assigned to users for a billing account and related billing profiles across associated tenants.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>.
   - If you're using the **Simplified view**, select **Billing**, then select **View payment methods**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.
2. On the **Bills & payments** page, select the **Billing profile** tab.
3. Select a billing profile name to view its details page.
4. On the **Billing profile** details page, under **Billing profile roles**, select **View related role assignments**.

To export the information shown in the **Related billing role assignments** pane, select **Export to CSV**.

## Related content

[Understand billing accounts](../manage-billing-accounts.md) (article) \
[How to pay for your subscription with a billing profile](pay-for-subscription-billing-profile.md) (article) \
[Manage payment methods](manage-payment-methods.md) (article)
