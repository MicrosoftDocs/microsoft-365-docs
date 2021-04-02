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
description: "Learn how to select and export content from an Advanced eDiscovery review set for presentations or external reviews."
ms.custom: seo-marvel-mar2020
---

# Export documents from a review set in Advanced eDiscovery

Export allows users to customize the content that is included in the download package when you export document from a review set in Advanced eDiscovery.

To export documents from a review set:

1. In the Microsoft 365 compliance center, open the Advanced eDiscovery case, select the **Review sets** tab, and then select the review set that you want to export.

2. In the review set, click **Action** > **Export**.

   The Export tool displays the flyout page with the settings to configure the export. Some options are selected by default, but you can change these. See the following section for descriptions of the export options that you can configure.

   ![Configuration options for exporting items from a review set](../media/bcfc72c7-4a01-4697-9e16-2965b7f04fdb.png)

3. After you configure the export, click **Export** to start the export process. Depending on the option that you selected in **Output options** section, you can access the export files by direct download or in your organization's Azure Storage account.

## Export options

Use the following options to configure the export.

- **Export name**: Name of the export job.

- **Description**: Free-text field for you to add a description.

- **Export these documents**

  - **Selected documents only**: This option exports only the documents that are currently selected.
  
  - **All documents in the review set**: This option exports all documents in the review set.

- **Metadata**
  
  - **Load file**: This file contains metadata for each file. This file can typically be ingested by third-party eDiscovery tools. For more information about what fields are included, see [Document metadata fields in Advanced eDiscovery](document-metadata-fields-in-Advanced-eDiscovery.md).
  
  - **Tags**: When selected, tagging information is included in the load file.

- **Content**
  
  - **Native files**: Select this checkbox to include the native files of the documents in the review set. If you choose to export native files, you have the following options for how export chat conversations.
  
  - **Conversation options**

    - **Conversation files**: This option exports reconstructed chat conversations. This format presents conversations in a form that resembles what users see in the native application.

    - **Individual chat messages**: - This option exports the original conversation files as they are stored in Microsoft 365.

- **Options**

  - **Text files**: - This option includes the extracted text versions of native files in the export.
  
  - **Replace redacted natives with converted PDFs**: If redacted PDF files are generated during review, these files are available for export. You can choose to export only the native files that were redacted (by not selecting this option) or you can select this option to export the PDF files that contain the actual redactions.

- **Output options**: Exported content is either available for download directly through a web browser or can be sent to an Azure Storage account. The first two options enable direct download.
  
  - **Loose files and PSTs (email is added to PSTs when possible)**: Files are exported in a format that resembles the original directory structure seen by users in their native applications.  For more information, see the [Loose files and PST export structure](#loose-files-and-pst-export-structure) section.
  
  - **Condensed directory structure**: Files are exported and included in the download.
  
  - **Condensed directory structure exported to your Azure Storage account**: Files are exported to your organization's Azure Storage account. For this option, you have to provide the URL for the container in your Azure Storage account to export the files to. You also have to provide the shared access signature (SAS) token for your Azure Storage account. For more information, see [Export documents in a review set to an Azure Storage account](download-export-jobs.md).

The following sections describe the folder structure for loose files and condensed directory structure options.

### Loose files and PST export structure

If you select this export option, the exported content is organized in the following structure:

- Root folder: This folder in named ExportName.zip
  
  - Export_load_file.csv: The metadata file.
  
  - Summary.csv: A summary file that also contains export statistics.
  
  - Exchange: This folder contains all content from Exchange in native file format. Natives files are replaced with redacted PDFs if you selected the **Replace redacted natives with converted PDFs** option.
  
  - SharePoint: This folder contains all native content from SharePoint in a native file format. Natives files are replaced with redacted PDFs if you selected the **Replace redacted natives with converted PDFs** option.

### Condensed directory structure

- Root folder: This folder is named ExportName.zip
  
  - Export_load_file.csv: The metadata file.
  
  - Summary.txt: A summary file that also contains export statistics.
  
  - NativeFiles: This folder contains all the native files that were exported. If you export redacted PDF files, they are not put in PST files. Instead, they're added to a separated folder.
  
  - Error_files: This folder contains the following error files, if they are included in the export:

    - ExtractionError: A CSV file that contains any available metadata of files that weren't properly extracted from parent files.

    - ProcessingError: This file contains a list of documents with processing errors. This content is item-level, meaning if an attachment resulted in a processing error, the email message that contains the attachment is included in this folder.
  
  - Extracted_text_files: This folder contains all of the extracted text files that were generated at processing.

> [!NOTE]
> Export jobs are retained for the life of the case. However, you must download the content from an export job within 30 days after the export job is complete.
