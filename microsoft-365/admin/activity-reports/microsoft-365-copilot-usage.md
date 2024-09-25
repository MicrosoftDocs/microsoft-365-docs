---
title: "Microsoft 365 admin center Microsoft 365 Copilot usage"
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
description: "Learn how to get the Microsoft 365 Copilot usage report and gain insights into the Microsoft 365 Copilot activity in your organization."
---

# Microsoft 365 reports in the Admin Center – Microsoft 365 Copilot usage

The Microsoft 365 Usage dashboard shows you the activity overview across the Microsoft 365 productivity apps in your organization. It enables you to drill into individual product-level reports to give you more granular insight about the activities within each app. To view all reports, check out the [Reports overview article](activity-reports.md).

In the Microsoft 365 Copilot usage report, which is in continuous enhancement, you can view a summary of how users’ adoption, retention, and engagement are with Microsoft 365 Copilot, and the activity of every Copilot user in your organization. For Copilot activity on a given day, the report becomes available within 72 hours of the end of that day (in UTC).

## How do I get to the Microsoft 365 Copilot usage report?

1. In the admin center, go to **Reports** > **Usage**.
1. Select the **Microsoft 365 Copilot5** page.
1. Select the Usage tab to view adoption and usage metrics.

## Interpret the Microsoft 365 Copilot usage report

You can use this report to see the usage of Microsoft 365 Copilot in your organization.

At the top, you can filter by different periods. The Microsoft 365 Copilot report can be viewed over the last 7 days, 30 days, 90 days, or 180 days.

You can view several numbers for Microsoft 365 Copilot usage, which highlight the enablement number and the adoption of the enablement:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage summary information." source="../../media/copilot-usage-numbers.png":::

**Enabled Users** shows the total number of unique users in your organization with Microsoft 365 Copilot licenses over the selected time period.

**Active Users** shows the total number of enabled users in your organization who tried a user-initiated Microsoft 365 Copilot feature, in one or more apps in Microsoft 365 over the selected time period.

**Active users rate** shows you the number of active users in your organization divided by the number of enabled users.

In Recommendations, the recommended action card highlights [Microsoft Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard), where you can deliver insights to your IT leaders to explore Copilot readiness, adoption, and impact in Viva Insights.  

You can see the following summary charts in this report as default view:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage adoption chart." source="../../media/copilot-usage-adoption-chart2.png":::

The definitions for Enabled Users and Active Users metrics are the same as provided earlier.

The following table lists the features included for active users of Copilot apps:

