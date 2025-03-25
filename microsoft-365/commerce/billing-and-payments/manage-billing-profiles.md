---
title: "Manage your Microsoft business billing profiles"
f1.keywords:
- 'MACBillingBillsPaymentsBillingProfiles'
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: jkinma, ramagane
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: m365-commerce-management
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_billing
- admindeeplinkMAC
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
search.appverid: MET150
description: "Learn about billing profiles and how they're used to pay invoices for Microsoft business accounts."
ms.date: 02/16/2024 
---

# Manage your Microsoft business billing profiles

A billing profile contains payment method and invoice information associated with your Microsoft business billing account. You use a billing profile to pay for business products and services that you buy from Microsoft. A billing profile is automatically created when a billing account is created, and you can add new billing profiles at any time. For information about billing accounts, see [Understand your Microsoft billing account](../manage-billing-accounts.md).

> [!IMPORTANT]
>
> This article only applies to customers with a Microsoft Customer Agreement billing account type.

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- You must have a Microsoft Customer Agreement (MCA) billing account type, and be a billing profile owner or contributor to do the tasks in this article. For more information, see [What are billing profile roles?](#what-are-billing-profile-roles).
  
> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a billing profile owner.

## View your billing profiles

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>, then go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Billing accounts</a> page.
2. On the **Overview** tab, select a billing account.
3. On the billing account details page, select the **Billing profiles** tab. The tab lists all billing profiles associated with the selected billing account.
4. Select a billing profile name to view its details page.

## Understand the billing profile details page

The billing profile details page contains details like the billing profile name, status, the associated billing account, and address information. The details page also contains information about the invoice, billing notification settings, and payment method used to pay for the products and services that you buy. You can update your billing profile to change certain things like the profile name, the Bill-to address, and invoice and billing notification settings.

The following table lists the terms shown on the billing profile details page.

|Field name            |Description |
|----------------------|------------|
|Billing profile ID    |A read-only field that contains the unique identifier for the billing profile. |
|Name                  |The name of your billing profile. To change the name, select **Edit name**. |
|Status                |A read-only field that shows the status of the billing profile. |
|Billing account       |The billing account associated with the billing profile. To view details about the billing account, select the link. For more information about billing accounts, see [Understand billing accounts](../manage-billing-accounts.md). |
|My role               |A read-only field that shows your billing profile role. |
|Bill-to address       |Contains the contact name, address, email address, and phone number for the billing profile. To make changes to the address details, select **Edit**. |
|Get invoices in email statements   |A setting you can turn on to receive the invoice as an email attachment. The default setting is **On**. To turn this setting on or off, select **Edit settings**. |
|Additional recipients | The list of people who also receive a copy of the invoice by email. |
|Billing notification settings |A link to the **Billing notifications** page where you can edit notification settings, edit the organization email address, and manage the list of admins who receive billing notifications. To make changes, select **Edit settings**. |
|Invoice currency      |The currency used for your invoice, based on the **Sold-to** country/region of the billing account. |
|Payment method        |The payment method used by the billing profile. To make changes to the payment method, select **Edit** or **Replace**. |
|PO number (optional)  |A purchase order (PO) number that you create to track changes for the billing profile. If you add a PO number in this field, it appears on your invoice. To add a PO number, select **Edit**. |

## Add a billing profile

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Billing accounts</a> page.
2. On the **Overview** tab, select a billing account.
3. On the billing account details page, select the **Billing profiles** tab, then select **Add a billing profile.**
4. On the **Basic information** page, enter a name for the new billing profile, then select **Next**.
5. On the **Address information** page, to use the sold-to address for the bill-to address, select the **Same as sold-to address** check box. To add a new address, select **Add bill-to address**, enter the new address information, then select **Save**.
6. To use the bill-to address for the ship-to address, select the **Same as bill-to address** check box. To add a new address, select **Add ship-to address**, enter the new address information, then select **Save**.
7. Select **Next**.
8. On the **How to pay** page, select an existing payment method from the **Choose a card** drop-down list. To add a new payment method, select **Add a card**.
9. Select **Next**.
10. On the **Invoice settings** page, enter any other recipients that you want to receive the invoice.
11. If you want to include a purchase order number on your invoice, enter it in the **Purchase order number** text box.
12. Select **Next**.
13. On the **Review and finish** page, review the information and settings you entered for the new billing profile. You can edit everything except the associated billing account name on this page. When you’re ready, select **Finish**.
14. After the billing profile is ready, select **Done**.

## What are billing profile roles?

Billing profile roles have permissions to control purchases, and view and manage invoices. You can assign these roles to users who track, organize, and pay invoices. Only a billing profile owner can grant access to billing profile roles. You can assign the following roles to users:

| Role                         | Description                                                                      |
|----------------------------- |--------------------------------------------------------------------------------- |
| Billing profile owner        | Can assign roles, edit the billing profile, use it in a purchase, pay bills, and view the billing profile. |
| Billing profile contributor  | Can edit the billing profile, use it in a purchase, pay bills, and view the billing profile. |
| Billing profile reader       | Has a read-only view of everything in a billing profile. |
| Invoice manager              | Can view and pay bills and has a read-only view of everything in a billing profile. |

> [!IMPORTANT]
>
> Billing profile roles only apply to billing profiles, and don't apply to other Microsoft 365 admin center scenarios.

## View users and their billing profile roles

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Billing accounts</a> page.
2. On the **Overview** tab, select a billing account.
3. On the billing account details page, select the **Billing profiles** tab.
4. Select a billing profile name.
5. On the billing profile details page, select the **Billing profile roles** tab.

## Assign billing profile roles

> [!NOTE]
>
> You can only assign billing profile roles to users in your organization.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Billing accounts</a> page.
2. On the **Overview** tab, select a billing account.
3. On the billing account details page, select the **Billing profiles** tab.
4. Select a billing profile name to view its details page, then select the **Billing profile roles** tab.
5. To assign a new user role, select **Assign roles**. In the **Assign roles** pane, enter the name or email address, select the roles you want the user to have, then select **Assign**.
6. To change the roles for a current user, select their name from the list. In the **Edit roles** pane, change the roles assigned to the user, then select **Save**.
7. In the **Assign roles** pane, type the name or email address, select the role you want to assign to them, then select **Assign**.

## View related role assignments

You can view the roles assigned to users for a billing account and related billing profiles across associated tenants.

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Billing accounts</a> page.
2. On the **Overview** tab, select a billing account.
3. On the billing account details page, select the **Billing profiles** tab.
4. Select a billing profile name to view its details page, then select the **Billing profile roles** tab.
5. Select **View related role assignments**.

To export the information shown in the **Related billing role assignments** pane, select **Export to CSV**.

## Related content

[Understand billing accounts](../manage-billing-accounts.md) (article) \
[Paying with a billing profile](pay-for-your-subscription.md#paying-with-a-billing-profile) (article)\
[Manage payment methods](manage-payment-methods.md) (article)
