---
title: "Microsoft Purview eDiscovery solutions"
description: "Microsoft Purview offers three eDiscovery tools that you can use to search for and export content found in different locations such as Exchange mailboxes, SharePoint and OneDrive for Business sites, Microsoft 365 Groups, Microsoft Teams, and Skype for Business conversations. eDiscovery (Standard) and eDiscovery (Premium) provide many additional features to help you manage your investigations."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 01/01/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.collection: 
- tier1
- purview-compliance
- m365solution-ediscovery
- m365solution-overview
- highpri
- ediscovery
ms.localizationpriority: medium
search.appverid:
- SPO160
- MOE150
- MET150

---

# Microsoft Purview eDiscovery solutions

Electronic discovery, or eDiscovery, is the process of identifying and delivering electronic information that can be used as evidence in legal cases. You can use eDiscovery tools in Microsoft Purview to search for content in Exchange Online, OneDrive for Business, SharePoint Online, Microsoft Teams, Microsoft 365 Groups, and Yammer teams. You can search mailboxes and sites in the same eDiscovery search, and then export the search results. You can use Microsoft Purview eDiscovery (Standard) cases to identify, hold, and export content found in mailboxes and sites. If your organization has an Office 365 E5 or Microsoft 365 E5 subscription (or related E5 add-on subscriptions), you can further manage custodians and analyze content by using the feature-rich Microsoft Purview eDiscovery (Premium) solution in Microsoft 365.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## eDiscovery solutions

Microsoft Purview provides three eDiscovery solutions: Content search, eDiscovery (Standard), and eDiscovery (Premium).

|Content Search|eDiscovery (Standard)|eDiscovery (Premium)|
|:-------------|:--------------------|:-------------------|
|- Search for content </br> - Keyword queries and search conditions </br> - Export search results </br> - Role-based permissions|- Search and export </br> - Case management </br> - Legal hold| - Custodian management </br> - Legal hold notifications </br> - Advanced indexing </br> - Review set filtering </br> - Tagging </br> - Analytics </br> - Predictive coding models </br> And more...|

- **Content search**. Use the Content search tool to search for content across Microsoft 365 data sources and then export the search results to a local computer.
- **eDiscovery (Standard)**. eDiscovery (Standard) builds on the basic search and export functionality of Content search by enabling you to create eDiscovery cases and assign eDiscovery managers to specific cases. eDiscovery managers can only access the cases of which they're members. eDiscovery (Standard) also lets you associate searches and exports with a case and lets you place an eDiscovery hold on content locations relevant to the case.
- **eDiscovery (Premium)**. The eDiscovery (Premium) tool builds on the existing case management, preservation, search, and export capabilities in eDiscovery (Standard). eDiscovery (Premium) provides an end-to-end workflow to identify, preserve, collect, review, analyze, and export content that's responsive to your organization's internal and external investigations. It lets legal teams manage custodians and the legal hold notification workflow to communicate with custodians involved in a case. It allows you to collect and copy data from the live service into review sets, when you can filter, search, and tag content to cull non-relevant content from further review so your workflow can identify and focus on content that's most relevant. eDiscovery (Premium) provides analytics and machine learning-based predictive coding models to further narrow to scope of your investigation to the most relevant content.

## Comparison of key capabilities

The following table compares the key capabilities available in Content search, eDiscovery (Standard), and eDiscovery (Premium).

