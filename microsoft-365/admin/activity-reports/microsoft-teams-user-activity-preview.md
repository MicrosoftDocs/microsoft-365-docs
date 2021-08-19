---
title: "Microsoft 365 Reports in the admin center - Microsoft Teams user activity"
ms.author: kwekua
author: kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ROBOTS: NOINDEX, NOFOLLOW
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
description: "Learn how to get the Microsoft Teams user activity report and gain insights into the Teams activity in your organization."
---

# Microsoft 365 Reports in the admin center - Microsoft Teams user activity

The Microsoft 365 **Reports** dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md). In the Microsoft Teams user activity report, you can gain insights into the Microsoft Teams activity in your organization.
  
> [!NOTE]
> You must be a global administrator, global reader or reports reader in Microsoft 365 or an Exchange, SharePoint, Teams Service, Teams Communications, or Skype for Business administrator to see reports.  
 
## How to get to the Microsoft Teams user activity report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. From the dashboard homepage, click on the **View more** button on the Microsoft Teams activity card.

## Interpret the Microsoft Teams user activity report

You can view the user activity in the Teams report by choosing the **User activity** tab. <br/>![Microsoft 365 reports - Microsoft Teams user activity.](../../media/1011877f-3cf0-4417-9447-91d0b2312aab.png)

Select **Choose columns** to add or remove columns from the report.  <br/> ![Teams user activity report - choose columns](../../media/6d3c013e-2c5e-4d66-bb41-998aa4bd1c20.png)

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. If you have less than 2000 users, you can sort and filter within the table in the report itself. If you have more than 2000 users, in order to filter and sort, you will need to export the data. The exported format for **audio time**, **video time**, and **screen share time** follows ISO8601 duration format.

The **Microsoft Teams user activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table (7) will show data for up to 28 days from the current date (not the date the report was generated).

To ensure data quality, we perform daily data validation checks for the past three days and will be filling any gaps detected. You may notice differences in historical data during the process.

|Item|Description|
|:-----|:-----|
|**Metric**|**Definition**|
|User name  <br/> |The email address of the user. You can display the actual email address or make this field anonymous.   <br/> |
|Channel messages   <br/> |The number of unique messages that the user posted in a team chat during the specified time period.  <br/> |
|Chat messages   <br/> |The number of unique messages that the user posted in a private chat during the specified time period.  <br/> |
|Total meetings   <br/> |The number of online meetings that the user participated in during the specified time period.  <br/> |
|1:1 calls   <br/> | The number of 1:1 calls that the user participated in during the specified time period.  <br/> |
|Last activity date (UTC)  <br/> |The last date that the user participated in a Microsoft Teams activity.<br/> |
|Meetings participated ad hoc   <br/> | The number of ad hoc meetings a user participated in during the specified time period.  <br/> |
|Meetings organized ad hoc <br/> |The number of ad hoc meetings a user organized during the specified time period. <br/>|
|Total organized meetings  <br/> |The sum of one-time scheduled, Recurring, ad hoc and unclassified meetings a user organized during the specified time period.  <br/> |
|Total participated meetings  <br/> |The sum of the one-time scheduled, recurring, ad hoc and unclassified meetings a user participated in during the specified time period.  <br/> |
|Meetings organized scheduled one-time  <br/> |The number of one-time scheduled meetings a user organized during the specified time period.  <br/> |
|Meetings organized scheduled recurring  <br/> |The number of recurring meetings a user organized during the specified time period.  <br/> |
|Meetings participated scheduled one-time  <br/> |The number of the one-time scheduled meetings a user participated in during the specified time period.  <br/> |
|Meetings participated scheduled recurring  <br/> |The number of the recurring meetings a user participated in during the specified time period.  <br/> |
|Is licensed  <br/> |Selected if the user is licensed to use Teams. <br/>|
|Other activity  <br/>|The User is active but has performed other activities than exposed action types offered in the report (sending or replying to channel messages and chat messages, scheduling or participating in 1:1 calls and meetings). Examples actions are when a user changes the Teams status or the Teams status message or opens a Channel Message post but does not reply.  <br/>|
|unclassified meetings <br/>|The one which can not be classified as schedule or recurring or ad hoc. These are  short in number and mostly can't be identified because of tampered telemetry information. |
|||