---
title: "View keyword statistics for Content Search results"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 1/30/2017
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: 9701a024-c52e-43f0-b545-9a53478aec04
description: Learn how to use the Search Statistics feature to display and compare statistics for multiple Content Searches in Security & Compliance Center.
ms.custom: seo-marvel-apr2020
---

# View keyword statistics for Content Search results

After you create and run a Content Search, you can view statistics about the estimated search results. This includes a summary of the search results (similar to the summary of the estimated search results displayed in the details pane), the query statistics such as the number of content locations with items that match the search query, and the name of content locations that have the most matching items. You can display statistics for one or more content searches. This lets you to quickly compare the results for multiple searches and make decisions about the effectiveness of your search queries.
  
Additionally, you can configure new and existing searches to return statistics for each keyword in a search query. This lets you compare the number of results for each keyword in a query and to compare the keyword statistics from multiple searches.
  
You can also download the search statistics and keyword statistics to a CSV file. This lets you use the filtering and sorting features in Excel to compare results, and prepare reports for your search results.
  
## Get statistics for Content Searches

To display statistics for Content searches:
  
1. In the Microsoft 365 compliance center, go to **Show all** > **Content search**.

2. In the list of searches, select two or more searches, and then click **Search statistics** on the **Bulk actions** flyout page.
    
    ![Select multiple searches and then click Search statistics](../media/1195c6c3-2e00-469d-8c29-85c1c7ebe6c7.png)
  
3. On the **Search statistics** page, click one of the following links to display statistics about the selected searches. 
    
    **Summary**
    
    This page displays statistics similar to the ones displayed in the details pane on the **Content search** page. Statistics for all selected searches are displayed. Note that you can also re-run the selected searches from this page to update the statistics. 
    
    ![Summary of the statistics for the selected searches](../media/abb663eb-b3d6-4f4c-a99f-55d20b0848af.png)
  
    a.  The name of the Content Search. As previously stated, you can display and compare statistics for multiple searches.
    
    b. The type of content location that was searched. Each row displays statistics for mailboxes, sites, and public folders from the specified search.
    
    c. The number of content locations containing items that match the search query. For mailboxes, this statistic also includes the number of archive mailboxes that contain items that match the search query.
    
    d. The total number of items of all specified content locations that match the search query. Examples of item types include email messages, calendar items, and documents. If an item contains multiple instances of a keyword that is being searched for, it's only counted once in the total number of items. For example, if you're searching for words "stock" or "fraud" and an email message contains three instances of the word "stock", it's only counted once in the **Items** column. 
    
    e. The total size of all items that were found in the specified content location that match the search query. 
    
    **Queries**
    
    This page displays statistics about the search query.
    
    ![Search query statistics for the selected searches](../media/dc817526-dfb9-43d3-a14c-4c58077eb7bb.png)
  
    a. The name of the Content Search that the row contains query statistics for.
    
    b. The type of content location that the query statistics are applicable to.
    
    c. This column indicates which part of the search query the statistics are applicable to. **Primary** indicates the entire search query. If you use a keyword list when you create or edit a search query, statistics for each component of the query are included in this table. See the [Get keyword statistics for Content Searches](#get-keyword-statistics-for-content-searches) section in this article for more information. 
    
    d. This column contains the actual search query that run by the Content Search tool. Note that the tool automatically adds a few additional components to the query that you create. 

    - When you search for all content in mailboxes (by not specifying any keywords), the actual key word query is  `size>=0` so that all items are returned. 
    
     - When you search SharePoint Online and OneDrive for Business sites, the two following components are added:
    
          **NOT IsExternalContent:1** - Excludes any content from an on-premises SharePoint organization. 
    
          **NOT IsOneNotePage:1** - Excludes all OneNote files because these would be duplicates of any document that matches the search query. 

    
    e. The number of the content locations (specified by the ** Location type ** column) that contain items that match the search query listed in the **Query** column. 
    
    f. The number of items (from the specified content location) that match the search query listed in the **Query** column. As previously explained, if an item contains multiple instances of a keyword that is being searched for, it's only counted once in the this column. 
    
    g. The total size of all items that were found (in the specified content location) that match the search query in the **Query** column. 
    
    **Top locations**
    
    This page displays statistics about the number of items that match the search query in each content location that was searched. The top 1,000 locations are displayed. If you view statistics for multiple searches, the top 1,000 locations for each search are displayed. Note that a content location isn't included on this page if it doesn't contain any items that match the search query.
    
    ![Statistics about the number of items found in the content locations that were searched](../media/35a820b0-85d9-45d1-9a0c-c74bec803e67.png)
  
    a. The name of the content location.
    
    b. The type of content location that the location statistics are applicable to.
    
    c. There are columns for each search that you're displaying statistics for. This column shows the number (and total size) of items that match the search query in each content location. Note that when you're displaying statistics for multiple searches, the "NA" in this column indicates that the content location wasn't included in that search. 

## Get keyword statistics for Content Searches

As previous explained, the **Queries** page shows the search query and the number (and size) of items that match the query. If you use a keyword list when you create or edit a search query, you can get enhanced statistics that show how many items match each keyword or keyword phrase. This can help you quickly identify which parts of the query are the most (and least) effective. For example, if a keyword returns a large number of items, you might choose to refine the keyword query to narrow the search results. You can set up a keyword list when you create or edit a Content Search. 

To create a keyword list and view keyword statistics for a Content Search:
  
1. In the Microsoft 365 compliance center, go to **Show all** > **Content search**.
    
2. In the list of content searches, click and a search, and then click **Edit** ![Edit icon](../media/ebd260e4-3556-4fb0-b0bb-cc489773042c.gif).
    
3. Click **Query** and then do the following things: 
    
    ![Click the Show keyword list checkbox and type a keyword in each row](../media/73ef46dd-3d5c-415d-b5e7-c3559caaafe2.png)
  
    a. Click the **Show keyword list** check box. 
    
    b. Type a keyword or keyword phase in a row in the keywords table. For example, type **budget** in the first row and then type **security** in the second row. 
    
4. After adding the keywords that you want to search and get statistics for, click **Search** to run the revised search. 
    
5. When the search is completed, select it in the list of searches, and then click **Search statistics** ![Search Statistics button](../media/9bf56d43-25bf-4f53-a4be-f4d55102310c.png). You can also display and compare keyword statistics for multiple searches.
    
6. On the **Search statistics** page, click **Query** to display the keyword statistics for the selected searches. 
    
    ![The statistics for each keyword for the selected searches are displayed](../media/e7910fa9-af93-4df9-92d0-e1e3e089e14f.png)
  
    As shown in the previous screenshot, the statistics for each keyword are displayed; this includes: 
    
    - The keyword statistics for each type of content location included in the search.
    
    - The actual search query for each keyword, which includes any conditions from the search query. 
    
    - The complete search query (identified as **Primary** in the **Part** column) and the statistics for the complete query. Note these are the same statistics displayed on the **Summary** page. 

> [!NOTE]
> To help reduce issues caused by large keyword lists, you're now limited to a maximum of 20 rows in the keyword list of a search query.
