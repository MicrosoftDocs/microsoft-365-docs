---
title: "Run the Process module in Advanced eDiscovery"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
titleSuffix: Office 365
ms.date: 9/14/2017
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid: 
- MOE150
- MET150
ms.assetid: dbc1e251-0596-443b-ac9b-f398ba955b73
description: "Learn the guidelines for preparing case files of data for analysis with Advanced eDiscovery."
---

# Run the Process module in Advanced eDiscovery (classic)

Case files are loaded into the Advanced eDiscovery during **Prepare** \> **Process**. 
  
> [!NOTE]
> Advanced eDiscovery requires an Office 365 E3 with the Advanced Compliance add-on or an E5 subscription for your organization. If you don't have that plan and want to try Advanced eDiscovery, you can [sign up for a trial of Office 365 Enterprise E5](https://go.microsoft.com/fwlink/p/?LinkID=698279). 
  
## Guidelines: Preparing data for Advanced eDiscovery

- **Quality**: Clearly identify the case file population pertinent to the case.
    
- **Loads**: Load the files into a location that is accessible to Advanced eDiscovery.
    
- **File ID**: A unique file identifier in Advanced eDiscovery. If no file identifier is imported, Advanced eDiscovery automatically generates the ID. If you map the ID in a subsequent Process load, and map a different path than in the initial Process load, Advanced eDiscovery will replace the path (rather than add a new file entry). The ID can be used as a reference in the Export process. The ID value should not be "-1".
    
- **MD5**: This signature is used to differentiate between files (two files are not considered exact duplicates unless they have the same MD5). By default, Advanced eDiscovery calculates the MD5 of files. When the loaded files are text files, it is recommended to load and map the original MD5 value instead of calculating it in Advanced eDiscovery.
    
- **File type and name**:
    
  - Advanced eDiscovery can process files of various formats and extract loaded native files into a standard format, such as \*.TXT, HTML, or .XML. Processing of text files is faster than native files. Extracted text files are stored in the case folder.
    
  - Do not load files that cannot be extracted, such as system files or graphic images. These files may delay processing.
    
  - Verify that file names are significantly named and paths are correct.
    
- **File path**: Advanced eDiscovery can load files with path lengths up to 400 characters.
    
- **Text extraction**: When extracting text from native files, in addition to normal text, the following are also extracted: hidden text (Excel and .doc), hidden columns (Excel), track changes (.doc), speaker notes (.ppt), embedded objects (for example, Excel objects in a .ppt). These can be viewed in the Text editor.
    
- **Ignore Text**: This optional feature is defined after Process is run and before Analyze. Ignore text should be used with caution because its use may reduce the performance of file analysis.
    
- **Multilingual text**: Advanced eDiscovery does not currently handle multilingual names for tags, custodian, and issues.
    
- **Metadata**: Determine if there is metadata that you want to save in the case database for future reference, such as date range, file size, file type, custodian, and subject. Metadata can be loaded after files were already loaded without rerunning the inventory or adding reprocessing overhead. 
    
  - If the files were originally loaded by path, map the path column when later importing metadata. It is possible to refer to the file by ID and to map a different path. This is a useful scenario when the file paths change.
    
  - If the files were originally loaded by File ID, map the ID column when loading metadata. Referring to the file by path (instead of ID) will cause files to be re-loaded with a different ID. Advanced eDiscovery creates copies of the files rather that loading metadata of the existing files.
    
- **Families**: It is not possible to load a family without its parent (head of family). 
    
- **File size**: There is no limitation on the size of files loaded to Advanced eDiscovery. For analysis (Analyze, Relevance, etc.), the limit is 5,242,880 characters of extracted text. Larger files are ignored (for example, in Relevance, files do not participate in the Relevance training process and do not receive a Relevance score after batch calculation).
    
- **File quantity**: There is no recommended limit on the number of files that can be handled in a single case. Performance depends on the resources of your system. 
    
## Filtering files

A user-defined label can be associated with a set of files to exclude them from Process or other tasks. Each Process session is associated with a batch ID. Although the batch ID is not visible to the expert in Relevance, this can be done using a search utility, by adding a filter for the current batch and tagging all appropriate files with a user-defined label. 
  
## See also

[Advanced eDiscovery (classic)](office-365-advanced-ediscovery.md)
  
[Running the Process module and loading data](run-the-process-module-and-load-data-in-advanced-ediscovery.md)
  
[Viewing Process module results](view-process-module-results-in-advanced-ediscovery.md)

