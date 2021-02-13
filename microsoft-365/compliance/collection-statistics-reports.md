---
title: "Collection statistics and reports"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
ms.reviewer: nickrob
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
description: "" 
---

# Collection statistics and reports in Advanced eDiscovery

After you create a draft collection, you can view statistics on the retrieved items, such as the content locations that contain the most items that matched the search criteria and the number of items returned by the search query. You can also preview a subset of the results.

When you've identified the set of documents you want to further examine, you can add the search results to a review set to collect and process.

## Statistics and reports for draft collections

This section describes the statistics that are available for draft collections. 

### Collection estimates

This section displays a graphical summary of the estimated items returned by the collection. In other words, the number of items that match the search criteria of the collection.

Estimated items by locations: The total number of estimated items returned by the collection. The specific number of items located in mailboxes and located in sites is also displayed.

Estimated locations with hits: The total number of content locations that contain items returned by the collection. The specific number of mailbox locations and site locations is also displayed.

Data volume by location (in MB): The total size of all estimated items returned by the collection. The specific size of mailbox items and site items is also displayed.

### Condition report

This section displays statistics about the search query and the number of estimated items that matched different parts of the search query.

    
**Location type**: The type of content location that the query statistics are applicable to.
    
**Part**: The part of the search query the statistics are applicable to. **Primary** indicates the entire search query. **Keyword** indicates that the statistics in the row are for a specific keyword. If you use a keyword list when you create or edit a search query, statistics for each component of the query are included in this table. See the [Get keyword statistics for Content Searches](#get-keyword-statistics-for-content-searches) section in this article for more information. 

**Condition**: 
    
This column contains the actual search query that run by the Content Search tool. Note that the tool automatically adds a few additional components to the query that you create. 

    - When you search for all content in mailboxes (by not specifying any keywords), the actual key word query is  `size>=0` so that all items are returned. 
    
     - When you search SharePoint Online and OneDrive for Business sites, the two following components are added:
    
          **NOT IsExternalContent:1** - Excludes any content from an on-premises SharePoint organization. 
    
          **NOT IsOneNotePage:1** - Excludes all OneNote files because these would be duplicates of any document that matches the search query. 


**Locations with hits**: The number of the content locations (specified by the ** Location type ** column) that contain items that match the search query listed in the **Condition** column. 

**Items**: The number of items (from the specified content location) that match the search query listed in the **Query** column. As previously explained, if an item contains multiple instances of a keyword that is being searched for, it's only counted once in the this column. 

**Size (MB)**: The total size of all items that were found (in the specified content location) that match the search query in the **Query** column.



### Top locations

This section displays statistics about the individual content locations with the most items returned by the collection. For each location, you will see:

- The name of the location name (the email address of mailboxes and the URL for sites)

- Location type (an Exchange mailbox or a SharePoint site)

- Estimated number of items returned by the collection

- The total size of all estimated items in each content location





## Statistics and reports for committed collections

This section describes the statistics that are available after you commit a collection to a review set.




### Collection contents


### Indexing


### Collection parameters







## Guidelines for using statistics

