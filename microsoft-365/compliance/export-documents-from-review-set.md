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
description: "Learn how to select and export content from a review set for presentations or external reviews."
ms.custom: seo-marvel-mar2020
---

# Export documents from a review set in Advanced eDiscovery

Export allows users to customize the content that is included in the download package. The Export tool provides a configuration page with the following settings:

![Options for exporting items from a review set](../media/bcfc72c7-4a01-4697-9e16-2965b7f04fdb.png)

## Export options

- Export name: Name of the export job.

- Description: Free-text field for you to add a description.

- Export these documents:

  - Selected documents only - Exports only the documents that are currently selected.
  
  - All documents in the review set - Exports all documents in the review set

- Metadata
  
  - Load file - This file contains metadata for each file. see [Document metadata fields in Advanced eDiscovery](document-metadata-fields-in-Advanced-eDiscovery.md) for more information about what fields are included. This file can typically be ingested by third-party eDiscovery tools.
  
  - Tags - When selected, tagging information will be included in the load file.

- Content
  
  - Native files - Select this checkbox to include the native files.
  
  - Conversation options
    
    - Conversation files - Export reconstructed chat messages. This format presents conversations in a form that resembles what users see in the native application.
    
    - Individual chat messages - Export the original conversation files as they are stored in Microsoft 365.

- Options

  - Text files - Include extracted text versions of native files.
  
  - Replace redacted natives with converted PDFs - If redacted PDF files are generated during review, these files are available for export. You can choose to export only the native files that were redacted (by not selecting this option) or you can select this option to export the PDF files that contain the actual redactions.

- Output options (Exported content is either available for download directly through a web browser or can be sent to an Azure Storage account. The first two options enable direct download.)
  
  - Loose files and PSTs (email is added to PSTs when possible) - Files are exported in a format that resembles the original directory structure seen by users in their native applications.  For more information, see the [Loose files and PST export structure](#loose-files-and-pst-export-structure) section.
  
  - Condensed directory structure - Files are exported and included in the download.
  
  - Condensed directory structure exported to your Azure Storage account - Files are exported to your organization's Azure Storage accouunt.

## Loose files and PST export structure

If you select this export option, the exported content is organized in the following structure:

- Root folder – This folder in named ExportName.zip
  
  - Export_load_file.csv - Metadata file.
  
  - Summary.csv - A summary file that also contains export statistics.
  
  - Exchange - This folder contains all content from Exchange in native file format. Natives files are replaced with redacted PDFs if you selected the **Replace redacted natives with converted PDFs** option.
  
  - SharePoint = This folder contains all native content from SharePoint in a native file format. Natives files are replaced with redacted PDFs if you selected the **Replace redacted natives with converted PDFs** option.

## Condensed directory structure

- Root folder - This folder is named ExportName.zip
  
  - Export_load_file.csv - Metadata file.
  
  - Summary.txt - A summary file that also contains export statistics.
  
  - Input_or_native_files - This folder contains all the native files that were exported. If you export redacted PDF files, they are not put in PST files. Instead, they're added to a separated folder.
  
  - Error_files - This folder contains the following error files, if they are included in the export:
    
    - ExtractionError. A CSV file that contains any available metadata of files that weren't properly extracted from parent files.
    
    - ProcessingError – This file contains a list of documents with processing errors. This content is item-level, meaning if an attachment resulted in a processing error, the email message that contains the attachment is included in this folder.
  
  - Extracted_text_files - This folder contains all of the extracted text files that were generated at processing.

> [!NOTE]
> Export jobs are retained for the life of the case and can be downloaded as long as the case isn't deleted.
