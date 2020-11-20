---
title: "Limits for Content Search in the Security & Compliance Center"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
ms.assetid: 78fe3147-1979-4c41-83bb-aeccf244368d
description: "Learn about the limits in effect for the Content Search feature in the Security & Compliance Center in Office 365, such as the maximum number of simultaneous searches."
---

# Limits for Content Search in the Security & Compliance Center

> [!NOTE]
> The limits in this topic are different from the current limits for In-Place eDiscovery in Exchange Online and for the eDiscovery Center in SharePoint Online.
  
Various limits are applied to the Content Search feature in the Security & Compliance Center. This includes searches run on the **Content search** page and searches that are associated with an eDiscovery case. These limits help to maintain the health and quality of services provided to organizations. There are also limits related to the indexing of email messages in Exchange Online for search. You can't modify the Content Search or email indexing limits, but you should be aware of them so that you can take these limits into consideration when planning, running, and troubleshooting Content Searches.
  
## Content Search limits

The following table lists the search limits in the Security & Compliance Center.
  
|**Description of limit**|**Limit**|
|:-----|:-----|
|The maximum number of mailboxes or sites that can be searched in a single Content Search  <br/> |No limit <sup>1</sup> <br/> |
|The maximum number of Content Searches that can run at the same time in your organization.  <br/> |30  <br/> |
|The maximum number of Content Searches that a single user can start at the same time. This limit is most likely hit when the user tries to start multiple searches by using the **Get-ComplianceSearch \| Start-ComplianceSearch** command in Security & Compliance Center PowerShell.  <br/> |10  <br/> |
|The maximum number of items per user mailbox that are displayed on the preview page when previewing Content Search results.  <br/> |100  <br/> |
|The maximum number of items found in all user mailboxes that are displayed on the preview page when previewing Content Search results. The newest items are displayed.  <br/> |1,000  <br/> |
|The maximum number of user mailboxes that can be previewed for search results. If there are more than 1000 mailboxes that contain content that matches the search query, only the top 1000 mailboxes with the most search results will be available for preview.  <br/> |1,000  <br/> |
|The maximum number of items found in SharePoint and OneDrive for Business sites that are displayed on the preview page when previewing Content Search results. The newest items are displayed.  <br/> |200  <br/> |
|The maximum number of sites (in SharePoint and OneDrive for Business) that can be previewed for search results. If there are more than 200 total sites that contain content that matches the search query, only the top 200 sites with the most search results will be available for preview.  <br/> |200  <br/> |
|The maximum number of items per public folder mailbox that are displayed on the preview page when previewing Content Search results.  <br/> |100  <br/> |
|The maximum number of items found in all public folder mailboxes that are displayed on the preview page when previewing Content Search results.  <br/> |200  <br/> |
|The maximum number of public mailboxes that can be previewed for search results. If there are more than 500 public folder mailboxes that contain content that matches the search query, only the top 500 public folder mailboxes with the most search results will be available for preview.  <br/> |500  <br/> |
|The maximum number of characters for the search query (including operators and conditions) for a Content Search.  <br/><br/> **Note:** This limit takes effect after the query is expanded, which means the query will get expanded against each of the keywords. For example, if a search query has 15 keywords and additional parameters and conditions, the query gets expanded 15 times, each with the other parameters and conditions in the query. So even though the number of characters in search query may be below the limit, it's the expanded query that may contribute to exceeding this limit.  <br/> |**Mailboxes:** 10,000  <br/> **Sites:** 4,000 when searching all sites or 2,000 when searching up to 20 sites <sup>2</sup> <br/> |
|Maximum number of variants returned when using a prefix wildcard to search for an exact phrase in a search query or when using a prefix wildcard and the **NEAR** Boolean operator.  <br/> |10,000 <sup>3</sup> <br/> |
|The minimum number of alpha characters for prefix wildcards; for example,  `time*`,  `one*`, or  `set*`.  <br/> |3  <br/> |
|The maximum number of mailboxes in a Content Search that you can delete items in by doing a "search and purge" action (by using the **New-ComplianceSearchAction -Purge** command). If the Content Search that you're doing a purge action for has more source mailboxes than this limit, the purge action will fail. For more information about search and purge, see [Search for and delete email messages in your organization](search-for-and-delete-messages-in-your-organization.md).  <br/> |50,000  <br/> |
|The maximum number of mailboxes in a Content Search that you can export items from. If the Content Search that you're exporting has more source mailboxes than this limit, the export will fail. For more information, see [Export Content Search results](export-search-results.md).  <br/> |100,000  <br/> |

