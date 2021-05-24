---
title: "Microsoft 365 Reports in the admin center - Mailbox usage"
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
ms.assetid: beffbe01-ce2d-4614-9ae5-7898868e2729
description: "Learn how to get Mailbox usage report to know about the activities of the users with a user mailbox."
---

# Microsoft 365 Reports in the admin center - Mailbox usage

The **Mailbox usage report** provides information about users with a user mailbox and the level of activity by each based on the email send, read, create appointment, send meeting, accept meeting, decline meeting and cancel meeting activity. It also provides information about how much storage has been consumed by each user mailbox, and how many of them are approaching storage quotas. 
  
> [!NOTE]
> You must be a global administrator, global reader or reports reader in Microsoft 365 or an Exchange, SharePoint, Teams Service, Teams Communications, or Skype for Business administrator to see reports. 
 
## How to get to the mailbox usage report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. Select **View More** under **Email activity**. 
3. From the **Email activity** drop-down list, select **Exchange** \> **Mailbox usage**.

## Interpret the mailbox usage report

You can get a view into your organization's **Mailbox usage** by looking at the **Mailbox**, **Storage** and **Quota** charts. 
  
![Mailbox usage report](../../media/9f610e91-cbc1-4e59-b824-7b1ddd84b738.png)

|Item|Description|
|:-----|:-----|
|1.  <br/> |The **Mailbox usage** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated).  <br/> |
|2.  <br/> |The data in each report usually covers up to the last 24 to 48 hours.  <br/> |
|3.  <br/> |The Mailbox chart shows you the total number of user mailbox in your organization, and the total number that are active on any given day of the reporting period. A user mailbox is considered active if it had an email send, read, create appointment, send meeting, accept meeting, decline meeting and cancel meeting activity.  <br/> |
|4.  <br/> |The **Storage** chart shows you amount of storage used in your organization. Storage Chart doesn't include archive mailboxes. For more information about auto-expanding archiving, see [Overview of unlimited archiving in Microsoft 365](../../compliance/unlimited-archiving.md).<br/> |
|5.  <br/> | The **Quota** chart shows you the number of user mailboxes in each quota category. There are four quota categories:  <br/>  Good - number of users whose storage used is below the issue warning quota.  <br/>  Warning - number of users whose storage used is at or above issue warning, but below prohibit send quota  <br/>  Can't send - number of users whose storage used is at or above the prohibit send quota, but below prohibit send/receive quota  <br/>  Can't send/receive - number of users whose storage used is at or above prohibit send/receive quota  <br/> |
|6.  <br/> | On the **Mailbox** chart, the Y axis is the count of user mailboxes.  <br/>  On the **Storage** chart, the Y axis is the amount of storage being used by user mailboxes in your organization.  <br/>  On the **Quota** chart, the Y axis is the number of user mailboxes in each storage quota.  <br/>  The X axis on the Mailbox and Storage charts is the selected date range for this specific report.  <br/>  The X axis on the Quota charts is the quota category.  <br/> |
|7.  <br/> |You can filter charts you see by selecting an item in the legend.  <br/> |
|8.  <br/> | The table shows you a breakdown of mailbox usage at the per-user level. You can add additional columns to the table.  <br/> **User name** is the email address of the user.  <br/> **Display Name** is the full name if the user.  <br/> **Deleted** refers to the mailbox whose current state is deleted, but was active during some part of the reporting period of the report.  <br/> **Deleted date** is the date the mailbox was deleted.  <br/> **Create date** is the date the mailbox was created.  <br/> **Last activity date** refers to the date the mailbox had an email send or read activity.  <br/> **Item count** refers to the total number of items in the mailbox.  <br/> **Storage used (MB)** refers to the total storage used.  <br/> **Deleted Item Count** refers to the total number of deleted items in the mailbox. <br/> **Deleted Item Size (MB)** refers to the total size of all deleted items in the mailbox. <br/> **Issue warning quota (MB)** refers to the storage limit when the mailbox owner will receive a warning that it's about to hit the storage quota.  <br/> **Prohibit send quota (MB)** refers to the storage limit when the mailbox can no longer send emails.  <br/> **Prohibit send receive quota (MB)** refers to the storage limit when the mailbox can no longer send or receive emails.  <br/>  If your organization's policies prevents you from viewing reports where user information is identifiable, you can change the privacy setting for all these reports. Check out the **Hide user details in the reports** section in the [Activity Reports in the Microsoft 365 admin center](activity-reports.md).  <br/> |
|9.  <br/> |Select **Choose columns** to add or remove columns from the report.  <br/> ![Mailbox usage report - choose columns](../../media/ea3d0b18-6ac6-41b0-9bb9-4844f040ea75.png)|
|10.  <br/> |You can also export the report data into an Excel .csv file, by selecting the **Export** link.  <br/> |
|||
