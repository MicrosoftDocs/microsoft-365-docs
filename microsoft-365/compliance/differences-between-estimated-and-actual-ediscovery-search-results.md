---
title: "Estimated and actual eDiscovery search results"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- SPO160
- MOE150
- MET150
ms.assetid: 8f20ca4f-a908-46ec-99e6-9890d269ecf2
description: "Understand why estimated and actual search results may vary in searches run with eDiscovery tools in Office 365."
---

# Differences between estimated and actual eDiscovery search results

This article applies to searches that you can run using one of the following Microsoft 365 eDiscovery tools: 

- Content search
- eDiscovery (Standard)

When you run an eDiscovery search, the tool you're using will return an estimate of the number of items (and their total size) that match the search criteria. For example, when you run a search in the Microsoft Purview compliance portal, the estimated search results are displayed on the flyout page for the selected search.
  
![Estimate of results displayed on the search flyout page.](../media/EstimatedSearchResults1.png)
  
This is the same estimate of total size and number of items that is displayed in the eDiscovery Export Tool when you export results to a local computer and in the Export Summary report that's downloaded with the search results.
  
**Estimated results in the eDiscovery Export tool**

![Estimated results in eDiscovery Export tool.](../media/d34312a5-0ee6-49aa-9460-7ea0015a6e66.png)
  
**Estimated results in Export Summary report**

![Estimated search results are included in the Export Summary report.](../media/44b579da-86c2-4f33-81b5-84d604003eda.png)
  
However, as you'll notice in the previous screenshot of the Export Summary report, the size and number of actual search results that are downloaded are different than the size and number of estimated search results.
  
![Difference between estimated and downloaded search results.](../media/84aef318-230f-430d-9d9e-02f21342d364.png)
  
Here are some reasons for these differences:
  
- **The way results are estimated**. An estimate of the search results is just that, an estimate (and not an actual count) of the items that meet the search query criteria. To compile the estimate of Exchange items, a list of the message IDs that meet the search criteria is requested from the Exchange database by the eDiscovery tool you're using. But when you export the search results, the search is rerun and the actual messages are retrieved from the Exchange database. So these differences might result because of how the estimated number of items and the actual number of items are determined.

