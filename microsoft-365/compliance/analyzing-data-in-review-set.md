---
title: "Analyze data in a review set in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: ""
---

# Analyze data in a review set in Advanced eDiscovery

When the number of collected documents is large, it can be difficult to review them all. Advanced eDiscovery provides a number of tools to analyze the documents to reduce the volume of documents to be reviewed without any loss in information, and to help you organize the documents in a coherent manner. To learn more about these capabilities, see:

- [Near duplicate detection](near-duplicates.md)

- [Email threading](email-threading.md)

- [Themes](themes.md)

To analyze data in a review set:

1. Configure analytics settings for your case. For more information, see [Configure search and analytics settings](configure-search-analytics-settings.md).

2. Open the review set you want to analyze.

3. Click **Manage review set**.

4. Click **Run analytics for the review set**.

You can check the progress of analysis on the **Jobs** tab of the case.

 After analysis is completed, you can view the analytics report, run queries within your review set on outputs of the analysis (see [Query within your review set](review-set-search.md)), and see related documents of a given document (see [Reviewing data in review set](reviewing-data-in-review-set.md)).

## Analytics report

To view an analytics report for a review set:

1. Open the review set.

2. Click **Manage review set**.

3. Click **View report**.

The report has four components from analysis:

- **Breakdown** - How many email messages, attachments, and loose documents were found in the review set.

- **Documents (excluding attachments)** - How many loose documents were pivots, unique near duplicates of a pivot, or an exact duplicate of another document.

- **Emails** - How many email messages were inclusives, inclusive copies, inclusive minuses, or none of the above.

- **Attachments** - How many email attachments were unique or duplicates of another email attachment in the review set.
