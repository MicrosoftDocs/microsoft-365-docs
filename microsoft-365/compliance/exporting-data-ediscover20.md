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

- **Reporting.** Advanced eDiscovery allows transparent (and chronological) tracking of documents and files as they progress through the eDiscovery workflow. You can track the progression of documents with collection statistics, load set reports, and exports reports (include the export load file).

- **Hashing.** When you export documents from a review set, both MD5 (128-bit) and SHA-256 (256-bit) hashes are applied to all documents. These hash values are listed in the load file that contains the metadata associated with exported documents. These hash values can be used as a checksum to verify the document after it's exported from Microsoft 365.

- **Auditing.** Most actions and tasks related to documents and files that are performed in Advanced eDiscovery (such as running collection searches, adding data to a review set, and are logged in the Microsoft 365 audit log. This allows you to search the audit log and collect (and export) audit records that can track the chronological progression

chronological history of the handling of electronic evidence. 

In Microsoft 365, the data is hashed and those hashes are provided in the output file for verification purposes. This is supplemented by audit logs. The Advanced eDiscovery activities we capture in audit logs are located here.” 

we also are transparent as files move from collection to export so customers can track data progressing through the flow (e.g. collection reports, load set reports, export reports, etc.).

A chain of custody ensures that the data presented is “as originally acquired” and has not been altered prior to admission into evidence. Some providers maintain an electronic chain-of-custody link between all electronic data and its original physical media 