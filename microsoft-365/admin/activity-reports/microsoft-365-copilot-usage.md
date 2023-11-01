---
title: "Microsoft 365 admin center Microsoft 365 Copilot usage"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 07/18/2023
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
description: "Learn how to get the Microsoft 365 Copilot usage report and gain insights into the Microsoft 365 Copilot activity in your organization."
---

# Microsoft 365 reports in the admin center – Microsoft 365 Copilot usage

The Microsoft 365 Usage dashboard shows you the activity overview across the products in your organization. It enables you to drill into individual product-level reports to give you more granular insight about the activities within each product. Check out the [Reports overview article](activity-reports.md).

In the **Microsoft 365 Copilot report** (in preview), you can understand the summary of how users’ adoption, retention, and engagement are with Microsoft 365 Copilot, and the activity of every Microsoft 365 Copilot user in your organization.

## How do I get to the Microsoft 365 Copilot report?

1. In the admin center, go to **Reports** > **Usage**.

2. Select the **Microsoft 365 Copilot** page.

## Interpret the Microsoft 365 Copilot report

You can use this report to see the usage of Microsoft 365 Copilot in your organization. In the report, you can filter by different periods. The Microsoft 365 Copilot report can be viewed over the last 7 days, 30 days, 90 days, or 180 days. You can see significant Microsoft 365 Copilot usage data, which highlights the enablement statistics and adoption of the enablement.

:::image type="content" alt-text="Microsoft 365 Copilot usage summary chart" source="../../media/copilot-usage-report-summary.png" lightbox="../../media/copilot-usage-report-summary.png":::

**Enabled Users** shows you the number of users enabled to use Microsoft 365 Copilot for the time frame value.

**Active Users** shows you the number of users who performed an intentional activity, including have either tried a user-initiated Microsoft 365 Copilot feature or kept the content for Microsoft 365 Copilot initiated features, for the time frame value.

**Active users rate** shows you the proportion of enabled users who actively engaged with Microsoft 365 Copilot for the time frame value. The rate is calculated as the percentage of active users, divided by the number of enabled users.
<!--
You can see the following summary charts in this report as default view:

[image]-->

**Enabled Users** shows you the number of users enabled to use Microsoft 365 Copilot for the time frame value.

**Active Users** shows you the number of users who performed an intentional activity, including have either tried a user-initiated Microsoft 365 Copilot feature or kept the content for Microsoft 365 Copilot initiated features, for the time frame value.

>[!NOTE]
> Teams Copilot usage does not include Microsoft 365 Chat usage, but Microsoft 365 Chat usage will be displayed in Microsoft 365 Copilot usage soon.

**Current view** shows you the total usage of Microsoft 365 Copilot among Microsoft 365 products of the time frame.

**Trend view** shows you the daily time trend of Microsoft 365 Copilot among Microsoft 365 products of the time frame.

You can switch between Current view and Trend view.

In the hover status in Current view, you can see the selected time frame and data refresh time.

:::image type="content" alt-text="View of time frame for Microsoft 365 Copilot usage summary chart" source="../../media/copilot-usage-time-frame.png" lightbox="../../media/copilot-usage-time-frame.png":::

When switching to Trend view, you can select one product in the dropdown list to see daily usage.
<!--
[image]-->

In the hover status in Trend view, you can see the selected date and data refresh time.
<!--
[image]-->

In Adoption section, you may see a recommendation card.
<!--
[image]-->

To learn more about using organizational messages for Microsoft 365 Copilot, see [Microsoft 365 features adoption using organizational messages](microsoft-365-copilot-organizational-messages.md).

You can also export the report data into an Excel .csv file by selecting the ellipses and then **Export** in the top-right corner.
<!--
[image]-->

Select **Choose columns** to add or remove columns from the table.
<!--
[image]-->

:::image type="content" alt-text="Add or remove columns for Microsoft 365 Copilot usage table" source="../../media/copilot-usage-columns.png" lightbox="../../media/copilot-usage-columns.png":::

You can also export the report data into an Excel .csv file by selecting the Export link. This exports the Microsoft 365 Copilot usage data of all users and enables you to do simple sorting, filtering, and searching for further analysis.

To ensure data quality, we perform daily data validation checks for the past three days and will fill any gaps detected. You may notice differences in historical data during the process.

## User activity table

| Item | Description |
|------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| User name                                      | The user's principal name.                                                                                                                    |
| Display name                                   | The full name of the user.                                                                                                                    |
| Last activity date (UTC (Universal Time Code)) | The latest date the user had activity in Microsoft 365 Copilot among all Microsoft 365 products, including any of the intentional activities. |
| Last activity date of Teams Copilot (UTC)      | The latest date the user had activity in Microsoft Teams Copilot, including any of the intentional activities.                                |
| Last activity date of Word Copilot (UTC)       | The latest date the user had activity in Word Copilot, including any of the intentional activities.                                           |
| Last activity date of Excel Copilot (UTC)      | The latest date the user had activity in Excel Copilot, including any of the intentional activities.                                        |
| Last activity date of PowerPoint Copilot (UTC)  | The latest date the user had activity in PowerPoint Copilot, including any of the intentional activities.                                    |
| Last activity date of Outlook Copilot (UTC)    | The latest date the user had activity in Outlook Copilot, including any of the intentional activities.                                      |
| Last activity date of OneNote Copilot (UTC)    | The latest date the user had activity in OneNote Copilot, including any of the intentional activities.                                      |
| Last activity date of Loop Copilot (UTC)       | The latest date the user had activity in Loop Copilot, including any of the intentional activities.                                         |

## Make the user-specific data anonymous

To make the data in the Microsoft 365 Copilot usage report anonymous, you must be a global administrator. This will hide identifiable information (using MD5 hashes) such as display name, email, and Microsoft Entra Object ID in report and their export.

1. In Microsoft 365 admin center, go to the **Settings** \> **Org Settings**, and under **Services** tab, choose **Reports**.

2. Select **Reports**, and then choose to **Display anonymous identifiers**. This setting gets applied both to the usage reports in Microsoft 365 admin center and Teams admin center.

3. Select **Save changes**.
