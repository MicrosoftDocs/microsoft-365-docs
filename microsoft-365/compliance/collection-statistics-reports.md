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

This section displays a graphical summary of the estimated items returned by the collection. This indicates the number of items that match the search criteria of the collection. This information gives you an idea about the estimated number of items returned by the collection.

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

provide a detailed report of the content ingested to the review set; this enables reporting, analysis, and a way for customers to establish a predictable, repeatable process 




### Collection contents

"This is the actual number of items that were collected and added to the review set.


- **Parent items**. The number of items returned by the collection estimate. This number would correspond to the estimated number of items returned by the draft collection.

- **Child items**. The number of child items added to the review set. Child items are attachments or other parts of a parent item. Child items include attached files, images, and email signatures. When you commit a collection to a review set, child items are extracted, indexed, and added to the review set as individual files.

- **Unique items**. The number of unique items added to the review set. Unique items are unique to the review set. This means that when these items are added to the review set, there are no duplicates of these items already in the review set. For example, all items are unique the first item that a collection added to a review set or the first collection added to a new review set, because there were no previous items in the review set.

- **Identified duplicate items**. The number of items from the collection that were not added to the review set because the same item already exists in the review set.



### Indexing

**New indexed items**. The number of items that were newly indexed before they were added to the review set. An example of a newly indexed items are child items that are extracted from a parent item then indexed before they're added to the review set. Also, items that aren't located in custodial data sources and non-custodial content locations listed on the **Data sources** tab in the case are indexed before they're added to the review. For example, newly indexed items would include items collected from from additional locations.

**Updated indexed items**. The number of partially indexed items that were successfully indexed and added to the review set. This would partially indexed items from custodial and non-custodial content locations **Data sources** tab that were successfully indexed when the collection was committed to the review set.

**Indexing errors**. The number of partially indexed items that couldn't be indexed before they were added to the review set. These items might require error remediation.

### Collection parameters

This section displays the collection information that was used to collect the items that were added to the review set. This tab displays information that is similar to the information on the **Search statistics** tab. This section provides a quick snap shot of the search query used by the collection, the content locations that were searched, and an the estimated collection results.

### Search statistics tab

The statistics displayed on the **Search statistics** tab are the same statistics from the last time that a draft collection was run. This information is preserved from the draft collection for historical reference, and can be compared to the actual collection that was committed to the review set.




## Guidelines for using collection statistics

