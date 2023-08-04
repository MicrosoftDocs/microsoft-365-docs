---
title: Microsoft Teams Virtual Appointments usage report
author: lana-chin
ms.author: v-chinlana
manager: serdars
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
  - m365initiative-meetings
  - tier1
description: Learn how to use the Virtual Appointments usage report in the Microsoft Teams admin center to get an overview of virtual appointment activity in your organization.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-apr2020
ms.date: 02/01/2023
---
# Microsoft Teams Virtual Appointments usage report

![Information icon](media/info.png) **This feature requires a [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) or a Teams EHR connector license.**

The Virtual Appointments usage report in the Microsoft Teams admin center gives you an overview of Teams Virtual Appointments activity in your organization. You can view detailed activity for virtual appointments scheduled through the [Bookings app](https://support.microsoft.com/office/what-is-bookings-42d4e852-8e99-4d8f-9b70-d7fc93973cb5) and the [Microsoft Teams Electronic Health Record (EHR) connector](teams-in-hc.md#provide-seamless-virtual-visits).

To view the report, you must be a Global admin, Teams admin, Global reader, or Report reader.

The report contains the following tabs. The information you’ll see in the report depends on the license you have.

|Tab |Description  |
|---------|---------|
|**[Virtual Appointments](#virtual-appointments)**     |Shows the total number of virtual appointments, with a breakdown of the number of Bookings appointments, Teams EHR-integrated meetings conducted from your EHR system, and premium appointments.         |
|**[Duration](#duration)**     |Shows the average duration of appointments and average lobby wait time of participants.         |
|**[Bookings](#bookings)**     |Shows the number of Bookings appointments, with a breakdown of the number of premium appointments.         |
|**[EHR](#ehr)**     |Shows the number of Teams EHR-integrated appointments conducted from your EHR system.         |

> [!NOTE]
> Advanced appointments are appointments that use at least one premium Virtual Appointments capability available in [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams). For more analytics on advanced Virtual Appointments usage, see the [Advanced Virtual Appointments activity report](advanced-virtual-appointments-activity-report.md).

Use this report to gain insight into virtual appointment activity and trends in your organization. The information can help you optimize Virtual Appointments to deliver better business outcomes.

## View the report

There are two ways to access and view the report in the Teams admin center.

- Through the [**Virtual Appointments usage card**](#the-virtual-appointments-usage-card) in the dashboard
- Directly by choosing [**Virtual Appointments usage**](#the-virtual-appointments-usage-report) in **Analytics & reports** > **Usage reports**.

### The Virtual Appointments usage card

In the dashboard of the Teams admin center, go to the **Virtual Appointments usage** card. Here, you get an at-a-glance view of Virtual Appointments usage across your organization, including Bookings and Teams EHR-integrated appointments.

:::image type="content" source="media/va-usage-report-dashboard.png" lightbox="media/va-usage-report-dashboard.png" alt-text="Screenshot of the Virtual Appointments usage card in the Teams admin center dashboard.":::

Select **View details** to view the report.

### The Virtual Appointments usage report

1. In the left navigation of the Teams admin center, choose **Analytics & reports** > **Usage reports**. On the **View reports** tab, under **Report**, select **Virtual Appointments usage**.
2. Under **Date range**, select a date range of 7 days, 30 days, or 90 days. Then, choose **Run report**.

> [!NOTE]
> By default, Virtual Appointments analytics is on and the report is available. By using this report, you give Microsoft permission to collect data about virtual appointments in your organization. For information about our data retention policies, see [Data retention, deletion, and destruction in Microsoft 365](/compliance/assurance/assurance-data-retention-deletion-and-destruction-overview).
>
>If you want to turn off the report for your organization, you can do so in **Settings** in the upper-right corner of the page. This setting may take between 0 (zero) to 2 hours to take effect after you change it.

## Interpret the report

Here's what you'll see on each tab of the report.

### Virtual Appointments

The graphs you'll see here depend on the license you have.

:::image type="content" source="media/virtual-appts-report.png" alt-text="Screenshot of the Virtual Appointments tab of the Virtual Appointments usage report showing numbered callouts." lightbox="media/virtual-appts-report.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of appointments.<br>Hover over the dot on a given date to see the number of appointments on that date.|
|**3**   |These numbers represent the total number of appointments per product for the date range. You can filter what you see on the chart by selecting an item. For example, select **Basic Bookings appointments** or **Advanced appointments** to see only the info related to each one. Changing this selection doesn’t change the information in the table.|
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are present in the meeting or when the first activity by one of attendees happened in the meeting.</li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time difference between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through Bookings or the Teams EHR connector.</li> <li>**Attendees** is the maximum number of staff members and participants present in the meeting at any given time over the entire duration of the meeting.</li> <li>**Department** is the Bookings calendar or hospital department to which the meeting belongs.</li><li>**SMS sent** indicates whether any SMS notification was sent to attendees.</li><li>**Advanced Appointments** indicates whether an appointment used a Premium feature capability in the Teams Premium offering. </li> </li> </ul> |
|**5**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|
|**6**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|

### Duration

:::image type="content" source="media/duration-report.png" alt-text="Screenshot of the Duration tab of the Virtual Appointments usage report showing numbered callouts." lightbox="media/duration-report.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of minutes.<br>Hover over the dot on a given date to see the average appointment duration or average lobby wait time for a given date.  |
|**3**   |You can filter what you see on the chart by selecting an item in the legend. For example, select **Average Virtual Appointment duration** or **Average lobby wait time** to see only the info related to each one. Changing this selection doesn’t change the information in the table. |
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are present in the meeting or when the first activity by one of attendees happened in the meeting.</li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time difference between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through Bookings or the Teams EHR connector. </li> <li>**Attendees** is the maximum number of staff members and participants present in the meeting at any given time over the entire duration of the meeting.</li> <li>**Department** is the Bookings calendar or hospital department to which the meeting belongs.</li><li>**SMS sent** indicates whether any SMS notification was sent to attendees. </li><li>**Advanced Appointments** indicates whether an appointment used a Premium feature capability in the Teams Premium offering. </li> </li> </ul> |
|**5**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|
|**6**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|

### Bookings

This tab shows appointments scheduled through Bookings.

:::image type="content" source="media/bookings-report.png" alt-text="Screenshot of the Bookings tab of the Virtual Appointments usage report showing numbered callouts." lightbox="media/bookings-report.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of Bookings appointments.<br>Hover over the dot on a given date to see the number of Bookings appointments that occurred on that date.|
|**3**   |You can filter what you see on the chart by selecting an item in the legend. For example, select **Total Bookings appointments** or **Advanced Bookings appointments** to see only the info related to each one. Changing this selection doesn’t change the information in the table. |
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are present in the meeting or when the first activity by one of attendees happened in the meeting.</li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time difference between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through Bookings or the Teams EHR connector. </li> <li>**Attendees** is the maximum number of staff members and participants present in the meeting at any given time over the entire duration of the meeting.</li> <li>**Department** is the Bookings calendar or hospital department to which the meeting belongs.</li><li>**SMS sent** indicates whether any SMS notification was sent to attendees. </li><li>**Advanced Appointments** indicates whether an appointment used a Premium feature capability in the Teams Premium offering. </li> </li> </ul> |
|**5**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|
|**6**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|

### EHR

You'll see this tab if you have a license that includes the Teams EHR connector. To learn more, see [Integration into Cerner EHR](ehr-admin-cerner.md) or [Integration into Epic EHR](ehr-admin-epic.md).

:::image type="content" source="media/va-usage-report-ehr.png" alt-text="Screenshot of the EHR tab of the Virtual Appointments usage report showing numbered callouts." lightbox="media/va-usage-report-ehr.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of EHR appointments.<br>Hover over the dot on a given date to see the number of EHR appointments on that date.|
|**3**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are present in the meeting or when the first activity by one of attendees happened in the meeting.</li> <li>**Meeting ID** is the unique ID of the meeting.</li> <li>**Lobby wait time** is the time difference between when a participant first joins the lobby to when that same participant or a different participant is admitted to the meeting by a staff member.</li><li>**Duration** is the time difference between the start time and when the last person leaves the meeting. If both a staff member and a participant didn’t join the meeting, duration shows as 0 (zero).</li> <li>**Status** shows the meeting status. <ul><li>**Completed**: If one or more staff members and participants join the meeting and the meeting has ended. Or, if one or more participants join the meeting and the meeting has ended.</li> <li> **No show**: If one staff member joins the meeting but no other people join, and the meeting has ended. </li></ul> </li> <li>**Product type** indicates whether the virtual appointment was scheduled through Bookings or the Teams EHR connector. </li> <li>**Attendees** is the maximum number of staff members and participants present in the meeting at any given time over the entire duration of the meeting.</li> <li>**Department** is the Bookings calendar or hospital department to which the meeting belongs.</li><li>**SMS sent** indicates whether any SMS notification was sent to attendees. </li><li>**Advanced Appointments** indicates whether an appointment used a Premium feature capability in the Teams Premium offering. </li> </li> </ul> |
|**4**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|
|**5**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|

## Related articles

- [Advanced Virtual Appointments activity report](advanced-virtual-appointments-activity-report.md)
- [Virtual Appointments with Teams - Integration into Epic EHR](ehr-admin-epic.md)
- [Virtual Appointments with Teams - Integration into Cerner EHR](ehr-admin-cerner.md)
- [Teams Premium licensing](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)
