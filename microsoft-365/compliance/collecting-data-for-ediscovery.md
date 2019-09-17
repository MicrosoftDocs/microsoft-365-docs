---
title: "Collect data for a case in Advanced eDiscovery"
ms.author: esclee
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

# Collect data for a case in Advanced eDiscovery

Once you have identified custodians and data sources that are of interest for your case, it's time to identify the set of documents to delve into. You can use the Search tool in Advanced eDiscovery to identify these from custodial and non-custodial locations in Office 365.

After you run a search, you will be able to view statistics on the retrieved items such as the locations that had the most items that matched the search query. You can also preview a subset of the results. When you've identified the set of documents that want to further examine, you can add the search results to a review set to collect and process.

## Create a search

Clicking **New search** on the **Searches** tab will start a wizard that guides you through creating a search. For detailed information on how to create a search, see [Create a search to collect data](create-search-to-collect-data.md).

After a search is created, a flyout page with details is displayed. Note that the **Statistics** and **Preview** buttons are initially grayed out because the search has not completed yet. You can keep track of the progress of the search on the **Searches** tab.

## View search results and statistics

There are two components of a content search: Statistics (Estimates) and Preview. As each of these components complete, you will see the status displayed in the corresponding columns on the **Searches** tab change from from **Submitted** to **In progress** to **Completed**.

Once the search estimate is completed, click the search to display the flyout page, which will display some high-level statistics about the results of the search. At this point, the **Statistics** button will be active. You can click it to see search statistics, such as:

- Summary
- Top locations
- Queries

For more information about search statistics, see [Search statistics](search-statistics.md).

Once preview is completed, the **Preview** button will be active. Click it to preview a sampled subset of the results.

## Adding search results to a review set

When you are ready to collect and process the entire results of a search, you can do so by adding it to a review set. For details, see [Add data to a review set](add-data-to-review-set.md). 