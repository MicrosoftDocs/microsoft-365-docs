---
title: "Microsoft 365 admin center Microsoft 365 Copilot readiness"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 12/13/2024
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
description: "Learn about the Microsoft 365 Copilot readiness report and how it can help you assess your organization's readiness to adopt Copilot."
---

# Microsoft 365 reports in the Admin Center – Microsoft 365 Copilot readiness

The Microsoft 365 Usage dashboard shows you the activity overview across the Microsoft 365 apps in your organization. It enables you to drill into individual product-level reports to give you more granular insight about the activities within each app. To view all reports, check out the [Reports overview article](activity-reports.md).

In the Microsoft 365 Copilot readiness report, which is in continuous enhancement, you can view which users are technically eligible for Copilot, assign licenses, and monitor usage of Microsoft 365 apps that Copilot integrates best with. The report becomes available within 72 hours, and once available, the usage data shown on the report can have up to a maximum of 72 hours latency.

## How do I get to the Microsoft 365 Copilot report?

1. In the admin center, go to **Reports** > **Usage**.
1. Select the **Microsoft 365 Copilot** page.
1. You can view Readiness on the first tab. Switch to the Usage tab to view adoption and usage metrics.

## Interpret the Readiness section in the Microsoft 365 Copilot report

You can use this report to see how ready your organization is to adopt Microsoft 365 Copilot. The Readiness section is set up to show your data over the past 28 days.

You can see the following summary charts in this report:

:::image type="content" alt-text="Screenshot showing how you can ensure users are eligible for Microsoft 365 Copilot." source="../../media/copilot-usage-ensure-readiness.png":::

**Total Prerequisite Licenses**: The number is the sum of all users who have at least one license assigned to them or who could be assigned a license. To learn more about the license types eligible for Copilot, see [Licensing requirements for Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-licensing).

**Users on an eligible update channel**: This number is the sum of all users who are enrolled in Current Channel or Monthly Enterprise Channel for app updates in your organization and could be assigned with a Copilot license.

:::image type="content" alt-text="Screenshot showing an organization's number of available licenses to assign." source="../../media/copilot-usage-licenses-assigned.png":::

**Assigned Licenses**: This number is the sum of all users who have already been assigned with a Copilot license in your organization.

**Available Licenses**: This number is the sum of all users who do not have a Copilot license assigned, and should be prioritized first.

:::image type="content" alt-text="Screenshot showing recommendation cards for Microsoft 365 Copilot usage report." source="../../media/copilot-usage-recommend-cards.png" lightbox="../../media/copilot-usage-recommend-cards.png":::

Recommended action cards highlight important actions to take to prepare your organization for Copilot, such as moving users to a monthly app update channel and assigning available Copilot licenses.

The last recommended action card promotes [Microsoft Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard), where you can deliver insights to your IT leaders to explore Copilot readiness, adoption, and impact in Viva Insights.

:::image type="content" alt-text="Screenshot showing chart for Copilot active users in an organization." source="../../media/copilot-usage-enable-active-users.png" lightbox="../../media/copilot-usage-enable-active-users.png":::

This graph shows the sum of users who could benefit the most from Copilot based on where Copilot provides the most value in day-to-day scenarios. By default, it's sorted by descending order across all rows by column 'Suggested candidate for Copilot'.

:::image type="content" alt-text="Screenshot showing chart to determine where Copilot can impact users the most." source="../../media/copilot-readiness-details.png" lightbox="../../media/copilot-readiness-details.png":::

You can use the user table to get an at-a-glance view at which users are assigned a Copilot license, whether their devices are configured correctly, and if they’re using a Microsoft 365 app that has Copilot enabled.

You can also export the report data into an Excel .csv file by selecting the Export link. This exports the Microsoft 365 Copilot readiness data of all users with any engagement on Teams meetings, Teams chat, and Outlook email for Office docs in past 30 days, and enables you to do simple sorting, filtering, and searching for further analysis.

