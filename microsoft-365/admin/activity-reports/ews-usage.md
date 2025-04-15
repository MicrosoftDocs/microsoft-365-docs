---
title: "Microsoft 365 Reports in the admin center – EWS usage"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 03/18/2025
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn about using the Microsoft 365 Exchange Web Services (EWS) report in the Microsoft 365 admin center."
---

# Microsoft 365 Reports in the admin center – EWS usage

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It enables you to drill into individual product level reports to give you more granular insight about the activities within each product. For information about available reports, see [Microsoft 365 Reports in the admin center](activity-reports.md). The Exchange Web Services (EWS) usage report displays the SOAP actions used by each application calling EWS in your organization. It also shows the successful-call volume for each SOAP action. This information enables you to coordinate with the application owners to ensure they're preparing for the EWS [deprecation in October 2026](https://techcommunity.microsoft.com/blog/exchange/retirement-of-exchange-web-services-in-exchange-online/3924440).

## How to get to the email apps report

1. In the admin center, go to the **Reports** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. From the **Overview** page, select **Exchange** > **EWS Usage**.

## Interpret the email activity report

To review the applications using EWS within your organization, examine the **Usage Trend** and **Usage Details** sections. Additionally, summarized information at the top provides an overview of the overall usage.

:::image type="content" source="../../media/exchange-web-usage-report.png" alt-text="Screenshot of the Exchange Web Services (EWS) report." lightbox="../../media/exchange-web-usage-report.png":::

You can filter the EWS Usage report by the last 7, 30, 90, or 180 days.

> [!NOTE]
> Usage data is collected and aggregated weekly, not daily.

## Summary Data

There are two summary headers on the top of the page:

- **Active apps** indicates the number of unique apps that sent at least one request to EWS during the selected period.
- **Daily average call volume** indicates the average number of daily requests from active apps during the selected period.

## Usage trend chart

The usage trend chart displays the projected EWS usage trend in your tenant, using weekly data points that summarize all active apps in your tenant utilizing EWS during that week. The Y-axis represents the number of apps, and the X-axis indicates the first date of the week within the selected period.

## Usage details table

The following table provides a breakdown of the EWS Usage per SOAP action by each active application in your tenant during the selected period. Columns can't be customized.

|Item |Description  |
|---------|---------|
|Application ID    |The Microsoft Entra identifier for the register application |
|SOAP Action     |The specific Exchange Web Service SOAP action executed |
|Call Volume    |The number of SOAP action calls in the given period |
|Last Activity date (UTC) |The last date of activity recorded for that app and SOAP action |

You can also export the report data into an Excel .csv file, by selecting the **Export** link.
