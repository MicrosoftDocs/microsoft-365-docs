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
ms.custom:
- seo-marvel-apr2020
description: "Learn about the case limits, indexing limits, and search limits in effect for the Advanced eDiscovery solution in Microsoft 365."
---

# Limits in Advanced eDiscovery

This article describes the limits in the Advanced eDiscovery solution in Microsoft 365.

## Case and review set limits

The following table lists the limits for cases and review sets in Advanced eDiscovery.

| Description of limit | Limit |
|:-----|:-----|
|Total number of documents that can be added to a case (for all review sets in a case).  <br/> |3 million <br/> |
|Total file size per load set. This includes loading non-Office 365 into a review set.  <br/> |300 GB <br/> |
|Total amount of data loaded into all review sets in the organization per day.<br/> |2 TB <br/> |
|Maximum number of load sets per case.  <br/> |200 <br/> |
|Maximum number of review sets per case.  <br/> |20 <br/> |
|Maximum number of tag groups per case.  <br/> |1000 <br/> |
|Maximum number of tags per case.  <br/> |1000 <br/> |
|Maximum concurrent jobs in your organization to add content to a review set. These jobs are named **Adding data to a review set** and are displayed on the **Jobs** tab in a case.| 10 <sup>4</sup> |
|Maximum concurrent jobs to add content to a review set per user. These jobs are named **Adding data to a review set** and are displayed on the **Jobs** tab in a case. | 3 |
|||

## Hold limits

The following table lists the limits for holds associated with an Advanced eDiscovery case.

| Description of limit | Limit |
|:-----|:-----|
|Maximum number of mailboxes in a single case hold. This limit includes the combined total of user mailboxes, and the mailboxes associated with Microsoft 365 Groups, Microsoft Teams, and Yammer Groups. <br/> |1,000  <br/> |
|Maximum number of sites in a single case hold. This limit includes the combined total of OneDrive for Business sites, SharePoint sites, and the sites associated with Microsoft 365 Groups, Microsoft Teams, and Yammer Groups.  <br/> |100  <br/> |

## Indexing limits

The following table lists the indexing limits in Advanced eDiscovery.

| Description of limit | Limit |
|:-----|:-----|
|Maximum number of characters extracted from a single file.  <br/> |10 million<sup>1</sup> <br/> |
|Maximum size of a single file.   <br/> |100 MB<sup>1</sup> <br/> |
|Maximum depth of embedded items in a document.  <br/> |25<sup>1</sup> <br/> |
|Maximum size of files processed by Optical Character Recognition (OCR).  <br/> |24 MB<sup>1</sup> <br/> 
|Maximum number of indexing jobs per organization per day. <br/> |10<sup>6</sup> <br/>|  
|||

## Search limits

The limits described in this section are related to using the search tool on the **Searches** tab to collect data for a case. For more information, see [Collect data for a case in Advanced eDiscovery](collecting-data-for-ediscovery.md).

| Description of limit | Limit |
|:-----|:-----|
|Maximum number of mailboxes or sites that can be searched in a single search. |No limit|
|Maximum number of searches that can run at the same time. |No limit |
|Maximum number of searches that a single user can start at the same time. |10 | 
|Maximum number of characters for a search query (including operators and conditions). |10,000 &nbsp;<sup>2</sup>|
|Maximum number of characters for a search query for SharePoint and OneDrive for Business sites (including operators and conditions). |10,000<br>4,000 with Wildcards&nbsp;<sup>2</sup>|
|Minimum number of alpha characters for prefix wildcards; for example, **one\*** or **set\***.|3 |  
|Maximum variants returned when using prefix wildcard to search for an exact phrase or when using a prefix wildcard and the **NEAR** Boolean operator. |10,000&nbsp;<sup>3</sup>|
|Maximum number of items per user mailbox that are displayed on preview page for searches. The newest items are displayed. |100|
|Maximum number of items from all mailboxes displayed on preview page for searches.|1,000|
|Maximum number of mailboxes that can be previewed for search results.  If there are more than 1000 mailboxes that contain items that match the search query, only the top 1,000 mailboxes with the most results are available for preview.|1,000|
|Maximum number of items from SharePoint and OneDrive for Business sites displayed on preview page for searches. The newest items are displayed. |200|
|Maximum number of SharePoint and OneDrive for Business sites that can be previewed for search results. If there are more than 200 sites that contain items that match the search query, only the top 200 sites with the most results are available for preview.|200|
|Maximum number of items per public folder mailbox displayed on preview page for searches. |100|
|Maximum number of items found in all public folder mailbox items displayed on preview page for searches. |200|
|Maximum number of public folder mailboxes that can be previewed for search results. If there are more than 500 public folder mailboxes that contain items that match the search query, only the top 500 mailboxes with the most results are available for preview.|500|
|||