|Capability|Content search|eDiscovery (Standard)|eDiscovery (Premium)|
|:------|:-------------|:-------------|:-------------|
|Search for content|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|
|Keyword queries and search conditions|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|
|Search statistics|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|
|Export search results|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|
|Role-based permissions|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|
|Case management||![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|
|Place content locations on legal hold||![Supported.](../media/check-mark.png)|![Supported.](../media/check-mark.png)|
|Custodian management|||![Supported.](../media/check-mark.png)|
|Legal hold notifications|||![Supported.](../media/check-mark.png)|
|Advanced indexing|||![Supported.](../media/check-mark.png)|
|Error remediation|||![Supported.](../media/check-mark.png)|
|Review sets|||![Supported.](../media/check-mark.png)|
|Support for cloud attachments and SharePoint versions|||![Supported.](../media/check-mark.png)|
|Optical character recognition|||![Supported.](../media/check-mark.png)|
|Conversation threading|||![Supported.](../media/check-mark.png)|
|Collection statistics and reports|||![Supported.](../media/check-mark.png)|
|Review set filtering|||![Supported.](../media/check-mark.png)|
|Tagging|||![Supported.](../media/check-mark.png)|
|Analytics|||![Supported.](../media/check-mark.png)|
|Predictive coding models|||![Supported.](../media/check-mark.png)|
|Computed document metadata|||![Supported.](../media/check-mark.png)|
|Transparency of long-running jobs|||![Supported.](../media/check-mark.png)|
|Export to customer-owned Azure Storage location|||![Supported.](../media/check-mark.png)|
|||||

Here's a description of each eDiscovery capability.

- **Search for content**. Search for content that's stored in Exchange mailboxes, OneDrive for Business accounts, SharePoint sites, Microsoft Teams, Microsoft 365 Groups, and Yammer Teams. This includes content generated by other Microsoft 365 apps that store data in mailboxes and sites.
- **Keyword queries and search conditions**. Create Keyword Query Language (KQL) search queries to search for content keywords that match query criteria. You can also include conditions to narrow the scope of your search.
- **Search statistics**. After you run a search, you can view statistics of the estimated search results, such as the number and total size of items matching your search criteria. Other statistics include the top content locations that contain search results and the number of items that match different parts of the search query.
- **Export search results**. Export search results to a local computer in your organization in a two-step process. When you export search results, items are copied from their original content location in Microsoft 365 to a Microsoft-provided Azure Storage location. Then you can download those items to a local computer.
- **Role-based permissions**. Use role-based access control (RBAC) permissions to control what eDiscovery-related tasks that different users can perform. You can use a built-in eDiscovery-related role group or create custom role groups that assign specific eDiscovery permissions.
- **Case management**. eDiscovery cases in eDiscovery (Standard) and eDiscovery (Premium) let you associate specific searches and exports with a specific investigation. You can also assign members to a case to control who can access the case and view the contents of the case. eDiscovery (Premium) also supports new case creation integration with [Microsoft Purview Insider Risk Management](/microsoft-365/compliance/insider-risk-management) cases.
- **Place content locations on legal hold**. Preserve content relevant to your investigation by placing a legal hold on the content locations in a case. This lets you secure electronically stored information from inadvertent (or intentional) deletion during your investigation.
- **Custodian management**. Manage the people that you've identified as people of interest in the case (called *custodians*) and other data sources that may not be associated with a custodian. When you add custodians and non-custodial data sources to a case, you can place a legal hold on these data sources, communicate with custodians by using the legal hold notification process, and search custodian and non-custodial data sources to collect content relevant to the case.
- **Legal hold notifications**. Manage the process of communicating with case custodians. A legal hold notification instructs custodians to preserve content that's relevant to the case. You can track the notices that were received, read, and acknowledged by custodians. The communications workflow in eDiscovery (Premium) allows you to create and send initial notifications, reminders, and escalations if custodians fail to acknowledge a hold notification.
- **Advanced indexing**. When you add custodial and non-custodian data sources to a case, the associated content locations are reindexed in a process called *Advanced indexing*. Advanced indexing ensures any content deemed as partially indexed is reprocessed to make it fully searchable when you collect data for an investigation.
- **Error remediation**. Fix processing errors using a process called *error remediation*. Error remediation allows you to rectify data issues that prevent eDiscovery (Premium) from properly processing the content during Advanced indexing. For example, files that are password protected can't be processed since the files are locked or encrypted. Using error remediation, you can download files with errors, remove the password protection, and then upload the remediated files.
- **Review sets**. Add relevant data to a review set. A review set is a secure, Microsoft-provided Azure Storage location in the Microsoft cloud. When you add data to a review set, the collected items are copied from their original content location to the review set. Review sets provide a static, known set of content that you can search, filter, tag, analyze, and predict relevancy using predictive coding models. You can also track and report on what content gets added to the review set.
- **Support for cloud attachments and SharePoint versions**. When you add content to a review set, you have the option to include cloud attachments or linked files. This means that the target file of a cloud attachment or linked file is added to the review set. You also have the option to add all versions of a SharePoint document to a review set.
- **Optical character recognition (OCR)**. When content is added to a review set, OCR functionality extracts text from images, and includes the image text with the content that's added to a review set. This lets you search for image text when you query the content in the review set.
- **Conversation threading**. When chat messages from Teams and Yammer conversations are added to a review set, you can collect the entire conversation thread. This means that the entire chat conversation that contains items that match the collection criteria is added to the review set. This lets you review chat items in the context of the back-and-forth conversation.
- **Collection statistics and reports**. After you create a collection estimate or commit a collection to a review set, you can view a rich set of statistics on the retrieved items, such as the content locations that contain the most items that matched the search criteria and the number of items returned by the search query. You can also preview a subset of the results.
- **Review set filtering**. After content is added to a review set, you can apply filters to display only the set of items that match your filtering criteria. Then you can save the filter sets as a query, which lets you quickly reapply the saved filters. Review set filtering and saved queries help you quickly select content items that are most relevant to your investigation.
- **Tagging**. Tags also help you omit non-relevant content and identify the most relevant content. When experts, attorneys, or other users review content in a review set, their opinions related to the content can be captured by using tags. For example, if the intent is to exclude unnecessary content, a user can tag documents with a tag such as "non-responsive". After content has been reviewed and tagged, a review set query can be created to exclude any content tagged as "non-responsive". This process eliminates the non-responsive content from subsequent steps in the eDiscovery workflow.
- **Analytics**. eDiscovery (Premium) provides tools to analyze review set documents to help you organize the documents in a coherent manner and reduce the volume of documents to be reviewed. *Near duplicate detection* groups textually similar documents together to help you make your review process more efficient. *Email threading* identifies specific email messages that  give a complete context of the conversation in an email thread. *Themes* functionality attempts to analyze themes in review set documents and assign a theme to documents so that you can review documents with related theme. These analytics capabilities help make your review process more efficient so that reviewers can review a fraction of collected documents.
- **Predictive coding models**. Use predictive coding models to reduce large volumes of case content to a relevant set of items that you can prioritize for review. This is accomplished by creating and training your own predictive coding models that help you prioritize the review of the most relevant items in a review set. The system uses the training to apply prediction scores to every item in the review set. This lets you filter items based on the prediction score, which  allows you to review the most relevant (or non-relevant) items first.
- **Computed document metadata**. Many of the eDiscovery (Premium) features, such as Advanced indexing, conversation threading, analytics, and predictive coding add metadata properties to review set documents. This metadata contains information related to the function performed by a specific feature. When reviewing documents, you can filter on metadata properties to display documents that match your filter criteria. This metadata can be imported into third-party review applications after review set documents are exported.
- **Transparency of long-running jobs**. Jobs in eDiscovery (Premium) are typically long-running processes that are triggered by user actions, such as the adding custodians to a case, adding content to a review set, running analytics, and training predictive coding models. You can track the status of these jobs and get support information if you need to escalate issues to Microsoft Support.
- **Export to customer-owned Azure Storage location**. When you export documents from a review set, you have the option to export them to an Azure Storage account managed by your organization. Additionally, eDiscovery (Premium) lets you customize what data is exported. This includes exporting file metadata, native files, text files, tags, and redacted documents saved to a PDF file.

## eDiscovery subscription comparison

The following sections show the minimum subscription requirements for Content search, eDiscovery (Standard), and eDiscovery (Premium). Subscriptions that support eDiscovery (Standard) also support Content search. Subscriptions that support eDiscovery (Premium) also support Content search and eDiscovery (Standard).

### Content search

- Microsoft 365 E1 subscription
- Microsoft 365 G1 subscription
- Microsoft 365 F1 or F3 subscription, or F5 Security add-on
- Microsoft 365 Business Premium subscription
- Microsoft 365 Business Standard subscription
- Microsoft 365 Business Basic subscription
- Office 365 Education A1 subscription
- Office 365 E1 subscription

### eDiscovery (Standard)

- Exchange Online Plan 2
- SharePoint Online Plan 2
- Microsoft 365 E3 subscription
- Microsoft 365 G3 subscription
- Microsoft 365 Business Premium subscription
- Microsoft 365 F5 Compliance add-on or F5 Security & Compliance add-on
- Microsoft 365 Education A3 or Office 365 Education A3 subscription
- Office 365 E3 subscription

### eDiscovery (Premium)

- Microsoft 365 E5 or Office 365 E5 subscription
- Microsoft 365 E3 subscription with E5 Compliance add-on
- Microsoft 365 E3 subscription with E5 eDiscovery and Audit add-on
- Microsoft 365 G5 subscription
- Microsoft 365 G5 subscription with G5 Compliance add-on
- Microsoft 365 G5 subscription with G5 eDiscovery and Audit add-on
- Microsoft 365 F5 Compliance add-on or F5 Security & Compliance add-on
- Microsoft 365 Education A5 or Office 365 Education A5 subscription

## Get started with eDiscovery

See the following articles to help you learn more and get started using Microsoft Purview eDiscovery solutions.

### Get started with Content search

- [Overview of Content search](search-for-content.md)
- [Get started with Content search](ediscovery-content-search.md)

### Get started with eDiscovery (Standard)

- [Get started with eDiscovery (Standard)](ediscovery-standard-get-started.md)

### Get started with eDiscovery (Premium)

- [Overview of eDiscovery (Premium)](ediscovery-overview.md)
- [Get started with eDiscovery (Premium)](ediscovery-premium-get-started.md)
- [Create and manage an eDiscovery (Premium) case](ediscovery-create-and-manage-cases.md)

## Integration with Insider Risk Management

Cases in [Microsoft Purview Insider Risk Management](https://compliance.microsoft.com/insiderriskmgmt) can be quickly escalated to new cases in Microsoft Purview eDiscovery (Premium) when additional legal review is needed for potentially risky user activity. The tight integration between these solutions can help your risk and legal teams work more efficiently and can help provide a complete end-to-end view of user activities under review. Check out how to [get started with Insider Risk Management](/microsoft-365/compliance/insider-risk-management-configure) and how to easily [escalate an Insider Risk Management case](/microsoft-365/compliance/insider-risk-management-cases#escalate-for-investigation) to an eDiscovery (Premium) case.

## eDiscovery roadmap

To see what eDiscovery features have been launched, are rolling out, or in development, see the [Microsoft 365 Roadmap](https://aka.ms/eDiscoRoadMap).

## Training

Training your IT administrators, eDiscovery managers, and compliance investigation teams in the basics for Content search, eDiscovery (Standard), and eDiscovery (Premium) can help your organization get started more quickly using Microsoft Purview eDiscovery tools. To help these users in your organization getting started with eDiscovery, see [Describe the eDiscovery and audit capabilities of Microsoft Purview](/training/modules/describe-ediscovery-capabilities-of-microsoft-365).
