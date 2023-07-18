---
title: "Advanced indexing of custodian and non-custodial data sources"
description: "When a custodian or non-custodial data source is added to an eDiscovery (Premium) case, any content that was deemed as partially indexed is reprocessed to make it fully searchable."
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 04/07/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
---

# Advanced indexing of custodian and non-custodial data sources

When a custodian or non-custodial data source is added to an eDiscovery (Premium) case, any content that was deemed as partially indexed or had indexing errors is reindexed. The reindexing process is called *Advanced indexing*. There are many reasons that content is partially indexed or has indexing errors. This includes image files or the presence of images in a file, unsupported file types, or file sized indexing limits.

For SharePoint files, Advanced indexing only runs on items marked as partially indexed or items with indexing errors. In Exchange, email messages with image attachments aren't marked as partially indexed or with indexing errors. This means that those files won't be reindexed by the Advanced indexing process.

To learn more about processing support and partially indexed items, see:

- [Supported file types in eDiscovery (Premium)](ediscovery-supported-file-types.md)
- [Partially indexed items in eDiscovery](ediscovery-partially-indexed-items-in-content-search.md)
- [File formats indexed by Exchange Search](/exchange/file-formats-indexed-by-exchange-search-exchange-2013-help)
- [Default crawled file name extensions and parsed file types in SharePoint Server](/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types)

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Viewing Advanced indexing results

After the Advanced indexing process is completed, you can get an understanding of the effectiveness of reprocessing.  In the Advanced indexing results view on the **Processing** tab for a case, the graph lists the number of items added to the *hybrid index*.  The hybrid index is where eDiscovery (Premium) stores the reprocessed content.

This view  also includes the number of items that require remediation and another graph of errors by file type. For more information, see:

- [Error remediation when processing data](ediscovery-error-remediation-when-processing-data.md)
- [Single item error remediation](ediscovery-single-item-error-remediation.md)

## Updating the Advanced index

When a custodian or non-custodial data source is added to an eDiscovery (Premium) case, all partially indexed items are reprocessed. However, as time passes, more partially indexed items may be added to a user's mailbox or OneDrive account.  If necessary, you can update the index for specific custodian or non-custodial data source. For more information, see [Manage custodians in an eDiscovery (Premium) case](ediscovery-manage-new-custodians.md#reindex-custodian-data). You can also update the index for all custodians and non-custodial data sources in a case by selecting the **Update index** on the **Processing** tab.

> [!NOTE]
> Updating custodian and non-custodial indexes is a long running process. It's recommended that you don't update indexes more than once a day in a case.
