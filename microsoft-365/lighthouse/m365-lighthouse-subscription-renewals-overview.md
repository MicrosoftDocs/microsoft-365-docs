---
title: "Overview of subscription renewals in Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: dansimp
author: SKjerland
manager: scotv
ms.reviewer: avaishnav
ms.date: 05/06/2025
audience: Admin
ms.topic: concept-article
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
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to view and manage upcoming and expired non‑Azure Microsoft subscriptions in Microsoft 365 Lighthouse."
---

# Overview of subscription renewals in Microsoft 365 Lighthouse

You can view upcoming and expired non‑Azure Microsoft subscriptions in Microsoft 365 Lighthouse by selecting **Subscription renewals** in the left navigation pane to open the **Subscription renewals** page (formerly under **Sales Advisor**).

The page includes an **Overview** section that shows the following consolidated information across all customer tenants:  

- Number of subscriptions renewing in 30 days
- Number of subscriptions without recurring billing
- Number of expired subscriptions

The page also includes three tabs that you can select for more detailed information: **High priority**, **Upcoming**, and **Expired**. 

All three tabs let you pin subscriptions to keep high-priority renewals front and center. Pinned subscriptions appear at the top of the subscriptions list on the **High priority** tab, and a pin also appears next to the subscription on the appropriate **Upcoming** or **Expired** tab.

## High priority tab

The **High Priority** tab provides an at-a-glance list of subscriptions that need priority attention. Lighthouse determines which subscriptions to include in this list based on a combination of factors such as proximity to the expiration date, whether recurring billing status is turned off, and total number of licenses per subscription.  

The subscriptions list includes: 

- **Subscription details:** Key information about each subscription, such as the tenant name, associated opportunities, subscription expiration or end date, product associated with the subscription, recurring billing status, and the total number of licenses for the subscription. 

The following filters are available: 

- **State:** Filters the list to show all subscriptions regardless of state, only expired subscriptions, or only subscriptions with an upcoming expiration date. 
- **Opportunity available:** Filters the list to show all subscriptions regardless of whether they have an opportunity associated with them, only subscriptions that have one or more opportunities associated with them, or only subscriptions with zero opportunities associated with them. 

To export the list of high-priority subscriptions to an Excel comma-separated values (.csv) file, select **Export**. 

## Upcoming tab

To help you plan renewals accordingly, the **Upcoming** tab shows a list of all subscriptions expiring in the next 90 days. 

The subscriptions list includes: 

- **Subscription details:** Key information about each subscription, such as the tenant name, associated opportunities, subscription expiration or end date, product associated with the subscription, recurring billing status, and the total number of licenses for the subscription. 
- **Group view:** By default, the subscriptions are grouped by tenant to simplify tracking of renewals for each tenant. To get an ungrouped view of all subscriptions nearing expiration, select **Ungroup list by tenant**. 

The following filters are available: 

- **Expiration date:** Filters the list by days remaining until expiration. 
- **Product:** Filters the list by product associated with the subscription. 
- **Recurring billing:** Filters the lists by recurring billing status.  
- **Billing frequency:** Filters the list by the billing frequency&mdash;Monthly, Annually, or Full payment. 
- **Indirect provider:** Filters the list by indirect provider name, if applicable. 
- **Opportunity available:** Filters the list based on whether a subscription has any associated opportunities. 

To export the list of all upcoming subscriptions to an Excel comma-separated values (.csv) file, select **Export**. 

## Expired tab

The **Expired** tab shows a list of subscriptions that are past their expiration date and are currently in a grace period. Re-engage with the customer associated with each subscription and take the necessary actions to prevent any business disruptions. 

The subscriptions list includes: 

- **Subscription details:** Key information about each subscription, such as the tenant name, date the grace period ends, how many days remain in the grace period, product associated with the subscription, billing frequency, and the total number of licenses for the subscription. 
- **Group view:** By default, the subscriptions are grouped by tenant to simplify tracking of renewals for each tenant. To get an ungrouped view of all expired subscriptions, select Ungroup list by tenant. 

The following filters are available: 

- **Grace period ends in:** Filters the list by days remaining in the grace period. 
- **Product:** Filters the list by product associated with the subscription. 
- **Indirect provider:** Filters the list by indirect provider name, if applicable. 

To export the list of expired subscriptions to an Excel comma-separated values (.csv) file, select **Export**. 

## Related content

[Overview of Microsoft 365 Lighthouse](m365-lighthouse-overview.md) (article)\
[Requirements for Microsoft 365 Lighthouse](m365-lighthouse-requirements.md) (article)