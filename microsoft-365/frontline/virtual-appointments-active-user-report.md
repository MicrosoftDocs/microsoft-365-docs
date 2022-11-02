---
title: Microsoft Teams Virtual Appointments active user report
author: LanaChin
ms.author: v-lanachin
manager: samanro
audience: Admin
ms.topic: article
ms.service: microsoft-365-frontline
ms.reviewer: ansantam
f1.keywords:
- NOCSH
ms.localizationpriority: high
search.appverid: MET150
ms.collection: 
  - M365-collaboration
  - m365-frontline
description: Learn how to use the Virtual Appointments active user report, which provides usage information for advanced Virtual Appointments capabilities that are available with Teams Premium.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-apr2020
---
# Microsoft Teams Virtual Appointments active user report

The Virtual Appointments active user report provides active user information for advanced Virtual Appointments capabilities that are available with [Teams Premium](https://review.learn.microsoft.com/MicrosoftTeams/enhanced-teams-experience?branch=danismith-t-pre-licensing). You can see how many users are actively using advanced capabilities, which capabilities they're using, and a detailed usage breakdown for individual appointments.

To view the report, you must be a global admin or Teams admin, and your organization must be using advanced Virtual Appointments capabilities. The report shows active user information for the following features.

|Feature |Description  |
|---------|---------|
|SMS text notifications|Send appointment reminders and confirmations to external attendees on their mobile devices.|
|2-way lobby chat|Communicate with external attendees in the waiting room before an appointment.|
|On-demand appointments|Service and manage on-demand virtual appointments.|

Use this report to gain insight into overall activity and usage per feature. This information can help you to analyze trends and measure business value.

## View the report

There are two ways to access and view the report in the Teams admin center.

- Through the [**Premium Virtual Appointments active users card**](#the-premium-virtual-appointments-active-users-card) in the dashboard
- Directly by choosing [**Virtual Appointments active users**](#the-virtual-appointments-active-user-report) in **Analytics & reports** > **Usage reports**.

### The Premium Virtual Appointments active users card

In the dashboard of the Teams admin center, go to the **Premium Virtual Appointments active users** card. Here, you get an at-a-glance view of the aggregate number of active users across all features, by month.

[NEED NEW SCREENSHOT?]
:::image type="content" source="media/virtual-appointments-active-user-report-card.png" alt-text="Screenshot of the Premium Virtual Appointments active user card" lightbox="media/virtual-appointments-active-user-report-card.png":::

Choose **View details** to view the report. To purchase more licenses, choose **Buy more licenses**.

### The Virtual Appointments active user report

1. In the left navigation of the Microsoft Teams admin center, choose **Analytics & reports** > **Usage reports**. On the **View reports** tab, under **Report**, select **Virtual Appointments active user**.
2. Under **Date range**, select a date range of 7 days, 30 days, or 90 days. Then, choose **Run report**.

> [!NOTE]
> By default, Virtual Appointments analytics is on and the report is available. By using this report, you give Microsoft permission to collect data about virtual appointments in your organization. For information about our data retention policies, see [Data retention, deletion, and destruction in Microsoft 365](/compliance/assurance/assurance-data-retention-deletion-and-destruction-overview).
>
>If you want to turn off the report for your organization, you can do so in **Settings** in the upper-right corner of the page. This setting may take between 0 (zero) to 2 hours to take effect after you change it.

## Interpret the report

[NEED NEW SCREENSHOT]<br>
:::image type="content" source="media/virtual-appointments-active-user-report.png" alt-text="Screenshot of the Virtual Appointments active user report" lightbox="media/virtual-appointments-active-user-report.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of active users per feature.<br>Hover over a dot on a given date to see the number of active users using that feature on that date.|
|**3**   |You can filter what you see on the chart by selecting an item. For example, select **SMS**, **Walk-in Meeting**, or **2-Way Lobby Chat** to see only the info related to each one. Changing this selection doesn’t change the information in the table.|
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Primary** is the name of the appointment owner. </li> <li>**Primary’s email** is the email address of the appointment owner.</li> <li>**Is SMS used for this appointment?**</li><li>**Is this a walk-in appointment?**</li> <li>**Was 2-way lobby chat used for this appointment?**</li> <li>**Total** is the number of advanced Virtual Appointments features used in the appointment. </li> </ul> |
|**5**   |Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|
|**6**   |You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|

## Related articles

- [Teams Virtual Appointments usage report](virtual-appointments-usage-report.md)