---
title: Manage billing accounts
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
ms.service: o365-administration 
localization_priority: Normal
ms.collection:
- commerce 
ms.custom:
search.appverid:
- MET150
description: "Learn about billing accounts and how to manage them."
---

# Manage billing accounts

A billing account is created when you sign up to try or buy Microsoft products. You use your billing account to manage your account settings, invoices, payment methods, and purchases. You can have access to multiple billing accounts. For example, you signed up for Microsoft 365 directly, or you have access to your organization’s Enterprise Agreement, Microsoft Product & Services Agreement or Microsoft Customer Agreement. For each of these scenarios, you would have a separate billing account.

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
| Sold-to address | The legal entity responsible for payment and identified on the invoice. The address provided here is used to determine your tax rate unless you opt to provide an alternative shipping address during your purchase. For more information, see [Tax information](#tax-information). |
| Segment | A read-only field that identifies the business segment of your organization (Commercial, Education, Government, or Non-profit). |
| Account status | A read-only field that specifies the status of your commercial account with Microsoft. |
| Tax ID | If you are outside the United States, you must provide a VAT or local equivalent. For more information, see [Tax information](#tax-information). |
| Agreement | When a billing account is created, either through a direct purchase or a Volume Licensing arrangement, a signatory for the organization accepts, or signs, an agreement that outlines the terms & conditions of the account. If applicable, this view lists an agreement history. If you're required to accept updated terms, a link for **Approve agreement** is displayed. |
| Billing profiles | A billing profile defines properties of your invoice, like who receives the bill, how the bill is delivered, payment terms, and a PO number. To distribute billing across your organization, you can create multiple billing profiles and identify the appropriate billing profile at the time of purchase. For more information about billing profiles and how you can use them to build more flexible billing options for your organization, [Manage billing profiles](../billing-and-payments/manage-billing-profiles.md). |

## Shipping addresses

This section lists the shipping addresses associated with your billing account. When you make a purchase, you can use this address to identify where your purchase is shipped or used. The shipping address is editable. You can add a shipping address or update the existing address. This address is used to determine the tax rate for your purchase.

## Understand access to billing accounts

You can provide others with access to the billing account in the Microsoft 365 admin center through roles and permissions. Only a billing account owner can grant access to a billing account. You can assign one of the following roles to users:

- **Billing account owner** &mdash; Can assign permissions, edit accounts, sign agreements, and view accounts.
- **Billing account contributor** &mdash; Can edit accounts, sign agreements, and view accounts.
- **Billing account reader** &mdash; Can view accounts.

> [!Note]
> Billing account roles only apply to billing accounts, and don’t apply to other Microsoft 365 admin center scenarios.

## Tax information

Taxes for Microsoft 365 admin center purchases that you make through Microsoft are determined by your business address, or, if it’s different, by your shipping address. If you are in the United States, you must provide a Federal Employer Identification Number (FEIN).

Businesses in these countries can provide their VAT number:

:::row:::
    :::column:::
- Austria
- Belgium
- Bulgaria
- Croatia
- Cyprus
- Czech Republic
- Denmark
- Estonia
- Finland
- France
- Germany
- Greece
- Hungary
- Ireland
- Italy
- Latvia
    :::column-end:::
    :::column:::
- Liechtenstein
- Lithuania
- Luxembourg
- Malta
- Monaco
- Netherlands
- Norway
- Poland
- Portugal
- Romania
- Slovakia
- South Africa
- Spain
- Sweden
- Switzerland
- United Kingdom
    :::column-end:::
:::row-end:::

These countries can provide their VAT number or local equivalent on their billing account information.

|Market| Tax identifier |
|------|----------------|
| Australia | ABN (optional) |
| Brazil | CNPJ (required) |
| India | GSTIN (optional), PAN ID (required) |
| Isle of Man | VAT ID (optional) |
| New Zealand | GST Registration number (optional) |
| Monaco | VAT ID (optional) |
| Taiwan | VAT ID (optional) |

> [!Note]
> If you need to contact support, have your FEIN, VAT number, or local equivalent ready to give to the support agent.

## Tax-exempt status

If you qualify for tax-exempt status in your market, [start a service request](https://docs.microsoft.com/office365/admin/contact-support-for-business-products) to establish tax exempt status for your organization.

Have the following documentation ready:

|Country or locale | Documentation |
|------------------|----------------|
| United States | Sales Tax Exemption Certificate |
| Canada | Certificate of Exemption (or equivalent letter of authorization) |
| Ireland | 13B/56A Tax Exemption Certificate|
| International organizations that hold tax exemption | Certification / letter confirmation from local tax authorities |
| Puerto Rico | Certificado de Compras Exentas |

## Calculate taxes

Sales taxes are calculated against the unit price, and then aggregated.

For example:

>*(unit price X tax rate) X quantity = total sales tax*

-or-

>($1.29 X 0.095) X 100 = $12.25