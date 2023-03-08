---
title: "Microsoft 365 admin center SharePoint activity reports"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 10/20/2020
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
description: "Get the SharePoint activity usage report to learn about SharePoint licensed user file interactions, the number of files shared, and storage utilization."
---

# Microsoft 365 Reports in the admin center - SharePoint activity

As a Microsoft 365 admin, the Reports dashboard shows you the activity overview across various products in your organization. It enables you to drill in to get more granular insight about the activities specific to each product. Check out the [activity reports in the Microsoft 365 admin center](activity-reports.md).
  
For example, you can understand the activity of every user licensed to use SharePoint by looking at their interaction with files. It also helps you to understand the level of collaboration going on by looking at the number of files shared.

> [!NOTE] 
> The information and data on the Microsoft 365 Experience insights dashboard helps you to better understand and improve your users' overall experience with Microsoft 365. [Learn more](/microsoft-365/admin/misc/experience-insights-dashboard).
  
## How do I get to the SharePoint activity report?

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page. 
2. From the dashboard homepage, click on the **View more** button on the SharePoint card.
  
## Interpret the SharePoint activity report

You can view the activities in the SharePoint report by choosing the **Activity** tab.<br/>![Microsoft 365 reports - Microsoft SharePoint activity report.](../../media/5a0a96f-0e4f-4fb9-8baa-3262275b3d1f.png)

Select **Choose columns** to add or remove columns from the report. 

![SharePoint activity report - choose columns.](../../media/3c396cd1-9701-4712-8eaa-eb7bba702aa8.png)

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis.  

The **SharePoint activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated).
  
|Item|Description|
|:-----|:-----|
|**Metric**|**Definition**|
|Username  <br/> |The email address of the user who performed the activity on the SharePoint Site.  <br/> |
|Last activity date (UTC)  <br/> |The latest date a file activity was performed or a page was visited for the selected date range. To see activity that occurred on a specific date, select the date directly in the chart.  <br/> |
|Files viewed or edited  <br/> |The number of files that the user uploaded, downloaded, modified, or viewed.   <br/> |
|Files synced  <br/> |The number of files that have been synced from a user's local device to the SharePoint site. <br/> |
|Files shared internally  <br/> | The count of files that have been shared with users within the organization, or with users within groups (that might include external users).  <br/> |
|Files shared externally  <br/> |The number of files that have been shared with users outside of the organization. <br/>|
|Pages visited  <br/> |The visits to unique pages by the user. <br/>|
|Deleted  <br/> | This indicates that the user's license was removed.  <br/>  **NOTE:** Activity for a deleted user will still display in the report as long as he or she was licensed at some time during the selected time period. The Deleted column helps you to note that the user may no longer be active, but contributed to the data in the report.  <br/> |
|Deleted date  <br/> |The date on which the user's license was removed. <br/>|
|Product assigned  <br/> |The Microsoft 365 products that are licensed to the user.|
|||
