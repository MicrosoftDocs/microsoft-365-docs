---
title: "Microsoft 365 admin center Project activity "
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.localizationpriority: medium
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
description: "Learn how to get the Project activity report and gain insights into the Project activity in your organization."
---

# Microsoft 365 Reports in the admin center - Microsoft Teams user activity

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md). 

In the **Project activity report**, you can understand the activity of every user licensed to use Microsoft Project by looking at their interaction with Project. It also helps you to understand the level of collaboration going on by looking at the number of projects visited and tasks created or edited. 
 
## How to get to the Project activity report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. From the dashboard homepage, click on the **View more** button on the Project card.

## Interpret the Project activity report

You can use this report to see the activity and usage of Project in your environment. You will see four summary charts in this report:  <br/>![Microsoft 365 reports - Project activity.](../../media/project-activity.png)

- **Active users** - Shows you the daily active users on each day over time. Currently, this includes only Project for the Web and Project Online desktop client.
- **Active users (by client)** -  Shows you the daily active users on each day over time, broken out by client (Project for the Web vs. Project Online desktop client).
- **Project Activity** - Shows you the number of daily sessions of Project over time, for each client (Project for the Web and Project Online desktop client).
- **Task activity** - Shows you the daily number of tasks created or edited over time in Project for the Web 

The report also has a table that shows activity for each project user in your environment.

Show image of table here.


Select **Choose columns** to add or remove columns from the table.  <br/> ![Project activity report - choose columns.](../../media/project-activity-columns.png)

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. If you have less than 2000 users, you can sort and filter within the table in the report itself. If you have more than 2000 users, in order to filter and sort, you will need to export the data. The exported format for **audio time**, **video time**, and **screen share time** follows ISO8601 duration format.

The **Project activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated).

To ensure data quality, we perform daily data validation checks for the past three days and will be filling any gaps detected. You may notice differences in historical data during the process.


### User activity table
The following are definitions for each metric in the user activity table. 
|||
|:-----|:-----|
|**Column**|**Description**|
|User name  <br/> |The user’s principal name.   <br/> |
|Display name   <br/> |The full name of the user .  <br/> |
|Last activity date   <br/> |The latest date the user in that row had activity in Project, including any of the activities in the summary reports above.   <br/> |
|Projects visited (Desktop)   <br/> |The number of projects opened by that user in the Project Online desktop client during the time range selected in the top right of the page.    <br/> |
|Projects visited (Web)   <br/> | The number of tasks created by that user in Project for the Web during the time range selected in the top right of the page.   <br/> |
|Tasks created (Web)   <br/> |The number of tasks created by that user in Project for the Web during the time range selected in the top right of the page. <br/> |
|Tasks edited (Web)    <br/> |The number of tasks edited by that user in Project for the Web during the time range selected in the top right of the page.  <br/> |
|Other <br/> |True if the user has performed an activity in Project Online desktop client or in Project for the Web (that is not covered by the other columns) in the time range selected in the top right of the page; False otherwise . <br/>|

