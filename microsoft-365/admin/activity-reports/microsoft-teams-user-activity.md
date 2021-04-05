---
title: "Microsoft 365 Reports in the admin center - Microsoft Teams user activity"
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
ms.assetid: 07f67fc4-c0a4-4d3f-ad20-f40c7f6db524
description: "Learn how to get the Microsoft Teams user activity report and gain insights into the Teams activity in your organization."
---

# Microsoft 365 Reports in the admin center - Microsoft Teams user activity

The Microsoft 365 **Reports** dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md). In the Microsoft Teams user activity report, you can gain insights into the Microsoft Teams activity in your organization.
  
> [!NOTE]
> You must be a global administrator, global reader or reports reader in Microsoft 365 or an Exchange, SharePoint, Teams Service, Teams Communications, or Skype for Business administrator to see reports.  
 
## How to get to the Microsoft Teams user activity report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.

    
2. From the **Select a report** drop-down, select **Microsoft Teams** \> **User activity**.
  
## Interpret the Microsoft Teams user activity report

You can get a view into Microsoft Teams user activity by looking at the **Activity** and **Users** charts.<br/>![Microsoft 365 reports - Microsoft Teams user activity.](../../media/40359f81-25f7-416d-bb1e-37289133ef6b.png)
  
|Item|Description|
|:-----|:-----|
|1.  <br/> |The **Microsoft Teams user activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table (7) will show data for up to 28 days from the current date (not the date the report was generated).  <br/> |
|2.  <br/> |The data in each report usually covers up to the last 24 to 48 hours.  <br/> |
|3.  <br/> |To ensure data quality, we perform daily data validation checks for the past five days and will be filling any gaps detected. You may notice differences in historical data during the process.  <br/> |
|4.  <br/> |The **Activity** view shows you the number of Microsoft Teams activities by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings.  <br/> |
|5.  <br/> |The **Users** view shows you the number of users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings.  <br/> |
|6.  <br/> | On the **Activity** chart, the Y-axis is the count of specified activity.  <br/>  On the **Files** chart, the Y-axis is the number of users participating in teams chats, private chats, calls, or meetings.  <br/>  The X-axis on the charts is the selected date range for the specific report.  <br/> |
|7.  <br/> |You can filter the series you see on the chart by selecting an item in the legend. For example, on the **Activity** chart, select **Channel messages**, **Chat messages**, **Calls**, or **Meetings** to see only the info related to each one. Changing this selection doesn't change the info in the grid table.  <br/> ![Filter the Microsoft Teams activity charts](../../media/c819c4ea-6e9a-4411-a0dd-9f800d64ce38.png)|
|8.  <br/> | The list of groups shown is determined by the set of all groups that existed (weren't deleted) across the widest (180-day) reporting time frame. The activity count will vary according to the date selection.  <br/> NOTE: You might not see all the items in the list below in the columns until you add them.<br/>**Username** is the email address of the user. You can display the actual email address or make this field anonymous.  <br/> **Last Activity Date (UTC)** refers to the last date that the user participated in a Microsoft Teams activity.  <br/> **Channel messages** is the number of unique messages that the user posted in a team chat during the specified time period.  <br/> **Chat messages** is the number of unique messages that the user posted in a private chat during the specified time period.  <br/> **Calls** is the number of calls that the user participated in during the specified time period.  <br/> **Meetings** is the number of online meetings that the user participated in during the specified time period.  <br/> **Other activity** is the number of other team activities by the user.  <br/> **Deleted** indicates if the team is deleted. If the team is deleted, but had activity in the reporting period, it will show up in the grid with deleted set to true.  <br/> **Deleted date** is the date that the team was deleted.  <br/> **Product assigned** is the list of products that are assigned to the user.  <br/>  If your organization's policies prevent you from viewing reports where user information is identifiable, you can change the privacy setting for all these reports. Check out the **How do I hide user level details?** section in the [Activity Reports in the Microsoft 365 admin center](activity-reports.md).  <br/> |
|9.  <br/> |Select **Columns** to add or remove columns from the report.  <br/> ![Teams user activity report - choose columns](../../media/eb5fbcee-e371-4d36-a0c6-fa54732311ec.png)|
|10.  <br/> |You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. If you have less than 2000 users, you can sort and filter within the table in the report itself. If you have more than 2000 users, in order to filter and sort, you will need to export the data.  <br/> |
|||
   

