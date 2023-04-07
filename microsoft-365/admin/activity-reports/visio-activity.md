---
title: "Microsoft 365 admin center Visio activity "
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 03/22/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn how to get the Visio activity report and gain insights into Visio activity in your organization."
---

# Microsoft 365 Reports in the admin center – Visio activity

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. You can drill into individual product-level reports to give you more granular insight into the activities within each product. Check out [the Reports overview article](activity-reports.md) to learn more.

In the **Visio activity report**, you can view the activity of every Visio user.

## How to get to the Visio activity report

1. In the admin center, go to the **Reports** \> [Usage](https://admin.microsoft.com/Adminportal/Home#/reportsUsage/VisioActivity) page.

2. From the dashboard homepage, select the **View more** button on the Visio card.

## Interpret the Visio activity report

You can use this report to see the activity and usage of Visio in your environment. You'll see three summary charts in this report:

:::image type="content" source="../../media/visio-activity-charts.png" alt-text="Three charts for the Visio activity report in Microsoft 365." lightbox="../../media/visio-activity-charts.png":::

- **Active users** Shows you the daily active users on each day over time. This includes Visio for the web and Visio desktop app usage.

- **Platforms** Shows you the daily active users on each day over time, broken up by platform: Web and Desktop.

- **Platforms (total users)** Shows you the aggregated active users for the selected time window, broken up by platform: Web and Desktop.

The **Visio activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. If you select a particular day in the report, the per-user data table will be updated accordingly to display users' usage on that day.

>[!NOTE]
> The Visio report currently becomes available within 72 hours. We are working to reduce the latency to 48 hours like other reports.

### Visio licensed usage

You can use this report to filter for Visio licensed usage. Each of the charts is provided with a filter to select user segment.

- **All users** Shows you the usage for Visio licensed users, including Visio Plan 1 and/or Visio Plan 2; and seeded usage, such as using Visio that comes as part of the Microsoft 365 commercial subscriptions

- **Visio licensed users** Shows you the usage for Visio licensed users only, including Visio Plan 1 and/or Visio Plan 2

You can also export the report data into an Excel .csv file by selecting the **Export** link.

:::image type="content" source="../../media/visio-license-filter.png" alt-text="Licensed users filter for the Visio activity report in Microsoft 365.":::

>[!NOTE]
> Learn more about Visio seeded capabilities [here](https://www.microsoft.com/microsoft-365/visio/visio-in-microsoft-365), and about Visio plans and pricing [here](https://www.microsoft.com/microsoft-365/visio/microsoft-visio-plans-and-pricing-compare-visio-options?rtc=1&activetab=tabs%3aprimaryr1).

## User details table

The report also has a table to show the user details with active usage in your environment during the selected time window.

The following are definitions for each metric in the table:

| **Metric**         | **Definition**                                                                                                      |
|--------------------|---------------------------------------------------------------------------------------------------------------------|
| User name          | The user principal name                                                                                            |
| Display name       | The full name of the user                                                                                         |
| Last activity date | The latest date the user in that row had activity in Visio, including any of the activities in the summary reports |
| Desktop            | This indicates whether that user used the Visio desktop app at least once during the selected time window          |
| Web                | This indicates whether that user used Visio for the web at least once during the selected time window              |
