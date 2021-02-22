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
description: "Learn how to access and use statistics and reports for draft collections and collections that have been committed to a review set in Advanced eDiscovery." 
---

# Collection statistics and reports in Advanced eDiscovery

After you create a draft collection, you can view statistics on the retrieved items, such as the content locations that contain the most items that matched the search criteria and the number of items returned by the search query. You can also preview a subset of the results.

When you've identified the set of documents you want to further examine, you can add the search results to a review set to collect and process.

## Statistics and reports for draft collections

This section describes the statistics that are available for draft collections. These statistics are available on the **Search statistics** tab on the flyout page of a draft collection.

### Collection estimates

This section displays a graphical summary of the estimated items returned by the collection. This indicates the number of items that match the search criteria of the collection.

![Collection estimates for a draft collection](../media/AeDCollectionEstimates.png)

- **Estimated items by locations**: The total number of estimated items returned by the collection. The specific number of items located in mailboxes and located in sites is also displayed.

- **Estimated locations with hits**: The total number of content locations that contain items returned by the collection. The specific number of mailbox and site locations is also displayed.

- **Data volume by location (in MB)**: The total size of all estimated items returned by the collection. The specific size of mailbox items and site items is also displayed.

### Condition report

This section displays statistics about the collection search query and the number of estimated items that matched different parts of the search query. You can use these statistics to analyze the number of items that match each component of search query. This can help you refine the search criteria for the collection and if necessary narrow the scope of the collection.

- **Location type**: The type of content location that the query statistics are applicable to. The value of **Exchange** indicates a mailbox location; a value of **SharePoint** indicates a site location.

- **Part**: The part of the search query the statistics are applicable to. **Primary** indicates the entire search query. **Keyword** indicates the statistics in the row are for a specific keyword. If you use a keyword list when for the search query in the collection, statistics for each component of the query are included in this table.

- **Condition**: The actual component (keyword or condition) of the search query that was run for the draft collection that returned the statistics displayed in the corresponding row.

- **Locations with hits**: The number of the content locations (specified by the **Location type** column) that contain items that match the primary or keyword query listed in the **Condition** column.

- **Items**: The number of items (from the specified content location) that match the query listed in the **Condition** column. As previously explained, if an item contains multiple instances of a keyword that is being searched for, it's only counted once in the this column.

- **Size (MB)**: The total size of all items that were found (in the specified content location) that match the search query in the **Condition** column.

### Top locations

This section displays statistics about the specific content locations with the most items returned by the collection.

- The name of the location name (the email address of mailboxes and the URL for sites).

- Location type (a mailbox or site).

- Estimated number of items in the content location returned by the collection.

- The total size of estimated items in each content location.


## Statistics and reports for committed collections

This section describes the statistics that are available after you commit a collection to a review set. These statistics (in addition to load set information) provide a historical information about content added to review sets.




### Collection contents



### Indexing


### Collection parameters

This section displays the collection information that was used to collect the items that were added to the review set. This tab displays the information about the actual collection results. You use the information on this tab and compare it to the information on the **Search statistics** tab, which are the statistics from the last time that draft collection was run. In other words, the **Collection parameters** section displays information about the actual collection results that were added to the review set. The information displayed on the **Search statistics** tab are the estimated statistics from the last time the draft collection was run before it was committed to the review set.

### Search statistics tab

The statistics displayed on the **Search statistics** tab are the same statistics from the last time that a draft collection was run. This information is preserved from the draft collection for historical reference, and can be compared to the actual collection that was committed to the review set.




## Guidelines for using collection statistics

