---
title: "eDiscovery in Office 365"
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 6/29/2018
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- SPO160
- MOE150
ms.assetid: 143b3ab8-8cb0-4036-a5fc-6536d837bfce
description: "Office 365 offers a number of different eDiscovery tools that you can use to search for and hold content found in different locations such as Exchange mailboxes, SharePoint and OneDrive for Business sites, Office 365 groups, and Skype for Business conversations."
---

# eDiscovery in Office 365

Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases. You can use eDiscovery in Office 365 to search for content in Exchange Online mailboxes, Office 365 Groups, Microsoft Teams, SharePoint Online and OneDrive for Business sites, and Skype for Business conversations. You can search mailboxes and sites in the same eDiscovery search by using the Content Search tool in the Security & Compliance Center. And you can use eDiscovery cases in the Security & Compliance Center to identify, hold, and export content found in mailboxes and sites. If your organization has an Office 365 E5 subscription, you can further analyze content by using the Advanced eDiscovery solution in Microsoft 365.
  
Office 365 provides the following eDiscovery tools:
  
- [Content Search in the Security & Compliance Center](#content-search-in-the-security--compliance-center)
    
- [eDiscovery Cases in the Security & Compliance Center](#ediscovery-cases-in-the-security--compliance-center)
    
- [Advanced eDiscovery solution in Microsoft 365](#advanced-ediscovery-solution-in-microsoft-365)
    
## Content Search in the Security & Compliance Center

The following table contains links to topics that will help you use the Content Search tool in the Security & Compliance Center.
  
|**Topic**|**Description**|
|:-----|:-----|
|[Run a Content Search](content-search.md) <br/> |Learn how to use the Content Search tool to search mailboxes, public folders, Office 365 Groups, Microsoft Teams, SharePoint Online sites, One Drive for Business locations, and Skype for Business conversations in your Office 365 organization in a single search.  <br/> |
|[Keyword queries and search conditions for Content Search](keyword-queries-and-search-conditions.md) <br/> |Learn about the email and file properties and search conditions you can use to search for content in mailboxes and sites in your Office 365 organization.  <br/> |
|[View keyword statistics for Content Search results](view-keyword-statistics-for-content-search.md) <br/> |Learn how to use search statistics to display and compare the statistics for one or more content searches, and to configure new and existing searches to return statistics for each keyword in the search query.  <br/> |
|[Bulk edit Content Searches in the Security & Compliance Center](bulk-edit-content-searches.md) <br/> |Learn how to bulk edit the search queries and content locations of one or more Content Searches.  <br/> |
|[Export search results from the Security & Compliance Center](export-search-results.md) <br/> |Learn how to export the results of a Content Search.  <br/> |
|[Increase the download speed when exporting eDiscovery search results from Office 365](increase-download-speeds-when-exporting-ediscovery-results.md) <br/> |Learn how to configure the Windows Registry on your computer to increase the download speed with exporting Content Search results.  <br/> |
|[Export a Content Search report](export-a-content-search-report.md) <br/> |Learn how to download the export report without having to export the actual search results.  <br/> |
|[Limits for Content Search in the Security & Compliance Center](limits-for-content-search.md) <br/> |Learn about the limits of the Content Search tool, such as the maximum number of searches that you can run at one time.  <br/> |
|[Unindexed items in Content Search](partially-indexed-items-in-content-search.md) <br/> |Learn about unindexed items in Exchange and SharePoint that you can include in the estimated search result statistics when you run a search. You can also include unindexed items when you export search results.  <br/> |
|[Differences between estimated and actual eDiscovery search results in Office 365](differences-between-estimated-and-actual-ediscovery-search-results.md) <br/> |Learn about the reasons why there might be differences between the number of estimated search results and the number of actual items that are exported.  <br/> |
|[De-duplication in eDiscovery search results](de-duplication-in-ediscovery-search-results.md) <br/> |Learn about the optional de-duplication feature that you can enable when you export Exchange email messages that are the results of a Content Search.  <br/> |
|[Search for and delete email messages in your Office 365 organization](search-for-and-delete-messages-in-your-organization.md) <br/> |Learn how to use Content Search to search for and delete an email message from  *all*  mailboxes in your organization. This can help you find and remove potentially harmful or high-risk email.  <br/> |
|[Use Content Search to search the mailbox and OneDrive for Business site for a list of users](search-the-mailbox-and-onedrive-for-business-for-a-list-of-users.md) <br/> |Learn how to use a script to search the mailbox and One Drive for Business site for a group of users. Use [Step 2: Generate a list of users](search-the-mailbox-and-onedrive-for-business-for-a-list-of-users.md#step-2-generate-a-list-of-users) in this topic to quickly generate a list of email addresses that you can use for the source content locations when you create and run the search in Step 3.  <br/> |
|[Create, report on, and delete multiple Content Searches](create-report-on-and-delete-multiple-content-searches.md) <br/> |Learn how to use scripts to create multiple Content Searches, run reports to get the estimated results for each search, and then delete the searches. This can help you to quickly and efficiently identify and cull search data.  <br/> |
|[Clone a Content Search in the Security & Compliance Center](clone-a-content-search.md) <br/> |Learn how to use the Windows PowerShell script in this article to quickly clone an existing Content Search. This can help you compare the results of different keyword search queries run on the same content locations or save time because you don't have to re-enter a large number of content locations when you create a new search.  <br/> |
|[Configure permissions filtering for Content Search](permissions-filtering-for-content-search.md) <br/> |Learn how to use permissions filtering to let an eDiscovery manager search only a subset of mailboxes and sites in your Office 365 organization.  <br/> |
|[Prepare a CSV file for a targeted Content Search](csv-file-for-an-id-list-content-search.md) <br/> |Learn how to use a Results.csv file or Unindexed Items.csv file (both which contain information about the results of a content search) to create a targeted search for specific mailbox items.  <br/> |
|[Use Content Search in Office 365 for targeted collections](use-content-search-for-targeted-collections.md) <br/> |Learn how to use the Windows PowerShell script in this article to perform targeted collections using Content Search. A targeted collection means you want to search a specific folder because you're confident that items responsive to a case (or privileged items) are located in that folder. Use the script in this article to obtain the folder ID or path for the specific mailbox or site folders that you want to search.  <br/> |
|[Use Content Search to search third-party data that was imported to Office 365](use-content-search-to-search-third-party-data-that-was-imported.md) <br/> |Learn how to use the  `kind` and  `itemclass` message properties to search third-party data that you imported to Office 365.  <br/> |
  
## eDiscovery Cases in the Security & Compliance Center

The following table contains links to topics that will help you use eDiscovery cases in the Security & Compliance Center. Use cases to add members who can access the case, place a hold on content locations relevant to the case, associate multiple Content Searches with the case, and export the search results from the case.
  
|**Topic**|**Description**|
|:-----|:-----|
|[Manage eDiscovery cases in the Security & Compliance Center](ediscovery-cases.md) <br/> |Learn how to create and manage eDiscovery cases in the Security & Compliance Center.  <br/> |
|[Assign eDiscovery permissions in the Office 365 Security & Compliance Center](assign-ediscovery-permissions.md) <br/> |Learn how to assign eDiscovery permissions in the Security & Compliance Center. You can assign permissions to let users create eDiscovery cases, create holds associated with an eDiscovery case, run Content Searches, preview search results, and export search results.  <br/> |
|[Create a report on holds in eDiscovery cases in Office 365](create-a-report-on-holds-in-ediscovery-cases.md) <br/> |Learn how to use the Windows PowerShell script in this article to generate a report that contains information about all the holds that are associated with eDiscovery cases in the Security & Compliance Center.  <br/> |
|[Use a script to add users to a hold in an eDiscovery case in the Security & Compliance Center](use-a-script-to-add-users-to-a-hold-in-ediscovery.md) <br/> |Learn how to use the Windows PowerShell script in this article to quickly add the mailboxes and OneDrive for Business sites for a list of users to a new hold that's associated with an eDiscovery case in the Security & Compliance Center.  <br/> |
|[Search for eDiscovery activities in the Office 365 audit log](search-for-ediscovery-activities-in-the-audit-log.md) <br/> |Learn how to search the Office 365 audit log for activities related to creating and managing eDiscovery cases and Content Searches.  <br/> |
  
## Advanced eDiscovery solution in Microsoft 365

The Advanced eDiscovery solution in Microsoft 365 builds on the existing eDiscovery and analytics capabilities in Office 365. This new solution, called *Advanced eDiscovery*, provides an end-to-end workflow to preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It also lets legal teams manage the entire legal hold notification workflow to communicate with custodians involved in a case. 

For more information, see [Overview of the Advanced eDiscovery solution in Microsoft 365](overview-ediscovery-20.md).