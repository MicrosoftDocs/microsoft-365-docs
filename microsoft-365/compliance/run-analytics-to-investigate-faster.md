---
title: "Run analytics to investigate faster"
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

description: Learn how to use analytical tools like near duplicate detection, email threading, and themes to speed up your investigations.
ms.custom: seo-marvel-mar2020
---

# Run analytics to investigate faster

When an evidence collection is large, it can be difficult to review them all. A set of evidence often includes multiple copies of the same or similar email messages or documents. Data Investigations (preview) provides a number of analytics tools that can help you reduce the volume of documents that need to be reviewed without any loss in information. To learn more about these capabilities, see:

- [Near duplicate detection](near-duplicates.md)

- [Email threading](email-threading.md)

- [Themes](themes.md)

To analyze data in an evidence set:

1. Configure the analytics settings for your investigation. For more information, see [Configure search and analytics settings](configure-search-analytics-settings.md).

2. Open the evidence set.

3. Click **Manage evidence**.

4. Under **Analytics**, click **Analyze**.

You can check the progress of analysis on the **Jobs** tab in your investigation. The job type that's triggered is named **Running analytics**.

 After analysis is completed, you can see a list of exact duplicates or near-duplicates of the document that you're reviewing located in the panel on the right. To select all duplicates of the document you're viewing, you can easily do so using this panel. To learn more about other features on this panel, see [Review data in evidence](review-data-in-evidence.md). 

You can also run additional queries within your evidence using the outputs of the analysis such as themes. For more information, see [Query the data in evidence](evidence-query.md).

## Analytics report

To view an analytics report for your evidence:

1. Open the evidence set.

2. Click **Manage evidence**.

3. Under **Analytics**, click **View report**.

The report has four components from analysis:

- **Breakdown** - The number of raw emails, attachments, and documents found in the evidence set.

- **Emails** - The number of eamil messages that are inclusives, inclusive minuses, inclusive copies, or none of the above.
   - Inclusives: The last message in the email thread that contains all previous history and requires review.
   - Inclusive minuses: The message in the thread that contains one or more different attachments that requires review.
   - Inclusive copies: The message that is a copy of another inclusive or inclusive minus message (subject and body).

- **Attachments** - The number of email attachments that are unique or duplicates of a different email attachment within the same evidence same.

- **Documents (excluding email attachments)** - The number of unique documents that require review, for example, the most representative document of the near-duplicate set or an exact duplicate of another document).
