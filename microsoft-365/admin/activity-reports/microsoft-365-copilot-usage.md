---
title: "Microsoft 365 admin center Copilot for Microsoft 365 usage"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 06/06/2024
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management
- Adm_O365
- Adm_NonTOC
- m365copilot
- magic-ai-copilot
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn how to get the Copilot for Microsoft 365 usage report and gain insights into the Copilot for Microsoft 365 activity in your organization."
---

# Microsoft 365 reports in the Admin Center – Copilot for Microsoft 365 usage

The Microsoft 365 Usage dashboard shows you the activity overview across the Microsoft 365 productivity apps in your organization. It enables you to drill into individual product-level reports to give you more granular insight about the activities within each app. To view all reports, check out the [Reports overview article](activity-reports.md).

In the Copilot for Microsoft 365 usage report, which is in continuous enhancement, you can view a summary of how users’ adoption, retention, and engagement are with Copilot for Microsoft 365, and the activity of every Copilot user in your organization. The report becomes available within 72 hours, and once available, the usage data shown on the report can have up to a maximum of 72 hours latency.

## How do I get to the Copilot for Microsoft 365 usage report?

1. In the admin center, go to **Reports** > **Usage**.
1. Select the **Copilot for Microsoft 365** page.
1. Select the Usage tab to view adoption and usage metrics.

## Interpret the Copilot for Microsoft 365 usage report

You can use this report to see the usage of Copilot for Microsoft 365 in your organization.

At the top, you can filter by different periods. The Copilot for Microsoft 365 report can be viewed over the last 7 days, 30 days, 90 days, or 180 days.

You can view several numbers for Copilot for Microsoft 365 usage, which highlight the enablement number and the adoption of the enablement:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage summary information." source="../../media/copilot-usage-numbers.png":::

**Enabled Users** shows the total number of unique users in your organization with Copilot for Microsoft 365 licenses over the selected time period.

**Active Users** shows the total number of enabled users in your organization who tried a user-initiated Copilot for Microsoft 365 feature, in one or more apps in Microsoft 365 over the selected time period.

**Active users rate** shows you the number of active users in your organization divided by the number of enabled users.

In Recommendations, the recommended action card highlights [Microsoft Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard), where you can deliver insights to your IT leaders to explore Copilot readiness, adoption, and impact in Viva Insights.  

You can see the following summary charts in this report as default view:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage adoption chart." source="../../media/copilot-usage-adoption-chart2.png":::

The definitions for Enabled Users and Active Users metrics are the same as provided earlier.

To note, Active users of Word, Excel, and PowerPoint is incomplete prior to Jan 25, 2024.

> [!IMPORTANT]
> Your organization must have optional diagnostic telemetry for Office apps enabled for Windows, Mac, iOS, and Android in order for comprehensive usage information to be captured in this report. [Learn more about diagnostic telemetry settings](/DeployOffice/privacy/optional-diagnostic-data).

**Summary view** shows you the total usage of Copilot for Microsoft 365 among Microsoft 365 productivity apps of the time frame.

**Trend view** shows you the daily time trend of Copilot for Microsoft 365 among Microsoft 365 productivity apps of the time frame.

You can switch between Summary view and Trend view.

In the hover status in Summary view, you can see the selected time frame and data refresh time.

:::image type="content" alt-text="Screenshot showing the time period view for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-time-period2.png":::

When switching to Trend view, you can select one product in the dropdown list to see daily usage.

:::image type="content" alt-text="Screenshot showing the dropdown list of products for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-trend-view2.png":::

In the Adoption section, you may see a recommendation card:

:::image type="content" alt-text="Screenshot showing the recommendation card for Microsoft 365 Copilot adoption." source="../../media/copilot-usage-recommendation.png":::

To learn more about using organizational messages for Microsoft 365 Copilot, see [Microsoft 365 features adoption using organizational messages](microsoft-365-copilot-organizational-messages.md).

You can also export the report data into an Excel .csv file by selecting the ellipses and then **Export** in the top-right corner.

You can view a table list to show each Copilot for Microsoft 365 enabled user’s last activity date among Copilot for Microsoft 365 products.

:::image type="content" alt-text="Screenshot showing the activity for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-last-activity.png" lightbox="../../media/copilot-usage-last-activity.png":::

Select **Choose columns** to add or remove columns from the table.

:::image type="content" alt-text="Screenshot showing the columns you can select for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-choose-columns2.png":::

You can also export the report data into an Excel .csv file by selecting the Export link. This exports the Copilot for Microsoft 365 usage data of all users and enables you to do simple sorting, filtering, and searching for further analysis.

To ensure data quality, we perform daily data validation checks for the past three days and will fill any gaps detected. You may notice differences in historical data during the process.

## User last activity table

