---
title: "eDiscovery (Premium) limits"
description: "Learn about the case limits, indexing limits, and search limits in effect for the eDiscovery (Premium) solution in Microsoft 365."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
---

# Limits in eDiscovery (Premium)

This article describes the limits in the Microsoft Purview eDiscovery (Premium) solution in Microsoft Purview.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Case and review set limits

The following table lists the limits for cases and review sets in eDiscovery (Premium).

|Description of limit|Classic Case Limit|New Case Limit|
|:---|:---|:---|
|Total number of documents that can be added to a case (for all review sets in a case).|3 million|40 million|
|Total file size per load set. This includes loading non-Office 365 into a review set.|300 GB|1 TB|
|Maximum number of load sets per case.|200|200|
|Maximum number of review sets per case.|20|20|
|Maximum number of tag groups per case.|1,000|1,000|
|Maximum number of unique tags per case.|1,000<sup>1</sup>|1,000<sup>1</sup>|

## Hold limits

The following table lists the limits for holds associated with an eDiscovery (Premium) case.

| Description of limit | Limit |
|:-----|:-----|
|Maximum number of hold policies for an organization. This limit includes the combined total of hold policies in Microsoft Purview eDiscovery (Standard) and Microsoft Purview eDiscovery (Premium) cases. <br/> |10,000<sup>2</sup> |
|Maximum number of mailboxes in a single case hold. This limit includes the combined total of user mailboxes, and the mailboxes associated with Microsoft 365 Groups, Microsoft Teams, and Yammer Groups. <br/> |1,000 |
|Maximum number of sites in a single case hold. This limit includes the combined total of OneDrive for Business sites, SharePoint sites, and the sites associated with Microsoft 365 Groups, Microsoft Teams, and Yammer Groups. | 100 |

## Indexing limits

The following table lists the indexing limits in eDiscovery (Premium).

|Description of limit|Limit|
|:---|:---|
|Maximum number of characters extracted from a single file.|10 million<sup>3</sup>|
|Maximum size of a single file.|150 MB<sup>3</sup>|
|Maximum depth of embedded items in a document.|25<sup>3</sup>|
|Maximum size of files processed by Optical Character Recognition (OCR).|24 MB<sup>3</sup> |
|Maximum advanced indexing throughput | 2 GB per hour |

## Jobs limits

|Description of limit|Limit|
|---|---|
|Maximum number of concurrent jobs in your organization.|100|
|Maximum number of concurrent jobs that a single user can start at one time.|50|
|Maximum number of concurrent tenant-wide jobs (for example, tenant-wide searches) in your organization.|50|
|Maximum number of concurrent tenant-wide jobs (for example, tenant-wide searches) that a single user can start at one time.|25|

## Search limits

The limits described in this section are related to using the search tool on the **Searches** tab to collect data for a case. For more information, see [Collect data for a case in eDiscovery (Premium)](collecting-data-for-ediscovery.md).

|Description of limit|Limit|
|:---|:---|
|Maximum number of mailboxes or sites that can be searched in a single search.|No limit|
|Maximum number of searches that can run at the same time.|No limit|
|Maximum number of characters for a search query (including operators and conditions).|10,000<sup>4</sup>|
|Maximum number of characters for a search query for SharePoint and OneDrive for Business sites (including operators and conditions).|10,000<br>4,000 with Wildcards<sup>4</sup>|
|Minimum number of alpha characters for prefix wildcards; for example, **one\*** or **set\***.|3|
|Maximum variants returned when using prefix wildcard to search for an exact phrase or when using a prefix wildcard and the **NEAR** Boolean operator.|10,000<sup>5</sup>|
|Maximum number of items per user mailbox that are displayed on preview page for searches. The newest items are displayed.|100|
|Maximum number of items from all mailboxes displayed on preview page for searches.|1,000|
|Maximum number of mailboxes that can be previewed for search results.  If there are more than 1,000 mailboxes that contain items that match the search query, only the top 1,000 mailboxes with the most results are available for preview.|1,000|
|Maximum number of items from SharePoint and OneDrive for Business sites displayed on preview page for searches. The newest items are displayed.|200|
|Maximum number of SharePoint and OneDrive for Business sites that can be previewed for search results. If there are more than 200 sites that contain items that match the search query, only the top 200 sites with the most results are available for preview.|200|
|Maximum number of items per public folder mailbox displayed on preview page for searches.|100|
|Maximum number of items found in all public folder mailbox items displayed on preview page for searches.|200|
|Maximum number of public folder mailboxes that can be previewed for search results. If there are more than 500 public folder mailboxes that contain items that match the search query, only the top 500 mailboxes with the most results are available for preview.|500|
|The maximum size of an item that can be viewed on the sample page of a draft collection.|10,000,000 bytes (approximately 9.5 MB)|

