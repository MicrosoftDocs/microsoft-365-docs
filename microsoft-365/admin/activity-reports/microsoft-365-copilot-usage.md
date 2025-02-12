---
title: "Microsoft 365 admin center Microsoft 365 Copilot usage"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 01/14/2025
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
ms.custom: 
- AdminSurgePortfolio
- campaignIDs-batch1
search.appverid:
- BCS160
- MST160
- MET150
- MOE150
description: "Learn how to get the Microsoft 365 Copilot usage report and gain insights into the Microsoft 365 Copilot activity in your organization."
---

# Microsoft 365 reports in the admin center – Microsoft 365 Copilot usage

The Microsoft 365 Usage page shows you the activity overview across the Microsoft 365 productivity apps in your organization. It enables you to drill into individual product-level reports to give you more granular insight about the activities within each app. To view all reports, check out the [Reports overview article](activity-reports.md).

In the Microsoft 365 Copilot usage report, which is in continuous enhancement, you can view a summary of how users' adoption, retention, and engagement are with Microsoft 365 Copilot, and the activity of every Copilot user in your organization, including agent usage. For Copilot activity on a given day, the report becomes available within 72 hours of the end of that day (in UTC).

## How do I get to the Microsoft 365 Copilot usage report?

1. In the admin center, go to **Reports** > **Usage**.
1. Select the **Microsoft 365 Copilot** page.
1. Select the Usage tab to view adoption and usage metrics.

## Interpret the Microsoft 365 Copilot usage report

You can use this report to see the usage of Microsoft 365 Copilot in your organization.

At the top, you can filter by different periods. The Microsoft 365 Copilot report can be viewed over the last 7 days, 30 days, 90 days, or 180 days.

You can view several numbers for Microsoft 365 Copilot usage, which highlight the enablement number and the adoption of the enablement:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage summary information." source="../../media/copilot-usage-hero.png":::

**Enabled Users** shows the total number of unique users in your organization with Microsoft 365 Copilot licenses over the selected time period.

**Active Users** shows the total number of enabled users in your organization who tried a user-initiated Microsoft 365 Copilot feature, in one or more apps in Microsoft 365 over the selected time period.

> [!NOTE]
> Active users now includes Copilot Chat (web) usage starting from August 20, 2024.

**Active users rate** shows you the number of active users in your organization divided by the number of enabled users.

In Recommendations, the recommended action card highlights [Microsoft Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard), where you can deliver insights to your IT leaders to explore Copilot readiness, adoption, and impact in Viva Insights.

**Active agent users** shows you the total number of unique Microsoft 365 Copilot users in your org who used agents built by your org (including admin-approved agents and agents created via agent builder and shared with users in your org).

> [!NOTE]
> Agent usage is available starting November 1, 2024, and is currently limited to agents built by your org. Usage of agents built by Microsoft and Microsoft Partners will be introduced in the coming months.

**Adoption by app** shows enabled users and active users of Copilot in Microsoft 365 apps.

You can see the following summary charts in this report as default view:

:::image type="content" alt-text="Screenshot showing Microsoft 365 Copilot usage adoption chart." source="../../media/copilot-usage-adoption-chart2.png" lightbox="../../media/copilot-usage-adoption-chart2.png":::

The definitions for Enabled Users and Active Users metrics are the same as provided earlier.

**Summary view** shows you the total usage of Microsoft 365 Copilot apps of the time frame.

**Trend view** shows you the daily time trend of Microsoft 365 Copilot apps of the time frame.

When switching to Trend view, you can select one product in the dropdown list to see daily usage.

:::image type="content" alt-text="Screenshot showing the dropdown list of products for Microsoft 365 Copilot adoption chart." source="../../media/copilot-usage-trend-view2.png":::

**Copilot Chat adoption** shows enabled users and total usage of Copilot Chat and split usage between Copilot Chat (work) and Copilot Chat (web).

:::image type="content" source="../../media/copilot-chat-usage.png" alt-text="Screenshot showing the business chat usage chart in the Microsoft 365 Copilot usage report." lightbox="../../media/copilot-chat-usage.png":::

**Agent adoption** shows active users of agents in Microsoft 365 Copilot for the selected period. As described earlier, only usage of agents that have been created by your org including both admin-approved agents and agents shared by users in your org.

**Summary view** shows the total number of agent users in Microsoft 365 Copilot over the selected time frame.

:::image type="content" source="../../media/copilot-usage-agents.png" alt-text="Screenshot showing the agents adoption chart for Microsoft 365 Copilot usage." lightbox="../../media/copilot-usage-agents.png":::

**Trend view** shows the daily trend of active agent users in Microsoft 365 Copilot over the selected time frame.

