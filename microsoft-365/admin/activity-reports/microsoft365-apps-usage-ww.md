---
title: "Microsoft 365 admin center apps usage reports"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 01/30/2024
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
- MET150
- MOE150
- GEA150
description: "Learn how to get a Microsoft 365 Apps usage report to see licensed user activity across the apps and how the apps are utilized across platforms."
---

# Microsoft 365 Reports in the admin center - Microsoft 365 Apps usage

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md).

For example, you can understand the activity of each user licensed to use Microsoft 365 Apps apps by looking at their activity across the apps and how they are utilized across platforms.

> [!NOTE]
> Shared computer activations are not included in this report.

## How to get to the Microsoft 365 Apps usage report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page. 
2. From the dashboard homepage, under Reports, select **Microsoft 365 apps** > **Usage**.

## Interpret the Microsoft 365 Apps usage report

You can get a view into your user's Microsoft 365 Apps activity by looking at the **Users** and **Platform** charts.

> [!div class="mx-imgBorder"]
> ![Microsoft 365 Apps usage report.](../../media/0bcf67e6-a6e4-4109-a215-369f9f20ad84.png)

The **Microsoft 365 Apps usage** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated).

The data in each report usually covers up to the last two days. Every six days, we will refresh the report with minor updates to ensure data quality.

The **Users** view shows the trend in the number of active users for each app – Outlook, Word, Excel, PowerPoint, OneNote, and Teams. "Active users" are any who perform any intentional actions within these apps.

The **Platforms** view shows the trend of active users across all apps for each platform – Windows, Mac, Web, and Mobile.

On the Users chart, the Y-axis is the number of unique active users for the respective app. On the Platforms chart, the Y-axis is the number of unique users for the respective platform. The X-axis on both charts is the date on which an app was used on a given platform.

You can filter the series you see on the chart by selecting an item in the legend. For example, on the Users chart, select Outlook, Word, Excel, PowerPoint, OneDrive, or Teams to see only the info related to each one. Changing this selection doesn't change the info in the grid table below it.

The table shows you a breakdown of data at the per-user level. You can add or remove columns from the table.


|Item|Description|
|---|---|
|Username|The email address of the user who performed the activity on Microsoft Apps.|
|Last activation date (UTC)|The latest date on which the user activated their Microsoft 365 Apps subscription on a machine or logs on shared computer and starts the app with their account.|
|Last activity date (UTC)|The latest date an intentional activity was performed by the user. To see activity that occurred on a specific date, select the date directly in the chart.|


The other columns identify if the user was active on that platform for that app (within Microsoft 365 Apps) in the period selected.

Select the **Choose columns** icon to add or remove columns from the report.

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data for all users and enables you to do simple aggregation, sorting, and filtering for further analysis. 
