---
title: "Microsoft 365 eDiscovery solutions"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: 
- m365-security-compliance
- m365solution-aed
- m365initiative-compliance
- m365solution-overview
localization_priority: Normal
search.appverid:
- SPO160
- MOE150
- MET150
description: "Microsoft 365 offers three eDiscovery tools that you can use to search for and export content found in different locations such as Exchange mailboxes, SharePoint and OneDrive for Business sites, Microsoft 365 Groups, Microsoft Teams, and Skype for Business conversations. Core eDiscovery and Advanced eDiscovery provide many additional features to help you manage your investigations."
---

# eDiscovery solutions in Microsoft 365

Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases. You can use eDiscovery tools in Microsoft 365 to search for content in Exchange Online, OneDrive for Business, SharePoint Online, Microsoft Teams, Microsoft 365 Groups, and Yammer teams. You can search mailboxes and sites in the same eDiscovery search, and then export the search results. Additionally, you can use Core eDiscovery cases to identify, hold, and export content found in mailboxes and sites. If your organization has an Office 365 E5 or Microsoft 365 E5 subscription (or related E5 add-on subscriptions), you can further manage custodians and analyze content by using the feature-rich Advanced eDiscovery solution in Microsoft 365.

## eDiscovery solutions

Microsoft 365 provides three eDiscovery solutions: Content search, Core eDiscovery, and Advanced eDiscovery.

![Key capabilities of Microsoft 365 eDiscovery tools](..\media\m365-ediscovery-solution-graphic.png)

- **Content search**. Use use the Content search tool to search for content across Microsoft 365 data sources and then export the search results to local computer.

- **Core eDiscovery**. Core eDiscovery builds on the basic search and export functionality of Content search enabling you to create eDiscovery cases and eDiscovery managers who can only access the case their members of. Core eDiscovery lets you associate searches and exports with a case and allows you to place an eDiscovery hold on content locations relevant to the case.

- **Advanced eDiscovery**. The Advanced eDiscovery tool builds on the existing case management, preservation, search, and export capabilities in Core eDiscovery. Advanced eDiscovery provides an end-to-end workflow to identify, preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It lets legal teams manage custodians and the legal hold notification workflow to communicate with custodians involved in a case. It allows you to collect and copy data from the live service into review sets, when you can filter, search, and tag content to cull non-relevant content from further review so your workflow can identify and focus on content that's most relevant. Advanced eDiscovery provides analytics and machine learning-based predictive coding models to further narrow to scope of your investigation to the most relevant content.

## Comparison of key capabilities

The following table compares the key capabilities available in Content search, Core eDiscovery, and Advanced eDiscovery.

