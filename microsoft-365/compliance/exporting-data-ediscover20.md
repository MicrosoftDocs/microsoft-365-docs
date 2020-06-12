---
title: "Export case data in Advanced eDiscovery"
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
description: "Learn how to export or download content from a review set for presentations or external reviews in an Advanced eDiscovery case. Also learn about the features and functionality that help you maintain chain of custody throughout the Advance eDiscovery workflow."
ms.custom: seo-marvel-mar2020
---

# Export case data in Advanced eDiscovery

There are three ways to export data from a review set:

**Download:** Download (by using a browser) a small set of native files. This is the quickest way to export a small set of data. This method preserves the native file names.

**Export:** Customize what data is exported. This includes exporting file metadata, native files, text files, and redacted documents that have been saved to a PDF file. After the exported data is uploaded to an Azure Storage location, you can download it to a local computer. For more information, see:

- [Export documents from a review set](export-documents-from-review-set.md)

- [Download export jobs](download-export-jobs.md)

**Add to another review set:** Copy data from one review set to a different review set. For more information, see [Add data from one review set to another review set](add-data-to-review-set-from-another-review-set.md).

## Chain of custody in Advanced eDiscovery

Advanced eDiscovery provides the following functionality to help you show the chain of custody of documents and file from collecting them from their original content locations, adding them to review sets, and then exporting them during the production process.

- **Reporting.** Advanced eDiscovery allows the transparent and chronological tracking of documents and files as they progress through the eDiscovery workflow. You can track the progression of documents with [collection statistics](search-statistics.md), load set reports, and [export reports](export-documents-from-review-set.md#export-structure) (including the export load file).

- **Hashing.** When you export documents from a review set, both MD5 (128-bit) and SHA-256 (256-bit) hashes are applied to documents. These hash values are listed in the load file that contains the metadata associated with exported documents. These hash values can be used to verify a document's integrity after it's exported from Microsoft 365.

- **Auditing.** Most tasks performed in Advanced eDiscovery (such as running collection searches, adding data to a review set, and exporting data are logged in the Microsoft 365 audit log. This allows you to search for and export audit records that track the chronological history of events in the eDiscovery workflow. For more information, see [Search for eDiscovery activities in the audit log](search-for-ediscovery-activities-in-the-audit-log.md).
