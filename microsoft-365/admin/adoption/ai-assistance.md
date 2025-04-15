---
title: "AI assistance category in Adoption Score"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 01/22/2025
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-business
ms.localizationpriority: medium
monikerRange: 'o365-worldwide'
ms.collection: 
- Tier2
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_TOC
- m365copilot
- magic-ai-copilot
search.appverid:
- MET150
- MOE150
description: "Learn about the AI assistance category in Adoption Score."
---

# AI assistance category in Adoption Score

With AI rapidly entering the day-to-day experience of people in your organization, we introduced a new People Experiences category called AI assistance.

The AI assistance score represents the extent to which users in your organization have made Microsoft 365 Copilot a daily habit. A score of 100 means that all licensed Microsoft 365 Copilot users in your organization used Copilot features for more than half of working days over the prior month. You can use the other insights on the page to understand what behaviors and features contribute to your score, and to identify actions to take to boost your score.

:::image type="content" source="../../media/ai-assistance.png" alt-text="Screenshot showing the Adoption Sore dashboard with AI assistance category." lightbox="../../media/ai-assistance.png":::

>[!NOTE]
> AI assistance score is in preview. The scoring logic and insights displayed on the page might change over time. As of January 2025, the score now includes more Microsoft 365 Copilot actions, such as sending prompts in Microsoft 365 Copilot Chat and using Intelligent Recap in Microsoft Teams. This update causes the score value to increase as compared with the original score delivered in Fall 2023.  

## AI assistance score calculation methodology

The AI assistance score is calculated based on a target of getting each licensed user to use Microsoft 365 Copilot on at least 12 out of the past 28 days. The 12-day threshold is used because individuals that achieve it have a high likelihood of becoming a consistent long-term user of Microsoft 365 Copilot.

How the score is calculated:

- For each user licensed for Microsoft 365 Copilot, Microsoft calculates the number of days out of the prior 28 days on which the user actively used Microsoft 365 Copilot.
  - Note: The score accounts for Copilot usage in the following Microsoft 365 applications: Outlook, Teams, Copilot Chat, Word, PowerPoint, Excel, OneNote, and Loop. Only intentional user actions in these apps are considered; the set of actions is consistent with those used for the Microsoft 365 Copilot usage report.
- An individual-level score is produced for each user by dividing the count of active days by 12. For example, eight days of usage results in (8/12) × 100 = 66.67
- The tenant-level score is produced by taking the average score across all licensed users in the organization. If the score is 50 out of 100, this means that, on average, licensed users in your organization used Microsoft 365 Copilot on six days out of the past 28 days.

## Peer benchmark for AI assistance score

The AI assistance score peer benchmark allows you to compare your organization's score with organizations like yours. Consistent with other scores in Adoption Score, the benchmark is calculated by taking the average AI assistance score across organizations similar to yours (based on your region, industry, and number of users licensed for Microsoft 365).

:::image type="content" source="../../media/ai-current-chart.png" alt-text="Screenshot showing the chart for the AI assistance score." lightbox="../../media/ai-current-chart.png":::

To learn more, see [Interpreting your organization's Adoption Score](adoption-score.md#interpreting-your-organizations-adoption-score).

## Time trend

Time trend data is provided for each category score to track progress. This allows visibility of Copilot usage across various Microsoft 365 applications over different time ranges, similar to other categories. Alongside the current 28-day rolling period (RL28), insights are available for:

- 30 days (RL30)
- 90 days (RL90)
- 180 days (RL180)

## How can I improve my score?

Resource cards are available for administrators to facilitate adoption, including Copilot Lab, Success Kit (v2.0), User Enablement, Copilot Dashboard in Viva Insights, and Microsoft Copilot Scenario. For more details, refer to the resource cards.

:::image type="content" source="../../media/ai-improve-score.png" alt-text="Screenshot showing the resource card for improving Copilot." lightbox="../../media/ai-improve-score.png":::

## How are people using Microsoft 365 Copilot?

Microsoft 365 Copilot usage insights are organized into five key areas: Teams meetings & chats, documents, emails, Copilot Chat, and Microsoft Copilot usage frequency. These insights show how many users are engaging with various Copilot features compared to the total number of enabled users over a 28-day period.

You can use these insights to:

- Identify which Copilot features are most popular among your users.
- Spot underutilized features that might benefit from more user training.
- Track adoption trends across different Microsoft 365 applications over 7, 30, 90, 180 days’ time ranges.

:::image type="content" source="../../media/ai-using-copilot.png" alt-text="Screenshot showing the charts for how people are using Copilot." lightbox="../../media/ai-using-copilot.png":::

>[!NOTE]
> When you select the settings to opt out specific user groups from calculating People experience insights in Adoption Score, the AI assistance category wouldn't be respecting that opt out for the current release. This will be changed in future releases.

## Sentiment survey upload experience

In this section, you can upload Copilot survey results to have them displayed in the Microsoft Copilot Dashboard.

>[!NOTE]
> You won't be able to view the results on this page; they're only available in the Microsoft Copilot Dashboard.

Use this feature to provide your organizational leaders with a centralized location for insights on how users feel about the AI assistance they receive from Copilot.

This feature is only available for Global administrators. Users without this role can't see it in the Microsoft 365 admin center.

### Upload survey data

To access the Sentiment survey upload feature in the Microsoft 365 admin center, follow these steps:

1. In the Microsoft 365 admin center, go to **Reports** > **Adoption Score**.
1. Navigate to **AI assistance** and select **View details**.
1. On the AI assistance page, navigate to **Assess Copilot sentiment for your org** and select **Record survey results**.

:::image type="content" source="../../media/as-upload-survey.png" alt-text="Screenshot showing the dashboard to upload survey data for Copilot sentiment" lightbox="../../media/as-upload-survey.png":::

:::image type="content" source="../../media/as-survey-results.png" alt-text="Screenshot showing the pop-up pane for survey results for Copilot sentiment":::

### Update results over time

:::image type="content" source="../../media/as-update-results.png" alt-text="Screenshot showing the screen for updating survey results for Copilot sentiment" lightbox="../../media/as-update-results.png":::

You can upload new survey data as often as you want to keep the Copilot Dashboard updated with the latest feedback from your users.

:::image type="content" source="../../media/as-delete-survey.png" alt-text="Screenshot showing the screen for deleting survey results for Copilot sentiment":::

If you want to delete or overwrite the existing survey data, select the Delete or Overwrite buttons at the bottom of the page. Note, these actions can't be undone.

### Suggested Copilot survey questions

To measure Copilot user sentiment in your organization, we recommend delivering a survey to users that asks them to indicate their level of agreement with the following four statements:

- *Using Copilot helps improve the quality of my work or output*

- *Using Copilot helps me spend less mental effort on mundane or repetitive tasks*

- *Using Copilot allows me to complete tasks faster*

- *When using Copilot, I am more productive*

For each of these, we recommend allowing users to indicate whether or not they Strongly Disagree, Disagree, Neither Agree Nor Disagree, Agree, or Strongly Agree with the statement. You can then combine the “Agree” and “Strongly Agree” responses to compute the % of users who agreed with each statement and compare results with the Microsoft benchmarks shown in this tab.

Your user survey doesn't need to be limited to these four statements, but we recommend including them at a minimum for easy comparison with Microsoft’s benchmark results.
