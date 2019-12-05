---
title: Understand your invoice
ms.author: cmcatee
author: cmcatee-MSFT
manager: mnirkhe
audience: Admin
ms.topic: article
f1_keywords:
- 'MACBillingBillsPaymentsInvoices'
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- commerce
ms.custom:
search.appverid:
- MET150
description: "Learn how to read and understand your invoice for Microsoft business products."
keywords: billing accounts, organization info, invoices
---

# Understand your invoice

The invoice provides a summary of your charges and instructions for payment. You can [view your online invoice](#view-your-online-invoice) in the Microsoft 365 admin center. You can also download it in the Portable Document Format (.pdf) to send via email.

If you only have an Office 365 subscription, see [View your invoice for Office 365 for business](https://docs.microsoft.com/office365/admin/subscriptions-and-billing/view-your-bill-or-invoice).

## Understand the invoice header

The top of the first page identifies who is accountable for payment, where the bill is sent to, and a summary of charges.

| Term | Description |
| --- | --- |
| Sold to |The billing account that identifies the name and address of the legal entity responsible for payment. This information can be managed on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2084771" target="_blank">Billing accounts</a> page, where you can find the account agreement and manage roles and permissions. |
| Bill to |Identifies who receives the invoice. This information can be managed on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2103629" target="_blank">Billing profiles</a> page. The billing profile is also shown on the online invoice page, in the **Invoice summary** section. To learn more about billing profiles and how you can use them to build more flexible billing options for your organization, see [Manage billing profiles](manage-billing-profiles.md). |
| Billing Profile |The name of the billing profile used to define invoice properties like Bill to, PO number, and payment terms. This information can be managed on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2103629" target="_blank">Billing profiles</a> page. For more information about billing profiles and how you can use them to build more flexible billing options for your organization, see [Manage billing profiles](manage-billing-profiles.md). |
| Invoice number |A unique, Microsoft-generated invoice number used for tracking purposes. |
| Invoice date |Date that the invoice is generated, typically five to 12 days after the end of the billing cycle. You can check your invoice date on the billing profile details page. Charges that occur between the end of the billing period and the invoice date are included in the invoice for the next month, since they are in the next billing period. The billing period start and end dates for each invoice are listed in the invoice PDF above **Billing Summary**.|
| Payment terms |How you pay for your Microsoft bill. *Net 30 days* means that you pay by following instructions on your invoice, within 30 days of the invoice date. |

## Understand the billing summary

The **Billing Summary** shows the summary of charges since the previous billing period, any credits that were applied, tax, and the total amount due.

| Term | Description |
| --- | --- |
| Charges|Total number of products purchased for this billing period, and their related charges and taxes. Purchases are aggregated to provide a concise view of your bill. |
| Credits |Credits you received from returns |
| Azure credits applied |Your Azure credits that are automatically applied to Azure charges each billing period. If you don't have any Azure credits, this field is hidden. For more information about Azure credits, see [Track Microsoft Customer Agreement Azure credit balance](https://docs.microsoft.com/azure/billing/billing-mca-check-azure-credits-balance). |
| Subtotal |The pre-tax amount due |
| Tax |The type and amount of tax that you pay, depending on the country of your billing profile. If you don't have to pay tax, no tax is shown on your invoice. |

### Understand your charges

The charges pages show the cost broken down by product. For Azure customers, the charges might be organized by invoice section. For more information about how invoice sections are used with Azure products, see
[Invoice sections](https://docs.microsoft.com/azure/billing/billing-mca-overview#invoice-sections) in [Get started with your Microsoft Customer Agreement billing account](https://docs.microsoft.com/azure/billing/billing-mca-overview). Within each product order, cost is broken down by service family.

| Term |Description |
| --- | --- |
| Unit price | The effective unit price of the service (in pricing currency) that is used to calculate the charge. This price is unique for a product, service family, meter, and offer. |
| Qty | Quantity purchased or consumed during the billing period |
| Charges/Credits | Net amount of charges after credits/refunds are applied |
| Azure Credit | The amount of Azure credits applied to the Charges/Credits |
| Tax rate | Tax rate, depending on the country |
| Tax amount | Amount of tax applied to the purchase based on tax rate |
| Total | The total amount due for the purchase |

Line items details vary depending on the type of product you're charged for. For example, for Azure products, the amount of Azure credits applied is shown. Seat-based products show a unit price and
quantity. The invoice details outline the products purchased, discount or credits that were applied, tax rate and amount, and the line item totals.

`Total = Charges - Azure Credit + Tax`

The total amount due for each service family is calculated by subtracting Azure credits from credits/charges, and adding tax:

`Total = Charges/Credits - Azure Credit + Tax`

If there are Azure charges on your invoice that you would like more details on, see [Understand charges on your Microsoft Customer Agreement invoice](https://docs.microsoft.com/azure/billing/billing-mca-understand-your-bill).

## Understand the last invoice page

### Payment instructions

At the bottom of the invoice are instructions on how to pay your bill. You can pay by wire, check, or online.

### Publisher information

If you have third-party services in your bill, the name and address of each publisher is listed at the bottom of your invoice.

## View your online invoice

Invoices are available online. A link to your online invoice is available from your PDF invoice, and from an email notification. The online invoice is expandable so you can view the charges on your invoice and
see more details for each item. The online invoice includes:

- **Pricing details** &mdash; Additional information including details about discounts and product pricing.

- **Online payment** &mdash; You can choose to make a payment online from the invoice.

- **Azure cost management** &mdash; For Azure customers, online invoices include a link to Azure cost management.

### To view your online invoice

1. In the admin center, go to the **Billing** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2102895" target="_blank">Bills & payments</a> page.

2. To download the .pdf version of your invoice, choose **Download invoice PDF** in the row for the invoice you want to see.

3. To view your online invoice, choose an invoice from the list. You can also download the .pdf from the invoice details page.

## Need help? Contact support.

If you have questions or need help with your Azure credits, <a href="https://portal.azure.com/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/newsupportrequest" target="_blank">create a support request with Azure support</a>.

If you have questions or need help with your invoice in Microsoft 365 admin center, [contact support for business products](https://docs.microsoft.com/office365/admin/contact-support-for-business-products).
