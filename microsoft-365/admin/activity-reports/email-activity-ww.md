---
title: "Microsoft 365 Reports in the admin center - Email activity"
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
- MET150
- MOE150
- GEA150
ms.assetid: 1cbe2c00-ca65-4fb9-9663-1bbfa58ebe44
description: "Learn how to get an email activity report using the Microsoft 365 Reports dashboard in the Microsoft 365 admin center."
---

# Microsoft 365 Reports in the admin center - Email activity

The Microsoft 365 **Reports** dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md).
  
For example, you can get a high level view of email traffic within your organization from the Reports page, and then you can drill into the Email activity widget to understand the trends and per user level details of the email activity within your organization.
  
> [!NOTE]
> You must be a global administrator, global reader or reports reader in Microsoft 365 or an Exchange, SharePoint, Teams Service, Teams Communications, or Skype for Business administrator to see reports. 

## How to get to the email activity report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. Select **View More** under **Email activity**. 
3. From the **Email activity** drop-down list, select **Exchange** \> **Email activity**.
  
## Interpret the email activity report

You can get a view into your user's email activity by looking at the **Activity** and **Users** charts. 
  
![Email activity report](../../media/5eb1d9e9-8106-4843-acb7-c0238c0da816.png)
  
|Item|Description|
|:-----|:-----|
|1.  <br/> |The **Email activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table (7) will show data for up to 28 days from the current date (not the date the report was generated).  <br/> |
|2.  <br/> |The data in each report usually covers up to the last 24 to 48 hours.  <br/> |
|3.  <br/> |The **Activity** chart enables you to understand the trend of the amount of email activity going on in your organization. You can understand the split of email send, email read, email received, meeting created, or meeting interacted activities.  <br/> |
|4.  <br/> |The **User** chart enables you to understand the trend of the amount of unique users who are generating the email activities. You can look at the trend of users performing email sending, email reading, email receiving, meeting creating, or meeting interacting activities.  <br/> |
|5.  <br/> | On the **Activity** chart, the Y axis is the count of activity of the type email sent, email received, email read, meeting created, and meeting interacted.  <br/>  On the **Users** activity chart, the Y axis is the user's performing activity of the type email sent, email received, email read, meeting created, or meeting interacted.  <br/>  The X axis on both charts is the selected date range for this specific report.  <br/> |
|6.  <br/> |You can filter the series you see on the chart by selecting an item in the legend.  <br/> |
|7.  <br/> | The table shows you a breakdown of the email activities at the per-user level. This shows all users that have an Exchange product assigned to them and their email activities. <br/> <br/> **Username** is the email address of the user.  <br/> **Display name** is the full name if the user.  <br/> **Deleted** refers to the user whose current state is deleted, but was active during some part of the reporting period of the report.  <br/> **Deleted date** is the date the user was deleted.  <br/> **Last activity date** refers to the last time the user performed a read or send email activity.  <br/> **Send actions** is the number of times an email send action was recorded for the user.  <br/> **Receive actions** is the number of times an email received action was recorded for the user.  <br/> **Read actions** is the number of times an email read action was recorded for the user.  <br/> **Meeting created actions** is the number of times a meeting request send action was recorded for the user.  <br/> **Meeting interacted actions** is the number of times a meeting request accept, tentative, decline, or cancel action was recorded for the user.  <br/> **Product assigned** is the products that are assigned to this user.  <br/>  If your organization's policies prevents you from viewing reports where user information is identifiable, you can change the privacy setting for all these reports. Check out the **How do I hide user level details?** section in the [Activity Reports in the Microsoft 365 admin center](activity-reports.md).  <br/> |
|8.  <br/> |Select **Choose columns** to add or remove columns from the report.  <br/> ![Email activity report - choose columns](../../media/80ffa0ad-61c5-4a6f-8a1d-5f6730ff7da9.png)|
|9.  <br/> |You can also export the report data into an Excel .csv file, by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. If you have less than 2000 users, you can sort and filter within the table in the report itself. If you have more than 2000 users, in order to filter and sort, you will need to export the data.  <br/> |
|||
   
Note: The Email activity report is only available for mailboxes that are associated with users who have licenses.
