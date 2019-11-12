---
title: Manage billing profiles
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
f1_keywords:
- 'MACBillingBillsPaymentsBillingProfiles'
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- commerce
ms.custom:
search.appverid:
- MET150
description: "Learn how billing profiles support invoices."
keywords: billing profile, invoices, charges, managed charges
---

# Manage billing profiles
For commercial customers who buy products and services from Microsoft, billing profiles let you customize what items are included on your invoice, and how you pay your invoices.

Billing profiles include the following information:

- **Billing account** &mdash; Name of the billing account the profile is related to
- **Payment methods** &mdash; Credit or debit cards, bank accounts, check, or wire transfer
- **Contact information** &mdash; Billing address and a contact name
- **Invoice settings** &mdash; Currency based on the country of the billing account, an optional PO number, and the option to receive invoices as email attachments
- **Permissions** &mdash; Permissions that allow you to change the billing profile, pay bills, or use the payment method on the billing profile to make purchases

Use billing profiles to control your purchases and customize your invoice. A monthly invoice is generated for the products bought with the
billing profile. You can customize the invoice such as update the purchase order number and email invoice preference.

A billing profile is automatically created for your billing account during your first purchase. You can create billing profiles on the
<a href="https://go.microsoft.com/fwlink/p/?linkid=2103629" target="_blank">Billing profiles</a> page to set up more invoices. For example, you can use different billing profiles when you make purchases for each
department in your organization. On your next billing date, you'll receive an invoice for each billing profile.

## Billing profile roles

Roles on billing profiles have permissions to control purchases, and view and manage invoices. Assign these roles to users who track, organize, and pay invoices, like members of the procurement team in your organization.

| Role                        	| Description                                                                     	|
|-----------------------------	|---------------------------------------------------------------------------------	|
| Billing profile owner       	| Manage everything for a billing profile                                         	|
| Billing profile contributor 	| Manage everything except permissions in a billing profile                       	|
| Billing profile reader      	| Read-only view of everything in a billing profile                               	|
| Invoice manager             	| View and pay bills, and has a read-only view of everything in a billing profile 	|

## View billing profiles

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=848039" target="_blank">Bills & payments</a> page.

2. Choose **Billing profiles**, and then choose a billing profile from the list.

    - On the **Overview** tab, you can edit billing profile details, and turn on or off sending an invoice by email.

    - On the **Permissions** tab, you can assign roles to users to pay invoices.

    - On the **Azure credit balance** tab, Azure customers can see transaction balance history for the Azure credits used by that billing profile.

    - On the **Azure credits** tab, Azure customers can see a list of Azure credits associated with that billing profile, and their expiration dates.

    > [!NOTE]
    > If you don't have any Azure credits, you won't see the **Azure credit balance** or **Azure credits** tabs.

## Need help? Contact support.

If you have questions or need help with your Azure charges, <a href="https://portal.azure.com/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/newsupportrequest" target="_blank">create a support request with Azure support</a>.

If you have questions or need help with your billing profile in Microsoft 365 admin center, [contact support for business products](https://docs.microsoft.com/office365/admin/contact-support-for-business-products).