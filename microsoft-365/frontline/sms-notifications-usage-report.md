---
title: Microsoft Teams SMS notifications usage report
author: lana-chin
ms.author: v-chinlana
manager: jtremper
audience: Admin
ms.topic: conceptual
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
  - m365-virtual-appointments 
description: Learn how to use the SMS notifications usage report in the Microsoft Teams admin center to get an overview of SMS notifications usage in your organization.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-apr2020
ms.date: 10/26/2023
---
# Microsoft Teams SMS notifications usage report

![Information icon](media/info.png) **This feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).**

The SMS notifications usage report in the Microsoft Teams admin center gives you an overview of SMS notifications usage for virtual appointments in your organization. It provides usage data for SMS notifications sent in the Virtual Appointments app, in meetings scheduled using the Virtual appointment meeting template, and in Teams Electronic Health Record (EHR)-integrated appointments.

You can track key data for confirmation and reminder text messages sent to external attendees in virtual appointments scheduled by your staff. The report provides information such as date and time sent, notification type, distribution details, and delivery status.

To access the report, you must be a Teams admin, Global reader, or Report reader.

## View the report

1. In the left navigation of the Teams admin center, choose **Analytics & reports** > **Usage reports**. On the **View reports** tab, under **Report**, select **SMS notifications usage**.
2. Under **Date range**, select a date range of 7 days, 30 days, or 90 days. Then, choose **Run report**.

## Interpret the report

On the **Distribution** tab, you'll see a chart that provides an overview of SMS notifications usage, by month, for the date range that you selected. The table shows details for each SMS notification that was sent.

:::image type="content" source="media/sms-notification-usage-report.png" alt-text="Screenshot of the SMS notifications usage report in the Teams admin center." lightbox="media/sms-notification-usage-report.png" :::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report, by month. The Y axis is the number of SMS notifications.<br>Hover over a given month to see the number of SMS notifications sent during that time period.|
|**3**   |You can filter what you see on the chart by selecting an item. For example, select **SMS sent in EHR** or **SMS sent in Virtual Appointments** (which includes the Virtual Appointments app and the Virtual appointment meeting template) to see only the info related to each one. Changing this selection doesn’t change the information in the table.|
|**4**   |The table gives you detailed information about each SMS notification that was sent during the selected date range. <ul><li>**Sent time (UTC)** is the date and time when the notification was sent.</li> <li>**Sent from** indicates the source of the notification (toll-free number or sender service).</li> <li>**SMS notification type** shows whether the notification is an appointment reminder or confirmation.</li> <li>**Product type** indicates the product used to schedule the appointment. For example, **VA Template** indicates that the appointment was scheduled using the Virtual appointment meeting template.</li> <li>**Status** shows the delivery status. To learn more, see [Delivery status descriptions](#delivery-status-descriptions).</li></ul> |

### Delivery status descriptions

Here are the delivery status values that you might see in the report and what they mean.

|Status  |Description |
|---------|---------|
|Delivered|Notification delivered to the recipient’s phone.|
|Not Delivered – Blocked by recipient|Recipient doesn't want to receive messages and opted out.|
|Not Delivered – Invalid phone number|The number has an invalid format for the destination|
|Not Delivered - Phone number doesn't exist|The number has a valid prefix and format but doesn't exist or isn't allocated.|
|Not Delivered - Blocked phone number|The number is reported as a spam number and is in the vendor's blocklist.|
|Not Delivered - Unreachable phone number|Recipient's phone is switched off or out of the coverage area.|
|Not Delivered - Spam detected|Keyword-based filter detected spam.|
|Not Delivered - Recipient blocked|Recipient's number is blocked from receiving SMS messages from any sender.|
|Not Delivered - Other error|Other internal server errors.|

## Related articles

- [Virtual Appointments usage report](virtual-appointments-usage-report.md)
- [Advanced Virtual Appointments activity report](advanced-virtual-appointments-activity-report.md)
- [Teams Premium licensing](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)
