---
title: "New case format in eDiscovery (Premium)"
description: "Use the new case format in eDiscovery (Premium) so you can add more items to review sets and take advantage of other increased limits and new functionality."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
ms.reviewer: ninachen
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- M365-security-compliance
- ediscovery 
search.appverid: 
- MOE150
- MET150
---

# Use the new case format in eDiscovery (Premium)

More organizations are using the eDiscovery (Premium) solution in Microsoft Purview for critical eDiscovery processes. This includes responding to regulatory requests, investigations, and litigation. As usage of eDiscovery (Premium) increases, a common customer requirement is to expand the total amount of content that can be managed in a single eDiscovery (Premium) case. To help accommodate significant increases in case size, both for total data volume and the total number of items, you can now choose the new case format when you create an eDiscovery (Premium) case.  

## Create a case

To create an eDiscovery (Premium) case using the new case format:

1. Go to <https://compliance.microsoft.com> and sign in.

2. In the left navigation pane of the Microsoft Purview compliance portal, click **eDiscovery > Advanced**.

3. On the **eDiscovery (Premium)** page, click the **Cases** tab, and then click **Create a case**.

   The **New eDiscovery case** flyout page is displayed. The **Case format** section provides the option to create a case using the new format.

   ![New case format option on the New eDiscovery case page.](..\media\AeDNewCaseFormat1.png)

4. After naming the case, select the **New** option, and then click **Save** to create the case using the new format.

## Benefits of the new case format

The new case format allows you to manage cases that contain over 40 million items. This capability helps you effectively manage large volumes of case data through the entire eDiscovery workflow.

Here's a list of other benefits of large cases in eDiscovery (Premium) workflow.

- **Collection**: In the new case format, you can collect up to 1 TB of data for a single collection.

   For each case, the collection settings will default to collect cloud Attachments and contextual Teams and Yammer content. These settings help to collect the full picture of digital communications within an investigation. For Teams and Yammer contextual conversations, the new case format will convert time-based snapshots of 1:1, 1: N and Channel conversations into HTML transcripts to help provide context of conversations and reduce the total number of items produced by chat-based content.  

- **Review**: Each review set will support up to 1 TB of pre-expansion content. Additional metadata will be available for filters and queries including Team name, channel name and conversation name for Teams content. Each transcript will include time-based content for before and after the responsive item. For Channel conversations, the root post and all replies will be collected for responsive content. For more information, see [eDiscovery (Premium) workflow for content in Microsoft Teams (preview)](teams-workflow-in-advanced-ediscovery.md)

- **Export**: You can export large sets of content in a single export job. The new case format lets you can export 5 million documents or 500 GB, whichever is smaller in an export job.

Additionally, the new case format includes an updated user interface that displays the total size of each review set in the case. Review set sizes are displayed in a column on the **Review sets** tab.

![New review set statistics in eDiscovery (Premium) user interface.](..\media\LargeCaseUI.png)

## Frequently asked questions

**If I attempt to collect over 1 TB in a single collection, will it work?**

The performance will be negatively impacted and may cause instability in some instances.

**If cloud attachments are included by default in the large case format; how can I remove that content from my review experience?**  

Use review set filters to filter by message kind or to exclude cloud attachments by using the HasAttachment filter. For more information, see [Query and filter content in a review set](review-set-search.md).

**When exporting chat conversation transcripts, will the load file contain all of the expanded metadata and a single item for each transcript?**

All metadata for a conversation is embedded in the HTML transcript file.  Many of the common fields are available in the load file. For more information about exported metadata, see [Document metadata fields in eDiscovery (Premium)](document-metadata-fields-in-Advanced-eDiscovery.md).
