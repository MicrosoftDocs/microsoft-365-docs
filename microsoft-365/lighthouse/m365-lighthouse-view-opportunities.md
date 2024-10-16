---
title: "View opportunities in Sales Advisor in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: stutisingh
ms.date: 07/17/2023
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolib
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view sales opportunities using Sales Advisor."
---

# View opportunities in Sales Advisor in Microsoft 365 Lighthouse

Sales Advisor provides actionable recommendations to manage your customer and grow your business. To understand what an opportunity is, see [Understand opportunities and data in Sales Advisor](m365-lighthouse-understanding-opportunities-and-data.md).

Each customer can have zero, one, or more opportunities. Only customers with one or more opportunities are populated into the opportunities table. Within each opportunity type, there will be only up to one opportunity per customer.

## Before you begin

You must hold the Executive report viewer or Report viewer role in Partner Center to access Sales Advisor. To learn more, see [Get access to Sales Advisor](m365-lighthouse-get-access-to-sales-advisor.md).

## View opportunities

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Sales Advisor** > **Opportunities**.

2. On the **All opportunities** tab, select the tenant you want to research.

3. From the tenant details pane, review each of the tabs for specific tenant details and possible action.

|Tab      |Description  |
|---------|---------|
|Recommendation     |  Contains the following:  <br>**Customer insights** - characteristics of the selected customer based on historical data and correlation, explains why we're suggesting the specific recommendation.  <br>**Suggested actions** - specific suggestions to enforce the recommendation (such as running a workshop).  <br>**Related Resources** - marketing materials such as playbook, demo, cheat sheets, and email templates to help prepare partners for the conversation with the customer regarding the opportunity.       |
|Subscription     | Contains subscription information about the products purchased by the customer from the partner's organization or from Microsoft directly, including product name, purchase quantity, and subscription status (Active/Inactive).         |
|Usage     | Shows how users use Microsoft 365 services for all products the customer owns. Includes a usage per-user graph that can be filtered by workload. In addition, a table view with the following information:<br>**Workload** - Exchange Online, OneDrive for Business, Microsoft Entra ID, etc.<br>**Assigned users** - Number of seats containing the workload assigned to a user.<br>**Active users** - Number of users actively using the workload.<br>**Trend** - The trend in monthly active usage over the previous three months is defined as No change, Positive or Negative.        |

## View opportunities by opportunity type

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Sales Advisor** > **Opportunities**.
2. Select the desired opportunity type you want to review.

For a definition of each opportunity type, see the Opportunity Type section in [Understand opportunities and data in Sales Advisor](m365-lighthouse-understanding-opportunities-and-data.md).

## Export opportunities out of Sales Advisor

1. In the left navigation pane in <a href="https://go.microsoft.com/fwlink/p/?linkid=2168110" target="_blank">Lighthouse</a>, select **Sales Advisor** > **Opportunities**.
2. Select the view you want to export (All opportunities, Customer acquisition, Customer retention, or Customer growth).
3. Filter the list as needed using the filters (Probability, Opportunity type, and Date created).
4. Select **Export**.

Lighthouse exports the data displayed into a CSV file that you can integrate into internal tools and create custom reports. If you've applied filters to the table, the exported data reflect the selected filters. The downloaded CSV file contains the following data:

- Customer ID
- TPID
- Customer Name
- Opportunity Type
- Customer Insight
- Suggested Actions
- Related Resources
- Growth Propensity
- Recommended Product
- Seats
- Date added
- Link (a unique URL for each opportunity)

## Related content
  
[Overview of Sales Advisor](m365-lighthouse-sales-advisor-overview.md) (article)\
[Get access to Sales Advisor](m365-lighthouse-get-access-to-sales-advisor.md) (article)\
[Understand opportunities and data in Sales Advisor](m365-lighthouse-understanding-opportunities-and-data.md) (article)
