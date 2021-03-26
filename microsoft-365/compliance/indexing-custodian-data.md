---
title: "Advanced indexing of custodian data"
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
description: "When a custodian is added to an Advanced eDiscovery case, any content that was deemed as partially indexed is reprocessed to make it fully searchable."
---

# Advanced indexing of custodian data

When a custodian is added to an Advanced eDiscovery case, any content that was deemed as partially indexed is reprocessed to make it fully searchable.  This process is called *Advanced indexing*. Content can be partially indexed for a number of reasons including the existence of images, unsupported file types or when indexing file size limits are encountered.

To learn more about processing support and partially indexed items, see:

- [Supported file types in Advanced eDiscovery](supported-filetypes-ediscovery20.md)

- [Partially indexed items in Content Search in Office 365](partially-indexed-items-in-content-search.md)

- [File formats indexed by Exchange Search](/exchange/file-formats-indexed-by-exchange-search-exchange-2013-help)

- [Default crawled file name extensions and parsed file types in SharePoint Server](/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types)

## Viewing Advanced indexing results

After the Advanced indexing process is completed, you can get an understanding of the effectiveness of reprocessing.  In the Advanced indexing results view on the **Processing** tab for a case, the graph lists the number of items added to the *hybrid index*.  The hybrid index is where Advanced eDiscovery stores the reprocessed content.

This view  also includes the number of items that require remediation and another graph of errors by file type. For more information, see:

- [Error remediation when processing data](error-remediation-when-processing-data-in-advanced-ediscovery.md)

- [Single item error remediation](single-item-error-remediation.md)

## Updating the Advanced index for custodians

When a custodian is added to an Advanced eDiscovery case, all partially indexed items are reprocessed. However, as time passes, more partially indexed items may be added to a user's mailbox or OneDrive account.  If necessary, you can update the index for specific custodian. For more information, see [Manage custodians in an Advanced eDiscovery case](manage-new-custodians.md#re-index-custodian-data). You can also update the index for all custodians in a case by clicking the **Update index** on the **Processing** tab.

> [!NOTE]
> Updating custodian indexes is a long running process. It's recommended that you don't update indexes more than once a day in a case.