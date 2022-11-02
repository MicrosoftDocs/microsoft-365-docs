---
title: Microsoft Teams Virtual Appointments usage report
author: LanaChin
ms.author: v-lanachin
manager: samanro
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-frontline
ms.reviewer: ansantam
f1.keywords:
- NOCSH
ms.localizationpriority: high
search.appverid: MET150
ms.collection: 
  - M365-collaboration
  - m365-frontline
description: Learn how to use the Virtual Appointments usage report in the Microsoft Teams admin center to get an overview of virtual appointment activity in your organization.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-apr2020
---
# Microsoft Teams Virtual Appointments usage report

> [!NOTE]
> This feature is temporarily available as preview for all customers. To get this feature after the preview, each user will need a [Teams Premium](https://review.learn.microsoft.com/MicrosoftTeams/enhanced-teams-experience?branch=danismith-t-pre-licensing) license.

The Virtual Appointments usage report in the Microsoft Teams admin center gives you an overview of Teams Virtual Appointments activity in your organization. You can view detailed activity for virtual appointments scheduled through the [Bookings app](bookings-virtual-visits.md) and the [Microsoft Teams Electronic Health Record (EHR) connector](teams-in-hc.md#virtual-appointments-and-electronic-healthcare-record-ehr-integration).

To view the report, you must be a global admin or Teams admin.

The report contains the following tabs. The information you’ll see in the report depends on whether you have a license for the Bookings app, the Teams EHR connector, or both.

|Tab |Description  |
|---------|---------|
|**[Virtual Appointments](#virtual-appointments)**     |Shows the total number of virtual appointments, with a breakdown of the number of appointments scheduled using the Bookings app, Teams EHR-integrated meetings conducted from your EHR system, and premium appointments.         |
|**[Duration](#duration)**     |Shows the average duration of appointments and average lobby wait time of participants.         |
|**[Bookings](#bookings)**     |Shows the number of appointments scheduled through the Bookings app, with a breakdown of the number of premium appointments.         |
|**[EHR](#ehr)**     |Shows the number of Teams EHR-integrated appointments conducted from your EHR system.         |

> [!NOTE]
> Premium appointments are appointments that use at least one advanced Virtual Appointments capability available in [Teams Premium](https://review.learn.microsoft.com/MicrosoftTeams/enhanced-teams-experience?branch=danismith-t-pre-licensing). For more analytics on advanced Virtual Appointments usage, go to the [**Premium Virtual Appointments active users**](virtual-appointments-active-user-report.md#the-premium-virtual-appointments-active-users-card) card in the Teams admin center dashboard.

Use this report to gain insight into virtual appointment activity and trends in your organization. The information can help you optimize Virtual Appointments to deliver better business outcomes.

## View the report

There are two ways to access and view the report in the Teams admin center.

- Through the [**Virtual Appointments usage card**](#the-virtual-appointments-usage-card) in the dashboard
- Directly by choosing [**Virtual Appointments usage**](#the-virtual-appointments-usage-report) in **Analytics & reports** > **Usage reports**.

### The Virtual Appointments usage card

In the dashboard of the Teams admin center, go to the **Virtual Appointments usage** card. Here, you get an at-a-glance view of virtual appointments usage across your organization, including Bookings and Teams EHR-integrated appointments.

[placeholder for screenshot]

Choose **View details** to view the report.

### The Virtual Appointments usage report

1. In the left navigation of the Microsoft Teams admin center, choose **Analytics & reports** > **Usage reports**. On the **View reports** tab, under **Report**, select **Virtual Appointments usage**.
2. Under **Date range**, select a date range of 7 days, 30 days, or 90 days. Then, choose **Run report**.

> [!NOTE]
> By default, Virtual Appointments analytics is on and the report is available. By using this report, you give Microsoft permission to collect data about virtual appointments in your organization. For information about our data retention policies, see [Data retention, deletion, and destruction in Microsoft 365](/compliance/assurance/assurance-data-retention-deletion-and-destruction-overview).
>
>If you want to turn off the report for your organization, you can do so in **Settings** in the upper-right corner of the page. This setting may take between 0 (zero) to 2 hours to take effect after you change it.

## Interpret the report

Here's what you'll see on each tab of the report.

### Virtual Appointments

The graphs you'll see here depend on whether you have a license for the Bookings app, the Teams EHR connector, or both. To learn more, see [Manage the Bookings app](/microsoftteams/bookings-app-admin?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json), and [Integration into Cerner EHR](ehr-admin-cerner.md) or [Integration into Epic EHR](ehr-admin-epic.md).

[NEED NEW SCREENSHOT]<br>
:::image type="content" source="media/virtual-visits-usage-report-virtual-visits.png" alt-text="Screenshot of the Virtual Visits tab of the Virtual Visits usage report showing numbered callouts." lightbox="media/virtual-visits-usage-report-virtual-visits.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of appointments.<br>Hover over the dot on a given date to see the number of appointments on that date.|
|**3**   |These numbers represent the total number of appointments per product for the date range. You can filter what you see on the chart by selecting an item. For example, select **Total Bookings Virtual Appointments**, **Total EHR Virtual Appointments**, or **Total Premium Appointments** to see only the info related to each one. Changing this selection doesn’t change the information in the table.|
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are in the meeting or when the first activity happened in the meeting.  </li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through the Bookings app or the Teams EHR connector.</li> <li>**Attendees** is the total number of staff members and participants in the meeting.</li> <li>**SMS sent** indicates whether an SMS notification was sent to attendees. </li><li>**Premium** indicates whether an appointment used an advanced Virtual Appointments capability in Teams Premium. </li> </li> </ul> |
|**5**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|
|**6**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|

### Duration

[NEED NEW SCREENSHOT]
:::image type="content" source="media/virtual-visits-usage-report-duration.png" alt-text="Screenshot of the Duration tab of the Virtual Visits usage report showing numbered callouts." lightbox="media/virtual-visits-usage-report-duration.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of minutes.<br>Hover over the dot on a given date to see the average appointment duration or average lobby wait time for a given date.  |
|**3**   |You can filter what you see on the chart by selecting an item in the legend. For example, select **Average Virtual Appointment duration** or **Average lobby wait time** to see only the info related to each one. Changing this selection doesn’t change the information in the table. |
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are in the meeting or when the first activity happened in the meeting.  </li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through the Bookings app or the Teams EHR connector.</li> <li>**Attendees** is the total number of staff members and participants in the meeting.</li> <li>**SMS sent** indicates whether an SMS notification was sent to attendees.<li>**Premium** indicates whether an appointment used an advanced Virtual Appointments capability in Teams Premium. </li> </li> </li> </ul>|
|**5**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|
|**6**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|

### Bookings

You'll see this tab if you have a license that includes the Bookings app. To learn more, see [Manage the Bookings app](/microsoftteams/bookings-app-admin?bc=/microsoft-365/frontline/breadcrumb/toc.json&toc=/microsoft-365/frontline/toc.json).

[NEED NEW SCREENSHOT]
:::image type="content" source="media/virtual-visits-usage-report-bookings.png" alt-text="Screenshot of the Bookings tab of the Virtual Visits usage report showing numbered callouts." lightbox="media/virtual-visits-usage-report-bookings.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of Bookings appointments.<br>Hover over the dot on a given date to see the number of Bookings appointments that occurred on that date.|
|**3**   |You can filter what you see on the chart by selecting an item in the legend. For example, select **Total Bookings Virtual Appointments** or **Total Premium Bookings Appointments** to see only the info related to each one. Changing this selection doesn’t change the information in the table. |
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are in the meeting or when the first activity happened in the meeting.  </li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through the Bookings app or the Teams EHR connector.</li> <li>**Attendees** is the total number of staff members and participants in the meeting.</li> <li>**SMS sent** indicates whether an SMS notification was sent to attendees. </li><li>**Premium** indicates whether an appointment used an advanced Virtual Appointments capability in Teams Premium.</li> </li> </ul>|
|**5**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|
|**6**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|
### EHR

You'll see this tab if you have a license that includes the Teams EHR connector. To learn more, see [Integration into Cerner EHR](ehr-admin-cerner.md) or [Integration into Epic EHR](ehr-admin-epic.md).

[NEED NEW SCREENSHOT]
:::image type="content" source="media/virtual-visits-usage-report-ehr.png" alt-text="Screenshot of the EHR tab of the Virtual Visits usage report showing numbered callouts." lightbox="media/virtual-visits-usage-report-ehr.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of EHR appointments.<br>Hover over the dot on a given date to see the number of EHR appointments on that date.|
|**3**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are in the meeting or when the first activity happened in the meeting.  </li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through the Bookings app or the Teams EHR connector.</li> <li>**Attendees** is the total number of staff members and participants in the meeting.</li> <li>**SMS sent** indicates whether an SMS notification was sent to attendees. </li> <li>**Premium** indicates whether an appointment used an advanced Virtual Appointments capability in Teams Premium.</li></li> </ul>|
|**4**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|
|**5**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|

## Related articles

- [Teams Virtual Appointments active user report](virtual-appointments-active-user-report.md)
- [Virtual Appointments with Teams and the Bookings app](bookings-virtual-visits.md)
- [Virtual Appointments with Teams - Integration into Epic EHR](ehr-admin-epic.md)
- [Virtual Appointments with Teams - Integration into Cerner EHR](ehr-admin-cerner.md)
