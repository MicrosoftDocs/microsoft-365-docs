---
title: Understand billing accounts
f1.keywords:
- NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: tugu, jmueller
audience: Admin
ms.topic: article
ms.service: o365-administration 
localization_priority: Normal
ms.collection:
- M365-subscription-management 
- Adm_O365
ms.custom: 
- AdminSurgePortfolio
- commerce_billing
search.appverid: MET150
description: "Learn about billing accounts and how they're used to manage account settings, invoices, payment methods, and purchases."
ms.date: 03/17/2021
---

# Understand billing accounts

A billing account is created when you sign up to try or buy Microsoft products. You use your billing account to manage your account settings, invoices, payment methods, and purchases. You can have access to multiple billing accounts. For example, you signed up for Microsoft 365 directly, or you have access to your organization's Enterprise Agreement, Microsoft Product & Services Agreement or Microsoft Customer Agreement. For each of these scenarios, you would have a separate billing account.

The Microsoft 365 admin center currently supports the following type of billing accounts:

- Microsoft Online Services Program: This billing account is created when you sign up for a Microsoft 365 subscription directly.
- Microsoft Products & Services Agreement (MPSA) Program: This billing account is created when your organization signs an MPSA Volume Licensing agreement to purchase software and online services.
- Microsoft Customer Agreement: This billing account is created when your organization works with a Microsoft representative, an authorized partner, or purchases independently.

The <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page provides a view of your commercial accounts with Microsoft. By default, your organization has at least one billing account associated with an agreement that is accepted either at the time of a direct purchase, or through a Volume Licensing arrangement.

## Understand billing account details

The top of the **Billing accounts** detail page is your account profile and contains legal and tax information about your organization. You can update your profile to change your legal address and phone number. This account is the legal entity that pays for the products that you purchase.

The following table lists the important terms that you see in the **Billing accounts** detail page.

| Field name | Description |
|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Sold-to address | The legal entity responsible for payment and identified on the invoice. The address provided here is used to determine your tax rate unless you opt to provide an alternative shipping address during your purchase. For more information, see [Tax information](billing-and-payments/tax-information.md). |
| Segment | A read-only field that identifies the business segment of your organization (Commercial, Education, Government, or Non-profit). |
| Account status | A read-only field that specifies the status of your commercial account with Microsoft. |
| Tax ID | If you are outside the United States, you must provide a VAT or local equivalent. For more information, see [Tax information](billing-and-payments/tax-information.md). |
| Agreement | When a billing account is created, either through a direct purchase or a Volume Licensing arrangement, a signatory for the organization accepts, or signs, an agreement that outlines the terms & conditions of the account. If applicable, this view lists an agreement history. If you're required to accept updated terms, a link for **Approve agreement** is displayed. |
| Billing profiles | A billing profile defines properties of your invoice, like who receives the bill, how the bill is delivered, payment terms, and a PO number. To distribute billing across your organization, you can create multiple billing profiles and identify the appropriate billing profile at the time of purchase. For more information about billing profiles and how you can use them to build more flexible billing options for your organization, [Understand billing profiles](billing-and-payments/manage-billing-profiles.md). |

> [!NOTE]
> If you need to change the **Sold-to** name or address, but don't see an **Edit** link, you must [contact support](../business-video/get-help-support.md) to change it. Requests for a **Sold-to** name change will require a credit check. Complete [this form](https://www.microsoft.com/download/details.aspx?id=102732), and be ready to share one of following documents with Microsoft when you contact support:
>
> - Government-issued document or registration letter
> - Print out of the local company's registry
>
> Support can help with name and address changes where only the customer name changes, but the entity remains the same. Documentation provided should clearly show that only the entity's name has changed. If the change is the result of a transaction, including the sale of business, a change of controls, or a divestiture or "spinoff" of a Customer Affiliate, please contact your Microsoft Seller.

## Shipping addresses

This section lists the shipping addresses associated with your billing account. When you make a purchase, you can use this address to identify where your purchase is shipped or used. The shipping address is editable. You can add a shipping address or update the existing address. This address is used to determine the tax rate for your purchase.

## Understand access to billing accounts

You can provide others with access to the billing account in the Microsoft 365 admin center through roles and permissions. Only a billing account owner can grant access to a billing account. You can assign one of the following roles to users:

- **Billing account owner** &mdash; Can assign permissions, edit accounts, sign agreements, and view accounts.
- **Billing account contributor** &mdash; Can edit accounts, sign agreements, and view accounts.
- **Billing account reader** &mdash; Can view accounts.

> [!Note]
> Billing account roles only apply to billing accounts, and don't apply to other Microsoft 365 admin center scenarios.

## Related content

[Tax information](billing-and-payments/tax-information.md) (article) \
[Understand billing profiles](billing-and-payments/manage-billing-profiles.md) (article)
