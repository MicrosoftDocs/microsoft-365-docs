---
title: Understand your Microsoft business billing account
f1.keywords:
- MACBillingBillingAccountsOverview
author: cmcatee-MSFT
ms.author: cmcatee
manager: scotv
ms.reviewer: jkinma, ramagane
audience: Admin
ms.topic: conceptual
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
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
search.appverid: MET150
description: "Learn about Microsoft business billing accounts and how they're used to manage account settings, invoices, payment methods, and purchases."
ms.date: 07/11/2023
---

# Understand your Microsoft business billing account

When you sign up to try or buy Microsoft business products, a billing account is automatically created for you. You use your billing account to manage your account settings, invoices, payment methods, and purchases from us.

You might have access to multiple billing accounts. For example, you can have one billing account when you buy directly from Microsoft, and another when you have access to your organization’s billing account.

## Before you begin

- [Determine what type of billing account you have](#view-my-billing-accounts).
- If you have a Microsoft Online Subscription Agreement (MOSA) billing account type, you must be a Global or Billing admin to do the tasks in this article. For more information, see [About admin roles](../admin/add-users/about-admin-roles.md).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a billing account reader to do the tasks in this article. For more information, see [What are billing account roles?](#what-are-billing-account-roles)

## What are the types of billing accounts?

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page in the Microsoft 365 admin center provides a view of your business accounts with Microsoft. The following types of billing accounts are supported:

- **Microsoft Online Subscription Agreement (MOSA)**: This billing account was created when you signed up for a Microsoft 365 subscription directly. You might have a MOSA billing account if your account hasn’t yet moved to the Microsoft Customer Agreement. For MOSA billing accounts, you receive an invoice for each order, on the account anniversary.
- **Microsoft Customer Agreement (MCA)**: This billing account is created when your organization works with a Microsoft representative, an authorized partner, or buys products and services independently. For MCA billing accounts, you have a corresponding billing profile that contains your subscriptions. You receive one invoice per billing profile, between the 5th and 9th day of the month.

## View my billing accounts

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
2. Select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a>.
3. The **Billing accounts** page lists the billing accounts associated with your organization.
4. The **Billing account type** column indicates what type of agreement you signed with Microsoft for each billing account. Select a billing account name to view its details page.

## Understand the billing account details page

The top of the billing account details page contains your account profile and shows the legal and tax information about your organization. You can update your profile to change your legal address and phone number. This account is the legal entity that pays for the products that you buy from Microsoft.

The following table lists the terms shown on the billing account details page.

|Field name                       |Description                                     |
|---------------------------------|------------------------------------------------|
|ID                               |The unique identifier for your billing account. |
|Name                             |The name of your billing account. To change the name, select **Update name**. |
|Account status                   |A read-only field that specifies the status of your commercial account with Microsoft. |
|Sold-to                          |The details of the legal entity responsible for payment and identified on the invoice. This section contains the name and address of the individual or organization responsible for the account, together with a contact email address and phone number. The address provided here is used to determine your tax rate unless you opt to provide an alternative shipping address during your purchase. For more information, see [Tax information](billing-and-payments/tax-information.md). |
|Tax ID                           |This field only applies if you’re in a country or region that requires you to provide a VAT or local equivalent. For more information, see [Tax information](billing-and-payments/tax-information.md). |
|Billing profiles                 |The link goes to the list of billing profiles associated with the current billing account. A billing profile defines the properties of your invoice, like who receives the bill, how the bill is delivered, payment terms, and an optional purchase order (PO) number. For more information about billing profiles, see [Manage your Microsoft business billing profiles](billing-and-payments/manage-billing-profiles.md). |
|Registration number (Optional)   |A legal registration number that you provide to us so we can review the details of your account. For more information, see [About registration numbers and under-review notifications](about-registration-numbers.md). To add a registration number, select **Edit**. |

> [!NOTE]
> If you need to change the **Sold-to** name, you must [contact support](../admin/get-help-support.md) to change it. Requests to change the **Sold-to** name require a credit check. Complete [this form](https://www.microsoft.com/download/details.aspx?id=102732), and be ready to share one of following documents with Microsoft when you contact support:
>
> - Government-issued document or registration letter
> - Print out of the local company's registry
>
> Support can help with name and address changes where only the customer name changes, but the entity remains the same. Any documentation you provide should clearly show that only the entity’s name has changed. If the change is the result of a transaction, including the sale of a business, a change of controls, or a divestiture or “spinoff” of a Customer Affiliate, please contact your Microsoft Seller or Microsoft support.

## What are billing account roles?

If you have an MCA billing account type, the bottom of the billing account details page includes a **Billing account roles** tab. This section lists the names of the users and admin center roles assigned to specific billing account roles. Billing account roles are specific to billing accounts and provide different levels of access to the billing account for your organization.

> [!IMPORTANT]
> Billing account roles only apply to billing accounts, and don't apply to other Microsoft 365 admin center scenarios.

You can provide others with access to the billing account in the Microsoft 365 admin center through the billing account roles and permissions. For instructions about how to grant billing account access to other users, see [Assign billing account roles](#assign-billing-account-roles).

Only a billing account owner can grant access to a billing account. You can assign the following roles to users:

|Role                           |Description                                                          |
|-------------------------------|---------------------------------------------------------------------|
|Billing account owner          |Can assign roles, edit accounts, sign agreements, and view accounts. |
|Billing account contributor    |Can edit accounts, sign agreements, and view accounts. |
|Billing account reader         |Can view accounts. |

## Assign billing account roles

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>
2. Select the **Navigation menu**, then select **Billing** > **Billing accounts**.
3. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page, select the billing account.
4. Under **Billing account roles**, select **Assign roles**.
5. In the **Assign roles** pane, type the name or email address, select the role you want to assign to them, then select **Assign**.

## View related role assignments

You can view the roles assigned to users for a billing account and related billing profiles across associated tenants.

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">admin center</a>
2. Select the **Navigation menu**, then select **Billing** > **Billing accounts**.
3. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page, select a billing account.
4. Under **Billing account roles**, select **View related role assignments**.

To export the information shown in the **Related billing role assignments** pane, select **Export to CSV**.

## What are associated billing tenants?

If you have an MCA billing account type, you can give users from other tenants access to collaborate on a single set of resources across all products. For more information about associated billing tenants and how to add and assign roles to them, see [Manage billing across multiple tenants in the Microsoft 365 admin center](billing-and-payments/manage-multi-tenant-billing.md).

## Related content

[Tax information](billing-and-payments/tax-information.md) (article) \
[Manage your Microsoft business billing profiles](billing-and-payments/manage-billing-profiles.md) (article)
