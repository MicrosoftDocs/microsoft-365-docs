---
title: "Microsoft 365 admin center Microsoft 365 Copilot usage"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 07/18/2023
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
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

# Microsoft 365 reports in the Admin Center – Copilot for Microsoft 365 readiness and usage

The Microsoft 365 Usage dashboard shows you the activity overview across the Microsoft 365 apps in your organization. It enables you to drill into individual product-level reports to give you more granular insight about the activities within each app. To view all reports, check out the [Reports overview article](activity-reports.md).

The Copilot for Microsoft 365 report, which is in continuous enhancement, includes a Readiness section and Usage section. In the Readiness section, you can view which users are technically eligible for Copilot, assign licenses, and monitor usage of Microsoft 365 apps that Copilot integrates best with. Within the Usage section, you can view a summary of how users’ adoption, retention, and engagement are with Copilot for Microsoft 365, and the activity of every Copilot user in your organization. The report becomes available within 72 hours, and we will update the documentation once there is improved latency.

## How do I get to the Copilot for Microsoft 365 report?

1. In the admin center, go to **Reports** > **Usage**.
1. Select the **Copilot for Microsoft 365** page.
1. You can view Readiness on the first tab. Switch to the Usage tab to view adoption and usage metrics.

## Interpret the Readiness section in Copilot for Microsoft 365 report

You can use this report to see how ready your organization is to adopt Copilot for Microsoft 365. The Readiness section is set up to show your data over the past 28 days. Currently this portion does not include any other time period options, but we'll be rolling out updates soon to enable 7-day, 30-day, 90-day and 180-day periods.

You can see the following summary charts in this report

:::image type="content" alt-text="Screenshot showing how you can ensure users are eligible for Copilot for Microsoft 365." source="../../media/copilot-usage-ensure-readiness.png":::

**Total Prerequisite Licenses** The number is the sum of all users who have at least one license assigned to them or who could be assigned a license. The following license types are eligible for Copilot:

- Microsoft 365 E5
- Microsoft 365 E3
- Office 365 E3
- Office 365 E5
- Microsoft 365 A5 for faculty
- Microsoft 365 A3 for faculty
- Office 365 A5 for faculty
- Office 365 A3 for faculty
- Microsoft 365 Business Standard
- Microsoft 365 Business Premium

**Users on an eligible update channel** This number is the sum of all users who are enrolled in Current Channel or Monthly Enterprise Channel for app updates in your organization and could be assigned with a Copilot license.

:::image type="content" alt-text="Screenshot showing an organization's number of available licenses to assign." source="../../media/copilot-usage-licenses-assigned.png":::

**Assigned Licenses** This number is the sum of all users who have already been assigned with a Copilot license in your organization.

**Available Licenses** This number is the sum of all users who do not have a Copilot license assigned, and should be prioritized first.

:::image type="content" alt-text="Screenshot showing recommendation cards for Copilot for Microsoft 365 usage report." source="../../media/copilot-usage-recommend-cards.png" lightbox="../../media/copilot-usage-recommend-cards.png":::

Recommended action cards highlight important actions to take to prepare your organization for Copilot, such as moving users to a monthly app update channel and assigning available Copilot licenses.

The last recommended action card promotes [Microsoft Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard), where you can deliver insights to your IT leaders to explore Copilot readiness, adoption, and impact in Viva Insights.

:::image type="content" alt-text="Screenshot showing chart for Copilot active users in an organization." source="../../media/copilot-usage-enable-active-users.png" lightbox="../../media/copilot-usage-enable-active-users.png":::

This graph shows the sum of users that could benefit the most from having Copilot deployed based on where Copilot provides the most value in day-to-day scenarios.

:::image type="content" alt-text="Screenshot showing chart to determine where Copilot can impact users the most." source="../../media/copilot-usage-readiness-details.png" lightbox="../../media/copilot-usage-readiness-details.png":::

You can use the user table to get an at-a-glance view at which users are assigned a Copilot license, whether their devices are configured correctly, and if they’re using a Microsoft 365 app that has Copilot enabled.

You can also export the report data into an Excel .csv file by selecting the Export link. This exports the Copilot for Microsoft 365 readiness data of all users with any engagement on Teams meetings, Teams chat, and Outlook email for Office docs in past 30 days, and enables you to do simple sorting, filtering, and searching for further analysis.

To ensure data quality, we perform daily data validation checks for the past three days and will fill any gaps detected. You may notice differences in historical data during the process.

### User activity table

| Item                          | Description                                                                                                               |
|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| User name                         | The user's principal name.                                                                                                    |
| Has Copilot license been assigned | Yes/No field indicating if the user has a Copilot license assigned to them.                                                   |
| Uses eligible update channel      | Yes/No field indicating if devices are configured to get the latest or monthly updates.                                       |
| Uses Teams Meetings               | Indicates whether the user has attended at least one meeting using Teams in the past 30 days.                                  |
| Uses Teams chat                   | Indicates whether the user has participated in at least one chat using Teams in the past 30 days.                              |
| Uses Outlook Email                | Indicates whether the user has sent at least one meeting using Outlook in the past 30 days.                                    |
| Uses Office docs                  | Indicates whether the user has collaborated on at least one document or file using OneDrive or sharepoint in the past 30 days. |

## Interpret the Usage tab in Copilot for Microsoft 365 report

You can use this report to see the usage of Copilot for Microsoft 365 in your organization.

