---
title: "Advanced indexing of custodian data"
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

description: ""
---

# Advanced indexing of custodian data

When a custodian is added to an Advanced eDiscovery case, any content in Office 365 that was deemed as partially indexed is re-processed to make it fully searchable.  This process is called *Advanced indexing*. Content can be partially indexed for a number of reasons including the existence of images, unsupported file types or when indexing file size limits are encountered.

To learn more about processing support in Office 365 and partially indexed items, see:

- [Supported file types in Advanced eDiscovery](supported-filetypes-ediscovery20.md)
- [Partially indexed items in Content Search in Office 365](partially-indexed-items-in-content-search.md)
- [File formats indexed by Exchange Search](https://docs.microsoft.com/exchange/file-formats-indexed-by-exchange-search-exchange-2013-help)
- [Default crawled file name extensions and parsed file types in SharePoint Server](https://docs.microsoft.com/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types)

## Viewing Advanced indexing results

After the Advanced indexing process is completed, you can get an understanding of the effectiveness of re-processing.  In the Custodian Indexing view, the graph lists all items added to the *hybrid index*.  The hybrid index is where Advanced eDiscovery stores the re-processed content.

The graph also includes the number of items that require remediation and another graph of errors by file type. For more information, see:

- [Error remediation when processing data](error-remediation.md)
- [Single item error remediation](single-item-error-remediation.md)

## Updating Advanced indexes for custodians

When a custodian is added to an Advanced eDiscovery case, all partially indexed items are re-processed. However, as time passes, more partially indexed items may be added to a user's mailbox or OneDrive account.  When needed, you can update the indexes.

> [!NOTE]
> Updating custodian indexes is a long running process. It's recommended that you don't update indexes more than once per day in a case.