| Item | Description |
|------|-------------|
| User name                                      | The user's principal name.                                                                                                                    |
| Display name                                   | The full name of the user.                                                                                                                    |
| Last activity date (UTC (Universal Time Code)) | The latest date the user had activity in Copilot for Microsoft 365 among all Microsoft 365 products, including any of the intentional activities, over the selected time period. |
| Last activity date of Teams Copilot (UTC)      | The latest date the user had activity in Microsoft Teams Copilot, including any of the intentional activities, over the selected time period.                                |
| Last activity date of Word Copilot (UTC)       | The latest date the user had activity in Word Copilot, including any of the intentional activities, over the selected time period.                                            |
| Last activity date of Excel Copilot (UTC)      | The latest date the user had activity in Excel Copilot, including any of the intentional activities, over the selected time period.                              |
| Last activity date of PowerPoint Copilot (UTC)  | The latest date the user had activity in PowerPoint Copilot, including any of the intentional activities, over the selected time period.                                   |
| Last activity date of Outlook Copilot (UTC)    | The latest date the user had activity in Outlook Copilot, including any of the intentional activities, over the selected time period.                                       |
| Last activity date of OneNote Copilot (UTC)    | The latest date the user had activity in OneNote Copilot, including any of the intentional activities, over the selected time period.                                       |
| Last activity date of Loop Copilot (UTC)       | The latest date the user had activity in Loop Copilot, including any of the intentional activities, over the selected time period.                                          |
| Last activity date of Copilot chat (UTC)        | The latest date the user had activity in Copilot chat, including any of the intentional activities, over the selected time period.                        |

## Make the user-specific data anonymous

To make the data in the Copilot for Microsoft 365 report anonymous, you must be a global administrator. This will hide identifiable information (using MD5 hashes) such as display name, email, and Microsoft Entra Object ID in report and their export.

1. In Microsoft 365 admin center, go to the **Settings** \> **Org Settings**, and under **Services** tab, choose **Reports**.

2. Select **Reports**, and then choose to **Display anonymous identifiers**. This setting gets applied both to the usage reports in Microsoft 365 admin center and Teams admin center.

3. Select **Save changes**.

## FAQ

### How is a user considered active in Copilot for Microsoft 365 usage?

A user is considered active in a given app if they performed an intentional action for an AI-powered capability. For example, if a user selects the Copilot icon in the Word ribbon to open the Copilot chat pane, this does not count towards active usage. However, if the user interacts with the chat pane by submitting a prompt, this action would count towards active usage.

### What’s the action list for Copilot chat usage?

This report now includes a new metric for Microsoft Copilot with Graph-grounded chat, simplified as "Copilot chat." The action list for active users of Copilot chat includes the following:

- Typing a message into the chat window and submitting.
- Selecting a prompt from the "Try these Prompts" section, which will automatically copy the prompt into the chat box.
- Clicking on one of the suggestions from the "Stay on top" tab in some platforms (such as Microsoft365.com).

### Does Teams Copilot usage include Copilot chat usage in Teams?

Teams Copilot usage excludes Copilot chat usage within Teams, as Copilot chat is a Teams app. In the future, we will add the Copilot chat usage breakdown in Teams, Bing, and more.

### What are the behaviors of 'All up last activity date' and 'last activity date per app' in the user-level table?

All up last activity date and last activity date per app are reflecting different narratives now. All up last activity date is reflecting the historical last activity date no matter what period is selected on the page, while last activity date per app is reflecting the last activity date within the selected time period; hence, if there's no activity in selected time period, the last activity date per app will be empty. We are planning to make them consistent to reflect the historical last activity date narrative and will provide update once it’s done.

### What's the difference between the user activity table and audit log?

The information captured in audit log records differs from that in [Microsoft 365 usage reports](#user-last-activity-table). It's important to note that audit logs are not designed for assessing user engagement in Microsoft 365, and they should not be used to replace or augment information in Microsoft 365 usage reports. To learn more about audit logs, see [Export, configure, and view audit log records](/purview/audit-log-export-records#step-1-export-audit-log-search-results).

### Is Intelligent Recap usage in Teams captured in [Usage reports](activity-reports.md)?

Yes. Intelligent Recap has been captured in Teams Copilot in Copilot for Microsoft 365 usage.

### What’s the scope of the user-level table?

The user-level table in the report is configured to show all users who were licensed for Copilot for Microsoft 365 at any point over the past 180 days, even if the user has since had the license removed or never had any Copilot active usage.

### I assigned the Copilot for Microsoft 365 license to users, but why is 'last activity date' for users empty in rare cases?

Based on system constraints, some users may not have a 'last activity date' in the user-level table of the report under the following conditions:

1. The user used Copilot for Microsoft 365 within a short time window (less than 24 hours) after the Copilot for Microsoft 365 license was assigned.
2. The user subsequently had no other Copilot for Microsoft 365 usage up to the date on which the report is viewed.

### Why is the 'Last activity date of Word, Excel, PowerPoint, OneNote, or Outlook Copilot (UTC)' sometimes blank or newer than the actual date, even when users have recently used Copilot features?

This may be caused by a known limitation: the uploading of client events data for Copilot features in Word, Excel, PowerPoint, OneNote, and Outlook can be delayed for various reasons, such as when end users disconnect from the internet immediately after taking a Copilot action.

### How do the numbers in this report compare to what is shown in the Microsoft Copilot Dashboard in Viva Insights?

The data in these reports is based on the same underlying definitions of active usage, but the population of users included in the analysis and the timeframe displayed may differ. To learn more, see [Use Microsoft Copilot Dashboard advanced features with a Viva Insights subscription](/viva/insights/org-team-insights/copilot-dashboard-advanced-features#setup-and-licenses).