## Search times

Microsoft collects performance information for searches run by all organizations. While the complexity of the search query can impact search times, the biggest factor that affects how long searches take is the number of mailboxes searched. Although Microsoft doesn't provide a Service Level Agreement for search times, the following table lists average search times for collection searches based on the number of mailboxes included in the search.
  
  | Number of mailboxes | Average search time |
  |:-----|:-----|
  |100  <br/> |30 seconds  <br/> |
  |1,000  <br/> |45 seconds  <br/> |
  |10,000  <br/> |4 minutes  <br/> |
  |25,000  <br/> |10 minutes  <br/> |
  |50,000  <br/> |20 minutes  <br/> |
  |100,000  <br/> |25 minutes  <br/> |
  |||

## Viewer limits

| Description of limit | Limit |
|:-----|:-----|
|Maximum size of Excel file that can be viewed in the native viewer.  <br/> |4 MB  <br/> |
|||

## Export limits - Final export out of Review Set

The limits described in this section are related to exporting documents out of a review set.

| Description of limit | Limit |
|:-----|:-----|
|Maximum size of a single export.|5 million documents or 500 GB, whichever is smaller|
|Maximum concurrent exports per review set. | 1 |
|||

## Review set download limits

| Description of limit | Limit |
|:-----|:-----|
|Total file size or maximum number of documents downloaded from a review set.  <br/> |3 MB or 50 documents <sup>5</sup>|
|||

<br/>
<br/>

> [!NOTE]
> <sup>1</sup> Any item that exceeds a single file limit will show up as a processing error.
>
> <sup>2</sup> When searching SharePoint and OneDrive for Business locations, the characters in the URLs of the sites being searched count against this limit. The total number of characters consists of:<br>
> - All characters in both the Users and Filters fields.
> - All search permissions filters that apply to the user.
> - The characters from any location properties in the search; this includes ExchangeLocation,PublicFolderLocation,SharPointLocation,ExchangeLocationExclusion,PublicFolderLocationExclusion,SharePointLocationExclusion, OneDriveLocationExclusion.
>   For example, including all SharePoint sites and OneDrive accounts in the search will count as six characters, as the word "ALL" will appear for both the SharePointLocation and OneDriveLocation field.
>
> <sup>3</sup> For non-phrase queries (a keyword value that doesn't use double quotation marks) we use a special prefix index. This tells us that a word occurs in a document, but not where it occurs in the document. To do a phrase query (a keyword value with double quotation marks), we need to compare the position within the document for the words in the phrase. This means that we can't use the prefix index for phrase queries. In this case, we internally expand the query with all possible words that the prefix expands to; for example,  **time\*** can expand to  **"time OR timer OR times OR timex OR timeboxed OR …"**. The limit of 10,000 is the maximum number of variants the word can expand to, not the number of documents matching the query. There is no upper limit for non-phrase terms.
>
> <sup>4</sup> This limit is shared with exporting content in other eDiscovery tools. This means that concurrent exports in Content search and Core eDiscovery (and adding content to review sets in Advanced eDiscovery) are all applied against this limit.
>
> <sup>5</sup> This limit applies to downloading selected documents from a review set. It doesn't apply to exporting documents from a review set. For more information about downloading and exporting documents, see [Export case data in Advanced eDiscovery](exporting-data-ediscover20.md).
>
> <sup>6</sup> Indexing limits per organization per day. As a workaround, you can select multiple custodians on the **Data sources** tab in a case and then click **Update index** to avoid creating a separate index job for each custodian. 