> [!NOTE]
> <sup>1</sup> Although you can search an unlimited number of mailboxes in a single search, you can only download the exported search results from a maximum of 100,000 mailboxes using the eDiscovery Export Tool in Office 365 Security & Compliance Center or the Microsoft 365 compliance center. To download the search results from more than 100,000 mailboxes, you have to use Security & Compliance Center PowerShell. For more information and a sample script, see [Exporting results from more than 100,000 mailboxes](export-search-results.md#exporting-results-from-more-than-100000-mailboxes). <br/><br/> <sup>2</sup> When searching SharePoint and OneDrive for Business locations, the characters in the URLs of the sites being searched are counted against this limit. <br/><br/> <sup>3</sup> For non-phrase queries (a keyword value that doesn't use double quotation marks) we use a special prefix index. This tells us that a word occurs in a document, but not where it occurs in the document. To do a phrase query (a keyword value with double quotation marks), we need to compare the position within the document for the words in the phrase. This means that we can't use the prefix index for phrase queries. In this case, we internally expand the query with all possible words that the prefix expands to; for example,  `"time*"` can expand to  `"time OR timer OR times OR timex OR timeboxed OR …"`. 10,000 is the maximum number of variants the word can expand to, not the number of documents matching the query. There is no upper limit for non-phrase terms. 
  
## Indexing limits for email messages

The following table describes the indexing limits that might result in an email message being returned as an unindexed item or a partially indexed item in the results of a Content Search.
  
|**Indexing limit**|**Maximum value**|**Description**|
|:-----|:-----|:-----|
|Maximum attachment size|150 MB  <br/> |The maximum size of an email attachment that will parse for indexing. Any attachment that's larger than this limit won't be parsed for indexing, and the message with the attachment will be marked as partially indexed.  <br/> <br/>**Note:** Parsing is the process where the indexing service extracts text from the attachment, removes unnecessary characters like punctuation and spaces, and then divides the text into words (in a process called tokenization), that are then stored in the index.           |
|Maximum number of attachments  <br/> |250  <br/> |The maximum number of files attached to an email message that will be parsed for indexing. If a message has more than 250 attachments, the first 250 attachments are parsed and indexed, and the message is marked as partially indexed because it had additional attachments that weren't parsed.  <br/> |
|Maximum attachment depth  <br/> |30  <br/> |The maximum number of nested attachments that are parsed. For example, if an email message has another message attached to it and the attached message has an attached Word document, the Word document and the attached message will be indexed. This behavior will continue for up to 30 nested attachments.  <br/> |
|Maximum number of attached images  <br/> |0  <br/> |An image that's attached to an email message is skipped by the parser and isn't indexed.  <br/> |
|Maximum time spent parsing an item  <br/> |30 seconds  <br/> |A maximum of 30 seconds is spent parsing an item for indexing. If the parsing time exceeds 30 seconds, the item is marked as partially indexed.  <br/> |
|Maximum parser output  <br/> |2 million characters  <br/> |The maximum amount of text output from the parser that's indexed. For example, if the parser extracted 8 million characters from a document, only the first 2 million characters are indexed.  <br/> |
|Maximum annotation tokens  <br/> |2 million  <br/> |When an email message is indexed, each word is annotated with different processing instructions that specify how that word should be indexed. Each set of processing instructions is called an annotation token. To maintain the quality of service in Office 365, there is a limit of 2 million annotation tokens for an email message.  <br/> |
|Maximum body size in index  <br/> |67 million characters  <br/> |The total number of characters in the body of an email message and all its attachments. When an email message is indexed, all text in the body of the message and in all attachments is concatenated into a single string. The maximum size of this string that is indexed is 67 million characters.  <br/> |
|Maximum unique tokens in body  <br/> |1 million  <br/> |As previously explained, tokens are the result of extracting text from content, removing punctuation and spaces, and then dividing it into words (called tokens) that are stored in the index. For example, the phrase  `"cat, mouse, bird, dog, dog"` contains 5 tokens. But only 4 of these are unique tokens. There is a limit of 1 million unique tokens per email message, which helps prevent the index from getting too large with random tokens.  <br/> |
  
## More information

There are additional limits related to different aspects of Content Search, such as exporting search results and content indexing. For a description of these limits, see the following topics:
  
- [Export Content Search results](export-search-results.md#export-limits)

- [Partially indexed items in Content Search](partially-indexed-items-in-content-search.md)

- [Investigating partially indexed items in eDiscovery](investigating-partially-indexed-items-in-ediscovery.md)

- [Search limits for SharePoint Online](https://docs.microsoft.com/sharepoint/search-limits)

For information about Content Searches, see:
  
- [Content Search in Microsoft 365](content-search.md)

- [Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md)
