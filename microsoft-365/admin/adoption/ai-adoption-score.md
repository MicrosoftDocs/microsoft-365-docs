---
title: "AI adoption category in Adoption Score"
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 04/16/2025
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
description: "Learn about the AI adoption category in Adoption Score in the Microsoft 365 admin center."
---

# AI adoption category in Adoption Score

With AI rapidly entering the day-to-day experience of people in your organization, we introduced a new People Experiences category called AI adoption.

The AI adoption score represents the extent to which users in your organization have made Microsoft 365 Copilot a daily habit. A score of 100 means that all licensed Microsoft 365 Copilot users in your organization are using Copilot features for an average of at least three days per week (or 12 out of the past 28 days). Users that reach this three-day threshold in a given month are highly likely to become long-term engaged users of Microsoft 365 Copilot. If users fall short of that three-day threshold, the score still gives credit for making progress to it. You can use the other insights on the page to understand what behaviors and features contribute to your score, and to identify actions to take to boost your score.

:::image type="content" source="../../media/ai-assistance.png" alt-text="Screenshot showing the Adoption Sore dashboard with AI adoption category." lightbox="../../media/ai-assistance.png":::

## AI adoption score calculation methodology

The AI adoption score is calculated based on a target of getting each licensed user to use Microsoft 365 Copilot for an average of three days per week. The three-day threshold is used because individuals that achieve it have a high likelihood of becoming a consistent long-term user of Microsoft 365 Copilot. The score is computed in a way that your organization still gets credit if users fall short of the three-day threshold. For example, a score of 66 out of 100 indicates that, on average, licensed users are active in Copilot for two days per week (two-thirds of the way towards the three-day target).

>[!NOTE]
> For organizations that have enabled at least one user for Microsoft 365 Copilot, AI adoption score is now added to your total Adoption Score, causing the denominator for the overall score to increase by 100. If your organization doesn’t have any Microsoft 365 Copilot licenses, then the maximum total score is unchanged (700 or 800) and the peer benchmark is unchanged (sum of all categories reports except AI adoption score).

How the score is calculated:

- For each user licensed for Microsoft 365 Copilot, Microsoft calculates the number of days out of the prior 28 days on which the user actively used Microsoft 365 Copilot.
  - The score accounts for Copilot usage in the following Microsoft 365 applications: Outlook, Teams, Copilot Chat, Word, PowerPoint, Excel, OneNote, and Loop. Only intentional user actions in these apps are considered; the set of actions is consistent with those used for the [Microsoft 365 Copilot usage report](/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage).
  - The use of agents in any of the applications listed previously is included in addition to non-agentic features, like summarizing a Word document or drafting an email in Outlook.
- An individual-level score is produced for each user by dividing the count of active days by 12. For example, eight days of usage results in (8/12) × 100 = 66.67. 12 days over a 28 day period is equivalent to an average of three days per week.
- The tenant-level score is produced by taking the average score across all licensed users in the organization. If the score is 50 out of 100, this means that, on average, licensed users in your organization used Microsoft 365 Copilot on six days out of the past 28 days (which means an average of 1.5 days per week).

## Peer benchmark for AI adoption score

