---
ms.date: 01/01/2024
title: Frequently asked questions about Topics
ms.author: daisyfeller
author: daisyfell
manager: elizapo
audience: admin
ms.reviewer: daisyfeller
ms.topic: article
ms.collection:
  - m365initiative-viva-topics
  - highpri
  - Tier1
  - essentials-security
  - essentials-privacy
  - essentials-compliance
ms.service: viva-topics 
search.appverid:
- MET150  
ms.localizationpriority: medium
description: Read commonly asked questions and answers about using Topics.
---

# Frequently asked questions about Topics

> [!NOTE]
> Topics will be retired on February 22, 2025. [Learn more about the changes coming to Topics.](changes-coming-to-topics.md)

## Topic discovery and curation

### How are topics discovered and updated?

There are two ways that topics are discovered:

- Users can add topics manually.
- AI can identify topics automatically.

Once a topic is identified, AI can discover alternate names, description, related people and resources. For manually added topics, AI may also be able to enrich it with more content based on what has been added to the topic page. In addition, users can manually update topic pages to adjust the topic description or highlight new resources and connections. These scenarios are part of the human and AI story where machine learning and human curation together can build a better experience for end users.

AI models are run in two steps:

- A pattern recognition that runs in a massively parallel manner on every update on every document to detect an initial set of candidate.
- An aggregation process that actually performs inferencing of topics and their metadata. Aggregation is executed in a centralized manner on a set of worker VMs.

The topics and metadata are updated incrementally as the changes are received in the system.

### How does Topics work when discovering new topics?

Topics builds an index similar to search, and relies on the SharePoint search crawler to keep the index up to date. The search crawler detects changes in SharePoint, performs basic parsing of various document formats; examples of this include files with the extensions: aspx, doc, docx, htm, html, mht, msg, one, pdf, ppt, pptx, pub, txt, xls, xlsx, visio. This list is subject to change as we learn more about what files are important to customers to include. Topics currently doesn't index image, video or audio file types. The file name, title, subject, author, last saved person, create date and its recent activities all play a role in contributing to the information used to discover topics. To inform suggestions for the topic description, people and resources, information from people and collaboration insights in the Microsoft Cloud that are available through [Microsoft Graph](/graph/overview) are used. Topics observes existing content security features in Microsoft 365.

Topics listens for changes in these documents, processing them for changes to the topics it has discovered. The main difference between Topics and search is that Topics builds a knowledge graph, not a full-text search index, making it possible to execute queries such as:

- Find all topics by name.
- Look up metadata of a given topic, such as alternative names.
- Find all related topics of a given topic.

Learn more about topic discovery and curation:

- [Topic discovery and curation in Topics](topic-experiences-discovery-curation.md)
- [Create a new topic in Topics](create-a-topic.md)

## Security and compliance

### When data is being indexed and analyzed, where is it stored and how long is it stored?

The storage is a tenant-wide service separated by geographical regions. Topics respects geo-sovereignty of the data it processes. The resulting topics and any intermediate state is shared into the corresponding regions where the data originates from.

For example, if topic A is identified from a file in NAM (North America), the topic will be present in the NAM region of the storage, with the corresponding relationship to the file and any metadata derived from it. In a multi-regional tenant, a single topic can span regions. Part of the topic can be physically stored in one region and another part can be stored in a different region, according to the origin of the underlying resources.

When content is migrated between regions, Topics data structures are updated accordingly, so if a file is migrated from EUR to GBR, the corresponding topic metadata will follow and be removed from EUR and created in the GBR.

Topics index metadata and state are kept as long as the underlying content is present in the tenancy, similar to search index. A topic is deleted when there is no evidence that contributes to the topic are present in the tenancy.

### Will data be decrypted or still be in encrypted form?

All the data is kept within the Microsoft Purview boundary, which is encrypted at rest and in transit. The content is decrypted when being processed. When the data is written to storage, it will be encrypted according to the tenant configuration.

### How does Topics protect security and compliance of content?

Topics is based on the security and compliance of content enforced across Microsoft 365. For example, access, retention labels, data sovereignty, and information barriers are all maintained consistently before and after the activation of Topics. Organizations can apply even more stringent restrictions on the scope and availability of topic information shared by Topics.  

User permissions are enforced in a similar way to search. Users can only see metadata from topics if they have read permissions to at least one file or document where the metadata was derived from. Topics maintains access control lists (ACLs) from the original content and checks permissions on every piece of topic metadata independently.

For more information about security and compliance, see the following help articles:

- [Security and privacy in Topics](topic-experiences-security-privacy.md)
- [Manage topic permissions in Topics](topic-experiences-user-permissions.md)
- [Security trimming in Topics](topic-experiences-security-trimming.md)

## User experience

### Where can users see topics in their flow of work?

Users can find topics in SharePoint, Microsoft 365 web apps, and by using the topic picker. [Learn more about where users can find topics](where-to-find-topics.md).

### Does the knowledge manager or contributor need to have explicit access to all the SharePoint sites being indexed?

There is no requirement for the knowledge admin to have access to all sites, but it is helpful if the knowledge manager has sufficient access to perform knowledge organization in the tenancy. A contributor doesn't need to have any more access than is required to contribute to a particular topic.

### How does scanning happen on SharePoint pages, Word documents, PowerPoint slides, Outlook email, and so on, for Topics to identify topic keywords and highlight for users?

Topics relies on the search crawler for detecting changes and initial parsing of the document formats. Topics only deals with text content, so all document formats are processed in the same way.

Learn more about the user experience:

- [Get started with Topics](get-started-with-viva-topics.md)
- [Manage topics in the topic center in Topics](manage-topics.md)