- **Changes that happen between the time when estimating and exporting search results**. When you export search results, the search is restarted to collect that most recent items in the search index that meet the search criteria. It's possible there are additional items were created, sent, or received that meet the search criteria in the time between when the estimated search results were collected and when the search results were exported. It's also possible that items that were in the search index when the search results were estimated are no longer there because they were purged from the content location before the search results are exported. One way to mitigate this issue is to specify a date range for an eDiscovery search. Another way is to place a hold on content locations so that items are preserved and can't be purged.

   Here are other issues that can result is differences between estimated and exported search results:

  - In increase in items when using a date query. This is typically cause by the following two things:

  - Hold versioning in SharePoint. If a document is deleted from a site that's on hold and document versioning is enabled, all versions of the deleted document will be preserved.

  - Calendar items. Accept and reject messages and recurring meetings will automatically continue creating new items in the background with old dates.

  - With holds, there can be cases where the same item is preserved in a user's primary mailbox and in their archive mailbox. This can happen when a user manually moves an item to their archive.

  - Although rare, even in the case when a hold is applied, maintenance of built-in calendar items (which aren't editable by the user, but are included in many search results) may be removed from time to time. This periodic removal of calendar items will result in fewer items that are exported.

- **Unindexed items**. Items that are unindexed for search can cause differences between estimated and actual search results. You can include unindexed items when you export the search results. If you include unindexed items when exporting search results, there might be more items that are exported. This will cause a difference between the estimated and exported search results.

    When using the Content search tool, you have the option to include unindexed items when you export search results. The number of unindexed items returned by the search is listed on the flyout page together with the other estimated search results. Any unindexed items would also be included in the total size of the estimated search results. When you export search results, you have the option to include or not include unindexed items. How you configure these options might result in differences between estimated and the actual search results that are downloaded.

- **Exporting the results of a Content search that includes all content locations**. If the search that you're exporting results from was a search of all content locations in your organization, then only the unindexed items from content locations that contain items that match the search criteria will be exported. In other words, if no search results are found in a mailbox or site, then any unindexed items in that mailbox or site won't be exported. However, unindexed items from all content locations (even those that don't contain items that match the search query) will be included in the estimated search results.

    Alternatively, if the search that you're exporting results from included specific content locations, then unindexed items (that aren't excluded by the search criteria) from all the content locations specified in the search will be exported. In this case, the estimated number of unindexed items and the number of unindexed items that are exported should be the same.

    The reason for not exporting unindexed items from every location in the organization is because it might increase the likelihood of export errors and increase the time it takes to export and download the search results.

- **Unindexed items in SharePoint and OneDrive not included in the search estimates**. Unindexed items from SharePoint sites and OneDrive for Business accounts aren't included in the estimated search results. This is because the SharePoint index doesn't contain data for unindexed items. Only unindexed items from mailboxes are included in the search estimates. However, if you include unindexed items when exporting search results, unindexed items in SharePoint and OneDrive are included, which will increase the number of items that are actually exported. This will result in differences between the estimated results (which don't include unindexed items in SharePoint and OneDrive sites) and the actual items that are downloaded. The rule about exporting unindexed items only from content locations that contain items that match the search criteria still applies in this situation.

- **Document versions in SharePoint and OneDrive**. When searching SharePoint sites and OneDrive accounts, multiple versions of a document aren't included in the count of estimated search results. But you have the option to include all document versions when you export the search results. If you include document versions when exporting search results, the actual number (and total size) of the exported items will be increased.

- **SharePoint folders**. If folders in SharePoint match a search query, for example, searching by date, the search estimate will include a count of those folders with the last modified date range (but not the items in those folders). When you export the search results, the items in folder are exported but the actual folder isn't exported. The result is that the number of exported items will be more than the number of estimated search results. If a folder is empty, then the number of actual search results exported will be reduced by one item, because the actual folder isn't exported.

   > [!NOTE]
   > When running a query-based search, you can exclude SharePoint folders by adding the following condition to the query: `NOT(ContentType:folder)`.

- **SharePoint lists**. If the name of a SharePoint list matches a search query, the search estimate will include a count of all the items in the list. When you export the search results, the list (and the list items) is exported as a single CSV file. This will reduce the actual number of items actually exported. If the list contains attachments, the attachments will be exported as separate documents, which will also increase the number of items exported.

   > [!NOTE]
   > When running a query-based search, you can exclude SharePoint lists by adding the following condition to the query: `NOT(ContentType:list)`.

- **Raw file formats versus exported file formats**. For Exchange items, the estimated size of the search results is calculated by using the raw Exchange message sizes. However, email messages are exported in a PST file or as individual messages (which are formatted as EML files). Both of these export options use a different file format than raw Exchange messages, which results in the total exported file size being different than the estimated file size.

- **De-duplication of Exchange items during export**. For Exchange items, de-duplication reduces the number of items that are exported. You have the option to de-duplicate the search results when you export them. For Exchange messages, this means that only a single instance of a message is exported, even though that message might be found in multiple mailboxes. The estimated search results include every instance of a message. So if you choose the de-duplication option when exporting search results, the actual number of items that are exported might be considerably less than the estimated number of items.

The search results report (Results.csv file) contains an entry for each duplicate message and identifies the source mailbox where a duplicate message is located. This helps you identify all mailboxes that contain a duplicate message.

> [!NOTE]
> If you don't select the **Include items that are encrypted or have an unrecognized format** option when you export search results or just download the reports, the index error reports are downloaded but they don't have any entries. This doesn't mean there aren't any indexing errors. It just means that unindexed items weren't included in the export.
