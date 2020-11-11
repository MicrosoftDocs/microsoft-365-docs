---
title: "Collect data for a case in Advanced eDiscovery"
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

description: Learn how to identify a document set for review in an investigation using the Search tool in Advanced eDiscovery.
ms.custom: seo-marvel-2020
---

# Collect data for a case in Advanced eDiscovery

Once you've identified custodians and data sources that are of interest for your case, it's time to identify the set of documents to delve into. You can use the Search tool in Advanced eDiscovery to identify relevant documents from custodial and non-custodial locations in Microsoft 365.

After you run a search, you can view statistics on the retrieved items, such as the locations that had the most items that matched the search query. You can also preview a subset of the results. When you've identified the set of documents you want to further examine, you can add the search results to a review set to collect and process.

## Create a search

Selecting **New search** on the **Searches** tab will start a wizard that guides you through creating a search. For detailed information on how to create a search, see [Create a search to collect data](create-search-to-collect-data.md).

After a search is created, a flyout page with details is displayed. The **Statistics** and **Preview** buttons are initially unavailable because the search hasn't completed yet. You can keep track of the progress of the search on the **Searches** tab.

## View search results and statistics

There are two components of a content search: Statistics (Estimates) and Preview. As each of these components complete, you'll see the status displayed in the corresponding columns on the **Searches** tab change from **Submitted** to **In progress** to **Completed**.

Once the search estimate is completed, select the search to display the flyout page, which will display some high-level statistics about the results of the search. At this point, the **Statistics** button will be active. You can select it to see search statistics, such as:

- Summary
- Top locations
- Queries

For more information about search statistics, see [Search statistics](search-statistics.md).

Once preview is completed, the **Preview** button will be active. Select it to preview a sampled subset of the results.

## Add search results to a review set

When you're ready to collect and process the entire results of a search, you can do so by adding it to a review set. For details, see [Add data to a review set](add-data-to-review-set.md).

## Add non-Microsoft 365 data to a review set

As part of the collection process for a case, you can also add non-Office 365 data to a review set and review and analyze together with the Office 365 data that you collected by using the search tool. When you add non-Office 365, you have to associate it with a specific custodian in the case. For more information, see [Load non-Microsoft 365 data into a review set](load-non-Office-365-data-into-a-review-set.md).