## Search times

Microsoft collects performance information for searches run by all organizations. While the complexity of the search query can impact search times, the biggest factor that affects how long searches take is the number of mailboxes searched. Although Microsoft doesn't provide a Service Level Agreement for search times, the following table lists average search times for collection searches based on the number of mailboxes included in the search.
  
|Number of mailboxes|Average search time|
|:---|:---|
|100|30 seconds|
|1,000|45 seconds|
|10,000|4 minutes|
|25,000|10 minutes|
|50,000|20 minutes|
|100,000|25 minutes|

## Viewer limits

|Description of limit|Limit|
|:---|:---|
|Maximum size of Excel file that can be viewed in the native viewer.|4 MB|

## Export limits - Final export out of Review Set

The limits described in this section are related to exporting documents out of a review set.

|Description of limit|Limit|
|:---|:---|
|Maximum size of a single export.|5 million documents or 500 GB, whichever is smaller|

## Review set download limits

|Description of limit|Limit|
|:---|:---|
|Total file size or maximum number of documents downloaded from a review set.|3 MB or 50 documents<sup>6</sup>|

## Reference notes

<sup>1</sup> This is the maximum number of tags that you can create in a case. This limit isn't related to the number of documents that can be tagged.

<sup>2</sup> When you put more than 1,000 mailboxes or 100 sites on hold in a single hold policy, the system will automatically scale the hold as needed. This means the system will automatically add data locations to multiple hold policies, instead of adding them to a single hold policy. However, the limit of 10,000 case hold policies per organization still applies.

<sup>3</sup> Any item that exceeds a single file limit will show up as a processing error.

<sup>4</sup> When searching SharePoint and OneDrive for Business locations, the characters in the URLs of the sites being searched count against this limit. The total number of characters consists of:

  - All characters in both the Users and Filters fields.
  - All search permissions filters that apply to the user.
  - The characters from any location properties in the search, including ExchangeLocation, PublicFolderLocation, SharPointLocation, ExchangeLocationExclusion, PublicFolderLocationExclusion, SharePointLocationExclusion, and OneDriveLocationExclusion. For example, including all SharePoint sites and OneDrive accounts in the search will count as six characters, as the word "ALL" will appear for both the SharePointLocation and OneDriveLocation field.

<sup>5</sup> For non-phrase queries (a keyword value that doesn't use double quotation marks) we use a special prefix index. This tells us that a word occurs in a document, but not where it occurs in the document. To do a phrase query (a keyword value with double quotation marks), we need to compare the position within the document for the words in the phrase. This means that we can't use the prefix index for phrase queries. In this case, we internally expand the query with all possible words that the prefix expands to; for example,  **time\*** can expand to  **"time OR timer OR times OR timex OR timeboxed OR ..."**. The limit of 10,000 is the maximum number of variants the word can expand to, not the number of documents matching the query. There is no upper limit for non-phrase terms.

<sup>6</sup> The age-out period of the Azure Blobs that store eDiscovery (Premium) collections is one year. Any collection created a year ago may no longer be accessible.

<sup>7</sup> This limit applies to downloading selected documents from a review set. It doesn't apply to exporting documents from a review set. For more information about downloading and exporting documents, see [Export case data in eDiscovery (Premium)](exporting-data-ediscover20.md).
