---
title: "Advanced indexing of data for an investigation"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 
description: "Learn how to use Advanced indexing to make sure your search captures all the data you want to investigate."
ms.custom: seo-marvel-mar2020
---

# Advanced indexing of data for an investigation

Content in the live system can be partially indexed for a number of reasons including the existence of images, unsupported file types or when indexing file size limits are encountered. When you are dealing with high risk data spill, you want to make sure that your search captured all data that you want to investigate. When a person of interest is added to a Data investigation, any content that was deemed as partially indexed is reprocessed to make it fully searchable. This process is called *Advanced indexing*. 

To learn more about processing support and partially indexed items, see:

- [Supported file types in Data Investigations](supported-filetypes-datainvestigations.md)

- [Partially indexed items in Content Search in Office 365](partially-indexed-items-in-content-search.md)

- [File formats indexed by Exchange Search](https://docs.microsoft.com/exchange/file-formats-indexed-by-exchange-search-exchange-2013-help)

- [Default crawled file name extensions and parsed file types in SharePoint Server](https://docs.microsoft.com/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types)

## Viewing Advanced indexing results

After the Advanced indexing process is completed, you can get an understanding of the effectiveness of reprocessing.  In the People of interest indexing view, the graph lists all items added to the *hybrid index*.  The hybrid index is where Data Investigations (preview) stores the reprocessed content.

The graph also includes the number of items that require remediation and another graph of errors by file type. For more information, see [Error remediation when processing data](error-remediation.md).

## Updating Advanced indexes for people of interest

When a person of interest is added to a data investigation, all partially indexed items are reprocessed. However, as time passes, more partially indexed items may be added to a user's mailbox or OneDrive account.  When needed, you can update the indexes.

> [!NOTE]
> Updating people of interest indexes is a long running process. It's recommended that you don't update indexes more than once per day in an investigation.
