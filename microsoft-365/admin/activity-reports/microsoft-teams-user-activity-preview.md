---
title: "Microsoft 365 admin center Teams user activity reports"
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: hlu
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
- Adm_TOC
ms.custom:
- GAUpdates
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn how to get the Microsoft Teams user activity report and gain insights into the Teams activity in your organization."
---

# Microsoft 365 Reports in the admin center - Microsoft Teams user activity

The Microsoft 365 Reports dashboard shows you the activity overview across the products in your organization. It enables you to drill in to individual product level reports to give you more granular insight about the activities within each product. Check out [the Reports overview article](activity-reports.md). In the Microsoft Teams user activity report, you can gain insights into the Microsoft Teams activity in your organization.

## How to get to the Microsoft Teams user activity report

1. In the admin center, go to the **Reports**, then select **Usage**.

2. From the dashboard homepage, select the **View more** button on the Microsoft Teams activity card.

## Interpret the Microsoft Teams user activity report

You can view the user activity in the Teams report by choosing the **User activity** tab.

![Microsoft 365 reports - Microsoft Teams user activity.](../../media/user-activity-charts.png)

Select **Choose columns** to add or remove columns from the report.  

:::image type="content" alt-text="Teams user activity report - choose columns." source="../../media/user-activity-columns.png":::

You can also export the report data into an Excel .csv file by selecting the **Export** link. This exports data of all users and enables you to do simple sorting and filtering for further analysis. The exported format for **audio time**, **video time**, and **screen share time** follows ISO 8601 duration format.

The **Microsoft Teams user activity** report can be viewed for trends over the last 7 days, 30 days, 90 days, or 180 days. However, if you select a particular day in the report, the table shows data for up to 28 days from the current date (not the date the report was generated).

To ensure data quality, we perform daily data validation checks for the past three days and fill any gaps detected. You might notice differences in historical data during the process.