|Capability|Content search|Core eDiscovery|Advanced eDiscovery|
|:------|:-------------|:-------------|:-------------|
|Search for content|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|
|Keyword queries and search conditions|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|
|Search statistics|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|
|Export search results|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|
|Role-based permissions|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|
|Case management||![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|
|Place content locations on legal hold||![Supported](../media/check-mark.png)|![Supported](../media/check-mark.png)|
|Custodian management|||![Supported](../media/check-mark.png)|
|Legal hold notifications|||![Supported](../media/check-mark.png)|
|Advanced indexing|||![Supported](../media/check-mark.png)|
|Error remediation|||![Supported](../media/check-mark.png)|
|Review sets|||![Supported](../media/check-mark.png)|
|Support for cloud attachments and SharePoint versions|||![Supported](../media/check-mark.png)|
|Optical character recognition|||![Supported](../media/check-mark.png)|
|Conversation reconstruction|||![Supported](../media/check-mark.png)|
|Collection statistics and reports|||![Supported](../media/check-mark.png)|
|Review set filtering|||![Supported](../media/check-mark.png)|
|Tagging|||![Supported](../media/check-mark.png)|
|Analytics|||![Supported](../media/check-mark.png)|
|Predictive coding models|||![Supported](../media/check-mark.png)|
|Computed document metadata|||![Supported](../media/check-mark.png)|
|Transparency of long-running jobs|||![Supported](../media/check-mark.png)|
|Export to customer-owned Azure Storage location|||![Supported](../media/check-mark.png)|
|||||

Here's description of each eDiscovery capability.

- **Search for content**. Search for content that's stored in Exchange mailboxes, One Drive for Business accounts, SharePoint sites, Microsoft Teams, Microsoft 365 Groups, and Yammer Teams. This includes content generated by other Microsoft 365 apps that store data in mailboxes and sites.

- **Keyword queries and search conditions**. Create KQL keyword search queries to search for content that match query criteria. You can also include conditions to narrow the scope of your search.

- **Search statistics**. After you run a search, you can view statistics of the estimated search results, such as the number and total size of items matching your search criteria. Additional statistics include the top content locations that contain search results and the number of items that match different parts of the search query.

- **Export search results**. Export search results to a local computer in your organization in a two-step process. When you export search results, items are copied from their original content location in Microsoft 365 to a Microsoft-provided Azure Storage location. Then you can download those items to a local computer.

- **Role-based permissions**. Use role-based access (RBAC) permissions to control what eDiscovery-related tasks that different users can perform. You can users to built-in eDiscovery-related role group or create custom role groups that assign specific eDiscovery permissions.

- **Case management**. eDiscovery cases in Core eDiscovery and Advanced eDiscovery let you associate specific searches and exports with a specific investigation. You can also assign members to a case to control who can access the case and view the contents of the case.

- **Place content locations on legal hold**. Preserve content relevant to your investigation by placing a legal hold on the content locations in a case. This lets you secure electronically stored information from inadvertent (or intentional) deletion during your investigation.

- **Custodian management**. Manage the people that you've identified as persons of interest in the case (called *custodians*) and other data sources that may not be associated with a custodian. When you add custodians and non-custodial data sources to a case, you can place a legal hold on these data sources, communicate with custodians by using the legal hold notification process, and search custodian and non-custodial data sources to collect content relevant to the case.

- **Legal hold notifications**. Manage the process of communicating with case custodians. A legal hold notification instructs custodians to preserve content that's relevant to the case. You can track the notices that have been received, read, and acknowledged by custodians. The communications workflow in Advanced eDiscovery allows you to create and send initial notifications, reminders, and escalations if custodians fail to acknowledge a hold notification.

- **Advanced indexing**. When you add custodial and non-custodian data sources to a case, the associated content locations are reindexed (in a process called *Advanced indexing*) so that any content that was deemed as partially indexed is reprocessed to make it fully searchable when you collect data for an investigation.

- **Error remediation**. Fix processing errors using a process called *error remediation*. Error remediation allows you to rectify data issues that prevent Advanced eDiscovery from properly processing the content during Advanced indexing. For example, files that are password protected can't be processed since the files are locked or encrypted. Using error remediation, you can download files with errors, remove the password protection, and then upload the remediated files.

- **Review sets**. Add relevant data to a review set. A review set is a secure, Microsoft-provided Azure Storage location in the Microsoft cloud. When you add data to a review set, the collected items are copied from their original content location to the review set. Review sets provide a static, known set of content that you can search, filter, tag, analyze, and predict relevancy using predictive coding models. You can also track and report on what content gets added to the review set.

- **Support for cloud attachments and SharePoint versions**. When you add content to a review set, you have the option to include cloud attachments or linked files. This means that the target file of a cloud attachment or linked file is added to the review set. You also have the option to add all version of a SharePoint document to a review set.

- **Optical character recognition (OCR)**. When content is added to a review set, OCR functionality extracts text from images, and includes the image text with the content that's added to a review set. This lets you search for image text when you query the content in the review set.

- **Conversation reconstruction**. When chat messages from Teams and Yammer conversations are added to a review set, you have the option to reconstruct the entire conversation thread. This means that the chat conversation that contains items that match the collection criteria is reconstructed. This lets you review chat items in the context of the back and forth conversation.

- **Collection statistics and reports**. After you create a draft collection or commit a commit a collection to a review set, you can view a rich set of statistics on the retrieved items, such as the content locations that contain the most items that matched the search criteria and the number of items returned by the search query. You can also preview a subset of the results. Additionally, this includes the number of child items that were extracted from their parent items and added as separate items to the review set.

- **Review set filtering**. After content is added to a review set, you can apply filters to display only the set of items that match your filtering criteria. Then you can save the filter sets as a query, which lets you quickly reapply the saved filters. Review set filtering and saved queries help you quickly cull content to the items that are most relevant to your investigation.

- **Tagging**. Tags also help you cull non-relevant content and identify the most relevant content. When experts, attorneys, or other users review content in a review set, their opinions related to the content can be captured by using tags. For example, if the intent is to cull unnecessary content, a user can tag documents with a tag such as "non-responsive". After content has been reviewed and tagged, a review set query can be created to exclude any content tagged as "non-responsive". This process eliminates the non-responsive content from subsequent steps in the eDiscovery workflow.

- **Analytics (email threading, themes, and near-duplicate detection)**.

- **Predictive coding models**. 

- **Computed document metadata**. 

- **Transparency of long-running jobs**. 

- **Export to customer-owned Azure Storage location**. 


## eDiscovery subscription comparison

The following sections show the minimum subscription requirements for Content search, Core eDiscovery, and Advanced eDiscovery.

### Content search

- Microsoft 365 E1 subscription
- Microsoft 365 G1 subscription
- Microsoft 365 Education A1 or Office 365 Education A1 subscription

### Core eDiscovery

- Microsoft 365 E3 subscription
- Microsoft 365 G3 subscription
- Microsoft 365 Education A3 or Office 365 Education A3 subscription

### Advanced eDiscovery

- Microsoft 365 E5 or Office 365 E5 subscription
- Microsoft 365 E3 subscription with E5 Compliance add-on
- Microsoft 365 E3 subscription with E5 eDiscovery and Audit add-on
- Microsoft 365 G5 subscription (paid or trial version)
- Microsoft 365 G5 subscription with G5 Compliance add-on
- Microsoft 365 G5 subscription with G5 eDiscovery and Audit add-on
- Microsoft 365 Education A5 or Office 365 Education A5 subscription

## eDiscovery roadmap

To see what eDiscovery features have been launched, are rolling out, or in development, see the [Microsoft 365 Roadmap](https://aka.ms/eDiscoRoadMap).
