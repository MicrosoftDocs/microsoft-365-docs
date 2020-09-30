---
title: "Search statistics in Advance eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: esclee
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
description: "Validate your search results by viewing the statistics that are generated after you run a collection search in Advanced eDiscovery."
---

# Search statistics in Advanced eDiscovery

One way you can validate your search results is to look at the statistics around your results to make sure they align with your expectations. When a search completes, high-level statistics are shown on the search details flyout:

- Number and volume of items retrieved by the search

- Number and volume of partially indexed or unindexed items that were found in the search locations

- Number of mailboxes and locations searched.
In order to view more detailed statistics, click on "Statistics" from the search details flyout.

## Summary view

In the Summary view, you can see the search results broken down by location type (e.g. Exchange). For each location type, you can see:

- Number of locations that had items that matched the search conditions

- Number of items from these locations that matched the search conditions

- Total volume of items that matched the search conditions.

## Top locations view

In the Top locations view, you see the individual locations with the most matches. For each location, you will see:

- Location name (e.g. SharePoint URL)

- Location type

- Number of items that matched the search conditions

- Total volume of items that matched the search conditions.

## Queries view

If you have used (c:s) keyword or keyword rows in your query, then you can see the breakdown of your query in Queries view per location type. For each location type, you will see:

- Part: this column will either have the word "Primary" or "Keyword". "Primary" means that the row presents statistics on the entire query, whereas "Keyword" means one of the query components.

- Query: the actual query component the row refers to. If Part is "Primary", this will be the entire query; if Part was "Keyword", you will see one of the query components here.
  
  - When you search all contentin mailboxes (by not specifying any keywords), the actual query is (size >= 0) so that all items are returned
  
  - When you search SharePoint Online and OneDrive for Business sites, the two following components are added:
    
    - NOT IsExternalContent:1 - excludes any content from an on-premises SharePoint organization
    
    - NOT isOneNotePage: 1 - excludes all OneNote files because these would be duplicates of any document that matches the search query.

- Number of locations that had items that matched the search conditions.

- Number of items from these locations that matched the search conditions.

- Total volume of items that matched the search conditions.
