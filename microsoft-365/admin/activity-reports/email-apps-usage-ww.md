---
title: "Microsoft 365 admin center email apps usage reports"
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 02/18/2020
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
ms.assetid: c2ce12a2-934f-4dd4-ba65-49b02be4703d
description: "Learn how to get an email apps usage report to find out how many email apps are connecting to Exchange Online and which version of Outlook users are using."
---

# Microsoft 365 Reports in the admin center - Email apps usage

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md). In the email apps usage report, you can see how many email apps are connecting to Exchange Online. You can also see the version information of Outlook apps that users are using, which will allow you to follow up with those who are using unsupported versions to install supported versions of Outlook.
  
## How to get to the email apps report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. Select **View More** under **Email activity**. 
3. From the **Email activity** drop-down list, select **Exchange** \> **Email apps usage**.
  
## Interpret the email apps report

You can get a view into email apps activity by looking at the **Users** and **Clients** charts. 
  
![Email clients used.](../../media/email-apps-report.png)

The **Email apps usage** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated). The data in each report usually covers up to the last 24 to 48 hours.

The **Users** view shows you the number of unique users that connected to Exchange Online using any email app. 

The **Apps** view shows you the number of unique users by app over the selected time period. 

The **Versions** view shows you the number of unique users for each version of Outlook in Windows. 

On the Users chart, the Y axis is the total count of unique users that connected to an app on any day of the reporting period. And the X axis is number of unique users that used the app for that reporting period. 

On the Apps chart, the Y axis is the total count of unique users who used a specific app during the reporting period. And the X axis is the list of apps in your organization. 

On the Versions chart, the Y axis is the total count of unique users using a specific version of Outlook desktop. If the report can't resolve the version number of Outlook, the quantity will show as **Undetermined**. And the X axis is the list of apps in your organization.

You can filter the series you see on the chart by selecting an item in the legend. You might not see all the items in the list below in the columns until you add them.
 
|Item|Description|
|:-----|:-----|
|Username | The name of the email app's owner. |
|Last activity date | The latest date the user read or sent an email message. |
|Mac mail, Mac Outlook, Outlook, Outlook mobile, and Outlook on the web | Examples of email apps you may have in your organization. |
   
If your organization's policies prevents you from viewing reports where user information is identifiable, you can change the privacy setting for all these reports. Check out the **How do I hide user level details?** section in the [Activity Reports in the Microsoft 365 admin center](activity-reports.md). 

Select **Choose columns** to add or remove columns from the report.  

![Email apps usage report - choose columns.](../../media/041bd6ff-27e8-409d-9608-282edcfa2316.png)

You can also export the report data into an Excel .csv file, by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. 
