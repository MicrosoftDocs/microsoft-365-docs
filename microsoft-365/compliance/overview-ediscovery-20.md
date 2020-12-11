---
title: "Overview of the Advanced eDiscovery solution in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
- m365solution-aed
- m365initiative-compliance
search.appverid: 
- MOE150
- MET150
description: "Learn about the Advanced eDiscovery solution in Microsoft 365. This article provides an overview of Advanced eDiscovery in Microsoft 365, a tool to help you manage internal and external investigations. It also frames the business reasons for using Advanced eDiscovery to manage your legal investigations."
ms.custom: seo-marvel-apr2020
---

# Overview of Microsoft 365 Advanced eDiscovery

The Advanced eDiscovery solution in Microsoft 365 builds on the existing Microsoft eDiscovery and analytics capabilities. Advanced eDiscovery provides an end-to-end workflow to preserve, collect, analyze, review, analyze, and export content that's responsive to your organization's internal and external investigations. It also lets legal teams manage the entire legal hold notification workflow to communicate with custodians involved in a case.

## Why use Microsoft 365 Advanced eDiscovery?

Advanced eDiscovery can help your organization respond to legal matters or internal investigations by discovering data where it lives. You can seamlessly manage eDiscovery workflows by identifying persons of interest and their data sources, seamlessly apply holds to preserve data, and then manage the legal hold communication process. By collecting data from the source, you can search the live Microsoft 365 platform to quickly find what you need. Intelligent, machine learning capabilities such as deep indexing, email threading, and near duplicate detection also helps you to reduce large volumes of data to a relevant data set. The following sections describe how these Advanced eDiscovery capabilities of can help your organization.

### Discover and collect data in-place

Traditionally, organizations that rely on multiple third-party eDiscovery solutions require copying large volumes of data out of Microsoft 365 to process and having to host duplicate data. This necessity increases the time to find relevant data and the risk, cost, and complexity of managing multiple solutions.

Advanced eDiscovery in Microsoft 365 lets you discover data at the source and staying within your Microsoft 365 security and compliance boundary.  By collecting data in-place from the live system, Advanced eDiscovery reduces the friction of going back to the source and reduces unnecessary work of having to find missing content, which often happens when journaling lags in traditional eDiscovery solutions.

Native search and collection capabilities for data in Teams, Yammer, SharePoint Online, OneDrive for Business, and Exchange Online further enhances data discovery. For example,  Advanced eDiscovery:

- Reconstructs Teams conversations (instead of returning individual messages from conversations).

- Collects cloud-based content shared with users by use of links or modern attachments in email message and Teams chats.

- Has built-in support for hundreds of non-Microsoft 365 file types.

- Collects data from third-party sources (such as Bloomberg, Facebook, Slack, and Zoom Meetings) that's imported and archived in Microsoft 365 by [data connectors](archiving-third-party-data.md).

### Manage eDiscovery workflow in one platform

Advanced eDiscovery can help you reduce the number of eDiscovery solutions you need to rely on. It provides a streamlined, end-to-end workflow, all which occurs within Microsoft 365. Advanced eDiscovery helps reduce the friction of identifying and collecting potential sources of relevant information by automatically mapping unique and shared data sources to the person of interest (known as a *custodian*), and by providing reporting and analytics on potentially relevant data prior to collecting it for analysis and review.

Additionally, Microsoft Graph APIs can help you automate the eDiscovery workflow and extend Advanced eDiscovery for custom solutions.

### Cull data intelligently

Intelligent, machine learning capabilities in Advanced eDiscovery help you reduce the amount of data to review. These intelligent capabilities help you reduce and cull large volumes of data to a relevant set. For example, a built-in review set query helps filter only for unique content by identifying near duplicates. This capability can substantially reduce the amount of data to review.

Additional machine learning capabilities can further refine and identify relevant data using smart tags and technology assisted review tools like the Relevance modules.

## Advanced eDiscovery architecture

Here's an Advanced eDiscovery architecture diagram that shows the end-to-end workflow in a single-geo environment and in a multi-geo environment, and the end-to-end data flow that's aligned with the [Electronic Discovery Reference Model](advanced-ediscovery-edrm.md) (EDRM).

[![Model poster: Advanced eDiscovery Architecture in Microsoft 365](../media/solutions-architecture-center/ediscovery-poster-thumb.png)](../media/solutions-architecture-center/m365-advanced-ediscovery-architecture.png)

[View as an image](../media/solutions-architecture-center/m365-advanced-ediscovery-architecture.png)