To ensure data quality, we perform daily data validation checks for the past three days and will fill any gaps detected. You may notice differences in historical data during the process.

### User activity table

| Item                              | Description                                    |
|-----------------------------------|------------------------------------------------|
| User name                         | The user's principal name.                                                                                                    |
| Has Copilot license been assigned | Yes/No field indicating if the user has a Copilot license assigned to them.                                                   |
| Uses eligible update channel      | Yes/No field indicating if devices are configured to get the latest or monthly updates.                                       |
| Uses Teams Meetings               | Indicates whether the user has attended at least one meeting using Teams in the past 30 days.                                  |
| Uses Teams chat                   | Indicates whether the user has participated in at least one chat using Teams in the past 30 days.                              |
| Uses Outlook Email                | Indicates whether the user has sent at least one email using Outlook in the past 30 days.                                    |
| Uses Office docs                  | Indicates whether the user has collaborated on at least one document or file using OneDrive or sharepoint in the past 30 days. |
| Suggested candidate for Copilot      | Indicates the top 25% of non-licensed users based on their Microsoft 365 app usage over the prior month. For more information, see [Additional details for Suggested candidate for Copilot](#additional-details-for-suggested-candidate-for-copilot).  |

### Additional details for Suggested candidate for Copilot

The "Suggested candidate for Copilot" column in the Microsoft 365 Copilot Readiness report helps organizations identify users who may benefit most from Microsoft 365 Copilot as part of initial rollouts and pilot programs. Each week, the feature flags the top 25% of non-licensed users within an organization based on their consistent usage of the Microsoft 365 applications where Copilot adds value, such as Microsoft Teams and Outlook. Admins can use this information to prepare a data-driven licensing plan for their Copilot rollout. See the following for key details:

- The feature analyses the Microsoft 365 usage across the users that haven't been assigned Copilot licenses each week. It then flags the top 25% of them as suggested candidates. This selection is based on app usage intensity in applications where Microsoft 365 Copilot provides value, such as Microsoft Outlook, Teams, and Word.
- The feature is only available to customers that have purchased Microsoft 365 Copilot licenses.
- The feature doesn't rank users within the selected 25% group; there's no individual stack ranking among suggested candidates.
- Each week, the feature reevaluates the user base again and suggests the top 25% based on usage metrics for the preceding 28-day period. Users that have been assigned a Microsoft 365 Copilot license are removed from consideration. Over time, it's possible for every eligible user in the organization to be flagged as a suggested candidate for Copilot.
- To support interpretability, several of the inputs to the suggestion model are also shown in the Copilot readiness details table. Users that actively used Teams meetings, Teams chats, Outlook emails, or Office docs over the preceding 28 day period will have a "Yes" value in the columns corresponding with each of these applications.
- The intended purpose of this capability is to support organizations with the rollout of Microsoft 365 Copilot by highlighting users who are most likely to quickly benefit from its capabilities based on their consistent usage of Microsoft 365 apps. It is not intended to be used to evaluate employee performance.

## Make the user-specific data anonymous

To make the data in the Microsoft 365 Copilot report anonymous, you must be a global administrator. This will hide identifiable information (using MD5 hashes) such as display name, email, and Microsoft Entra Object ID in report and their export.

1. In Microsoft 365 admin center, go to the **Settings** \> **Org Settings**, and under **Services** tab, choose **Reports**.

2. Select **Reports**, and then choose to **Display anonymous identifiers**. This setting gets applied both to the usage reports in Microsoft 365 admin center and Teams admin center.

3. Select **Save changes**.

## More resources

- [Microsoft 365 Copilot service description](/office365/servicedescriptions/office-365-platform-service-description/microsoft-365-copilot) (article)
- [Set up Microsoft 365 Copilot](/copilot/microsoft-365/microsoft-365-copilot-setup) (article)
- [Microsoft 365 Copilot Adoption](https://adoption.microsoft.com/copilot/)
