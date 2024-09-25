---
title: "AI assistance category in Adoption Score"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 11/27/2023
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

With AI rapidly entering the day-to-day experience of people in your organization, you'll see a new People Experiences category called AI assistance, set to roll out in the coming weeks.

First, it offers a score, on a 100-point scale, to quickly assess how well people in your organization are adopting Microsoft 365 Copilot.

You can dive deeper into what makes up your AI assistance score by looking at the specific features and activities that drive impact, like how well your organization is using Copilot to summarize and create content in your organization, including Teams meetings, Chat, email in Outlook, documents in Word or PowerPoint, and more.

## Prerequisites

To get started with Copilot Insights, people in your organization need to be licensed for:

- Microsoft Copilot

After people have been active in Copilot at least once in the last 28 days, you'll start to see the insights.

:::image type="content" source="../../media/adoption-score-ai-view.png" alt-text="Screenshot showing the Adoption Sore dashboard with AI assistance category." lightbox="../../media/adoption-score-ai-view.png":::

## Scoring framework

The AI assistance score for your organization measures at an organizational level whether users are consistently using Copilot capabilities across apps in Microsoft 365 within the last 28 days.

Scores aren't provided at the individual user level.

## Overall score

The overall score is a measure of how well each individual user (or tenant) has used Copilot's features for summarization and creation of documents, emails, and presentations. This score is calculated in RL28 day time frame, and it takes into account the user's activity across different insights. The main goal of this score is to encourage users to follow Copilot's best practices, which will ultimately lead to a higher score.

Further, a user score is calculated with the usage intensity of individual user and the possible utilization threshold (currently 12 days) of Copilot activity in mind. The tenant AI assistance scores are created by the combination of user scores of each tenant and the number of individuals enabled to use Copilot (for the applications considered).

:::image type="content" source="../../media/ai-assistance-dashboard.png" alt-text="Screenshot showing the AI assistance category dashboard in Adoption Score." lightbox="../../media/ai-assistance-dashboard.png":::

## What makes up my score

There are two sections of insights: Summarize and Create.

The Summarize section captures all the information and data summarization across meetings and messages, sparing users the labor of sorting it out from notes and complex chat or email threads.

The Create section captures the user actions to get past the roadblock of staring at a blank page by jump-starting their creative process and helping to streamline the tasks of researching, writing, and editing across apps in Microsoft 365 with the help of Copilot capabilities.

Each insight captures the number of Copilot-enabled users in your organization performing these actions at least once out of the total number who are enabled to perform in the last 28 days. You can find more details on insights within the following sections.

### Summarize

- **Summarize a Teams meeting:** This represents the number of users who summarize meetings using Copilot in Microsoft Teams.
- **Summarize a Teams conversation**: This represents the number of users who summarize Teams conversations using Copilot in Microsoft Teams.
- **Summarize an email thread:** This represents the number of users who summarize email threads using Copilot in Outlook.
- **Summarize a Word document:** This represents the number of users who summarize Word documents using Copilot in Microsoft Word.

### Create

- **Draft a Word document**: This represents the number of users who initiate a first draft of a document on Microsoft Word using Copilot.
- **Create a presentation**: This represents the number of users who initiate a first draft of a presentation on Microsoft PowerPoint using Copilot.
- **Generate an email draft**: This represents the number of users who initiate a first draft of an email on Microsoft Outlook using Copilot.
- **Rewrite a Word document**: This represents the number of users who modify content on Microsoft Word using Copilot.

>[!NOTE]
> When you select the settings to opt out specific user groups from calculating People experience insights in Adoption Score, the AI assistance category would not be respecting that opt out for the current release. This will be changed in the future releases.

## Sentiment survey upload experience

In this section, you can upload Copilot survey results to have them displayed in the [Microsoft Copilot Dashboard](https://aka.ms/learn-copilot-insights).

>[!NOTE]
> You won't be able to view the results on this page; they are only available in the Microsoft Copilot Dashboard.

Use this feature to provide your organizational leaders with a centralized location for insights on how users feel about the AI assistance they receive from Copilot.

This feature is only available for Global administrators. Users without this role cannot see it in the Microsoft 365 admin center.

### Upload survey data

To access the Sentiment survey upload feature in the Microsoft 365 admin center, follow these steps:

1. In the Microsoft 365 admin center, go to **Reports** > **Adoption Score**.
2. Navigate to AI assistance and select **View details**.
3. On the AI assistance page, navigate to **Assess Copilot sentiment for your org** and select **Record survey results**.

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
