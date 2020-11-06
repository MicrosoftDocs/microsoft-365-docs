---
title: "Microsoft 365 Reports in the admin center - Microsoft 365 groups"
ms.author: sirkkuw
author: Sirkkuw
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
- MET150
- MOE150
- GEA150
ms.assetid: a27f1a99-3557-4f85-9560-a28e3d822a40
description: "Get an Microsoft 365 groups report to know about the groups and their activities."
---

# Microsoft 365 Reports in the admin center - Microsoft 365 groups

The Microsoft 365 **Reports** dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md). In the Microsoft 365 groups report, you can gain insights into the activity of groups in your organization and see how many groups are being created and used.
  
> [!NOTE]
> You must be a global administrator, global reader or reports reader in Microsoft 365 or an Exchange, SharePoint, Teams Service, Teams Communications, or Skype for Business administrator to see reports.  
  
## How to get to the groups report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.

2. From the options, select **View more** under **Active users - Microsoft 365 Services**.
3. From the **Select a report** drop-down, select **Office 365** \> **Groups activity**.
  
## Interpret the groups report

You can get a view into groups activity by looking at the **Groups**, **Activity**, **Files**, and **Storage** charts. 
  
![Microsoft 365 reports - groups activities](../../media/852027a4-8eab-47d1-b770-2bb874bdc403.png)
  
|Item|Description|
|:-----|:-----|
|1.  <br/> |The **Microsoft 365 groups** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table (7) will show data for up to 28 days from the current date (not the date the report was generated).  <br/> |
|2.  <br/> |The data in each report usually covers up to the last 24 to 48 hours.  <br/> |
|3.  <br/> |The **Groups** view shows a total number of groups that existed on any given day, and active groups on that day based on Email Conversations, Yammer Posts and SharePoint file activities and SharePoint pages viewed.  <br/> |
|4.  <br/> |The **Activity** view shows you the number of group activities across group workloads. You can view the Exchange emails received by the group mailboxes across all groups, on any day during the reporting period. You can also see messages posted, read, and liked across the Yammer groups associated with a group. <br/> |
|5.  <br/> |The **Files** view shows you the number of total and active files across all group sites associated with a group.  <br/> |
|6.  <br/> |The **Storage** view shows you the total storage used across all group mailboxes and group sites.  <br/> |
|7.  <br/> | On the **Groups** chart, Y-axis is the number of groups (which can be seen as total vs active).  <br/>  On the **Activity** chart, Y-axis is the number of times an activity was performed in groups.  <br/>  On the **Files** chart, the Y axis is the number of either total or active files.  <br/>  On the **Storage** chart, the Y axis is total storage used by the group mailbox or site.  <br/>  The X axis on all three charts is the selected date range for the specific report.  <br/> |
|8.  <br/> |You can filter the series you see on the chart by selecting an item in the legend. For example, on the **Groups** chart, select **Total** or **Active** ![Total and Active number of groups](../../media/8eebd496-5955-4419-8d53-5f3ba1ad1c88.png) to see only the info related to each one. Changing this selection doesn't change the info in the grid table.  <br/> |
|9.  <br/> | The list of groups shown is determined by the set of all groups that existed (weren't deleted) across the widest (180-day) reporting time frame. The activity count (email conversations, Yammer posts and SharePoint file activities) will vary according to the date selection.  <br/> NOTE: You might not see all the items in the list below in the columns until you add them.<br/>**Group name** is the name of the group.  <br/> **Deleted** is the number of deleted groups. If the group is deleted, but had activity in the reporting period it will show up in the grid with this flag set to true.  <br/> **Group owner** is the name of the group owner.  <br/> **Last activity date** is the latest date a message was received by the group. - This is the latest date an activity happened in an email conversation, Yammer, or the Site.  <br/> **Type** is the type of group. This can be private or public group.  <br/> **Members** is the number of members in the group.  <br/> **External members** is the number of external users in the group.  <br/> **Exchange** <br/> **Emails received** is the number of messages received by the group.  <br/> **Mailbox total items** is the total number of items in the group's mailbox.  <br/> **Mailbox storage used** is the storage used by the group's mailbox.  <br/> **SharePoint Files** <br/> **Total files** is the number of files stored in SharePoint group sites.  <br/> **Active files** is the number of files in the SharePoint group site that were acted on (viewed or modified, synched , shared internally or externally) during the reporting period  <br/> **Site storage used (MB)** is the amount of storage in MB used during the reporting period.  <br/> **Yammer Messages** <br/> **Posted** is the number of messages posted in the Yammer group over the reporting period.  <br/> **Read** is the number of conversations read in the Yammer group over the reporting period.  <br/> **Liked** is the number of messages liked in the Yammer group over the reporting period.  <br/>  If your organization's policies prevents you from viewing reports where user information is identifiable, you can change the privacy setting for all these reports. Check out the **How do I hide user level details?** section in the [Activity Reports in the Microsoft 365 admin center](activity-reports.md).  <br/> |
|10,  <br/> |Select or tap **More Actions** button ![Mobile OWA More Actions](../../media/80044eef-2368-4c7e-8d31-7155b029e0cf.png) next to a column heading to add or remove columns from the report.  <br/> ![Groups report - choose columns](../../media/d7fb95d6-2a2e-4144-b80d-581223e48043.png)|
|11,  <br/> |You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. If you have less than 2000 users, you can sort and filter within the table in the report itself. If you have more than 2000 users, in order to filter and sort, you will need to export the data.  <br/> |
|||
   
