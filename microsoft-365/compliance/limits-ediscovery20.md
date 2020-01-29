---
title: "Advanced eDiscovery limits"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
description: "Learn about the limits in effect for the Advanced eDiscovery solution in Microsoft 365. This includes case limits, indexing limits, and search limits when using the search tool to collect case data."
---

# Limits in Advanced eDiscovery

This article describes the limits in the Advanced eDiscovery solution in Microsoft 365.

## Case limits

The following table lists the limits for cases in Advanced eDiscovery.

|**Description of limit**|**Limit**|
|:-----|:-----|
|Total number of documents that can be added to a case (for all review sets in a case).  <br/> |1 million  <br/> |
|Total file size per load set.  <br/> |100 GB  <br/> |
|Total amount of data loaded into a case per day.<br/> |2 TB <br/> |
|Maximum number of loads sets per case.  <br/> |15 <br/> |
|Maximum number of review sets per case.  <br/> |20 <br/> |
|||

## Indexing limits

The following table lists the indexing limits in Advanced eDiscovery.

|**Description of limit**|**Limit**|
  |:-----|:-----|
  |Maximum number of characters extracted from a single file.  <br/> |10 million<sup>1</sup> <br/> |
  |Maximum size of a single file.   <br/> |100 MB<sup>1</sup> <br/> |
  |Maximum depth of embedded items in a document.  <br/> |25<sup>1</sup> <br/> |
  |Maximum size of file processed by Optical Character Recognition (OCR).  <br/> |24 MB<sup>1</sup> <br/> |  
|||

## Search limits

The limits described in this section are related to using the search tool on the **Searches** tab to collect data for a case. For more information, see [Collect data for a case in Advanced eDiscovery](collecting-data-for-ediscovery.md).

|**Description of limit**|**Limit**|
|:-----|:-----|
|Maximum number of mailboxes or sites that can be searched in a single search.  <br/> |No limit  <br/> |
|Maximum number of searches that can run at the same time.  <br/> |No limit  <br/> | 
|Maximum number of searches that a single user can start at the same time.  <br/> |10  <br/> | 
|Maximum number of characters for a search query (including operators and conditions).  <br/> |**Mailboxes**: 10,000<br/>**Sites**: 4,000 when searching all sites or 2,000 when searching up to 20 sites <sup>2</sup> <br/> |
|Minimum number of alpha characters for prefix wildcards; for example **one\*** or **set\***. <br/> |3  <br/> |  
|Maximum variants returned when using prefix wildcard to search for an exact phrase or when using a prefix wildcard and the **NEAR** or **ONEAR** Boolean operator.  <br/> |10,000 <sup>3</sup> <br/> |
|Maximum number of items per user mailbox that are displayed on preview page for searches. The newest items are displayed.   <br/> |100  <br/> |
|Maximum number of items from all mailboxes displayed on preview page for searches.  <br/> |1,000  <br/> |
|Maximum number of mailboxes that can be previewed for search results.  If there are more than 1000 mailboxes that contain items that match the search query, only the top 1,000 mailboxes with the most results are available for preview.<br/> |1,000  <br/> |
|Maximum number of items from SharePoint and OneDrive for Business sites displayed on preview page for searches. The newest items are displayed.  <br/> |200  <br/> |
|Maximum number of SharePoint and OneDrive for Business sites that can be previewed for search results. If there are more than 200 sites that contain items that match the search query, only the top 200 sites with the most results are available for preview.  <br/> |200  <br/> |
|Maximum number of items per public folder mailbox displayed on preview page for searches.  <br/> |100  <br/> |
|Maximum number of items found in all public folder mailbox items displayed on preview page for searches.  <br/> |200  <br/> |
|Maximum number of public folder mailboxes that can be previewed for search results. If there are more than 500 public folder mailboxes that contain items that match the search query, only the top 500 mailboxes with the most results are available for preview.  <br/> |500  <br/> |
|||

## Viewer limits

|**Description of limit**|**Limit**|
  |:-----|:-----|
  |Maximum size of Excel file that can be viewed in the native viewer.  <br/> |4 MB  <br/> |
|||

## Review set download limits

|**Description of limit**|**Limit**|
|:-----|:-----|
|Total file size or maximum number of documents downloaded from a review set.  <br/> |3 MB or 50 documents <sup>4</sup>|
|||

<br/>
<br/>

> [!NOTE]
> <sup>1</sup> Any item that exceeds a single file limit will show up as a processing error.<br/>
> <sup>2</sup> When searching SharePoint and OneDrive for Business locations, the characters in the URLs of the sites being searched count against this limit.<br/>
> <sup>3</sup> For non-phrase queries (a keyword value that doesn't use double quotation marks) we use a special prefix index. This tells us that a word occurs in a document, but not where it occurs in the document. To do a phrase query (a keyword value with double quotation marks), we need to compare the position within the document for the words in the phrase. This means that we can't use the prefix index for phrase queries. In this case, we internally expand the query with all possible words that the prefix expands to; for example,  **time\*** can expand to  **"time OR timer OR times OR timex OR timeboxed OR …"**. The limit of 10,000 is the maximum number of variants the word can expand to, not the number of documents matching the query. There is no upper limit for non-phrase terms.<br/>
> <sup>4</sup> This limit applies to downloading selected documents from a review set. It doesn't apply to exporting documents from a review set. For more information about downloading and exporting documents, see [Export case data in Advanced eDiscovery](exporting-data-ediscover20.md). <br/>