The AI adoption score peer benchmark allows you to compare your organization's score with organizations like yours. Consistent with other scores in Adoption Score, the benchmark is calculated by taking the average AI adoption score across organizations similar to yours (based on your region, industry, and number of users licensed for Microsoft 365). To learn more, see [Interpreting your organization's Adoption Score](adoption-score.md#interpreting-your-organizations-adoption-score)

:::image type="content" source="../../media/ai-current-chart.png" alt-text="Screenshot showing the chart for the AI adoption score." lightbox="../../media/ai-current-chart.png":::

To learn more, see [Interpreting your organization's Adoption Score](adoption-score.md#interpreting-your-organizations-adoption-score).

## Time trends

Time trend data is provided for each category score to track progress. This allows visibility of Copilot usage across various Microsoft 365 applications over different time ranges, similar to other categories. Alongside the current 28-day rolling period (RL28), insights are available for:

- 30 days (RL30)
- 90 days (RL90)
- 180 days (RL180)

:::image type="content" source="../../media/ai-time-trend.png" alt-text="Screenshot showing the dropdown of time trend options to select.":::

## View AI adoption resources

Resources are available for administrators to facilitate adoption, including:

- Copilot Prompt Gallery
- Success Kit (v2.0)
- User Enablement
- Copilot Dashboard in Viva Insights
- Microsoft Copilot Scenario

:::image type="content" source="../../media/ai-as-resources.png" alt-text="Screenshot showing the list of resources you can select for Copilot adoption.":::

## Organizational messages in AI adoption score

Organizational messages in AI adoption score enable you to drive awareness of Microsoft 365 Copilot features for licensed users that haven’t tried certain key Copilot capabilities yet. You can use organizational messages to quickly deliver actionable notifications directly in Microsoft products (including Teams and Windows), targeted to users based on their Microsoft 365 Copilot activity, all while maintaining user-level privacy.

:::image type="content" source="../../media/ai-as-org-message.png" alt-text="Screenshot showing the recommendation cards for Copilot organizational messages." lightbox="../../media/ai-as-org-message.png":::

To use organizational messages in AI adoption score, you must be assigned one of the following admin roles:

- Global administrator
- Organizational message writer

After selecting **Take action**, the following message configuration panel appears:

:::image type="content" source="../../media/ai-as-org-message-create.png" alt-text="Screenshot the pane to create an organizational message for Copilot." lightbox="../../media/ai-as-org-message-create.png":::

Administrators can select one of three message options. Messages will be sent to users who have a Copilot license assigned to them but haven’t actively used relevant Copilot features over the prior 28 days. Admins can further filter down this list by excluding certain groups. Admins can also configure the start date and end date for the message.  

To edit a message after it has already been scheduled, admins can cancel and reschedule it.

Currently, organizational messages will show up on either new Teams or Windows 11 notification center. The languages of the messages will adjust based on end-users’ preferred languages.

## How are people using Microsoft 365 Copilot?

Microsoft 365 Copilot usage insights are organized into six key areas:

- Microsoft Copilot usage frequency
- Teams meetings and chats
- Documents (Word, Excel, PowerPoint, OneNote)
- Emails
- Microsoft 365 Copilot Chat
- Agents for Copilot

These insights show how many users are engaging with various Copilot features compared to the total number of users enabled over a 28-day period.

You can use these insights to:

- Identify which Copilot features are most popular among your users
- Spot underutilized features that might benefit from more user training
- Track adoption trends across different Microsoft 365 applications over 7, 30, 90, 180 days’ time ranges

:::image type="content" source="../../media/ai-using-copilot.png" alt-text="Screenshot showing the charts for how people are using Copilot." lightbox="../../media/ai-using-copilot.png":::

>[!NOTE]
> When you select the settings to opt out specific user groups from calculating People experience insights in Adoption Score, the AI adoption category would not respect that opt out for the current release.

## Sentiment survey upload experience

In this section, you can upload Copilot survey results to have them displayed in the Microsoft Copilot Dashboard.

>[!NOTE]
> You won't be able to view the results on this page; they're only available in the Microsoft Copilot Dashboard.

Use this feature to provide your organizational leaders with a centralized location for insights on how users feel about the AI adoption they receive from Copilot.

This feature is only available for Global administrators. Users without this role can't see it in the Microsoft 365 admin center.

### Upload survey data

To access the Sentiment survey upload feature in the Microsoft 365 admin center, follow these steps:

1. In the Microsoft 365 admin center, go to **Reports** > **Adoption Score**.
1. Navigate to **AI adoption score** and select **View details**.
1. On the AI adoption score page, navigate to **Assess Copilot sentiment for your org** and select **Record survey results**.

:::image type="content" source="../../media/as-upload-survey.png" alt-text="Screenshot showing the dashboard to upload survey data for Copilot sentiment" lightbox="../../media/as-upload-survey.png":::

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

For each of these, we recommend allowing users to indicate whether or not they Strongly Disagree, Disagree, Neither Agree Nor Disagree, Agree, or Strongly Agree with the statement. You can then combine the Agree and Strongly Agree responses to compute the % of users who agreed with each statement and compare results with the Microsoft benchmarks shown in this tab.

Your user survey doesn't need to be limited to these four statements, but we recommend including them at a minimum for easy comparison with Microsoft’s benchmark results.
