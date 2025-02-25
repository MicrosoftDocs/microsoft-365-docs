---
title: "Understand your invoice for your Microsoft MCA billing account"
f1.keywords:
- 'MACBillingAccountsAddBillingProfileInvoices'
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
- ContentEngagementFY23
- scotvorg
- highpri 
- M365-subscription-management
- Adm_O365
ms.custom: 
- commerce_billing
- VSBFY23
- AdminSurgePortfolio
- AdminTemplateSet
- campaignIDs-batch1
search.appverid: MET150
description: "Learn how to interpret the charges on your invoice for your Microsoft business subscription with an MCA billing account."
ms.date: 02/22/2024
---

# Understand your invoice for your Microsoft MCA billing account

Check out all of our small business content on [Small business help & learning](https://go.microsoft.com/fwlink/?linkid=2224585).

This article only applies to customers with a Microsoft Customer Agreement (MCA) billing account type. If you have a Microsoft Online Services Agreement (MOSA) billing account type, see [Understand your invoice for your Microsoft MOSA billing account](understand-your-invoice2.md). [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).

The invoice for your Microsoft business subscription provides a summary of the charges and instructions for how to pay your bill. You can [view your online invoice](view-your-bill-or-invoice.md) in the Microsoft 365 admin center. You can also download a copy of your invoice in the Portable Document Format (.PDF) to send via email. If you want to receive the invoice .PDF as an attachment in the email notification, see [Receive your organization's invoices as email attachments](manage-billing-notifications.md#receive-your-organizations-invoices-as-email-attachments).

## Before you begin

- [Find out what type of billing account you have](../manage-billing-accounts.md#view-my-billing-accounts).
- You must have an MCA billing account type and have the billing account owner or contributor role, or the billing profile owner or contributor role to do the tasks in this article.

> [!NOTE]
> If you're the person who signed up for the subscription, you’re automatically a billing account owner.

## How often and when am I billed?

Depending on the billing frequency that you chose when you bought your subscription, you receive an invoice monthly, every three months, every six months, or annually. 

Each new subscription purchase receives the first invoice the next day and is billed on this same day of the month with the frequency selected at purchase. Subscriptions with recurring billing receive subsequent invoices on that same day of the month. 

Changes you make to an existing subscription appear on the monthly invoice around the beginning of the following month.  

If you acquire multiple new subscriptions on different days within a month (excluding additions to current subscriptions), you receive separate invoices for each.

> [!NOTE]
> You can only change the billing frequency for a subscription when you buy, upgrade, or renew a subscription.

Starting on page two of the invoice, you see the charges grouped by product order. For Azure customers, the charges might be organized by invoice section.

At the end of each billing period, you receive an email that says your new invoice is ready to view or download in the Microsoft 365 admin center. If you have more than one billing profile, you receive an invoice for each billing profile. For more information, see [View your invoice in the Microsoft 365 admin center](view-your-bill-or-invoice.md).

## Overview of the invoice .PDF

Your invoice is a .PDF that contains at least three pages. Page one contains general information about the invoice. An invoice summary section indicates the billing profile   that is used to pay for the products and services contained in the invoice, the invoice number, and the invoice date. A billing summary section contains the totals for all charges on the invoice, any credits or sales tax, the invoice total, and payment instructions, if applicable. For details about what this information looks like in your invoice, see [Understand page one of your invoice](#understand-page-one-of-your-invoice).

:::image type="content" source="../../media/understand-your-mca-invoice/mca-invoice-p1.png" alt-text="Page one of the invoice .PDF that shows the high-level information about your order":::

Page two of the invoice contains a section summary, and details by section. If you have multiple products or services that are paid for with the same billing profile, the section details might continue for several pages. For details about what this information looks like in your invoice, see [Understand page two of your invoice](#understand-page-two-of-your-invoice).

:::image type="content" source="../../media/understand-your-mca-invoice/mca-invoice-p2.png" alt-text="Page two of the invoice .PDF that shows billing activity for each section.":::

The last page of the invoice contains payment instructions. For details about what this information looks like in your invoice, see [Understand the last invoice page](#understand-the-last-invoice-page).

:::image type="content" source="../../media/understand-your-mca-invoice/mca-invoice-p3.png" alt-text="The last page of the invoice .PDF that shows payment instructions.":::

## Understand page one of your invoice

The top of the first page of your invoice identifies who's accountable for payment, where the bill is sent to, and a summary of charges. The following table explains the fields shown at the top of page one.

| Term | Description |
| --- | --- |
| Sold to |The billing account that identifies the name and address of the legal entity responsible for payment. This information is managed on the billing profile details page, where you can find the account agreement and manage roles and permissions. To learn more about billing profiles, see [Manage your Microsoft business billing profiles](manage-billing-profiles.md). |
| Bill to |Identifies who receives the invoice. This information is managed on the billing profile details page. The billing profile is also shown on the online invoice page, in the **Invoice summary** section. To learn more about billing profiles, see [Manage your Microsoft business billing profiles](manage-billing-profiles.md). |
| Billing Profile |The name of the billing profile used to define invoice properties like **Bill to**, **PO number**, and payment terms. This information is managed on the billing profile details page. To learn more about billing profiles, see [Manage your Microsoft business billing profiles](manage-billing-profiles.md). |
| Invoice number |A unique, Microsoft-generated invoice number used for tracking purposes. |
| Invoice date |Date that the invoice is generated. The billing period start and end dates for each invoice are listed in the invoice PDF above **Billing Summary**.|
|Billing period|The time frame during which charges that appear on the invoice are accrued. For new subscription purchases and renewals, each invoice represents a single day of purchases, so the billing period is a single day. For changes to an existing subscription, the billing period is the prior month.|
| Payment terms |How you pay for your Microsoft bill. *Net 30 days* means that you pay by following instructions on your invoice, within 30 days of the invoice date. |

### Billing Summary

The **Billing Summary** shows the summary of charges since the previous billing period, any credits that were applied, tax, and the total amount due. The following table explains the fields shown in the Billing Summary of your invoice.

| Term | Description |
| --- | --- |
| Charges|Total number of products purchased for this billing period, and their related charges and taxes. Purchases are aggregated to provide a concise view of your bill. |
| Credits |Credits you received from returns |
| Azure credits applied |Your Azure credits that are automatically applied to Azure charges each billing period. If you don't have any Azure credits, this field is hidden. For more information about Azure credits, see [Track Microsoft Customer Agreement Azure credit balance](/azure/billing/billing-mca-check-azure-credits-balance). |
| Subtotal |The pretax amount due |
| Tax |The type and amount of tax that you pay, depending on the country/region of your billing profile. If you don't have to pay tax, no tax is shown on your invoice. |

### Understand page two of your invoice

The charges for your invoice start on page two and show the cost broken down by product or service. If you have multiple products or services that are paid for with the same billing profile, the section details might continue for several pages. For Azure customers, the charges might be organized by invoice section. For more information about how invoice sections are used with Azure products, see
[Invoice sections](/azure/billing/billing-mca-overview#invoice-sections) in [Get started with your Microsoft Customer Agreement billing account](/azure/billing/billing-mca-overview). Within each product order, cost is itemized by service family. The following table explains the fields shown on the charges pages in your invoice.

| Term |Description |
| --- | --- |
| Purchases Charge dates| These are the service dates you're paying for.|
| Unit price | The effective unit price of the service (in pricing currency) that is used to calculate the charge. This price is unique for a product, service family, meter, and offer. |
| Qty | Quantity purchased or consumed during the billing period |
| Charges/Credits | Net amount of charges after credits/refunds are applied |
| Azure Credit | The amount of Azure credits applied to the Charges/Credits |
| Tax rate | Tax rate, depending on the country/region |
| Tax amount | Amount of tax applied to the purchase based on tax rate |
| Total | The total amount due for the purchase |

Line item details vary depending on the type of product you're charged for. For example, for Azure products, the amount of Azure credits applied is shown. Seat-based products show a unit price and quantity. The invoice details show the products purchased, discount or credits that were applied, tax rate and amount, and the line item totals.

> Total = Charges - Azure Credit + Tax

The total amount due for each service family is calculated by subtracting Azure credits from credits/charges, and adding tax:

> Total = Charges/Credits - Azure Credit + Tax

If there are Azure charges on your invoice that you would like more details on, see [Review your Microsoft Customer Agreement invoice](/azure/cost-management-billing/understand/review-customer-agreement-bill).

## Understand the last invoice page

- **Payment instructions**&mdash;The bottom of the invoice contains instructions for how to pay your bill.

- **Publisher information**&mdash;If you have third-party services in your bill, the name and address of each publisher is listed at the bottom of your invoice.

## View or download your invoice

Invoices are available online in the Microsoft 365 admin center. A link to your online invoice is available from your PDF invoice, and from the email notification you receive. [Learn how to view or download your invoice from the Microsoft 365 admin center](view-your-bill-or-invoice.md).

The online invoice is expandable so that you can view the charges on your invoice and see more details about each item. The online invoice includes:

- **Pricing details**&mdash;Additional information including details about discounts and product pricing.
- **Online payment**&mdash;You can choose to make a payment online from the invoice.
- **Azure cost management**&mdash;For Azure customers, online invoices include a link to Azure cost management.

## Invoice FAQ

### When is my invoice available?

Some invoices are generated within 24 hours of the purchase. Other invoices are generated at the end of the billing period and include all items from that period.

### How do I pay the amount due on my invoice?

Payment instructions depend on your payment method and are provided at the bottom of the invoice PDF. If your payment method is a credit or debit card, we automatically charge the card within 10 days of the invoice date. If your payment method is by electronic payment (wire transfer, SEPA, and so on), see the information under **Payment Instructions** in the PDF.

### Why did I get a second invoice for the same subscription in one month?

We changed our billing periods for Microsoft 365 for business products. This change updates invoicing from billing in arrears for all charges to paying upfront for purchases, renewals, and recurring charges.

Changes like adding or removing licenses and moving to a different subscription are still billed around the beginning of the month. This invoice has a billing period that spans the previous month.

Purchases, renewals, and recurring charges are now billed upfront. This invoice now has a billing period of a single day. You can find the transaction type in the invoice details in the Microsoft 365 admin center.

### Why is the billing period a single day?

A billing period of a single day indicates that the invoice is for purchases or renewals made on that day. This period isn’t the same as the service period that appears on the invoice details. The service period includes the dates of service for which you’re billed.

### What's the difference between "Sold to" and "Bill to" addresses?

- **Sold to:** The legal entity responsible for payment and identified on the invoice. The address provided here is used to determine your tax rate unless you opt to provide an alternative shipping address during your purchase. For more information, see [Tax information](tax-information.md).
- **Bill to:** The address where the physical invoice is sent, if applicable. There can be multiple **Bill to** addresses per legal entity, but only one **Bill to** address per billing profile.

### What are "Total amount" and "Amount due?"

- **Total amount:** The total amount for the purchase that you made.
- **Amount due:** The remaining balance for what you owe.

### What is the difference between "Purchases Charge dates" and "Billing period?"

- **Purchases Charge dates:** The service period during which you're charged to use the service. These are the dates of service the charge applies to.

- **Billing period:** The time period during which charges accrue. If the period is a single day, only purchases made on that day are shown on the invoice. There's also a monthly invoice with a billing period for the previous month. This invoice is for changes made to an existing subscription, such as adding seats or canceling.

### Why don't I see Azure prepayment as a payment method?

Azure prepayment is available as a payment method only for eligible Azure products and services.

## Need help? Contact support

If you have questions or need help with your invoice in Microsoft 365 admin center, [contact support for business products](../../admin/get-help-support.md).

If you have questions or need help with your Azure credits, <a href="https://portal.azure.com/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/newsupportrequest" target="_blank">create a support request with Azure support</a>.

## Related content

[View your invoice in the Microsoft 365 admin center](view-your-bill-or-invoice.md) (article)\
[Understand your invoice for your Microsoft MOSA billing account](understand-your-invoice2.md) (article)\
[Payment options for your Microsoft business subscription](pay-for-your-subscription.md) (article)\
[Manage payment methods for Microsoft business accounts](manage-payment-methods.md) (article)\
[Billing information for Microsoft 365 for business in Mexico](mexico-billing-info.md) (article)\
[Minecraft: Education Edition payment options](/education/windows/school-get-minecraft) (article)
