---
title: "Tax information for Microsoft 365 for business products and services"
f1.keywords:
- NOCSH
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
search.appverid: MET150
ms.custom:
- commerce_billing
- okr_SMB
- AdminSurgePortfolio
- AdminTemplateSet
- admindeeplinkMAC
- GAUpdates
description: "Learn about tax information for Microsoft 365 billing and payments, including how to update your address and tax status."
ms.date: 07/02/2024
---

# Tax information for Microsoft 365 for business products and services

When you buy Microsoft 365 for business products and services, the tax that you pay is determined by one of two things: your business address, or your shipping address, if it's different. If your organization is in the United States, you must provide a Federal Employer Identification Number (FEIN).

> [!NOTE]
> If you need to contact support, have your FEIN, VAT number, or local equivalent ready to give to the support agent.

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- If you have a Microsoft Customer Agreement (MCA) billing account type, you must be a Billing account owner or Billing account contributor to do the tasks in this article. For more information about billing account roles, see [Understand your Microsoft business billing account](../manage-billing-accounts.md).
- If you have a Microsoft Online Services Agreement (MOSA) billing account type, you must be at least a Billing Administrator to do the tasks in this article. For more information, see [About admin roles](../../admin/add-users/about-admin-roles.md).

> [!NOTE]
> If you're the person who signed up for the subscription, you're automatically a Billing account owner.

## Europe, the Middle East, and Africa (EMEA)

When you buy Microsoft 365 products or services in the EMEA region, the purchase could be subject to Value-Added Tax (VAT).
  
- If you're located in a European Union Member State, Armenia, Belarus, Norway, Türkiye, or United Arab Emirates, and you don't provide your valid local VAT ID, Microsoft Ireland Operations Ltd. applies the current local VAT rate, based on the billing country/region your account is set to.
- If you're located in Liechtenstein, Russia, Serbia, South Africa, or Switzerland, the VAT is applied, whether you provide your VAT ID or not.
- For EU customers, before we can validate your VAT ID, it must be available for verification in the VAT Information Exchange System (VIES). If your VAT ID can't be verified, contact your local tax authority.
- If you bought through a Limited Risk Distributor (LRD), you might be charged your local VAT rate even if located outside of Ireland.

You might qualify for VAT zero-rating if you meet one of the following criteria:
  
- **You're in a European Union Member State outside Ireland:** You can provide your valid local VAT ID. Providing the VAT ID lets Microsoft Ireland Operations Ltd. VAT zero-rate the transaction. However, you might have a local VAT accounting obligation. If you have any concerns, check with your tax advisors. For instructions about adding the CAR ID for your organization, see [Add your VAT ID](#add-your-vat-id).
- **You're in Ireland and have the relevant valid VAT exemption certification:** Microsoft Ireland Operations Ltd. might be entitled to exempt the transaction from VAT. If you don't have a VAT exemption certification, Microsoft Ireland Operations Ltd. applies the current Irish VAT rate, whether you provide a VAT ID or not.
- **You're in Armenia, Belarus, Norway, Türkiye, or United Arab Emirates:** You can provide your local VAT ID. Providing the VAT ID entitles Microsoft Ireland Operations Ltd. to VAT zero-rate the transaction. However, you might have a local VAT accounting obligation, so check with your tax advisors if you have any concerns. For instructions about adding the VAT ID for your organization, see [Add your VAT ID](#add-your-vat-id).

## What is the Limited Risk Distributor model?

A Limited Risk Distributor (LRD) is a subsidiary that Microsoft established as buy-sell distributor who sells directly or indirectly. The model affects customers buying directly from Microsoft through the MCA. It also demonstrates the Microsoft commitment to our business in the following countries/regions:

- Australia
- Austria
- Belgium
- Canada
- Denmark
- Finland
- France
- Germany
- Italy
- Netherlands
- New Zealand
- Norway
- Spain
- Sweden
- Switzerland
- United Kingdom

Under the LRD model:

- The selling entity is the local LRD subsidiary (sales and distribution rights have been extended to the LRDs).
- The payment methods won't change for customers.
- The LRD can only sell to customers located in the LRD country/region and agreed territories as defined by Tax.
- For LRD sales, the Licensor is either MS Corp or MIOL.

  - For the Americas, the Licensor is MS Corp (1010).
  - For EMEA and APAC, the Licensor is MIOL (1062).
  
## Asia Pacific countries/regions (APAC)

If you're billed by the Microsoft Regional Sales office, "Microsoft Regional Sales Pte. Ltd." appears on your invoice, and you might be charged for any applicable value-added, sales, or similar taxes.
  
If you're billed from one of the following locations, the current local tax is applied. The location is included on your invoice:
  
- India
- Japan
- Korea
- Singapore
- Taiwan

## North, Central, and South America

In the United States, Canada, Mexico, Chile, and Colombia, various tax rates apply depending on the nature of the product or service and your location.
  
If your billing is done by Microsoft Corporation (see your invoice), and you signed up for Microsoft 365 outside of the United States, Canada, Puerto Rico, Chile, and Colombia, then tax generally isn't charged.

## Add your VAT ID

You can add your VAT ID in the Microsoft 365 admin center. However, the steps to add a VAT ID depend on the type of billing account that you have. [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).

### Add your tax id for your MCA billing account

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
1. Select the **Navigation menu**, then select **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a>.
1. On the **Billing accounts** page, select the billing account.
1. On the billing account details page, select **Add tax ID**.
1. Enter your Tax id, then select **Save**.

> [!NOTE]
> Not all regions support self-serve tax id management. For these countries, **Add tax id** isn't available on the billing account details page.

### Add your VAT ID, GSTIN, or PAN for your MOSA billing account

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2024339" target="_blank">Microsoft 365 admin center</a>.
   - If you're using the **Simplified view**, select **Billing**.
   - If you're using the **Dashboard view**, go to the **Billing** > <a href="https://go.microsoft.com/fwlink/p/?linkid=842054" target="_blank">Your products</a> page.
2. Select the subscription that you want to update.
3. On the subscription details page, in the **Service usage address** section, select **Edit service usage address**.
4. In the **Edit service usage address** pane, in the **VAT, GST, or PAN number** box, enter your ID.
5. Select **Save**.

## How taxes are calculated

Sales taxes are calculated against the unit price, and then aggregated.

For example:

>*(unit price X tax rate) X quantity = total sales tax*

-or-

>($1.29 X 0.095) X 100 = $12.25

## Apply for tax-exempt status

If you qualify for tax-exempt status in your market, [start a service request](../../admin/get-help-support.md) to establish tax exempt status for your organization. The following table lists the documentation required to apply for tax-exempt status, based on your country/region.

|Country/region | Documentation |
|------------------|----------------|
| Canada | Certificate of Exemption (or equivalent letter of authorization) |
| Chile | IVA status/RUT (Registro Unico Tributario) |
| Colombia | IVA status/RUT (Registro Unico Tributario) |
| International organizations that hold tax exemption | Certification / letter confirmation from local tax authorities |
| Ireland | 13B/56A Tax Exemption Certificate|
| United States | Sales Tax Exemption Certificate |
| Puerto Rico | Certificado de Compras Exentas |
  
## Related content

[View your invoice in the Microsoft 365 admin center](view-your-bill-or-invoice.md)\
[Understand your invoice for your Microsoft MCA billing account](understand-your-invoice.md)\
[Understand your invoice for your Microsoft MOSA billing account](understand-your-invoice2.md)
