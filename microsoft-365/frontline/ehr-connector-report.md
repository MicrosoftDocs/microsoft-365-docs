---
title: Microsoft Teams EHR connector Virtual Appointments report
author: lana-chin
ms.author: v-chinlana
manager: jtremper
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-frontline
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_Healthcare
  - microsoftcloud-healthcare
  - m365solution-healthcare
  - m365solution-scenario
  - m365-frontline
  - highpri
  - m365-virtual-appointments
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.reviewer: beolson, ansantam
description: Learn how to use the Teams EHR connector Virtual Appointments report in the Microsoft Teams admin center to get an overview of EHR-integrated virtual appointment usage in your organization. 
ms.date: 06/26/2024
---

# Microsoft Teams EHR connector Virtual Appointments report

The Microsoft Teams Electronic Health Record (EHR) connector Virtual Appointments report in the Microsoft Teams admin center gives you a quick and easy way to view Teams EHR-integrated virtual appointments usage in your organization.

To view the report, you must be a Teams Administrator, Global Reader, Reports Reader, or Global Administrator.

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. This helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use a less-privileged role.

## View the report

There are two ways to access and view the report in the Teams admin center.

- Through the [EHR connector Virtual Appointments card](#the-ehr-connector-virtual-appointments-card) in the dashboard
- Directly by choosing [**EHR connector Virtual Appointments**](#the-teams-ehr-connector-virtual-appointments-report) in **Analytics & reports** > **Usage reports**

### The EHR connector Virtual Appointments card

In the dashboard of the Microsoft Teams admin center, go to the **EHR connector Virtual Appointments** card.

Here, you get an at-a-glance view of Teams EHR-integrated virtual appointment activity by month, including completed appointments, remaining allocation, and whether you exceeded the monthly limit (depending on the license you have).

:::image type="content" source="media/ehr-connector-report-card.png" alt-text="Screenshot of the EHR connector usage card in the Teams admin center dashboard." lightbox="media/ehr-connector-report-card.png":::

Choose **View details** to view the report. To purchase more licenses, choose **Buy more**.

### The Teams EHR connector Virtual Appointments report

1. In the left navigation of the Teams admin center, go to **Analytics & reports** > **Usage reports**.
1. On the **View reports** tab, choose **EHR connector Virtual Appointments** and a date range. Then, select **Run report**.

    :::image type="content" source="media/ehr-connector-report.png" alt-text="Screenshot of the Teams EHR connector Virtual Appointments report in the Teams admin center." lightbox="media/ehr-connector-report.png":::

## Interpret the report

|Callout |Description  |
|--------|-------------|
|**1**   |Each report shows the date for when the report was generated and the date range you chose.|
|**2**   |The table gives you detailed information about each appointment that took place during the selected date range. Keep in mind that you won't see entries for appointments in which either a staff member or patient didn't join. <ul><li>**Start time (UTC)** is the date and time when both a staff member and participant are in the appointment.  </li> <li>**Duration** is the time difference between the start time and when the last person leaves the appointment.</li> <li>**Primary** is the name of the meeting organizer. <li>**Primary's email** is the email address of the meeting organizer.</li> <li> **Department** is the department information for the appointment. If the information isn't displayed correctly, contact your EHR support team. For integration with Epic, make sure ```&departmentId=%PERFDEPID;;; ; ;;NONE;%``` is part of the provider integration record. </li></li> <li>**Attendants** is the total number of staff members and participants in the appointment.</li> <li>**Within limit** indicates whether the appointment is within the allocation limit. </li><li>**Appointment ID** (coming soon) is the appointment identifier from the EHR system. For Epic-integrated appointments, the identifier refers to the appointment CSN number. </li> </ul> |
|**3**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel** to download the report. |
|**4**   |Select **Filter** to filter the report details view. |
|**5**   |Select **Full screen** to view the report in full screen mode. |
|**6**   |Select **Edit columns** to add or remove columns in the table |

> [!NOTE]
> For more analytics on Teams EHR-integrated virtual appointments, see [Virtual Appointments usage report](virtual-appointments-usage-report.md). With the Virtual Appointments usage report, you can view key metrics such as total appointments, lobby wait time, appointment duration, and no shows. Use this information to gain insight into usage trends to help you optimize Virtual Appointments to deliver better business outcomes.

## Related articles

- [Virtual Appointments with Teams - Integration into Oracle Health EHR](ehr-admin-oracle-health.md)
- [Virtual Appointments with Teams - Integration into Epic EHR](ehr-admin-epic.md)
