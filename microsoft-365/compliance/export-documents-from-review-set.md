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

description: ""
---

# Export documents from a review set

You can export content for presentation or external review from a review set by one of the following methods:

- [Download documents](#download-documents-from-a-review-set)
 
- [Export documents](#export-documents-from-a-review-set)

## Download documents from a review set

Download offers a simple way to download content from a review set in Native format. It leverages the browser’s data transfer features so a browser prompt will appear once a download is ready. Files downloaded using this method will be zipped into a container file and will be item level files. This means that if you select an attachment, you will automatically receive the email with the attachment included. Similarly, if you select an excel spreadsheet that was embedded in a word document, you will receive the word document with the excel spreadsheet embedded. Downloaded items will preserve the last modified date which can be viewed as a file property.

To download content from a review set, start by selecting the files you want to download then select “Download” under the Actions menu.

![A screenshot of a computer
Description automatically generated](media/eDiscoDownload.png)

## Export documents from a review set

Export allows users to customize the content that is included in the download package. It provides a configuration page with the following settings:

### Metadata file

This can be considered your "load file" that contains metadata associated with the files you export. For a list of exported fields available in the metadata file, see [Document metadata fields in Advanced eDiscovery](document-metadata-fields-in-Advanced-eDiscovery.md). This file can typically be ingested by third-party tools.

### Tag data

This content would be added as fields in the metadata file. It contains all of the tag information applied in review sets.

### Text files

Text files can be generated for each file exported from a review set. Often times these files are required by service partners as part of ingesting data into third-party tools.

### Redacted files

If redacted PDF files are generated during review, these files are available during export. You can decide whether to export native files only or to replace the native files that required redaction with the PDF files that contain the actual redactions.

### Export location

Exported content is delivered to either a Microsoft provided Azure blob or a customer’s blob can be used if the details are provided at export.

### Export structure

When content is exported from a review set, the content is organized in the following structure.

  - Root folder – Download ID
    
      - Export\_load\_file.csv = metadata file
    
      - Summary.txt = a summary file with export statistics
    
      - Input\_or native\_files = contains all native files
    
      - Error\_files = contains any error files included in the export
        
          - ExtractionError – a csv that contains any available metadata of files that were not properly extracted from parent files
        
          - ProcessingError – content with processing errors. This content is item level meaning if an attachment experienced a processing error, the email that contains the attachment will be included in this folder.
    
      - Extracted\_text\_files = contains all of the extracted text files generated at processing.