|Metric|Mapped metric in Export|Definition|
|:-----|:-----|:-----|
|User name|User Principal Name|The email address of the user. You can display the actual email address or make this field anonymous.|
|Tenant name|Tenant Display Name|The name of an internal or external tenant where a user belongs.<br/><br/>If a user belongs to an external tenant, corresponding data metrics like post messages or reply messages, are calculated based on their interactions in shared channels of the admin’s tenant. Interactions done by the user in their own tenant (outside of shared channels of the given tenant) aren't considered for the admin usage report of given tenant.|
|Is external|Is External|Indicates if the user is an external user or not.|
|Shared channel tenant names|Shared Channel Tenant Display Names|The names of internal or external tenants of shared channels where the user participated.|
|Channel messages| Team Chat Message Count|The number of unique messages that the user posted in a team chat during the specified time period. This count includes original posts and replies.|
|Posts|Post Messages|The number of post messages in all channels during the specified time period. A post is the original message in a teams chat.|
|Replies|Reply Messages|The number of replied messages in all channels during the specified time period.|
|Urgent messages|Urgent Messages|The number of urgent messages during the specified time period.|
|Chat messages|Private Chat Message Count|The number of unique messages that the user posted in a private chat during the specified time period.|
|Total meetings|Meeting Count|Refer to the "Total participated meetings" metric, as defined later in this table, as the current metric and "Total participated meetings" share the same definition. We intend to gradually phase out the current metric with "Total participated meetings."|
|1:1 calls|Call Count|The number of 1:1 calls that the user participated in during the specified time period.|
|Last activity date (UTC)|Last Activity Date|The last date that the user participated in a Microsoft Teams activity.|
|Meetings participated ad hoc|Ad Hoc Meetings Attended Count|The number of ad hoc meetings a user participated in during the specified time period.|
|Meetings organized ad hoc|Ad Hoc Meetings Organized Count|The number of ad hoc meetings a user organized during the specified time period.<br/><br/>**Note**: MeetNow meetings initiated from a chat are reflected in the Teams user activity report as "Ad Hoc Meetings Organized." MeetNow meetings initiated from Teams calendar are reflected in the Teams user activity report as "Scheduled One-Time Meetings Organized."|
|Total organized meetings|Meetings Organized Count|The sum of one-time scheduled, Recurring, ad hoc, and unclassified meetings a user organized during the specified time period.|
|Total participated meetings|Meetings Attended Count|The sum of the one-time scheduled, recurring, ad hoc, and unclassified meetings a user participated in during the specified time period.|
|Meetings organized scheduled one-time|Scheduled One-time Meetings Organized Count|The number of one-time scheduled meetings a user organized during the specified time period.<br/><br/> **Note**: MeetNow meetings initiated from Teams calendar are reflected in the Teams user activity report as "Scheduled One-Time Meetings Organized." MeetNow meetings initiated from a chat are reflected in the Teams user activity report as "Ad Hoc Meetings Organized."|
|Meetings organized scheduled recurring|Scheduled Recurring Meetings Organized Count|The number of recurring meetings a user organized during the specified time period.|
|Meetings participated scheduled one-time|Scheduled One-time Meetings Attended Count|The number of the one-time scheduled meetings a user participated in during the specified time period.|
|Meetings participated scheduled recurring|Scheduled Recurring Meetings Attended Count|The number of the recurring meetings a user participated in during the specified time period.|
|Is licensed|Is Licensed|Selected if the user is licensed to use Teams.|
|Other activity|Has Other Action|The User is active but performed other activities than exposed action types offered in the report (sending or replying to channel messages and chat messages, scheduling or participating in 1:1 calls and meetings). Examples actions are when a user changes the Teams status or the Teams status message or opens a Channel Message post but doesn't reply.|
|Audio Duration|-|Same definition as “Audio Duration (In Seconds)" and formatted by ISO 8601 - Wikipedia|
|Video Duration|-|Same definition as “Video Duration (In Seconds)" and formatted by ISO 8601 - Wikipedia|
|Screen Share Duration|-|The sum of the screen share duration of a user used during the specified time period and formatted by ISO 8601 - Wikipedia|
|Audio Duration (In Seconds)|Audio Time (Min)|Total time the user participated in meetings or calls where audio was enabled. Counts the entire meeting or call duration if the user sent or received audio, not just time speaking or unmuted. Includes meetings initiated via Screenshare from Chat (SSFC) when audio is enabled. Applies to both senders and receivers; nonoptimized VDI clients might show nonzero minutes without active audio use.|
|Video Duration (In Seconds)|Video Time (Min)|Total time the user participated in meetings or calls where video was enabled. Counts the entire meeting or call duration if the user sent or received video, not just time the camera was on. Includes SSFC meetings when video is enabled. Applies to both senders and receivers; nonoptimized VDI clients might show nonzero minutes without active video use.|
|Screen Share Duration In Seconds|Screen Share Time (Min)|The sum of the screen share duration of a user used during the specified time period|

> [!NOTE]
>
> - Metric counts include Teams client built-in features, but don't include changes to chat and channel through service integration, such as Teams app posts or replies and emails in the channel.
> - Audio and video duration metrics represent participation time in meetings where audio or video was enabled, not active speaking or camera‑on time.

## Make the user-specific data anonymous

To make the data in Teams user activity report anonymous, you have to be a global administrator. This hides identifiable information (using MD5 hashes) such as display name, email, and Microsoft Entra Object ID in report and their export.

[!INCLUDE [global-administrator-note](../../includes/global-administrator-note.md)]

1. In Microsoft 365 admin center, go to the **Settings** > **Org Settings**, and under **Services** tab, choose **Reports**.

2. Select **Reports**, and then choose to **Display anonymous identifiers**. This setting gets applied both to the usage reports in Microsoft 365 admin center and Teams admin center.

3. Select **Save changes**.

## Related content

[Microsoft Teams device usage report](../activity-reports/microsoft-teams-device-usage-preview.md)

[Microsoft Teams usage activity report](../activity-reports/microsoft-teams-usage-activity.md)
