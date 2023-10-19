---
title: "Microsoft 365 admin center Teams user activity reports"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 08/21/2023
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
description: "Learn how to get the Microsoft Teams user activity report and gain insights into the Teams activity in your organization."
---

# Microsoft 365 Reports in the admin center - Microsoft Teams user activity

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview topic](activity-reports.md). In the Microsoft Teams user activity report, you can gain insights into the Microsoft Teams activity in your organization.

## How to get to the Microsoft Teams user activity report

1. In the admin center, go to the **Reports**, then select **Usage**.

2. From the dashboard homepage, click on the **View more** button on the Microsoft Teams activity card.

## Interpret the Microsoft Teams user activity report

You can view the user activity in the Teams report by choosing the **User activity** tab.

![Microsoft 365 reports - Microsoft Teams user activity.](../../media/user-activity-charts.png)

Select **Choose columns** to add or remove columns from the report.  

:::image type="content" alt-text="Teams user activity report - choose columns." source="../../media/user-activity-columns.png":::

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. The exported format for **audio time**, **video time**, and **screen share time** follows ISO8601 duration format.

The **Microsoft Teams user activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table will show data for up to 28 days from the current date (not the date the report was generated).

To ensure data quality, we perform daily data validation checks for the past three days and will be filling any gaps detected. You may notice differences in historical data during the process.

|Metric|Mapped metric in Export|Definition|
|:-----|:-----|:-----|
|User name  <br/> |User Principal Name|The email address of the user. You can display the actual email address or make this field anonymous.   <br/> |
|Tenant name  <br/> |Tenant Display Name|The name of an internal or external tenant where a user belongs.   <br/> <br/> If a user belongs to an external tenant, corresponding data metrics (for example, post messages, reply messages,  etc.) are calculated based on their interactions in shared channels of the admin’s tenant. Interactions done by the user in their own tenant (outside of shared channels of the given tenant) are not considered for the admin usage report of given tenant.  |
|Is external   <br/> |Is External|Indicates if the user is an external user or not.   <br/> |
|Shared channel tenant names   <br/> |Shared Channel Tenant Display Names|The names of internal or external tenants of shared channels where the user participated.   <br/> |
|Channel messages   <br/> |Team Chat Message Count|The number of unique messages that the user posted in a team chat during the specified time period. This includes original posts and replies.   <br/> |
|Posts   <br/> |Post Messages|The number of post messages in all channels during the specified time period. A post is the original message in a teams chat.<br/> |
|Replies   <br/> |Reply Messages|The number of replied messages in all channels during the specified time period. <br/> |
|Urgent messages    <br/> |Urgent Messages|The number of urgent messages during the specified time period. <br/> |
|Chat messages   <br/> |Private Chat Message Count|The number of unique messages that the user posted in a private chat during the specified time period.  <br/> |
|Total meetings   <br/> |Meeting Count|Refer to the 'Total participated meetings' metric as defined below, as the current metric and ‘Total participated meetings’ share the same definition. We intend to gradually phase out the current metric with 'Total participated meetings.' <br/> |
|1:1 calls   <br/> |Call Count|The number of 1:1 calls that the user participated in during the specified time period.  <br/> |
|Last activity date (UTC)  <br/> |Last Activity Date|The last date that the user participated in a Microsoft Teams activity.<br/> |
|Meetings participated ad hoc   <br/> |Ad Hoc Meetings Attended Count|The number of ad hoc meetings a user participated in during the specified time period.  <br/> |
|Meetings organized ad hoc <br/> |Ad Hoc Meetings Organized Count|The number of ad hoc meetings a user organized during the specified time period. <br/>|
|Total organized meetings  <br/> |Meetings Organized Count|The sum of one-time scheduled, Recurring, ad hoc and unclassified meetings a user organized during the specified time period.  <br/> |
|Total participated meetings  <br/> |Meetings Attended Count|The sum of the one-time scheduled, recurring, ad hoc and unclassified meetings a user participated in during the specified time period.  <br/> |
|Meetings organized scheduled one-time  <br/> |Scheduled One-time Meetings Organized Count|The number of one-time scheduled meetings a user organized during the specified time period.  <br/> |
|Meetings organized scheduled recurring  <br/> |Scheduled Recurring Meetings Organized Count|The number of recurring meetings a user organized during the specified time period.  <br/> |
|Meetings participated scheduled one-time  <br/> |Scheduled One-time Meetings Attended Count|The number of the one-time scheduled meetings a user participated in during the specified time period.  <br/> |
|Meetings participated scheduled recurring  <br/> |Scheduled Recurring Meetings Attended Count|The number of the recurring meetings a user participated in during the specified time period.  <br/> |
|Is licensed  <br/> |Is Licensed|Selected if the user is licensed to use Teams. <br/>|
|Other activity  <br/>|Has Other Action|The User is active but has performed other activities than exposed action types offered in the report (sending or replying to channel messages and chat messages, scheduling or participating in 1:1 calls and meetings). Examples actions are when a user changes the Teams status or the Teams status message or opens a Channel Message post but does not reply.  <br/>|
|Audio Duration| - |The sum of the audio duration of a user used during the specified time period and formatted by ISO 8601 - Wikipedia |
|Video Duration| - |The sum of the video duration of a user used during the specified time period and formatted by ISO 8601 - Wikipedia |
|Screen Share Duration| - |The sum of the screen share duration of a user used during the specified time period and formatted by ISO 8601 - Wikipedia |
|Audio Duration In Seconds|Audio Time (Min)|The sum of the audio duration of a user used during the specified time period |
|Video Duration In Seconds|Video Time (Min)|The sum of the video duration of a user used during the specified time period |
|Screen Share Duration In Seconds|Screen Share Time (Min)|The sum of the screen share duration of a user used during the specified time period |

> [!NOTE]
> Metric counts include Teams client built-in features, but don't include changes to chat and channel through service integration, such as Teams app posts or replies and emails in the channel.

## Make the user-specific data anonymous

To make the data in Teams user activity report anonymous, you have to be a global administrator. This will hide identifiable information (using MD5 hashes) such as display name, email, and Microsoft Entra Object ID in report and their export.

1. In Microsoft 365 admin center, go to the **Settings** > **Org Settings**, and under **Services** tab, choose **Reports**.

2. Select **Reports**, and then choose to **Display anonymous identifiers**. This setting gets applied both to the usage reports in Microsoft 365 admin center and Teams admin center.

3. Select **Save changes**.

## Related content

[Microsoft Teams device usage report](../activity-reports/microsoft-teams-device-usage-preview.md)

[Microsoft Teams usage activity report](../activity-reports/microsoft-teams-usage-activity.md)
