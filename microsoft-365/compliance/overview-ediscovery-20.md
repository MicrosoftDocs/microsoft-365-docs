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
- m365-security-compliance
- m365solution-aed
- m365initiative-compliance
- m365solution-overview
search.appverid: 
- MOE150
- MET150
description: "Learn about the Advanced eDiscovery solution in Microsoft 365. This article provides an overview of Advanced eDiscovery in Microsoft 365, a tool to help you manage internal and external investigations. It also frames the business reasons for using Advanced eDiscovery to manage your legal investigations."
ms.custom: seo-marvel-apr2020
---

# Overview of Microsoft 365 Advanced eDiscovery

The Advanced eDiscovery solution in Microsoft 365 builds on the existing Microsoft eDiscovery and analytics capabilities. Advanced eDiscovery provides an end-to-end workflow to preserve, collect, analyze, review, and export content that's responsive to your organization's internal and external investigations. It also lets legal teams manage the entire legal hold notification workflow to communicate with custodians involved in a case.

## Advanced eDiscovery capabilities

Advanced eDiscovery can help your organization respond to legal matters or internal investigations by discovering data where it lives. You can seamlessly manage eDiscovery workflows by identifying persons of interest and their data sources, seamlessly apply holds to preserve data, and then manage the legal hold communication process. By collecting data from the source, you can search the live Microsoft 365 platform to quickly find what you need. Intelligent, machine learning capabilities such as deep indexing, email threading, and near duplicate detection also help you reduce large volumes of data to a relevant data set.

The following sections describe how these Advanced eDiscovery capabilities can help your organization.

![Advanced eDiscovery capabilities](../media/advanced-ediscovery-capabilities.png)

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

## Advanced eDiscovery alignment with the Electronic Discovery Reference Model

The built-in workflow of Advanced eDiscovery in Microsoft 365 aligns with the eDiscovery process outlined by the Electronic Discovery Reference Model (EDRM).

![The Electronic Discovery Reference Model (EDRM)](../media/EDRMv1.png)

(Image source courtesy of edrm.net. The source image was made available under Creative Commons Attribution 3.0 Unported License.)

At a high level, here's how Advanced eDiscovery supports the EDRM workflow:

- **Identification.** After you identify potential persons of interest in an investigation, you can add them as custodians (also called *data custodians*, because they may possess information that's relevant to the investigation) to an Advanced eDiscovery case. After users are added as custodians, it's easy to preserve, collect, and review custodian documents.

- **Preservation.** To preserve and protect data that's relevant to an investigation, Advanced eDiscovery lets you place a legal hold on the data sources associated with the custodians in a case. You can also place non-custodial data on hold. Advanced eDiscovery also has a built-in communications workflow so you can send legal hold notifications to custodians and track their acknowledgments.

- **Collection.** After you identified (and preserved) the data sources relevant to the investigation, you can use the built-in search tool in Advanced eDiscovery search for and collect live data from the custodial data sources (and non-custodial data sources, if applicable) that may be relevant to the case.

- **Processing.** After you've collected all data relevant to the case, the next step is process it for further review and analysis. In Advanced eDiscovery, the in-place data that you identified in the collection phase is copied to an Azure Storage location (called a *review set*), which provides you with a static view of the case data. 

- **Review.** After data has been added to a review set, you can view specific documents and run additional queries to reduce the data to what is most relevant to the case. Also, can annotate and tag specific documents.

- **Analysis.** Advanced eDiscovery provides integrated analytics tool that helps you further cull data from the review set that you determine isn't relevant to the investigation. In addition to reducing the volume of relevant data, Advance eDiscovery also helps you save legal review costs by letting you organize content to make the review process easier and more efficient.

- **Production** and **Presentation.** When you're ready, you can export documents from a review set for legal review. You can export documents in their native format or in an EDRM-specified format so they can be imported into third-party review applications.

## Subscriptions and licensing

Licensing for Advanced eDiscovery requires the appropriate organization subscription and per-user licensing.

- **Organization subscription:** To access Advanced eDiscovery in the Microsoft 365 compliance center, your organization must have one of the following:

  - Microsoft 365 E5 or Office 365 E5 subscription
  
  - Microsoft 365 E3 subscription with E5 Compliance add-on

  - Microsoft 365 E3 subscription with E5 eDiscovery and Audit add-on

  - Microsoft 365 Education A5 or Office 365 Education A5 subscription

   If you don't have an existing Microsoft 365 E5 plan and want to try Advanced eDiscovery, you can [add Microsoft 365](https://docs.microsoft.com/office365/admin/try-or-buy-microsoft-365) to your existing subscription or [sign up for a trial](https://www.microsoft.com/microsoft-365/enterprise) of Microsoft 365 E5.

- **Per-user licensing:** To add a user as a custodian in an Advance eDiscovery case, that user must be assigned one of the following licenses, depending on your organization subscription:

  - Microsoft 365: Users must be assigned a Microsoft 365 E5 license, an E5 Compliance add-on license, or an E5 eDiscovery and Audit add-on license. Microsoft 365 Education users must be assigned an A5 license.

  - Office 365: Users must be assigned an Office 365 E5 or Office 365 Education A5 license.

   For information about how to assign licenses, see [Assign licenses to users](https://docs.microsoft.com/microsoft-365/admin/manage/assign-licenses-to-users).

> [!NOTE]
> Users only need an E5 or A5 license (or the appropriate add-on license) to be added as custodians to an Advanced eDiscovery case. IT admins, eDiscovery managers, lawyers, paralegals, or investigators who use Advanced eDiscovery to manage cases and review case data don't need an E5, A5, or add-on license.

## Get started with Advanced eDiscovery

There are two quick and easy steps to get started with Advanced eDiscovery.

![Workflow getting started with Advanced eDiscovery](../media/get-started-AeD.png)

|Steps  |Description  |
|:---------|:---------|
|[Set up Advanced eDiscovery](get-started-with-advanced-ediscovery.md)| After verifying the subscription and licensing requirements, you can assign permissions and configure organization-wide settings to get started using Advanced eDiscovery.|
|[Create and manage cases](create-and-manage-advanced-ediscoveryv2-case.md) | Create cases to manage the Advanced eDiscovery workflow for all legal and other types of investigations in your organization.|
|||

## Advanced eDiscovery architecture

Here's an Advanced eDiscovery architecture diagram that shows the end-to-end workflow in a single-geo environment and in a multi-geo environment, and the end-to-end data flow that's aligned with the [EDRM](#advanced-ediscovery-alignment-with-the-electronic-discovery-reference-model).

[![Model poster: Advanced eDiscovery Architecture in Microsoft 365](../media/solutions-architecture-center/ediscovery-poster-thumb.png)](../media/solutions-architecture-center/m365-advanced-ediscovery-architecture.png)

[View as an image](../media/solutions-architecture-center/m365-advanced-ediscovery-architecture.png)

[Download as a PDF file](https://download.microsoft.com/download/d/1/c/d1ce536d-9bcf-4d31-b75b-fcf0dc560665/m365-advanced-ediscovery-architecture.pdf)

[Download as a Visio file](https://download.microsoft.com/download/d/1/c/d1ce536d-9bcf-4d31-b75b-fcf0dc560665/m365-advanced-ediscovery-architecture.vsdx)
