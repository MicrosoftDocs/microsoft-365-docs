---
title: Microsoft Teams Advanced Virtual Appointments activity report
author: lana-chin
ms.author: v-chinlana
manager: serdars
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
  - m365initiative-meetings
  - tier1
description: Learn how to use the Advanced Virtual Appointments activity report, which provides usage information for advanced Virtual Appointments capabilities that are available with Teams Premium.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-apr2020
ms.date: 02/22/2023
---
# Microsoft Teams Advanced Virtual Appointments activity report

![Information icon](media/info.png) **This feature requires your organization to have one Teams Premium license assigned. Learn more about [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).**

The Advanced Virtual Appointments activity report in the Microsoft Teams admin center provides user activity information for advanced Virtual Appointments capabilities that are available with [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams).

To view the report, you must be a Global admin, Teams admin, Global reader, or Report reader, and your organization must be using advanced Virtual Appointments capabilities.

The report shows usage information for the following features.

|Feature |Description  |
|---------|---------|
|SMS text notifications|Send appointment reminders and confirmations to external attendees on their mobile devices.|
|Lobby chat (coming soon)|Communicate with external attendees in the waiting room before an appointment.|
|On-demand appointments|Service and manage on-demand virtual appointments.|

Use this report to gain insight into overall user activity and usage per feature in your organization. This information can help you analyze trends, identify which users are utilizing these advanced features the most, and measure business value.

## View the report

There are two ways to access and view the report in the Teams admin center.

- Through the [**Advanced Virtual Appointments usage card**](#the-advanced-virtual-appointments-usage-card) in the dashboard
- Directly by choosing the [**Advanced Virtual Appointments activity report**](#the-advanced-virtual-appointments-activity-report) in **Analytics & reports** > **Usage reports**.

### The Advanced Virtual Appointments usage card

In the dashboard of the Teams admin center, go to the **Advanced Virtual Appointments usage** card. Here, you get an at-a-glance view of the aggregate number of active users across all features, by month.

:::image type="content" source="media/advanced-va-activity-report-dashboard.png" alt-text="Screenshot of the Advanced Virtual Appointments usage card in the Teams admin center dashboard." lightbox="media/advanced-va-activity-report-dashboard.png":::

Select **View details** to view the report.

### The Advanced Virtual Appointments activity report

1. In the left navigation of the Teams admin center, choose **Analytics & reports** > **Usage reports**. On the **View reports** tab, under **Report**, select **Advanced Virtual Appointments activity**.
2. Under **Date range**, select a date range of 7 days, 30 days, or 90 days. Then, choose **Run report**.

## Interpret the report

The graph provides an overview of feature utilization. It changes depending on the date range you select. The table shows usage of advanced features by individual users

:::image type="content" source="media/va-advanced-features-report.png" alt-text="Screenshot of the Advanced Virtual Appointments activity report." lightbox="media/va-advanced-features-report.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of active users per feature.<br>Hover over a dot on a given date to see the number of users using that feature on that date.|
|**3**   |You can filter what you see on the chart by selecting an item. For example, select **Text message users** or **On-demand users** to see only the info related to each one. Changing this selection doesn’t change the information in the table.|
|**4**   |This table shows detailed usage information for each user in your organization during the selected date range. <br> - **Display Name** shows the name assigned to each user. <br> - **Total Appointments** shows how many virtual appointments in which this user utilized an advanced feature. <br>  - **SMS** shows the total number of times this user utilized SMS in a virtual appointment. <br>  -  **On-demand** shows the total number of times this user has utilized on-demand appointments.|

## Related articles

- [Virtual Appointments usage report](virtual-appointments-usage-report.md)
- [Teams Premium licensing](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)