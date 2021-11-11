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
ms.localizationpriority: medium
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

3. Click **Analytics** > **Run document & email analytics**.

   ![Select Run document & email analytics from the Analytics dropdown list](..\media\RunAnalytics1.png)

You can check the progress of analysis on the **Jobs** tab of the case.

 After analysis is completed, you can view the analytics report, run queries within your review set on outputs of the analysis (see [Query within your review set](review-set-search.md)), and see related documents of a given document (see [Reviewing data in review set](reviewing-data-in-review-set.md)).

## Using the For Review filter query

After running analytics for the review set, you can use an automatically generated filter query, named *For Review*, that filters the review to only those items that are inclusive representatives of review set items. That means that only unique and representative items are displayed in the review set after you apply the For Review filter. This means that duplicate items are filtered out, leaving your with a representative set of items that you can review, tag, and export.

To apply the For Review filter query to a review set, select the **Saved filter queries** dropdown list, and then select **\[AutoGen] For Review**.

![Select For Review from the Saved filter queries dropdown list](..\media\ForReviewFilterQuery1.png)

Emails - only include emails that are InclusiveMinus and Inclusive. Link to the definitions. 
Inclusive: An Inclusive email is the final email message in an email thread and contains all the previous content of that email thread.

Inclusive minus: An email message is designated as Inclusive minus if there are one or more attachments associated with the specific message within the email thread. A reviewer can use the Inclusive minus value to determine which specific email message within the thread has associated attachments.
Attachments - filter out duplicate attachments and include only unique attachments in the the email set
Documents - filter out duplicate attachments and include only unique documents in this review set
Conversations - Include all Teams conversations in the review set. 

The generated query is the following: 

```text
(((FileClass="Email") AND (InclusiveType="InclusiveMinus" OR InclusiveType="Inclusive")) OR ((FileClass="Attachment") AND (UniqueInEmailSet="true")) OR ((FileClass="Document") AND (MarkAsRepresentative="Unique")) OR (FileClass="Conversations")) 
```

> [!NOTE]
> For review sets created in Large cases during Public Preview (before Nov 8th), ... 
- 


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
