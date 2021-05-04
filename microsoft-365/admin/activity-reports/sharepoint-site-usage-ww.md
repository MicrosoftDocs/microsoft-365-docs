---
title: "Microsoft 365 Reports in the admin center - SharePoint site usage"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Get the SharePoint site usage report to know how many files users store in SharePoint sites, how many are actively used, and the total storage consumed."
---

# Microsoft 365 Reports in the admin center - SharePoint site usage

As a Microsoft 365 admin, the **Reports** dashboard shows you the activity overview across various products in your organization. It enables you to drill in to get more granular insight about the activities specific to each product. For example, you can get a high level view of the value you are getting from SharePoint in terms of the total number of files that users store in SharePoint sites, how many files are actively being used, and the storage consumed across all these sites. Then, you can drill into the SharePoint site usage report to understand the trends and per site level details for all sites. 
  
> [!NOTE]
> You must be a global administrator, global reader or reports reader in Microsoft 365 or an Exchange, SharePoint, Teams Service, Teams Communications, or Skype for Business administrator to see reports.
Microsoft 365 Reports in the admin center is not supported for GCC High and DoD tenants.
 
## How to get to the SharePoint site usage report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page. 
2. From the dashboard homepage, click on the **View more** button on the SharePoint card.
  
## Interpret the SharePoint site usage report

You can view the site usage in the SharePoint report by choosing the **Site usage** tab.<br/>![Microsoft 365 reports - Microsoft SharePoint site usage report.](../../media/d1cb6200-e81c-460b-9d05-53f4bd7cf5ee.png)

Select **Choose columns** to add or remove columns from the report.  <br/> ![SharePoint site usage report - choose columns](../../media/71ac3195-c494-40c1-9346-a858125ef6df.png)

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. If you have less than 2000 users, you can sort and filter within the table in the report itself. If you have more than 2000 users, in order to filter and sort, you will need to export the data. 
  
|Item|Description|
|:-----|:-----|
|**Metric**|**Definition**|
|Site URL  <br/> |The full URL of the site. <br/> |
|Deleted  <br/> |The deletion status of the site. It takes at least 7 days for sites to be marked as deleted.  <br/> |
|Site owner  <br/> |The username of the primary owner of the site.   <br/> |
|Site owner principal name  <br/> |The email address of the owner of the site. <br/> |
|Last activity date (UTC)  <br/> | The date of the last time file activity was detected or a page was viewed on the site.  <br/> |
|Site sensitivity label id  <br/> | The sensitivity label on the site.  <br/> |
|External sharing  <br/> | The external sharable settings on the site.  <br/> |
|Unmanaged device policy  <br/> | The site access policy for unmanaged devices.  <br/> |
|Geo location  <br/> | The Geo location of the site.  <br/> |
|Files  <br/> |The number of files on the site. <br/>|
|Active files  <br/> | The number of active files on the site.<br/> NOTE: If files were removed during the specified time period for the report, the number of active files shown in the report may be larger than the current number of files on the site.  <br/> |
|Storage used (MB)  <br/> |The amount of storage currently being used on the site.  <br/>|
|Storage allocated (MB)  <br/> |The maximum amount of storage allocated for the site.  <br/>|
|Page views  <br/> |The number of times pages were viewed on the site.  <br/>|
|Pages visited  <br/> |The number of unique pages that were visited on the site.  <br/>|
|Anonymous link count  <br/> |The number of times documents or folders are shared using "Anyone with the link" on the site.  <br/>|
|Company link count  <br/> |The number of times documents or folders are shared using "People in org with the link" on the site.  <br/>|
|Secure link for guest count  <br/> |The number of times documents or folders are shared using "specific people" on the site.  <br/>|
|Secure link for member count  <br/> |The number of times documents or folders are shared using "specific people" on the site.  <br/>|
|Root Web Template  <br/> |The template used for creating the site.  <br/> NOTE: If you want to filter the data by different site types, then export the data and use the Root Web Template column. |
|||