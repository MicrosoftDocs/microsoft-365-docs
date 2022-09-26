---
title: "Analyze data in a review set in eDiscovery (Premium)"
description: Learn about the tools available to organize document sets when analyzing an Microsoft Purview eDiscovery (Premium) case.
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-mar2020
---

# Analyze data in a review set in eDiscovery (Premium)

When the number of collected documents is large, it can be difficult to review them all. Microsoft Purview eDiscovery (Premium) provides a number of tools to analyze the documents to reduce the volume of documents to be reviewed without any loss in information, and to help you organize the documents in a coherent manner. To learn more about these capabilities, see:

- [Near duplicate detection](near-duplicate-detection-in-advanced-ediscovery.md)

- [Email threading](email-threading-in-advanced-ediscovery.md)

- [Themes](themes-in-advanced-ediscovery.md)

## Run analytics for a review set

To analyze data in a review set:

1. Configure analytics settings for your case. For more information, see [Configure search and analytics settings](configure-search-and-analytics-settings-in-advanced-ediscovery.md).

2. Open the review set you want to analyze.

3. Click **Analytics** > **Run document & email analytics**.

   ![Select Run document & email analytics from the Analytics dropdown list](..\media\RunAnalytics1.png)

You can check the progress of analysis on the **Jobs** tab of the case.

 After analysis is completed, you can view the analytics report, run queries within your review set on outputs of the analysis (see [Query within your review set](review-set-search.md), and see related documents of a given document (see [Reviewing data in review set](reviewing-data-in-review-set.md).

## Using the For Review filter query

After running analytics for the review set, you can use an automatically generated filter query (called *For Review*) that filters your review to exclude immaterial, duplicate, or non-inclusive items. This leaves you with only the items that are representative, unique, and inclusive in the review set.

To apply the **For Review** filter query to a review set, select the **Saved filter queries** dropdown list, and then select **\[AutoGen] For Review**.

![Select For Review from the Saved filter queries dropdown list](..\media\ForReviewFilterQuery1.png)

Here's the syntax for the **For Review** filter query:

`(((FileClass="Email") AND (InclusiveType="InclusiveMinus" OR InclusiveType="Inclusive")) OR ((FileClass="Attachment") AND (UniqueInEmailSet="true")) OR ((FileClass="Document") AND (MarkAsRepresentative="Unique")) OR (FileClass="Conversations"))`

The following list describes the result of the filter query in terms of what content is displayed after you apply it to the review set.

- **Email**. Displays items that are marked as **Inclusive** or **InclusiveMinus**. An inclusive item is the final message in an email thread. It contains all previous content in the email thread. An inclusive minus it contains one or more attachments associated with the specific message in the email thread. A reviewer can use the inclusive minus value to determine which specific messages in the email thread have associated attachments.

- **Attachments**. Filters out duplicate attachments in the same Email Set. Only attachments that are unique in an email thread are displayed.

- **Documents and other**. Filters out duplicate documents. Only documents that are unique in the review set are displayed.

- **Teams conversations**. All Teams (and Yammer) conversations in the review set are displayed.

For more information about inclusive types and document uniqueness, see [Email threading in eDiscovery (Premium)](email-threading-in-advanced-ediscovery.md).

> [!NOTE]
> During the public preview of [the new case format](advanced-ediscovery-new-case-format.md) in eDiscovery (Premium), the **For Review** filter query did not return Teams or Yammer conversations for review sets (in cases that use the large case format) created before November 4, 2021. This issue has been resolved. That means if you reapply the **For Review** query to a review set in a case that uses the large case format, more items that match the filter query may be displayed because all Teams or Yammer conversations are included.

## Analytics report

To view the analytics report for a review set:

1. Open the review set.

2. Click **Analytics** > **Show reports**.

The **Analytics** report has seven components from the analysis:

- **Target population:** The number of email messages, attachments, and loose documents found in the review set.

- **Documents (excluding attachments):** The number of loose documents that are pivots, unique near duplicates of a pivot, or an exact duplicate of another document.

- **Emails:** The number of email messages that are marked as inclusive, inclusive copy, inclusive minus, or none of the above.

- **Attachments:** The number of email attachments that are unique or duplicates of another email attachment in the review set.

- **Number documents by file type:** The number of files, identified by file extension.

- **Documents by source:** A summary of content by its original data source.

- **Documents aggregated by process:** A summary of content by review set processes. 