[Download as a PDF file](https://download.microsoft.com/download/d/1/c/d1ce536d-9bcf-4d31-b75b-fcf0dc560665/m365-advanced-ediscovery-architecture.pdf)

[Download as a Visio file](https://download.microsoft.com/download/d/1/c/d1ce536d-9bcf-4d31-b75b-fcf0dc560665/m365-advanced-ediscovery-architecture.vsdx)

For more information about the end-to-end workflow in Advanced eDiscovery, see this [Microsoft Mechanics video](https://go.microsoft.com/fwlink/?linkid=2066133).

## Advanced eDiscovery workflow

The following sections describe each step in the built-in workflow in the Advanced eDiscovery tool in the Microsoft 365 compliance center. The following screenshot shows the **Overview** tab of a case named *2020.11.03 - Contoso v. Fabrikam*.

![Tabs in built-in Advanced eDiscovery workflow](../media/AeD-Case-Screenshot1.png)

For more detailed information, see [Manage the Advanced eDiscovery workflow](create-and-manage-advanced-ediscoveryv2-case.md#manage-the-workflow).

## Managing custodians and non-custodial data sources

Use the **Data sources** tab to add and manage the people that you've identified as persons of interest in the case and other data sources that may not be associated with a custodian. When you add custodians or non-custodial data sources, you can quickly perform actions like placing a legal hold on custodian and non-custodial data sources, communicating with custodians, and searching custodian and non-custodial data sources to collect content that's relevant to the case. As the case progresses, it's easy to add new custodians or non-custodial date sources or release them from the case. For more information, see [Work with custodians](managing-custodians.md).

## Managing legal hold notifications

Use the **Communications** tab to manage the process of communicating with the custodians in the case. A legal hold notice instructs custodians to preserve any content that's relevant to the case. Legal teams must be able to track the notices that have been received, read, and acknowledged by custodians. The communications workflow in Advanced eDiscovery allows you to create and send initial notifications, reminders, release notices, and escalations if custodians fail to acknowledge a hold notification. For more information, see [Work with communications](managing-custodian-communications.md).

## Managing content preservation

When you add a custodian to a case, you can place a hold on custodial data. Use the **Hold** tab to manage the hold created when you add custodians, and to manage other legal holds associated with the case; for example, you can identify and place a hold on non-custodial data sources. You can also edit any hold in the case and make it a query-based hold to preserve only the content that matches the query. For example, you could add a date range to the hold so that only content created within a specific date ranged in preserved. You can also get statistics on content that's on hold, remove the hold after it's no longer relevant to the case, or delete it. For more information, see [Manage holds](managing-holds.md).

## Indexing custodian data

When you add a custodian and the corresponding custodial data sources to a case, any partially indexed item from a custodian data source is reindexed by a process called *Advanced indexing*. This allows custodial content such as images, unsupported file types, and other potentially unindexed content to be fully searchable when you run searches to collect data for the case. Use the **Processing** tab to monitor the status of Advanced indexing and fix processing errors by using a process called *error remediation*. For more information, see [Fix processing errors](processing-data-for-case.md).

## Collecting case data

Use the **Searches** tab to create searches to search the in-place custodial and non-custodial data sources for content relevant to the case. You can create and run query-based searches (using keywords and conditions) to identify a set of email messages and documents that are relevant to the case and that you want to further review and analyze in subsequent steps in the eDiscovery workflow. You can create one or more searches associated with the case. You can also use the search tool to preview sample documents and view search statistics to help you refine and improve the search results. After you're satisfied the search results contain the all data relevant to the case, you add the search results to a review set for further review, analysis, and culling. For more information, see [Collect data for a case](collecting-data-for-ediscovery.md).

## Reviewing and analyzing case data

Use the **Review sets** tab to review and analyze the content you've collected from the live system and added to a review set. A *review set* is a static collection of that data (in other words, an offline copy of data) of custodial data (and, if applicable, non-custodial data) that you collected in the previous phase of the eDiscovery workflow. When you add search results to a review set, a process is triggered to extract files from containers, extract metadata, and extract text. When this process is complete, the system builds a new index of all the data collected from custodians and adds it to the review set. After the data is added to the review set, you can run more queries to narrow the case data, view data as text or in the native file format, and annotate, redact, and tag documents in the review set. You can also perform advanced analytics, such as identifying document duplication, email threading, and themes. After you've culled the data to only what is relevant to the case, you can either download documents directly or export them along with file metadata, annotations, and any tags. For more information, see:

- [View documents in a review set](view-documents-in-review-set.md)

- [Query the data in a review set](review-set-search.md)

- [Tag documents in a review set](tagging-documents.md)

- [Analyze data in a review set](analyzing-data-in-review-set.md)

## Exporting data for review and presentation

After you export the data from a review set, use the **Exports** tab to manage an export job and download data from a review set. When you export a review set, the data is uploaded to a Microsoft-provided Azure Storage location (or an Azure Storage location managed by your organization). After it's uploaded to Azure, it's then and available to download to a local computer. You can obtain the storage assess key necessary to download the exported data on the **Exports** tab. For more information, see [Export case data](exporting-data-ediscover20.md).

## Managing jobs

Use the **Jobs** tab to monitor long-running processes for case-related tasks that you've initiated. Examples of jobs include ones related to reindexing, searching, and exporting case data. For example, if you create a search on the **Searches** tab that includes many data sources, the status of this search process will be displayed on the **Jobs** tab. For more information, see [Manage jobs](managing-jobs-ediscovery20.md).

## Configuring case settings

Use the **Settings** tab to configure case-wide settings. This includes adding members to a case, closing or deleting a case, and configuring search and analytics settings.