At the top, you can filter by different periods. The Copilot for Microsoft 365 report can be viewed over the last 7 days, 30 days, 90 days, or 180 days.

You can view several numbers for Copilot for Microsoft 365 usage, which highlight the enablement number and the adoption of the enablement:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage summary information." source="../../media/copilot-usage-numbers.png":::

**Enabled Users** shows the total number of unique users in your organization with Copilot for Microsoft 365 licenses over the selected time period.

**Active Users** shows the total number of enabled users in your organization who tried a user-initiated Copilot for Microsoft 365 feature, in one or more Microsoft 365 apps over the selected time period.

> [!NOTE]
> A user is considered active in a given app if they performed an intentional action for an AI-powered capability. For example, if a user selects the Copilot icon in the Word ribbon to open the Copilot chat pane, this does not count towards active usage. However, if the user interacts with the chat pane by submitting a prompt, this action would count towards active usage.

**Active users rate** shows you the number of active users in your organization divided by the number of enabled users.
The definitions for Enabled Users and Active Users metrics are the same as provided earlier.

In Recommendations, the recommended action card highlights [Microsoft Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard), where you can deliver insights to your IT leaders to explore Copilot readiness, adoption, and impact in Viva Insights.  

You can see the following summary charts in this report as default view:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage adoption chart." source="../../media/copilot-usage-adoption-chart.png":::

The definitions for Enabled Users and Active Users metrics are the same as provided earlier.

To note, Active users of Word, Excel and PowerPoint is incomplete prior to Jan 25, 2024. Active users of Outlook might be lower than expected if there are people in your organization using the Coach feature on Outlook Win32 over the selected time period. We are currently working on integrating this data into our reports and will notify you as soon as it becomes available.

>[!NOTE]
> This report does not yet include Microsoft Copilot with Graph-grounded chat usage, but it will be available in this report soon. You'll be notified of this update through the Microsoft 365 message center.

>[!IMPORTANT]
> Your organization must have optional diagnostic telemetry for Office apps enabled for Windows, Mac, iOS, and Android in order for comprehensive usage information to be captured in this report. [Learn more about diagnostic telemetry settings](/DeployOffice/privacy/optional-diagnostic-data).

**Current view** shows you the total usage of Copilot for Microsoft 365 among Microsoft 365 apps of the time frame.

**Trend view** shows you the daily time trend of Copilot for Microsoft 365 among Microsoft 365 apps of the time frame.

You can switch between Current view and Trend view.

In the hover status in Current view, you can see the selected time frame and data refresh time.

:::image type="content" alt-text="Screenshot showing the time period view for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-time-period.png":::

When switching to Trend view, you can select one product in the dropdown list to see daily usage.

:::image type="content" alt-text="Screenshot showing the dropdown list of products for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-trend-view.png":::

In the hover status in Trend view, you can see the selected date and data refresh time.

:::image type="content" alt-text="Screenshot showing the hover status for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-hover-status.png":::

In the Adoption section, you may see a recommendation card:

:::image type="content" alt-text="Screenshot showing the recommendation card for Microsoft 365 Copilot adoption." source="../../media/copilot-usage-recommendation.png":::

To learn more about using organizational messages for Microsoft 365 Copilot, see [Microsoft 365 features adoption using organizational messages](microsoft-365-copilot-organizational-messages.md).

You can also export the report data into an Excel .csv file by selecting the ellipses and then **Export** in the top-right corner.

You can view a table list to show each Copilot for Microsoft 365 enabled user’s last activity date among Copilot for Microsoft 365 products.

:::image type="content" alt-text="Screenshot showing the activity for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-last-activity.png" lightbox="../../media/copilot-usage-last-activity.png":::

Select **Choose columns** to add or remove columns from the table.

:::image type="content" alt-text="Screenshot showing the columns you can select for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-choose-columns.png":::

>[!NOTE]
> All up last activity date and last activity date per app are reflecting different narratives now. All up last activity date is reflecting the historical last activity date no matter what period is selected on the page, while last activity date per app is reflecting the last activity date within the selected time period; hence, if there is no activity in selected time period, the last activity date per app will be empty. We are planning to make them consistent to reflect the historical last activity date narrative and will provide update once it’s done.

You can also export the report data into an Excel .csv file by selecting the Export link. This exports the Copilot for Microsoft 365 usage data of all users and enables you to do simple sorting, filtering, and searching for further analysis.

To ensure data quality, we perform daily data validation checks for the past three days and will fill any gaps detected. You may notice differences in historical data during the process. 

## User last activity table

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

To make the data in the Copilot for Microsoft 365 report anonymous, you must be a global administrator. This will hide identifiable information (using MD5 hashes) such as display name, email, and Microsoft Entra Object ID in report and their export.

1. In Microsoft 365 admin center, go to the **Settings** \> **Org Settings**, and under **Services** tab, choose **Reports**.

2. Select **Reports**, and then choose to **Display anonymous identifiers**. This setting gets applied both to the usage reports in Microsoft 365 admin center and Teams admin center.

3. Select **Save changes**.

## FAQ

### What's the difference between the user activity table and audit log?

The information captured in audit log records differs from that in [Microsoft 365 usage reports](#user-last-activity-table). It's important to note that audit logs are not designed for assessing user engagement in Microsoft 365, and they should not be used to replace or augment information in Microsoft 365 usage reports. To learn more about audit logs, see [Export, configure, and view audit log records](/purview/audit-log-export-records#step-1-export-audit-log-search-results).
