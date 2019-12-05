---
title: "Build search queries"
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

description: "Use keywords and conditions to narrow the scope of the search when searching for data using Advanced eDiscovery in Microsoft 365."
---

# Build search queries

When building search queries, you can use keywords to find specific content and conditions to narrow the scope of the search to return items that are most relevant to your legal investigation.

![Use keywords and conditions to narrow the results of a search](media/SearchQueryBox.png)

## Keyword searches

Type a keyword query in the **Keywords** box in the search query. You can specify keywords, email message properties, such as sent and received dates, or document properties, such as file names or the date that a document was last changed. You can use more complex queries that use a Boolean operator, such as **AND**, **OR**, **NOT**, and **NEAR**. You can also search for sensitive information (such as social security numbers) in documents in SharePoint and OneDrive (not in email messages), or search for documents that have been shared externally. If you leave the **Keywords** box empty, all content located in the specified content locations is in the search results.
    
Alternatively, you can select the **Show keyword list** check box and the type a keyword or keyword phrase in each row. If you do this, the keywords in each row are connected by a logical operator (which is represented as *c:s* in the search query syntax) that is similar in functionality to the **OR** operator in the search query that's created. This means items that contain any keyword in any row are in the search results.

![Use the keyword list to get statistics on each keyword in the query](media/KeywordListSearch.png)

Why use the keyword list? You can get statistics that show how many items match each keyword in the keyword list. This can help you quickly identify the keywords that are the most (and least) effective. You can also use a keyword phrase (surrounded by parentheses) in a row in the keywords list. For more information about search statistics, see [Search statistics](search-statistics.md).

> [!NOTE]
> To help reduce issues caused by large keyword lists, you're limited to a maximum of 20 rows in the keyword list.

## Conditions
    
You can add search conditions to narrow the scope of a search and return a more refined set of results. Each condition adds a clause to the search query that is created and run when you start the search. A condition is logically connected to the keyword query specified in the keyword box by a logical operator (which is represented as *c:c* in the search query syntax) that is similar in functionality to the **AND** operator. That means that items have to satisfy both the keyword query and one or more conditions to be included in the search results. This is how conditions help to narrow your results. For a list and description of conditions that you can use in a search query, see the "Search conditions" section in [Keyword queries and search conditions](keyword-queries-and-search-conditions.md#search-conditions).
