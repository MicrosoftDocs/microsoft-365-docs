---
title: Microsoft Teams SMS notifications usage report
author: lana-chin
ms.author: v-chinlana
manager: serdars
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-frontline
ms.reviewer: 
f1.keywords:
- NOCSH
ms.localizationpriority: high
search.appverid: MET150
ms.collection: 
  - M365-collaboration
  - m365-frontline
  - m365initiative-meetings
description: Learn how to use the SMS notifications usage report in the Microsoft Teams admin center to get an overview of SMS notifications usage in your organization.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-apr2020
ms.date: 3/23/2023
---
# Microsoft Teams SMS notifications usage report

![Information icon](media/info.png) **This feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).**

The SMS notifications usage report in the Microsoft Teams admin center gives you an overview of SMS notifications usage in your organization.

You can track key data for confirmation and reminder text messages sent to external attendees in virtual appointments scheduled by your staff. The report provides information such as date and time sent, notification type, delivery status, and distribution details.

To access the report, you must be a Global admin, Teams admin, Global reader, or Report reader.

## View the report

1. In the left navigation of the Teams admin center, choose **Analytics & reports** > **Usage reports**. On the **View reports** tab, under **Report**, select **SMS notifications usage**.
2. Under **Date range**, select a date range of 7 days, 30 days, or 90 days. Then, choose **Run report**.

    The report contains the following information:
    
    |Tab |Description  |
    |---------|---------|
    |**[Distribution](#distribution)** |Shows a breakdown of the number of SMS notifications sent in Bookings appointments and in Teams Electronic Health Record (EHR)-integrated appointments.|

## Interpret the report

Here's what you'll see on each tab of the report.

### Distribution

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report, by month. The Y axis is the number of SMS notifications.<br>Hover over the dot on a given date to see the number of SMS notifications sent on that date.|
|**3**   |You can filter what you see on the chart by selecting an item. For example, select **SMS sent in EHR** or **SMS sent in Bookings** to see only the info related to each one. Changing this selection doesn’t change the information in the table.|
|**4**   |The table gives you detailed information about each SMS notification that was sent during the selected date range. <ul><li>**Sent time (UTC)** is the date and time when the notification was sent.</li> <li>**Sent from** indicates the source of the notification.</li> <li>**SMS notification type** shows whether the notification is an appointment reminder or confirmation.</li> <li>**Product type** indicates whether the virtual appointment was scheduled through Bookings or the Teams EHR connector.</li> <li>**Status** shows the delivery status.</li></ul> |

## Related articles

- [Virtual Appointments usage report](virtual-appointments-usage-report.md)
- [Advanced Virtual Appointments activity report](advanced-virtual-appointments-activity-report.md)
- [Teams Premium licensing](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)
