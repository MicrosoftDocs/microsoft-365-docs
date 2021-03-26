---
title: "eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- SPO160
- MOE150
- MET150
ms.assetid: 143b3ab8-8cb0-4036-a5fc-6536d837bfce
description: "Microsoft 365 offers a number of different eDiscovery tools that you can use to search for and hold content found in different locations such as Exchange mailboxes, SharePoint and OneDrive for Business sites, Microsoft 365 Groups, Microsoft Teams, and Skype for Business conversations."
---

# eDiscovery solutions in Microsoft 365

Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases. You can use eDiscovery tools in Microsoft 365 to search for content in Exchange Online mailboxes, Microsoft 365 Groups, Microsoft Teams, SharePoint Online and OneDrive for Business sites, and Skype for Business conversations, and Yammer teams. You can search mailboxes and sites in the same eDiscovery search by using the Content Search tool. And you can use Core eDiscovery cases to identify, hold, and export content found in mailboxes and sites. If your organization has an Office 365 E5 or Microsoft 365 E5 subscription (or related E5 add-on subscriptions), you can further manage custodians and analyze content by using the Advanced eDiscovery solution in Microsoft 365.
  
Microsoft 365 provides the following eDiscovery tools:
  
- [Content search](#content-search)

- [Core eDiscovery](#core-ediscovery)

- [Advanced eDiscovery](#advanced-ediscovery)

## Content search

The following table contains links to articles that will help you use the Content search tool.
  
|**Article**|**Description**|
|:-----|:-----|
|[Run a search](content-search.md) <br/> |Learn how to use the Content Search tool to search mailboxes, public folders, Microsoft 365 Groups, Microsoft Teams, SharePoint Online sites, One Drive for Business locations, and Skype for Business conversations in your organization in a single search.  <br/> |
|[Keyword queries and search conditions](keyword-queries-and-search-conditions.md) <br/> |Learn about the email and file properties and search conditions you can use to search for content in mailboxes and sites in your organization.  <br/> |
|[View keyword statistics for search results](view-keyword-statistics-for-content-search.md) <br/> |Learn how to use search statistics to display and compare the statistics for one or more content searches, and to configure new and existing searches to return statistics for each keyword in the search query.  <br/> |
|[Export search results](export-search-results.md) <br/> |Learn how to export the results of a Content search.  <br/> |
|[Configure permissions filtering for Content search](permissions-filtering-for-content-search.md) <br/> |Learn how to use permissions filtering to let an eDiscovery manager search only a subset of mailboxes and sites in your organization.  <br/> |
|[Export a search report](export-a-content-search-report.md) <br/> |Learn how to download the export report without having to export the actual search results.  <br/> |
|[Content search limits](limits-for-content-search.md) <br/> |Learn about the limits of the Content Search tool, such as the maximum number of searches that you can run at one time.  <br/> |
|[Unindexed items in Content search](partially-indexed-items-in-content-search.md) <br/> |Learn about unindexed items in Exchange and SharePoint that you can include in the estimated search result statistics when you run a search. You can also include unindexed items when you export search results.  <br/> |
|[Search for and delete email messages](search-for-and-delete-messages-in-your-organization.md) <br/> |Learn how to use Content search to search for and delete an email message from  *all*  mailboxes in your organization. This can help you find and remove potentially harmful or high-risk email.  <br/> |
|[Search the mailbox and OneDrive accounts for a list of users](search-the-mailbox-and-onedrive-for-business-for-a-list-of-users.md) <br/> |Learn how to use a script to search the mailbox and One Drive for Business site for a group of users. See [Create a list of all OneDrive locations](/onedrive/list-onedrive-urls) for steps on how to quickly generate a list of email addresses that you can use for the source content locations when you create and run content searches.  <br/> |
|[Use Content search for targeted collections](use-content-search-for-targeted-collections.md) <br/> |Learn how to use the Windows PowerShell script in this article to perform targeted collections using Content search. A targeted collection means you want to search a specific folder because you're confident that items responsive to a case (or privileged items) are located in that folder. Use the script in this article to obtain the folder ID or path for the specific mailbox or site folders that you want to search.  <br/> |
|||
  
## Core eDiscovery

The following table contains links to topics that will help you use Core eDiscovery cases. You can use Core eDiscovery cases to add eDiscovery managers who can access the case, place an eDiscovery hold on content locations relevant to the case, search for content, and export the search results from the case.
  
|**Article**|**Description**|
|:-----|:-----|
|[Get started with Core eDiscovery](get-started-core-ediscovery.md) |Learn how to assign eDiscovery permissions and create Core eDiscovery cases. This topic also provides an overview of the Core eDiscovery workflow.<br/> |
|[Assign eDiscovery permissions](assign-ediscovery-permissions.md)|Learn how to assign permissions to users so they can search for content, place content locations on hold, and perform other eDiscovery-related tasks in a Core eDiscovery case.|
|[Set up compliance boundaries for Core eDiscovery](set-up-compliance-boundaries.md)|Learn how to use compliance boundaries to create logical boundaries within an organization that control the content locations that an eDiscovery manager can search.|
|[Create an eDiscovery hold](create-ediscovery-holds.md)|Learn how to create eDiscovery holds that associated with a Core eDiscovery case to preserve content relevant to the case you're investigating.|
|[Search for content in a case](search-for-content-in-core-ediscovery.md)|Learn how to search for content that's relevant to a case. You can quickly create searches that search the content locations on hold.|
|[Export content from a case](export-content-in-core-ediscovery.md)|Learn how to export and download content from a Core eDiscovery case.|
|[Close, reopen, and delete a case](close-reopen-delete-core-ediscovery-cases.md)|Learn how to manage the lifecycle of a Core eDiscovery case.|
|||
  
## Advanced eDiscovery

The Advanced eDiscovery solution in Microsoft 365 (also called *Advanced eDiscovery v2.0*) builds on the existing eDiscovery and analytics capabilities in Microsoft 365. This eDiscovery solution provides an end-to-end workflow to preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It also lets legal teams manage custodians and the entire legal hold notification workflow to communicate with custodians involved in a case.

|**Article**|**Description**|
|:-----|:-----|
|[Overview of Advanced eDiscovery](overview-ediscovery-20.md)|This article introduces Advanced eDiscovery, outlines the business justification for using this tool, presents Advanced eDiscovery architecture, and provides a high-level overview of the built-in workflow of Advanced eDiscovery.|
|[Set up Advanced eDiscovery](get-started-with-advanced-ediscovery.md)|Learn how to get started using Advanced eDiscovery, including the required licensing and necessary eDiscovery permission.|
|[Create and manage a case](create-and-manage-advanced-ediscoveryv2-case.md)|This article shows you how to create an Advanced eDiscovery case and provides a walk-through of the Advanced eDiscovery workflow.|
|[Manage custodians](managing-custodians.md)|Learn about working with custodians in an Advanced eDiscovery. This topic links to step-by-step instructions to add custodians to a case, managing custodians in a case, and viewing custodian activity in Microsoft 365 by searching the audit log.|
|[Manage custodian communications](managing-custodian-communications.md)|Learn about managing the legal hold notification process in Advanced eDiscovery. This includes creating and automating the notification workflow and how a user acknowledged a hold notification.
|[Manage processing errors](processing-data-for-case.md)|Learn about Advanced indexing and how to remediate indexing errors in content from custodial and non-custodial content locations, such as Exchange mailboxes, SharePoint sites, and OneDrive accounts. You can bulk-remediate errors and then upload remediated files to a review set or remediate individual processing errors within a review set.|
|[Collect data for a case](collecting-data-for-ediscovery.md)|Learn about searching for content in custodial content locations, and then adding relevant case data to a review set. When you copy content to a review set, the data is copied from the original content locations to a Microsoft-provided Azure Storage location. This provides a static set of documents for the review process.|
|[Manage review sets](managing-review-sets.md)|Learn about reviewing case data in a review set. This includes viewing, querying, filtering, and tagging documents in a review set.
|[Analyze data in a review set](analyzing-data-in-review-set.md)|Learn about running analysis on the documents in a review set. The results of running analysis include near-duplication detection, email threading, and themes identification.|
|[Export case data](exporting-data-ediscover20.md)|Learn about exporting data from a case for external review.|
|||

## eDiscovery roadmap

To see what eDiscovery features have been launched, are rolling out, or in development, see the [Microsoft 365 Roadmap](https://aka.ms/eDiscoRoadMap).