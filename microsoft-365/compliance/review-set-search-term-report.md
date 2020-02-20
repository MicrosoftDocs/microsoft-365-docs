---
title: "Generate search term report for a review set"
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
ROBOTS: NOINDEX, NOFOLLOW 

description: ""
---
# Generate search term report for a review set

In eDiscovery, one of the most frequently used conditions for querying documents is by using keyword search terms. By identifying documents that contain the specific keywords (also referred to as *terms*) that are important to a case, reviewers can begin to get a high-level understanding of what they are facing. In Advanced eDiscovery in Microsoft 365, you can do precisely this by generating search term reports on saved queries within a review set.

## Step 1: Create a saved query in the review set

To generate a meaningful search term report, create a saved query that defines the set of documents in the review set that you want to generate a search term report for. For example, you can use a date range or the actual set of search terms (by using the Keywords condition card) to create the query. To learn more about review set queries, see [Query the data in a review set](review-set-search.md).

## Step 2: Generate a search term report

There are two different ways to generate a search term report: through the context menu of the saved query you created in Step 1, or through the search term report management console.

- To use the context menu, open the context menu of the saved query you created in Step 1, and click **Generate search term report**.

- To use the management console, go to **Manage review set > View search term reports**, click **New**, and then select the saved query you created in Step 1.

Then, enter the terms you would like to report on, separated by newline; if the saved query that you created in Step 1 used keyword condition card, the flyout page will be pre-populated with the terms from the first keyword condition card used in the saved query.

Then, select up to three pivots to report on, and click on **Generate**, which will start the search term report generation job.

### What is a pivot?

Pivots are how the report will be organized. Consider the following example.

- The saved query retrieves 10 documents: doc1 through doc10.

- doc1, doc2, doc3, doc4, doc5, doc6, and doc7 contain the term "eDiscovery".

- doc6, doc7, doc8, doc9, and doc10 contain the term "Investigation".

- doc1, doc3, doc5, doc7, doc9 are from custodian A.

- doc2, doc4, doc6, doc8, doc10 are from custodian B.

In this case, if you were to generate a search term report on the terms "eDiscovery" and "Investigation" and pivot on custodians, the search term report would be organized as follows:

- "eDiscovery" - custodian A: 4 documents

- "eDiscovery" - custodian B: 3 documents

- "Investigation" - custodian A: 2 documents

- "Investigation" - custodian B: 3 documents

## Step 3: Download report

In the search term management console, you can track the status of a previously-created search term report job. Once the job completes, you can click on the row for the search term report and click "Download", which will download the search term report in a CSV format. There will be one row per (search term, pivots) tuple, and each row will contain the following information:

- How many documents were retrieved?

- How many times was the search term found across the documents?

- What is the total volume of retrieved documents?

- How many families were retrieved?

- What is the total document count of those families, including the documents that did not have the search term?

- What is the total volume of the above?
