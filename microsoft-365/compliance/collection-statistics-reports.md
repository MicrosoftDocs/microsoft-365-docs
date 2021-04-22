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
ms.topic: article
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

- **Items**: The number of items (from the specified content location) that match the query listed in the **Condition** column. As previously explained, if an item contains multiple instances of a keyword that is being searched for, it's only counted once in this column.

- **Size (MB)**: The total size of all items that were found (in the specified content location) that match the search query in the **Condition** column.

### Top locations

This section displays statistics about the specific content locations with the most items returned by the collection.

- The name of the location name (the email address of mailboxes and the URL for sites).

- Location type (a mailbox or site).

- Estimated number of items in the content location returned by the collection.

- The total size of estimated items in each content location.

## Statistics and reports for committed collections

This section describes the statistics that are available after you commit a collection to a review set, including the actual number of items added to the review set. These statistics (in addition to load set information) provide historical information about content added to a case.

After you commit a collection to a review set, the following tabs are displayed on the flyout page of the committed connection. Each of these tabs contains different types of information about the collection.

![Tabs on flyout page of committed collection](../media/CommittedCollectionFlyoutPage.png)

### Collection contents

This section of the **Summary** tab contains statistics and other information about the items that were collected from the data sources in the collection and added to the review set.

- **Total extracted items**. The total number of items added to the review set. This number indicates the sum of parent items and child items added to the review set.

  > [!TIP]
  > Hover the cursor over the parent or child item bars to display the total number of parent or child items.

- **Parent items**. The number of items returned by the collection that was used to collect the items that were added to the review set. This number corresponds  to (and is equal to) the estimated number of items that is displayed in the **Collection parameters** section. The number of parent items he collection information that was used to collect the items that were added to the review set.
 
   A parent item might contain multiple child items. For example, an email message is a parent item if it contains an attached file or has a cloud attachment. In this case, the attached file or the target of the cloud attachment are considered child items. When you commit a collection, parent items and any corresponding child items are added to the review set as individual items or files.

- **Child items**. The number of child items added to the review set. Child items are attachments or other parts of a parent item. Child items include attached files, cloud attachments, images, and email signatures. When you commit a collection to a review set, child items are extracted, indexed, and added to the review set as individual files.

- **Unique items**. The number of unique items added to the review set. Unique items are unique to the review set. All items are unique when the first collection is added to a new review set because there were no previous items in the review set.

- **Identified duplicate items**. The number of items from the collection that were not added to the review set because the same item already exists in the review set. Statistics about duplicate items can help explain the differences between the number of estimated items from a draft collection and the actual number of items added to the review set.

### Indexing

The **Indexing** section on the **Summary** tab of a committed review set contains indexing information about the items added to the review set.

**New indexed items**. The number of items that were newly indexed before they were added to the review set. An example of a newly indexed item are child items that are extracted from a parent item then indexed before they're added to the review set. Also, items that aren't located in custodial data sources and non-custodial content locations listed on the **Data sources** tab in the case are indexed before they're added to the review. For example, newly indexed items would include items collected from additional locations.

**Updated indexed items**. The number of partially indexed items that were successfully indexed and added to the review set. This would partially indexed items from custodial and non-custodial content locations **Data sources** tab that were successfully indexed when the collection was committed to the review set.

**Indexing errors**. The number of partially indexed items that couldn't be indexed before they were added to the review set. These items might require error remediation.

### Collection parameters

This section displays the collection information that was used to collect the items that were added to the review set. This tab displays information that is similar to the information on the **Search statistics** tab. This section provides a quick snap shot of the search query used by the collection, the content locations that were searched, and the estimated collection results. As previously explained, the number of estimated items in this section would be equal to the number of parent items shown in the **Collection contents** section.

### Search statistics tab

The statistics displayed on the **Search statistics** tab are the same statistics from the last time that a draft collection was run. This includes collection estimates, condition report, and top locations. This information is preserved from the draft collection for historical reference, and can be compared to the actual collection that was committed to the review set.

## Differences between draft collection estimates and the actual committed collection

When you run a draft collection, an estimate of the number of items (and their total size) that meet the collection criteria is displayed on the **Summary** tab and in **Collection estimates** section of the **Search statistics** tab. After you commit a draft collection to a review set, the actual number of items (and their total size) added the review set are often different from the estimates. In most cases, more items are added to the review set than were estimated from the draft collection. The following list describes the most common reasons for these differences and tips for identifying them:

- **Child items**. Child items that are extracted from their parent items and added as individual files. The number of child items may significantly increase the number of items that are actually added to the review set. In general, the number of parent items identified in the **Collection contents** section on the **Summary** tab of a committed collection should be equal to the number of estimated items from the draft collection.

- **Duplicate items**. Items from the draft collection that have already been added to the review set in a previous collection won't be added. As previously explained, the number of duplicate items in the collection is displayed in the **Collection contents** section on the **Summary** tab.

- **Collection configuration options**. When you commit a draft collection to a review set, you have to option to include conversation threads, cloud attachments, and document versions. Any of these items that are added to the review set aren't included in the estimates of the draft collection. They are identified and collected only when you commit the collection. Selecting these options will most likely increase the number of items added to the review set. 

    For example, multiple versions of SharePoint documents aren't included in the estimate for the draft collection. But if you select the option to include all document versions when you export the search results, which will increase the actual number (and total size) of items added to the review set. 

    For more information about these options, see [Commit a draft collection to a review set](commit-draft-collection.md#commit-a-draft-collection-to-a-review-set-in-advanced-ediscovery). 

Here are other reasons why the estimated results from a draft collection can be different that the actual committed results.

- **The way results are estimated for draft collections**. An estimate of the search results returned by a draft collection is just that, an estimate (and not an actual count) of the items that meet the collection query criteria. To compile the estimate of email items, a list of the message IDs that meet the search criteria is requested from the Exchange database. But when you commit the collection to a review set, the collection is rerun and the actual messages are retrieved from the Exchange database. So differences might result because of how the estimated number of items and the actual number of items are determined.

- **Changes that happen between the time when estimating and committing draft collections**. When you commit a draft collection to a review set, the search is rerun to collect that most recent items in the search index that meet the search criteria. It's possible that additional items were created, sent, or deleted that meet the search criteria in the time between when the draft collection was last run and when the draft collection is committed to a review set. It's also possible that items that were in the search index when the draft collection results were estimated are no longer there because they were purged from a data source before committing the collection. One way to mitigate this issue is to specify a date range for a collection. Another way is to place a hold on content locations so that items are preserved and can't be purged.

- **Unindexed items**. If the draft collection included searching all Exchange mailboxes or all SharePoint sites, then only unindexed items from content locations that contain items that match the collection criteria will be added to the review set. In other words, if no results are found in a mailbox or site, then any unindexed items in that mailbox or site won't be added to the review set. However, unindexed items from all content locations (even those that don't contain items that match the collection query) will be included in the estimated collection results.

    Alternatively, if the draft collection included specific content locations (which means that specific mailboxes or sites where specified on the **Additional locations** page in the draft collection wizard), then unindexed items (that aren't excluded by the collection criteria) from the content locations specified in the search will be exported. In this case, the estimated number of unindexed items and the number of unindexed items that are added to the review set should be the same.
