---
title: "Microsoft Purview eDiscovery Graph connectors"
description: "Microsoft 365 customers can perform eDiscovery searches on content ingested for enterprise search."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 07/15/2022
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

# Use Graph connectors with eDiscovery (Premium)

Microsoft 365 customers can perform eDiscovery searches on content ingested for enterprise search. This will help organizations improve their compliance posture to external content sources by bringing them within the purview of Microsoft compliance solutions.

With Graph connectors, you can enable content from external data sources to be available to Microsoft Purview eDiscovery premium solution. Learn more about establishing Graph Connectors for your organization here: [Microsoft Graph connectors overview for Microsoft Search](/microsoftsearch/connectors-overview).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Add Graph Connector as a data source within a case

Once Graph Connectors are established for an organization and eDiscovery is enabled, the option to add the Graph Connector data source to the case will be available under non-Microsoft 365 locations. Only the connectors that have been established and enabled will be available to the eDiscovery manager for inclusion in a case.

:::image type="content" source="../media/ediscovery-graph-new.png" alt-text="You can select Graph as a data source.":::

## Collect Graph Connectors content

Upon adding Graph Connectors content as a data source this content is then available for search and collection. Within the collection wizard, select the Graph Connector content as a non-custodial data source, use conditions such as date range, keywords and more to search across the connected content to collect only the content of interest. Upon completion of the wizard get estimates for the amount of content that contains hits to your search criteria, and commit the collection to the review set.  

## Review content

Once collected to a review set, eDiscovery managers can review content from Graph Connectors to understand more about the content and work to assess if the information is critical and relevant to the case.  

## Export content

Once validated that the content collected into review is the correct content, this content is then available for export from the review set directly. Select export options and submit the export job for the Connectors content to be exported from the review set.