| Copilot app  | Features                                  | How to use                                                                                                                                                                                                                                                                | Learn more about the feature                                                                                                                                                                                                                                        |
|--------------|-------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Copilot chat | Chat                                      | Typing a message into the chat window or selecting a suggested prompt and submitting.                                                                                   | [Ask questions and get answers using Microsoft Copilot with Graph-grounded chat - Microsoft Support](https://support.microsoft.com/topic/ask-questions-and-get-answers-using-microsoft-copilot-with-graph-grounded-chat-fd8d88af-9492-48cd-8385-7e8615b42d80) |
| Outlook      | Summarize an Outlook email thread         | In an email thread, selecting **Summarize by Copilot or Summarize** at the top of the email thread. (User experience is slightly different among web, Windows, Mac or mobile.)                                                                                                | [Summarize an email thread with Copilot in Outlook - Microsoft Support](https://support.microsoft.com/office/summarize-an-email-thread-with-copilot-in-outlook-a79873f2-396b-46dc-b852-7fe5947ab640#ID0EBBJ=New_Outlook)                                      |
|              | Generate an Outlook email draft           | Selecting Copilot icon from the toolbar, selecting **Draft with Copilot**, typing prompt in Copilot box and submitting. (User experience is slightly different among web, Windows, Mac or mobile.)                                                                        | [Draft an email message with Copilot in Outlook - Microsoft Support](https://support.microsoft.com/office/draft-an-email-message-with-copilot-in-outlook-3eb1d053-89b8-491c-8a6e-746015238d9b#ID0EDBH=New_Outlook)                                            |
|              | Coach                                     | Selecting Copilot icon in the email message, choosing **Coaching by Copilot** and Copilot will review email and offer suggestions on improving the tone, clarity and reader sentiment. (User experience is slightly different among web, Windows, Mac, or mobile.)       | [Email coaching with Copilot in Outlook - Microsoft Support](https://support.microsoft.com/office/email-coaching-with-copilot-in-outlook-91a3cd56-1586-4a31-85c7-2eb8cdb02405)                                                                                |
|              | Business Chat (work)                                     | Going to the left side of Outlook web app, selecting Copilot from the apps list, typing a prompt and sending. This feature is included in the Outlook app level and all up Microsoft 365 active usage count effective August 28th, 2024.      | [Get started with Microsoft 365 Copilot Business Chat](https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-business-chat-5b00a52d-7296-48ee-b938-b95b7209f737)                                                                                |
|              | App Chat                                    | Going to top right corner of Outlook web app, selecting Copilot placed next to settings option, typing a prompt and sending. This feature is included in the Outlook app level and all up Microsoft 365 active usage count effective August 17th, 2024.       | [Frequently asked questions about Copilot in Outlook](https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-outlook-07420c70-099e-4552-8522-7d426712917b)                                                                                |
| Teams        | Summarizing key points during meetings       | Summarizing key discussion points during meeting using Copilot in Microsoft. Teams                                                                                                                                                                            | [Get started with Copilot in Microsoft Teams meetings - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1)                                                    |
|              | Summarize chats and channel conversations | Typing a prompt or selecting a prompt from More prompt in Copilot compose box in a chat or channel and submitting.                                                                                                                                                        | [Use Copilot in Microsoft Teams chat and channels - Microsoft Support](https://support.microsoft.com/office/use-copilot-in-microsoft-teams-chat-and-channels-cccccca2-9dc8-49a9-ab76-b1a8ee21486c)                                                            |
|              | Rewrite and adjust messages               | Writing a message in message box, selecting **Rewrite/Adjust** in Copilot beneath the message box to rewrite/adjust the whole/specific selection of the message.                                                                                                          | [Rewrite and adjust your messages with Copilot in Microsoft Teams - Microsoft Support](https://support.microsoft.com/office/rewrite-and-adjust-your-messages-with-copilot-in-microsoft-teams-53315d9c-93be-45ab-9004-2f8205725cc7)              |
|              | Intelligent Recap                         | Selecting **Recap** tab in the meeting chat for Teams calendar event after the meeting ends (meeting is recorded and transcribed).                                                                   | [Get started with Microsoft 365 Copilot in Teams - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-for-microsoft-365-in-teams-60c37fde-6e13-4412-8101-40bbbc711ec9)                                                                                            |
|              | Business Chat (work)                       | Going to Chat on the left side of Teams, selecting Copilot from the top of your Teams chat list, typing a prompt and sending.             | [Get started with Microsoft 365 Copilot in Teams - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-for-microsoft-365-in-teams-60c37fde-6e13-4412-8101-40bbbc711ec9)                                                                                            |
| Word         | All Copilot in Word features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in Word feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                                             |                                                                                                                                                                                                                                                                   |  To learn more about Copilot in Word features, refer to [Welcome to Copilot in Word - Microsoft Support](https://support.microsoft.com/office/welcome-to-copilot-in-word-2135e85f-a467-463b-b2f0-c51a46d625d1).                                                                                                                                                                                             |
| Excel        |  All Copilot in Excel features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in Excel feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                                |                       |   To learn more about Copilot in Excel features, refer to [Get started with Copilot in Excel - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-in-excel-d7110502-0334-4b4f-a175-a73abdfc118a).                                                                                                                                                                                                                                                                     |
| PowerPoint   | All Copilot in PowerPoint features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in PowerPoint feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                |                                                                                                                                                                                                                                                                   | To learn more about Copilot in PowerPoint features, refer to [Welcome to Copilot in PowerPoint - Microsoft Support](https://support.microsoft.com/office/welcome-to-copilot-in-powerpoint-57133c75-24c0-4519-8096-d0dadf25fb8d).                                                                                                                                                                                               |
| OneNote      | All Copilot in OneNote features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in OneNote feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                          |                                                                                                                                                                                                                                                                   |  To learn more about Copilot in OneNote features, refer to [Welcome to Copilot in OneNote - Microsoft Support](https://support.microsoft.com/office/welcome-to-copilot-in-onenote-34b30802-02ae-4676-a88c-82f8d5e586dd).                                                                                                                                                                                                                |
| Loop         | All Copilot in Loop features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in Loop feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC). |                                                                                                                                                                                                                                                                   | To learn more about Copilot in Loop features, refer to [Get started with Microsoft 365 Copilot in Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-for-microsoft-365-in-loop-966eb1a2-b5ec-4532-8a9d-f1aaeda7f90e).                                                                                                                                   |

To note, Active users of Word, Excel, and PowerPoint is incomplete prior to Jan 25, 2024.

> [!IMPORTANT]
> Your organization must have optional diagnostic telemetry for Office apps enabled for Windows, Mac, iOS, and Android in order for comprehensive usage information to be captured in this report. [Learn more about diagnostic telemetry settings](/DeployOffice/privacy/optional-diagnostic-data).

**Summary view** shows you the total usage of Microsoft 365 Copilot among Microsoft 365 productivity apps of the time frame.

**Trend view** shows you the daily time trend of Microsoft 365 Copilot among Microsoft 365 productivity apps of the time frame.

You can switch between Summary view and Trend view.

In the hover status in Summary view, you can see the selected time frame and data refresh time.

:::image type="content" alt-text="Screenshot showing the time period view for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-time-period2.png":::

When switching to Trend view, you can select one product in the dropdown list to see daily usage.

:::image type="content" alt-text="Screenshot showing the dropdown list of products for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-trend-view2.png":::

In the Adoption section, you may see a recommendation card:

:::image type="content" alt-text="Screenshot showing the recommendation card for Microsoft 365 Copilot adoption." source="../../media/copilot-usage-recommendation.png":::

To learn more about using organizational messages for Microsoft 365 Copilot, see [Microsoft 365 features adoption using organizational messages](microsoft-365-copilot-organizational-messages.md).

You can also export the report data into an Excel .csv file by selecting the ellipses and then **Export** in the top-right corner.

You can view a table list to show each Microsoft 365 Copilot enabled user’s last activity date among Microsoft 365 Copilot products.

:::image type="content" alt-text="Screenshot showing the activity for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-last-activity.png" lightbox="../../media/copilot-usage-last-activity.png":::

Select **Choose columns** to add or remove columns from the table.

:::image type="content" alt-text="Screenshot showing the columns you can select for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-choose-columns2.png":::

You can also export the report data into an Excel .csv file by selecting the Export link. This exports the Microsoft 365 Copilot usage data of all users and enables you to do simple sorting, filtering, and searching for further analysis.

To ensure data quality, we perform daily data validation checks for the past three days and will fill any gaps detected. You may notice differences in historical data during the process.

## User last activity table

| Item | Description |
|------|-------------|
| User name                                      | The user's principal name.                                                                                                                    |
| Display name                                   | The full name of the user.                                                                                                                    |
| Last activity date (UTC (Universal Time Code)) | The latest date the user had activity in Microsoft 365 Copilot among all Microsoft 365 products, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days. |
| Last activity date of Teams Copilot (UTC)      | The latest date the user had activity in Microsoft Teams Copilot, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                |
| Last activity date of Word Copilot (UTC)       | The latest date the user had activity in Word Copilot, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                            |
| Last activity date of Excel Copilot (UTC)      | The latest date the user had activity in Excel Copilot, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                        |
| Last activity date of PowerPoint Copilot (UTC)  | The latest date the user had activity in PowerPoint Copilot, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                   |
| Last activity date of Outlook Copilot (UTC)    | The latest date the user had activity in Outlook Copilot, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                       |
| Last activity date of OneNote Copilot (UTC)    | The latest date the user had activity in OneNote Copilot, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                       |
| Last activity date of Loop Copilot (UTC)       | The latest date the user had activity in Loop Copilot, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                          |
| Last activity date of Copilot chat (UTC)        | The latest date the user had activity in Copilot chat, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                         |

## Make the user-specific data anonymous

To make the data in the Microsoft 365 Copilot report anonymous, you must be a global administrator. This will hide identifiable information (using MD5 hashes) such as display name, email, and Microsoft Entra Object ID in report and their export.

1. In Microsoft 365 admin center, go to the **Settings** \> **Org Settings**, and under **Services** tab, choose **Reports**.

2. Select **Reports**, and then choose to **Display anonymous identifiers**. This setting gets applied both to the usage reports in Microsoft 365 admin center and Teams admin center.

3. Select **Save changes**.

## FAQ

### How is a user considered active in Microsoft 365 Copilot usage?

A user is considered active in a given app if they performed an intentional action for an AI-powered capability. For example, if a user selects the Copilot icon in the Word ribbon to open the Copilot chat pane, this does not count towards active usage. However, if the user interacts with the chat pane by submitting a prompt, this action would count towards active usage.

### What's the difference between the user activity table and audit log?

The audit log data that powers Microsoft Purview solutions, such as AI hub, are built for data security and compliance purposes, and provide comprehensive visibility into Copilot interactions for these use cases (for example, to discover data oversharing risks or to collect interactions for regulatory compliance or legal purposes). They are not, however, intended to be used as the basis for Copilot usage reporting. Any aggregated metrics that customers build on top of this data, such as "prompt count" or "active user count," may not be consistent with the corresponding data points in the official Copilot usage reports provided by Microsoft. Microsoft cannot provide guidance on how to use audit log data as the basis for usage reporting, nor can Microsoft guarantee that aggregated usage metrics built on top of audit log data will match similar usage metrics reported in other tools.

To access accurate information on Microsoft 365 Copilot usage, use one of the following reports: the [Microsoft 365 Copilot usage report](microsoft-365-copilot-usage.md) in the Microsoft 365 Admin Center or the [Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard) in Viva Insights.

### Is Copilot chat in Outlook usage counted towards active users of Outlook Copilot active users?

No. Meanwhile, Copilot chat in Outlook usage is counted towards Copilot chat active users.

### What’s the scope of the user-level table?

The user-level table in the report is configured to show all users who were licensed for Microsoft 365 Copilot at any point over the past 180 days, even if the user has since had the license removed or never had any Copilot active usage.

### I assigned the Microsoft 365 Copilot license to users, but why is 'last activity date' for users empty in rare cases?

Based on system constraints, some users may not have a 'last activity date' in the user-level table of the report under the following conditions:

1. The user used Microsoft 365 Copilot within a short time window (less than 24 hours) after the Microsoft 365 Copilot license was assigned.
2. The user subsequently had no other Microsoft 365 Copilot usage up to the date on which the report is viewed.

### Why is the 'Last activity date of Word, Excel, PowerPoint, OneNote, or Outlook Copilot (UTC)' sometimes blank or newer than the actual date, even when users have recently used Copilot features?

This may be caused by a known limitation: the uploading of client events data for Copilot features in Word, Excel, PowerPoint, OneNote, and Outlook can be delayed for various reasons, such as when end users disconnect from the internet immediately after taking a Copilot action.

### How do the numbers in this report compare to what is shown in the Microsoft Copilot Dashboard in Viva Insights?

The data in these reports is based on the same underlying definitions of active usage, but the population of users included in the analysis and the timeframe displayed may differ. To learn more, see [Use Microsoft Copilot Dashboard advanced features with a Viva Insights subscription](/viva/insights/org-team-insights/copilot-dashboard-advanced-features#setup-and-licenses).
