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

The billing account provides you a summary of your account information. It’s available online in the Microsoft 365 admin center on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page. The page lets you manage your account profile and define the parts of your organization that do business with Microsoft. This information includes addresses, contact information, and Tax info.

## Understand the Billing account details

The top of the **Billing account** detail page contains information about your organization. This organization is the legal entity that pays for the products that you purchase.

| Field name | Description |
|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Sold-to address | The billing account that identifies the name and address of the legal entity responsible for payment. This information can be managed on the **Billing account** page. |
| Segment | The business segment that your organization belongs to (Commercial, Education, Government, or Non-profit). This information is read-only. |
| Account status | The status of your account with Microsoft. This information is read-only. |
| Tax iD | If you are outside the United States, you must provide a VAT or local equivalent. Your **Sold-to** address determines what tax to charge for purchases you make. For more information, see [Tax information](#tax-information). |
| Agreement | Each organization signs the purchasing agreement with Microsoft. You can view the agreement and the agreement history, if applicable, here. If there's an updated version of the Microsoft customer agreement for you to sign, there is a link for **Approve agreement**. |
| Billing profiles | The name of the billing profile used to define invoice properties like Bill to, PO number, and payment terms. For more information about billing profiles and how you can use them to build more flexible billing options for your organization, see [Manage billing profiles](../billing-and-payments/manage-billing-profiles.md). |

## Understand shipping addresses

This section lists the shipping addresses associated with your billing account. You can have one or more shipping addresses associated with your billing account. When you make a purchase, you select which shipping address to use. If the address is different from the **Sold-to address**, the shipping address is used to determine what tax to charge. For example, you can have one shipping address for Seattle, Washington, and another shipping address for Miami, Florida. When you make a purchase and specify that it's for use at the Miami, Florida address, the tax you pay is based on the tax rate for that location.

## Understand the Billing account roles

Roles on the billing account have permissions to control view and manage account. Only a billing account owner can assign roles to users. Assign these roles to users who track, organize, and manage the account information for the purchase made.

> [!Note]
> Billing account roles only apply to billing accounts, and don’t apply to other Microsoft 365 admin center scenarios.

| Role                        | Description                                                        |
|-----------------------------|--------------------------------------------------------------------|
| Billing account owner       | Manage everything for a billing account.                           |
| Billing account contributor | Manage everything except assign permissions for a billing account. |
| Billing account reader      | Read-only view of everything in the billing account.               |

## Tax information

Taxes for Microsoft 365 admin center purchases that you make through Microsoft are determined by your business address. If the shipping address is different, that address is used, instead. Organizations in the United States must provide a Federal Employer Identification Number (FEIN).

Businesses in these countries can provide their VAT number:

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
> If you need to contact support, please have your FEIN, VAT number, or local equivalent ready to give to the support agent.

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

## Calculating tax

Sales taxes are calculated against the unit price, and then aggregated.

For example:

*(unit price X tax rate) X quantity = total sales tax*

-or-

($1.29 X 0.095) X 100 = $12.25