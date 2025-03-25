---
title: "Microsoft 365 admin center apps usage reports"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 03/17/2025
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

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview article](activity-reports.md).

For example, you can understand the activity of each user licensed to use Microsoft 365 Apps apps by looking at their activity across the apps and how they are utilized across platforms.

> [!NOTE]
> Shared computer activations are not included in this report.

## How to get to the Microsoft 365 Apps usage report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page. 
2. From the dashboard homepage, under Reports, select **Microsoft 365 apps** > **Usage**.

## Interpret the Microsoft 365 Apps usage report

You can get a view into your user's Microsoft 365 Apps activity by looking at the **Users** and **Platform** charts.

:::image type="content" source="../../media/microsoft365-apps-usage-ww/microsoft-365-apps-usage-report.png" alt-text="Diagram that shows the Microsoft 365 Apps usage report in the Microsoft 365 admin center." lightbox="../../media/microsoft365-apps-usage-ww/microsoft-365-apps-usage-report.png":::

The **Microsoft 365 Apps usage** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated).

The data in each report usually covers up to the last two days. Every six days, we will refresh the report with minor updates to ensure data quality.

The **Users** view shows the trend in the number of active users for each app – Outlook, Word, Excel, PowerPoint, OneNote, and Teams. "Active users" are any who perform any intentional actions within these apps.

The **Platforms** view shows the trend of active users across all apps for each platform – Windows, Mac, Web, and Mobile.

On the Users chart, the Y-axis is the number of unique active users for the respective app. On the Platforms chart, the Y-axis is the number of unique users for the respective platform. The X-axis on both charts is the date on which an app was used on a given platform.

You can filter the series you see on the chart by selecting an item in the legend. For example, on the Users chart, select Outlook, Word, Excel, PowerPoint, OneDrive, or Teams to see only the info related to each one. Changing this selection doesn't change the info in the grid table below it.

## Outlook for Windows migration

The **Outlook for Windows migration process** view provides organizations with valuable insights into the adoption of the new Outlook for Windows, as well as trends in migration from the classic version to the new version.

All eligible licenses for Word, Excel, PowerPoint, and OneNote in this report include the following:

- OFFICE 365 BUSINESS
- OFFICE SHARED COMPUTER ACTIVATION
- OFFICE 365 PROPLUS FOR DEVICE
- OFFICE 365 PROPLUS
- OFFICE 365 PROPLUS PILOT
- OFFICE 365 SMALL BUSINESS SUBSCRIPTION PREVIEW
- OFFICE 365 PROPLUS PILOT
- OFFICE 365 SMALL BUSINESS SUBSCRIPTION
- OFFICE 365 PROPLUS G
- MICROSOFT 365 APPS FOR ENTERPRISE (UNATTENDED) FOR GCC
- MICROSOFT 365 APPS FOR ENTERPRISE (UNATTENDED)
- MICROSOFT 365 APPS EXTENDED OFFLINE ACCESS
- MICROSOFT 365 APPS EXTENDED OFFLINE ACCESS G

All eligible licenses for Outlook in this report extend to those that enable Outlook service beyond the ones listed for Word, Excel, PowerPoint, and OneNote.

## Per-user level data table

The table shows you a breakdown of data at the per-user level. You can add or remove columns from the table.

|Item|Description|
|---|---|
|Username|The email address of the user who performed the activity on Microsoft Apps.|
|Last activation date (UTC)|The latest date on which the user activated their Microsoft 365 Apps subscription on a machine or logs on shared computer and starts the app with their account.|
|Last activity date (UTC)|The latest date an intentional activity was performed by the user. To see activity that occurred on a specific date, select the date directly in the chart.|
|Activity in classic Outlook| Indicates if the user was active in classic Outlook for Windows during the specified time period. |
|Activity in new Outlook| Indicates if the user was active in new Outlook for Windows during the specified time period.|
|Activity on Windows devices| Indicates if the user was active in Windows during the specified time period.|
|Activity on Mac devices | Indicates if the user was active in Mac during the specified time period. |
|Activity on mobile | Indicates if the user was active in mobile during the specified time period. |
|Activity on web | Indicates if the user was active in web during the specified time period. |
|Activity on Outlook app | Indicates if the user was active on the Outlook app, including both new Outlook and classic Outlook, during the specified time period. |
|Activity on Word app | Indicates if the user was active on the Word app during the specified time period.|
|Activity on Excel app | Indicates if the user was active on the Excel app during the specified time period. |
|Activity on PowerPoint app | Indicates if the user was active on the PowerPoint app during the specified time period. |
|Activity on OneNote app | Indicates if the user was active on the OneNote app during the specified time period. |
|Activity on Teams app | Indicates if the user was active on the Teams app during the specified time period. |
|Activity on Outlook for Windows | Indicates if the user was active on Outlook for Windows, including both new Outlook for Windows and classic Outlook for Windows during the specified time period. |
|Activity on Word for Windows | Indicates if the user was active on Word for Windows during the specified time period. |
|Activity on Excel for Windows | Indicates if the user was active on Excel for Windows during the specified time period. |
|Activity on PowerPoint for Windows | Indicates if the user was active on PowerPoint for Windows during the specified time period. |
|Activity on OneNote for Windows | Indicates if the user was active on OneNote for Windows during the specified time period. |
|Activity on Teams for Windows | Indicates if the user was active on Teams for Windows during the specified time period. |
|Activity on Outlook for Mac | Indicates if the user was active on Outlook for Mac during the specified time period.|
|Activity on Word for Mac | Indicates if the user was active on Word for Mac during the specified time period. |
|Activity on Excel for Mac | Indicates if the user was active on Excel for Mac during the specified time period. |
|Activity on PowerPoint for Mac | Indicates if the user was active on PowerPoint for Mac during the specified time period. |
|Activity on OneNote for Mac | Indicates if the user was active on OneNote for Mac during the specified time period.|
|Activity on Teams for Mac | Indicates if the user was active on Teams for Mac during the specified time period. |
|Activity on Outlook (mobile) | Indicates if the user was active on Outlook for mobile during the specified time period. |
|Activity on Word (mobile) | Indicates if the user was active on Word for mobile during the specified time period. |
|Activity on Excel (mobile) | Indicates if the user was active on Excel for mobile during the specified time period.|
|Activity on PowerPoint (mobile) | Indicates if the user was active on PowerPoint for mobile during the specified time period.|
|Activity on OneNote (mobile) | Indicates if the user was active on OneNote for mobile during the specified time period.|
|Activity on Teams (mobile) | Indicates if the user was active on Teams for mobile during the specified time period. |
|Activity on Outlook (web) | Indicates if the user was active on Outlook for web during the specified time period. |
|Activity on Word (web) | Indicates if the user was active on Word for web during the specified time period. |
|Activity on Excel (web) | Indicates if the user was active on Excel for web during the specified time period. |
|Activity on PowerPoint (web) | Indicates if the user was active on PowerPoint for web during the specified time period. |
|Activity on OneNote (web) | Indicates if the user was active on OneNote for web during the specified time period. |
| Activity on Teams (web) | Indicates if the user was active on Teams for web during the specified time period.|

> [!NOTE]
> **Outlook for Windows migration process** view, and the columns 'Activity in classic Outlook' and 'Activity in new Outlook' in table are only available in the **Public** environment.

The other columns identify if the user was active on that platform for that app (within Microsoft 365 Apps) in the period selected.

Select the **Choose columns** icon to add or remove columns from the report.

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data for all users and enables you to do simple aggregation, sorting, and filtering for further analysis. 
