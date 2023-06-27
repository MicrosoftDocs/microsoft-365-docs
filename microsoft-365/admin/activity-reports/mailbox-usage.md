---
title: "Microsoft 365 admin center mailbox usage reports"
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
ms.assetid: beffbe01-ce2d-4614-9ae5-7898868e2729
description: "Learn how to get the Mailbox usage report to find out about activity levels for users with a user mailbox, as well as storage and quota information for each."
---

# Microsoft 365 Reports in the admin center - Mailbox usage

The **Mailbox usage report** provides information about users with a user mailbox and the level of activity by each based on the email send, read, create appointment, send meeting, accept meeting, decline meeting and cancel meeting activity. It also provides information about how much storage has been consumed by each user mailbox, and how many of them are approaching storage quotas. The mailbox usage report also contains information on mailboxes shared amongst users, providing storage and quota data on shared mailboxes.
 
## How to get to the mailbox usage report

1. In the admin center, go to the **Reports** \> <a href="https://go.microsoft.com/fwlink/p/?linkid=2074756" target="_blank">Usage</a> page.
2. Select **View More** under **Email activity**. 
3. From the **Email activity** drop-down list, select **Exchange** \> **Mailbox usage**.

## Interpret the Mailbox usage report

You can get a view into your organization's mailbox usage by looking at the **Mailbox**, **Storage** and **Quota** charts.

To access shared mailbox information, change the drop-down selection at the top right of the charts to **Shared**.  If your tenant does not have shared mailboxes, you will not be able to view any shared mailbox information.

> [!NOTE]
> You will not currently be able to export the summary chart information for shared mailboxes. This is a known issue and will be corrected in a future iteration.
  
:::image type="content" alt-text="Mailbox usage report." source="../../media/9f610e91-cbc1-4e59-b824-7b1ddd84b738.png" lightbox="../../media/9f610e91-cbc1-4e59-b824-7b1ddd84b738.png":::

The **Mailbox usage** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated). The data in each report usually covers up to the last 24 to 48 hours.

The **Mailbox usage** report does not include **Recoverable Items** as they are included in the **Recoverable Items mailbox quota**.

### The Mailbox chart

The **Mailbox** chart shows you the total number of user or shared mailboxes in your organization, and the total number of user mailboxes that are active on any given day of the reporting period. A user mailbox is considered active if it had an email send, read, create appointment, send meeting, accept meeting, decline meeting and cancel meeting activity.

> [!NOTE]
> Shared mailboxes do not have activity independent of a user mailbox so only a count of shared mailboxes will be shown when this mailbox type is selected.

On the Mailbox chart:
- The Y axis is the number of user or shared mailboxes. 
- The X axis is the selected date range for this specific report.

### The Storage chart

The **Storage** chart shows you amount of storage used in your organization by mailbox type. Storage Chart doesn't include archive mailboxes. For more information about auto-expanding archiving, see [Overview of auto-expanding archiving in Microsoft 365](../../compliance/autoexpanding-archiving.md).

On the Storage chart:
- The Y axis is the amount of storage being used by user or shared mailboxes in your organization.
- The X axis is the selected date range for this specific report.

### The Quota chart

The **Quota** chart shows you the number of user or shared mailboxes in each quota category. There are four quota categories: 
- Good: The number of users or shared mailboxes whose storage used is below the "issue warning" quota.
- Warning: The number of users or shared mailboxes whose storage used is at or above the "issue warning" quota, but below the "prohibit send" quota.
- Can't send: The number of users or shared mailboxes whose storage used is at or above the prohibit send quota, but below the prohibit send/receive quota.
- Can't send/receive: The number of users or shared mailboxes whose storage used is at or above the "prohibit send/receive" quota.

On the Quota chart:
- The Y axis is the number of user or shared mailboxes in each storage quota.
- The X axis is the quota category.

You can filter charts you see by selecting an item in the legend.

## Mailbox usage per mailbox table

This table shows you a breakdown of mailbox usage at the per mailbox level. You can add additional columns to the table. 

|Item|Description|
|:-----|:-----|
|Recipient type |Either Shared or User. |
|User name |The email address of the user. |
|Display Name  |The full name of the user. |
|Deleted |The mailbox whose current state is deleted, but was active during some part of the reporting period of the report.|
|Deleted date |The date the mailbox was deleted. |
|Create date | The date the mailbox was created.  |
|Last activity date | The date the mailbox last had an email send or read activity.   |
|Item count|The total number of items in the mailbox. |
|Storage used (MB)|The total storage used. |
|Deleted Item Count|The total number of deleted items in the mailbox. |
|Deleted Item Size (MB)|The total size of all deleted items in the mailbox. |
|Issue warning quota (MB)|The storage limit when the mailbox owner will receive a warning that it's about to hit the storage quota.  |
|Prohibit send quota (MB)|The storage limit when the mailbox can no longer send emails. |
|Prohibit send receive quota (MB)|The storage limit when the mailbox can no longer send or receive emails. |
|Recoverable Item Quota (MB)|The storage limit for recoverable (deleted) items in the mailbox when the mailbox can no longer delete emails. |
|Has Archive|Shows if the mailbox has an online archive enabled. |


If your organization's policies prevents you from viewing reports where user information is identifiable, you can change the privacy setting for all these reports. Check out the **Hide user details in the reports** section in the [Activity Reports in the Microsoft 365 admin center](activity-reports.md).

Select **Choose columns** to add or remove columns from the report.  <br/> :::image type="content" alt-text="Mailbox usage report - choose columns." source="../../media/ea3d0b18-6ac6-41b0-9bb9-4844f040ea75.png":::

You can also export the report data into an Excel .csv file, by selecting the **Export** link. 
