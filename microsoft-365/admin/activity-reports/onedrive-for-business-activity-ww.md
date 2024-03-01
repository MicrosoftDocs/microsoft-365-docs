---
title: "Microsoft 365 OneDrive activity reports"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 02/29/2024
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
description: "Get the OneDrive usage report for your organization and find out the activity of every OneDrive user, the number of files shared, and the storage utilization."
---

# Microsoft 365 Reports in the admin center - OneDrive activity

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It lets you drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview article](activity-reports.md).
  
For example, you can understand the activity of every user licensed to use OneDrive by looking at their interaction with files on OneDrive. It also helps you to understand the level of collaboration going on by looking at the number of files shared.

## How do I get to the OneDrive Activity report?

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page. 
2. From the dashboard homepage, select the OneDrive button in the left navigation.
  
## Interpret the OneDrive activity report

You can view the activities in the OneDrive report by choosing the **Activity** tab.<br/>![Microsoft 365 reports - Microsoft OneDrive activity report.](../../media/c89df0b0-2611-4acf-9ef7-17cedf7977be.png)

Select **Choose columns** to add or remove columns from the report.  <br/> ![OneDrive activity report - choose columns.](../../media/252f311f-ffde-4e5a-9158-2b822bf86964.png)

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. 

The OneDrive activity report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated).
  
|Metric|Definition|
|:-----|:-----|
|Username  |The user name of the owner of the OneDrive account. |
|Last activity date (UTC) |The most recent day file activity occurred on the OneDrive account for the selected date range. To see activity that occurred on a specific date, select the date directly in the chart. |
|Files viewed or edited  |The number of files that the user uploaded, downloaded, modified, or viewed. |
|Files synced  |The number of files that have been synced from a user's local device to the OneDrive account. |
|Files shared internally | The number of files that have been shared with users within the organization, or with users within groups (that might include external users). |
|Files shared externally |The number of files that have been shared with users outside of the organization. |
|Deleted  | This indicates that the user's license was removed.  **NOTE**: Activity for a deleted user will still display in a report as long as he or she was licensed at some time during the selected time period. The **Deleted** column helps you to note that the user may no longer be active, but contributed to the data in the report. |
|Deleted date |The date on which the user's license was removed. |
|Product assigned   |The Microsoft 365 products that are licensed to the user.|
||| 