:::image type="content" source="../../media/copilot-usage-agents-trend.png" alt-text="Screenshot showing the trend view of the agents usage in Microsoft 365 Copilot." lightbox="../../media/copilot-usage-agents-trend.png":::

The following table lists the features included for active users of Copilot apps:

| Copilot app  | Features                                  | How to use                                                                                                                                                                                                                                                                | Learn more about the feature                                                                                                                                                                                                                                        |
|--------------|-------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Edge | Copilot Chat (web)                  | Typing a message into the chat window or selecting a suggested prompt and submitting. Or clicking ‘Ask Copilot’ in right click of contextual web info.           | [Copilot - Microsoft Edge](https://www.microsoft.com/edge/features/copilot?msockid=057d787df18f67b829a16cd9f58f6564&form=MA13FJ&ch=1) |
|              | Copilot Chat (work)           | Typing a message into the chat window or selecting a suggested prompt and submitting.          | [Copilot - Microsoft Edge](https://www.microsoft.com/edge/features/copilot?msockid=057d787df18f67b829a16cd9f58f6564&form=MA13FJ&ch=1)             |
| Microsoft 365 Copilot (app)  | Copilot Chat (web)            | Typing a message into the chat window or selecting a suggested prompt and submitting.        | [Get started with Microsoft 365 Copilot Chat](https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-business-chat-5b00a52d-7296-48ee-b938-b95b7209f737) |
|              | Copilot Chat (work)           | Typing a message into the chat window or selecting a suggested prompt and submitting.      | [Get started with Microsoft 365 Copilot Chat](https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-business-chat-5b00a52d-7296-48ee-b938-b95b7209f737)    |
| Outlook      | Summarize an Outlook email thread         | In an email thread, selecting **Summarize by Copilot or Summarize** at the top of the email thread. (User experience is slightly different among web, Windows, Mac or mobile.)                                                                                                | [Summarize an email thread with Copilot in Outlook - Microsoft Support](https://support.microsoft.com/office/summarize-an-email-thread-with-copilot-in-outlook-a79873f2-396b-46dc-b852-7fe5947ab640#ID0EBBJ=New_Outlook)                                      |
|              | Generate an Outlook email draft           | Selecting Copilot icon from the toolbar, selecting **Draft with Copilot**, typing prompt in Copilot box and submitting. (User experience is slightly different among web, Windows, Mac or mobile.)                                                                        | [Draft an email message with Copilot in Outlook - Microsoft Support](https://support.microsoft.com/office/draft-an-email-message-with-copilot-in-outlook-3eb1d053-89b8-491c-8a6e-746015238d9b#ID0EDBH=New_Outlook)                                            |
|              | Coach                                     | Selecting Copilot icon in the email message, choosing **Coaching by Copilot** and Copilot will review email and offer suggestions on improving the tone, clarity and reader sentiment. (User experience is slightly different among web, Windows, Mac, or mobile.)       | [Email coaching with Copilot in Outlook - Microsoft Support](https://support.microsoft.com/office/email-coaching-with-copilot-in-outlook-91a3cd56-1586-4a31-85c7-2eb8cdb02405)                                                                                |
|              | Copilot Chat (work)                                     | Going to the left side of Outlook web app, selecting Copilot from the apps list, typing a prompt and sending. This feature is included in the Outlook app level and all up Microsoft 365 active usage count effective August 28th, 2024.      | [Get started with Microsoft 365 Copilot Chat](https://support.microsoft.com/topic/get-started-with-microsoft-365-copilot-business-chat-5b00a52d-7296-48ee-b938-b95b7209f737)                                                                                |
|              | App Chat                                    | Going to top right corner of Outlook web app, selecting Copilot placed next to settings option, typing a prompt and sending. This feature is included in the Outlook app level and all up Microsoft 365 active usage count effective August 17th, 2024.       | [Frequently asked questions about Copilot in Outlook](https://support.microsoft.com/office/frequently-asked-questions-about-copilot-in-outlook-07420c70-099e-4552-8522-7d426712917b)                                                                                |
| Teams        | Summarizing key points during meetings       | Summarizing key discussion points during meeting using Copilot in Microsoft Teams.                                                                                                                                                                            | [Get started with Copilot in Microsoft Teams meetings - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-in-microsoft-teams-meetings-0bf9dd3c-96f7-44e2-8bb8-790bedf066b1)                                                    |
|              | Summarize chats and channel conversations | Typing a prompt or selecting a prompt from More prompt in Copilot compose box in a chat or channel and submitting.                                                                                                                                                        | [Use Copilot in Microsoft Teams chat and channels - Microsoft Support](https://support.microsoft.com/office/use-copilot-in-microsoft-teams-chat-and-channels-cccccca2-9dc8-49a9-ab76-b1a8ee21486c)                                                            |
|              | Rewrite and adjust messages               | Writing a message in message box, selecting **Rewrite/Adjust** in Copilot beneath the message box to rewrite/adjust the whole/specific selection of the message.                                                                                                          | [Rewrite and adjust your messages with Copilot in Microsoft Teams - Microsoft Support](https://support.microsoft.com/office/rewrite-and-adjust-your-messages-with-copilot-in-microsoft-teams-53315d9c-93be-45ab-9004-2f8205725cc7)              |
|              | Intelligent Recap                         | Selecting **Recap** tab in the meeting chat for Teams calendar event and viewing the AI Notes section after the meeting ends (meeting is recorded and transcribed).                                                                   | [Get started with Microsoft 365 Copilot in Teams - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-for-microsoft-365-in-teams-60c37fde-6e13-4412-8101-40bbbc711ec9)                                                                                            |
|              | Copilot Chat (work)                       | Going to Chat on the left side of Teams, selecting Copilot from the top of your Teams chat list, typing a prompt and sending.             | [Get started with Microsoft 365 Copilot in Teams - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-for-microsoft-365-in-teams-60c37fde-6e13-4412-8101-40bbbc711ec9)                                                                                            |
| Word         | All Copilot in Word features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in Word feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                                             |                                                                                                                                                                                                                                                                   |  To learn more about Copilot in Word features, refer to [Welcome to Copilot in Word - Microsoft Support](https://support.microsoft.com/office/welcome-to-copilot-in-word-2135e85f-a467-463b-b2f0-c51a46d625d1).                                                                                                                                                                                             |
| Excel        |  All Copilot in Excel features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in Excel feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                                |                       |   To learn more about Copilot in Excel features, refer to [Get started with Copilot in Excel - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-in-excel-d7110502-0334-4b4f-a175-a73abdfc118a).                                                                                                                                                                                                                                                                     |
| PowerPoint   | All Copilot in PowerPoint features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in PowerPoint feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                |                                                                                                                                                                                                                                                                   | To learn more about Copilot in PowerPoint features, refer to [Welcome to Copilot in PowerPoint - Microsoft Support](https://support.microsoft.com/office/welcome-to-copilot-in-powerpoint-57133c75-24c0-4519-8096-d0dadf25fb8d).                                                                                                                                                                                               |
| OneNote      | All Copilot in OneNote features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in OneNote feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC).                          |                                                                                                                                                                                                                                                                   |  To learn more about Copilot in OneNote features, refer to [Welcome to Copilot in OneNote - Microsoft Support](https://support.microsoft.com/office/welcome-to-copilot-in-onenote-34b30802-02ae-4676-a88c-82f8d5e586dd).                                                                                                                                                                                                                |
| Loop         | All Copilot in Loop features are automatically included in the Microsoft 365 Copilot usage report. Usage of any Copilot in Loop feature counts towards the Active users metric and is indicated in the per-user Last activity date (UTC). |                                                                                                                                                                                                                                                                   | To learn more about Copilot in Loop features, refer to [Get started with Microsoft 365 Copilot in Loop - Microsoft Support](https://support.microsoft.com/office/get-started-with-copilot-for-microsoft-365-in-loop-966eb1a2-b5ec-4532-8a9d-f1aaeda7f90e).                                                                                                                                   |

To note, Active users of Word, Excel, and PowerPoint is incomplete prior to Jan 25, 2024.

The following table lists the features included for active users of agents:

| Feature | How to use | Learn more about the feature |
| --- | --- | --- |
| UX interactions that count towards agent usage | End-users can interact with agents in two ways: 1) by at-mentioning the agent in a chat experience or 2) by selecting the agent from the right-side panel in Copilot Chat or from the hamburger menu on the top left corner in Copilot in Word or PowerPoint. <br> <br> An active user of an agent is a user who sends a prompt request to an agent and receives a response | Learn about [Getting started with agents for Microsoft 365 Copilot](https://support.microsoft.com/topic/get-started-with-agents-for-microsoft-365-copilot-169469d7-328d-4d37-9090-bfc2058a39bd)  |

> [!IMPORTANT]
> The metrics displayed in this report are powered by data that is classified as required service data. Optional diagnostic data is not required for comprehensive information, although this may change in the future. [Learn more about required service data](/DeployOffice/privacy/required-service-data).

In the Adoption section, you may see a recommendation card:

:::image type="content" alt-text="Screenshot showing the recommendation card for Microsoft 365 Copilot adoption." source="../../media/copilot-usage-recommendation.png":::

To learn more about using organizational messages for Microsoft 365 Copilot, see [Microsoft 365 features adoption using organizational messages](microsoft-365-copilot-organizational-messages.md).

You can also export the report data into an Excel .csv file by selecting the ellipses and then **Export** in the top-right corner.

You can view a table list to show each Microsoft 365 Copilot enabled user's last activity date among Microsoft 365 Copilot apps.

:::image type="content" alt-text="Screenshot showing the activity for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-last-activity.png" lightbox="../../media/copilot-usage-last-activity.png":::

Select **Choose columns** to add or remove columns from the table.

:::image type="content" alt-text="Screenshot showing the columns you can select for the Microsoft 365 Copilot usage report." source="../../media/copilot-usage-chat-columns.png" lightbox="../../media/copilot-usage-chat-columns.png":::

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
| Last activity date of Copilot Chat (work) (UTC)        | The latest date the user had activity in Copilot Chat (work), including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                                         |
| Last activity date of Copilot Chat (web) (UTC)        | The latest date the user had activity in Copilot Chat (web), including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                    |
| Last activity date of Microsoft 365 App (UTC)       | The latest date the user had activity in Copilot Chat in entry point Microsoft 365 App, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.                 |
| Last activity date of Edge (UTC)     | The latest date the user had activity in Copilot Chat in entry point Edge, including any of the intentional activities, regardless of the selected time period of past 7/30/90/180 days.         |
| Last activity date of any agent (UTC)   | The latest date the user had activity with a agent built by your org, regardless of the selected time period of past 7/30/90/180 days.      |

## Make the user-specific data anonymous

By default, usernames and display names in Microsoft 365 Copilot usage report are anonymous. And global administrator can update settings to unconceal usernames and display name.

1. In Microsoft 365 admin center, go to the **Settings** > **Org Settings**, and under the **Services** tab, choose **Reports**.

2. Select **Reports**, and then update the setting “Display Concealed user, group and site names in all reports”.
3. Select **Save changes**.

## FAQ

### How is a user considered active in Microsoft 365 Copilot usage?

A user is considered active in a given app if they performed an intentional action for an AI-powered capability. For example, if a user selects the Copilot icon in the Word ribbon to open the Copilot chat pane, this does not count towards active usage. However, if the user interacts with the chat pane by submitting a prompt, this action would count towards active usage.

### What's the difference between the user activity table and audit log?

The audit log data that powers Microsoft Purview solutions, such as Data Security Posture Management for AI (previously called AI Hub), are built for data security and compliance purposes, and provide comprehensive visibility into Copilot interactions for these use cases (for example, to discover data oversharing risks or to collect interactions for regulatory compliance or legal purposes). They are not, however, intended to be used as the basis for Copilot usage reporting. Any aggregated metrics that customers build on top of this data, such as "prompt count" or "active user count," may not be consistent with the corresponding data points in the official Copilot usage reports provided by Microsoft. Microsoft cannot provide guidance on how to use audit log data as the basis for usage reporting, nor can Microsoft guarantee that aggregated usage metrics built on top of audit log data will match similar usage metrics reported in other tools.

To access accurate information on Microsoft 365 Copilot usage, use one of the following reports: the [Microsoft 365 Copilot usage report](microsoft-365-copilot-usage.md) in the Microsoft 365 Admin Center or the [Copilot Dashboard](/viva/insights/org-team-insights/copilot-dashboard) in Viva Insights.

### What's the scope of the user-level table?

The user-level table in the report is configured to show all users who were licensed for Microsoft 365 Copilot at any point over the past 180 days, even if the user has since had the license removed or never had any Copilot active usage.

### I assigned the Microsoft 365 Copilot license to users, but why is 'last activity date' for users empty in rare cases?

Based on system constraints, some users may not have a 'last activity date' in the user-level table of the report under the following conditions:

1. The user used Microsoft 365 Copilot within a short time window (less than 24 hours) after the Microsoft 365 Copilot license was assigned.
2. The user subsequently had no other Microsoft 365 Copilot usage up to the date on which the report is viewed.

### Why is the 'Last activity date of Word, Excel, PowerPoint, OneNote, or Outlook Copilot (UTC)' sometimes blank or newer than the actual date, even when users have recently used Copilot features?

This may be caused by a known limitation: the uploading of client events data for Copilot features in Word, Excel, PowerPoint, OneNote, and Outlook can be delayed for various reasons, such as when end users disconnect from the internet immediately after taking a Copilot action.

### How do the numbers in this report compare to what is shown in the Microsoft Copilot Dashboard in Viva Insights?

The data in these reports is based on the same underlying definitions of active usage, but the population of users included in the analysis and the timeframe displayed may differ. To learn more, see [Use Microsoft Copilot Dashboard advanced features with a Viva Insights subscription](/viva/insights/org-team-insights/copilot-dashboard-advanced-features#setup-and-licenses).
