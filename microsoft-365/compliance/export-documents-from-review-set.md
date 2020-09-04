---
title: "Export documents from a review set"
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

description: Learn how to select and export content from a review set for presentations or external reviews.
ms.custom: seo-marvel-mar2020
---

# Export documents from a review set

Export allows users to customize the content that is included in the download package. It provides a configuration page with the following settings:

![Review set export options](../media/bcfc72c7-4a01-4697-9e16-2965b7f04fdb.png)

## Export options

- Export name: Name of the export
- Description: Free text field for you to add a description
- Export these documents
  - Selected documents only -> this option will export only documents which are currently selected
  - All documents in the review set -> this option exports all documents in the review set
- Metadata
  - Load file -> This file contains metadata for each file. see [Document metadata fields in Advanced eDiscovery](document-metadata-fields-in-Advanced-eDiscovery.md) for more information about what fields are included. This file can typically be ingested by third-party eDiscovery tools.
  - Tags -> When selected, tagging information will be included in the load file
- Content
  - Native files -> Check this checkbox to include the native files in the export
  - Conversation options
    - Conversation files -> Export the reconstructed chat messages, this format presents conversations in a form that resembles what end users see in the native application
    - Individual chat messages -> Export the original conversation files as they are stored in M365

- Options
  - Text files -> Include extracted text versions of the text files in the export
  - Replace reacted natives with converted PDFs -> If redacted PDF files are generated during review, these files are available during export. You can decide whether to export native files only or to replace the native files that required redaction with the PDF files that contain the actual redactions.

- Output options
  - Loose files and PSTs (email is added to PSTs when possible) -> Files will be exported in a format that resembles the original directory structure seen by users in their native applications.  See Loose file export structure below for more information.
  - Condensed directory structure -> Files are exported
  - Condensed directory structure exported to your Azure Storage account

## Output options

Exported content is either available for download directly through a web browser or can be sent to the Azure storage account of your choice. The first two options enable direct download.

## Loose files and PSTs export structure

- Root folder – [Export Name].zip
  - Export_load_file.csv = metadata file
  - summary.csv = a summary file with export statistics
  - Exchange = all native content from exchange (replaced with redacted PDFs as needed)
  - SharePoint = all native content from SharePoint (replaced with redacted PDFs as needed)

## Condensed directory structure

- Root folder – [Export Name].zip
  - Export_load_file.csv = metadata file
  - Summary.txt = a summary file with export statistics
  - Input_or_native_files = contains all native files (replaced with redacted PDFs as needed, PDFs will not be placed in PST files, instead, they'll be added to a folder next to the PST.)
  - Error_files = contains any error files included in the export
    - ExtractionError – a csv that contains any available metadata of files that were not properly extracted from parent files
    - ProcessingError – content with processing errors. This content is item level meaning if an attachment experienced a processing error, the email that contains the attachment will be included in this folder.
  - Extracted_text_files = contains all of the extracted text files generated at processing.
