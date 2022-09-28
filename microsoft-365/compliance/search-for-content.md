---
title: "Search for content"
description: "Use the Content search eDiscovery tool in the Microsoft Purview compliance portal to quickly find email in Exchange mailboxes, documents in SharePoint sites and OneDrive locations, and instant messaging conversations in Skype for Business."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date:
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- highpri 
- tier1
- purview-compliance
- content-search
---

# Search for content using the Content search tool

Use the Content search tool in the Microsoft Purview compliance portal to quickly find email in Exchange mailboxes, documents in SharePoint sites and OneDrive locations, and instant messaging conversations in Skype for Business. You can use the content search tool to search for email, documents, and instant messaging conversations in collaboration tools such as Microsoft Teams and Microsoft 365 Groups.
  
## Search for content

The first step is to starting using the Content search tool to choose content locations to search and configure a keyword query to search for specific items. Or, you can just leave the query blank and return all items in the target locations.
  
- [Create and run](content-search.md) a Content search

- [Build search queries and use conditions](keyword-queries-and-search-conditions.md) to narrow your search

- [Feature reference](content-search-reference.md) for Content search

- [Configure search permissions filtering](permissions-filtering-for-content-search.md) so that an eDiscovery manager can only search subset of mailboxes or sites in your organization

- [Search cloud-based mailboxes](search-cloud-based-mailboxes-for-on-premises-users.md) for on-premises users in Microsoft 365

- [View keyword statistics](view-keyword-statistics-for-content-search.md) for the results of a search and then refine the query if necessary

- [Search for third-party data](use-content-search-to-search-third-party-data-that-was-imported.md) that your organization has imported to Microsoft 365

- [Preserve Bcc recipients](/exchange/policy-and-compliance/holds/preserve-bcc-recipients-and-group-members) so you can search for them

## Perform actions on content you find

After you run a search and refine it as necessary, the next step is to do something with the results returned by the search. You can export and download the results to your local computer or in the case of a email attack on your organization, you can delete the results of a search from user mailboxes.
  
- [Export the results of a content search](export-search-results.md) and download them to your local computer

- [Search for and delete email messages](search-for-and-delete-messages-in-your-organization.md), such as messages that content a virus, dangerous attachments, or phishing messages

- [Export a report](export-a-content-search-report.md) about the results of a content search, without exporting the actual results

## Learn more about content search

Content search is easy to use, but it's also a powerful tool. Behind-the-scenes, there's a lot going on. The more you know about it and understand its behavior and its limitations, the more successful you'll be using it for your organization's search and investigation needs. Learn about:
  
- [Content search limits](limits-for-content-search.md), such as the maximum number of searches that you can run at one time and the maximum number of content locations you can include in a single search

- [Estimated and actual search results](differences-between-estimated-and-actual-ediscovery-search-results.md) and the reasons why there might be differences between them when you export and download search results

- [Partially indexed items in Exchange and SharePoint](partially-indexed-items-in-content-search.md) and how to include or exclude them when you export and download search results

- [Investigate partially indexed items](investigating-partially-indexed-items-in-ediscovery.md) and determine your organization's exposure to them

- [De-duplication in search results](de-duplication-in-ediscovery-search-results.md) that you can enable when you export email messages that are the results of a search

## Use scripts for advanced scenarios

Sometimes you have to perform more advanced, complex, and repetitive content search tasks. In these cases, it's easier and faster to use commands in Security & Compliance PowerShell. To help make this easier, we've created a number of Security & Compliance PowerShell scripts to help you complete complex content search-related tasks.

- [Search specific mailbox and site folders](use-content-search-for-targeted-collections.md) (called a  *targeted* collection) when you're confident that items responsive to a case are located in that folder

- [Search the mailbox and OneDrive location](search-the-mailbox-and-onedrive-for-business-for-a-list-of-users.md) for a list of users

- [Create, report on, and delete multiple searches](create-report-on-and-delete-multiple-content-searches.md) to quickly and efficiently identify and cull search data

- [Clone a content search](clone-a-content-search.md) and quickly compare the results of different keyword search queries run on the same content locations; or use the script to save time by not having to re-enter a large number of content locations when you create a new search
