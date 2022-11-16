---
title: Microsoft Teams Advanced Virtual Appointments activity report
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
description: Learn how to use the Advanced Virtual Appointments activity report, which provides usage information for advanced Virtual Appointments capabilities that are available with Teams Premium.
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.custom: seo-marvel-apr2020
---
# Microsoft Teams Advanced Virtual Appointments activity report

[!INCLUDE [preview-feature](includes/preview-feature.md)]

The Advanced Virtual Appointments activity report provides you with usage information on advanced Virtual Appointments capabilities that are available with [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) (preview). You can see how many users are actively using advanced capabilities, which capabilities they're using, and a detailed usage breakdown for individual appointments.

To view the report, you must be a global admin, Teams admin, Global reader, or Report reader, and your organization must be using advanced Virtual Appointments capabilities.

The report shows usage information for the following features.

|Feature |Description  |
|---------|---------|
|SMS text notifications|Send appointment reminders and confirmations to external attendees on their mobile devices.|
|Lobby chat|Communicate with external attendees in the waiting room before an appointment.|
|On-demand appointments|Service and manage on-demand virtual appointments.|

Use this report to gain insight into overall activity and usage per feature in your organization. This information can help you to analyze trends to drive business decisions.

## View the report

There are two ways to access and view the report in the Teams admin center.

- Through the [**Advanced Virtual Appointments usage card**](#the-advanced-virtual-appointments-usage-card) in the dashboard
- Directly by choosing the [**Advanced Virtual Appointments activity report**](#the-advanced-virtual-appointments-activity-report) in **Analytics & reports** > **Usage reports**.

### The Advanced Virtual Appointments usage card

In the dashboard of the Teams admin center, go to the **Advanced Virtual Appointments usage** card. Here, you get an at-a-glance view of the aggregate number of active users across all features, by month???.

[CONFIRM UI AND SCREENSHOT]<br>
:::image type="content" source="media/virtual-appointments-active-user-report-card.png" alt-text="Screenshot of the Advanced Virtual Appointments usage card" lightbox="media/virtual-appointments-active-user-report-card.png":::

Choose **View details** to view the report.

### The Advanced Virtual Appointments activity report

1. In the left navigation of the Microsoft Teams admin center, choose **Analytics & reports** > **Usage reports**. On the **View reports** tab, under **Report**, select **Advanced Virtual Appointments activity**.
2. Under **Date range**, select a date range of 7 days, 30 days, or 90 days. Then, choose **Run report**.

> [!NOTE]
> ???By default, Virtual Appointments analytics is on and the report is available. By using this report, you give Microsoft permission to collect data about virtual appointments in your organization. For information about our data retention policies, see [Data retention, deletion, and destruction in Microsoft 365](/compliance/assurance/assurance-data-retention-deletion-and-destruction-overview).
>
>If you want to turn off the report for your organization, you can do so in **Settings** in the upper-right corner of the page. This setting may take between 0 (zero) to 2 hours to take effect after you change it.

## Interpret the report

[CONFIRM UI AND SCREENSHOT]<br>
:::image type="content" source="media/virtual-appointments-active-user-report.png" alt-text="Screenshot of the Advanced Virtual Appointments activity report" lightbox="media/virtual-appointments-active-user-report.png":::

|Callout |Description  |
|--------|-------------|
|**1**   |Each report has a date for when the report was generated. The reports usually reflect a 24 to 48-hour latency from time of activity. |
|**2**   |The X axis is the selected date range for the report. The Y axis is the number of active users per feature.<br>Hover over a dot on a given date to see the number of users using that feature on that date.|
|**3**   |You can filter what you see on the chart by selecting an item. For example, select **Text message users** or **On-demand users** to see only the info related to each one. Changing this selection doesn’t change the information in the table.|
|**4**   |The table gives you detailed information about each appointment that took place during the selected date range. <ul><li>**Primary** is the name of the appointment owner. </li> <li>**Primary’s email** is the email address of the appointment owner.</li><li>**???Total appointments** is the total number of appointments conducted by the user.</li><li>**SMS**</li><li>**Lobby chat**</li> <li>**On-demand**</li></ul> |
|**5**   |???Select **Settings** to open the **Virtual Appointments analytics** pane. From here, you can turn off or turn on Virtual Appointments analytics for your organization.|
|**6**   |???You can export the report to a CSV file for offline analysis. Select **Export to Excel**, and then on the **Downloads** tab, choose **Download** to download the report when it's ready.|

## Related articles

- [Teams Virtual Appointments usage report](virtual-appointments-usage-report.md)
- [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams)