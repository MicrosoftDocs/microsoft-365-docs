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

description: Learn about the tools available to organize document sets when analyzing an Advanced eDiscovery case.
ms.custom: seo-marvel-mar2020
---

# Analyze data in a review set in Advanced eDiscovery

When the number of collected documents is large, it can be difficult to review them all. Advanced eDiscovery provides a number of tools to analyze the documents to reduce the volume of documents to be reviewed without any loss in information, and to help you organize the documents in a coherent manner. To learn more about these capabilities, see:

- [Near duplicate detection](near-duplicate-detection-in-advanced-ediscovery.md)

- [Email threading](email-threading-in-advanced-ediscovery.md)

- [Themes](themes-in-advanced-ediscovery.md)

To analyze data in a review set:

1. Configure analytics settings for your case. For more information, see [Configure search and analytics settings](configure-search-and-analytics-settings-in-advanced-ediscovery.md).

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

The report has seven components from analysis:

- **Target population:** The number of email messages, attachments, and loose documents found in the review set.

- **Documents (excluding attachments):** The number of loose documents that are pivots, unique near duplicates of a pivot, or an exact duplicate of another document.

- **Emails:** The number of email messages that are inclusives, inclusive copies, inclusive minuses, or none of the above.

- **Attachments:** The number of email attachments that are unique or duplicates of another email attachment in the review set.

- **Number of files by type:** The number of files, identified by file extension.

- **Documents by source:** A summary of content by its original data source.

- **Documents aggregated by process:** A summary of content by review set processes. 
