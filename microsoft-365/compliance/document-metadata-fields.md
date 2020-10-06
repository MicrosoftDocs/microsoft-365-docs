---
title: "Document metadata fields in Data Investigations (preview)"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 

description: View a table listing the metadata fields for documents in an evidence set in Data Investigations (preview).
ms.custom: seo-marvel-mar2020
---

# Document metadata fields in Data Investigations (preview)

The following table lists the metadata fields for documents in a evidence set in an investigation in Data Investigations (preview). The table indicates the name of the metadata field, whether the field can be searched when running a query in an evidence set, whether the field is present when viewing the file metadata of a selected document in an evidence set, and whether the field is included when documents are exported. 

> [!NOTE]
> The values in parentheses in the **Searchable in evidence set** column is the name of the property that you can search for. The values in parentheses in the **Viewable in file metadata** column is the name of the property that's displayed when you're viewing the file metadata.

|**Field name** </br>|**Searchable in evidence set** |**Viewable in file metadata** |**Exported** |
|:-------------------------- |:---------------------------------------- |:------------------------|:------------------|
|Case tags                  | Yes (tags)                                      |                         | Yes         |
|Compliance labels          |                                                 |                         | Yes         |
|Compound path              |                                                 |                         | Yes         |
|Container ID               |                                                 |                         | Yes         |
|Conversation index         |                                                 |                         | Yes         |
|Custodian                  | Yes (custodian)                                 |   Yes (Custodian)       | Yes         |
|Data source                | Yes (source)                                    |   Yes (Workload)          | Yes         |
|Date                       | Yes (date)                                      |   Yes (Date UTC)        | Yes         |
|Deduped compound path      |                                                 |                         | Yes         |
|Deduped custodians         |                                                 |                         | Yes         |
|Deduped file IDs           |                                                 |                         | Yes         |
|Doc authors                | Yes (author)*                                   |    Yes (Author)         | Yes         |
|Doc comments               | Yes (comments)                                  |                         | Yes         |
|Doc company                |                                                 |                         | Yes         |
|Doc date created           | Yes (createdTime)*                              |    Yes (Created Time)   | Yes         |
|Doc date modified          | Yes (lastModifiedDate)*                         |                         | Yes         |
|Doc keywords               |                                                 |                         | Yes         |
|Doc last saved by          |                                                 |                         | Yes         |
|Doc modified by            |                                                 |                         | Yes         |
|Doc subject                |                                                 |  Yes (Subject/Title)    | Yes         |
|Doc template               |                                                 |                         | Yes         |
|Doc title                  | Yes (title)                                     |  Yes (Title)            | Yes         |
|Doc version                |                                                 |                         | Yes         |
|Dominant theme             | Yes (dominantTheme)                             |  Yes (Dominant theme)   | Yes         |
|Duplicate subset           |                                                 |                         | Yes         |
|Email action               |                                                 |                         | Yes         |
|Email bcc                  | Yes (bcc)                                       |                         | Yes         |
|Email cc                   | Yes (cc)                                        |                         | Yes         |
|Email conversation ID      |                                                 |                         | Yes         |
|Email date received        | Yes (received)                                  |   Yes (Received)        | Yes         |
|Email date sent            | Yes (sent)                                      |   Yes (Sent)            | Yes         |
|Email has attachment       |                                                 |                         | Yes         |
|Email importance           |                                                 |                         | Yes         |
|Email internet headers     |                                                 |                         | Yes         |
|Email level                |                                                 |                         | Yes         |
|Email message ID           |                                                 |                         | Yes         |
|Email participant domains  | Yes (participantDomains)                        |                         | Yes         |
|Email participants         | Yes (participants)                              |                         | Yes         |
|Email recipient domains    | Yes (recipientDomains)                          |                         | Yes         |
|Email recipients           | Yes (recipients)                                |                         | Yes         |
|Email security             |                                                 |                         | Yes         |
|Email sender               | Yes (sender)                                    |   Yes (Sender)          | Yes         |
|Email sender domain        | Yes (senderDomain)                              |                         | Yes         |
|Email sensitivity          |                                                 |                         | Yes         |
|Email set                  | Yes (emailSetId)                                |   Yes (EmailSetID)      | Yes         |
|Email subject              | Yes (subject)                                   |   Yes (Subject/Title)   | Yes         |
|Email thread               |                                                 |                         | Yes         |
|Email to                   | Yes (to)                                        |                         | Yes         |
|Error code                 | Yes (processingStatus)                          |                         | Yes         |
|Export native path         |                                                 |                         | Yes         |
|Extracted text length      |                                                 |                         | Yes         |
|Extracted text path        |                                                 |                         | Yes         |
|Family ID                  | Yes (familyId)                                  |   Yes (FamilyId)        | Yes         |
|Family size                |                                                 |                         | Yes         |
|File class                 | Yes (fileClass)                                 |   Yes (File class)      | Yes         |
|File ID                    | Yes (fileId)                                    |   Yes (Id)              | Yes         |
|Has text                   |                                                 |                         | Yes         |
|Inclusive type             | Yes (inclusiveType)                             |   Yes (Inclusive type)  | Yes         |
|Input date modified        |                                                 |                         | Yes         |
|Input file ID              |                                                 |                         | Yes         |
|Input path                 |                                                 |                         | Yes         |
|Internet Message ID        |                                                 |                         | Yes         |
|Is representative          | Yes (markAsRepresentative)                      |                         | Yes         |
|Item class                 |                                                 |                         | Yes         |
|Load ID                    | Yes (loadId)                                    |                         | Yes         |
|Location name              |                                                 |                         | Yes         |
|Marked as pivot            | Yes (markAsPivot)                               |   Yes (Marked as Pivot) | Yes         |
|Message kind               | Yes (messageKind)                               |                         | Yes         |
|Native extension           |                                                 |                         | Yes         |
|Native file name           |                                                 |    Yes (FileName)      | Yes         |
|Native MD5                 |                                                 |                         | Yes         |
|Native SHA 256             |                                                 |                         | Yes         |
|Native size                | Yes (size)                                      |   Yes (NativeSize)     | Yes         |
|Native type                | Yes (fileType)                                  |   Yes (File type)       | Yes         |
|ND ET sort excl attach     |                                                 |                         | Yes         |
|ND ET sort incl attach     |                                                 |                         | Yes         |
|ND set                     |                                                 |                         | Yes         |
|O365 authors               | Yes (author)*                                   |   Yes (Sender/Author)   | Yes         |
|O365 created by            |                                                 |                         | Yes         |
|O365 date created          | Yes (createdTime)*                              |                         | Yes         |
|O365 date modified         | Yes (lastModifiedDate)*                         |   Yes (Last Modified Date) | Yes      |
|O365 modified by           |                                                 |                         | Yes         |
|Parent node                |                                                 |                         | Yes         |
|Pivot ID                   | Yes (pivotId)                                   |  Yes (PivotID)          | Yes         |
|Recipient count            |                                                 |                         | Yes         |
|Row number                 |                                                 |                         | Yes         |
|Set ID                     |                                                 |                         | Yes         |
|Set order inclusives first |                                                 |                         | Yes         |
|Similarity percent         |                                                 |                         | Yes         |
|Themes list                | Yes (themesList)                                | Yes (Themes list)       | Yes         |
|Word count                 | Yes (wordCount)                                 |                         | Yes         |
|Relevance score (issue)    | Yes (relevanceScore_issueNum)                   |                         |             |
|Read percentile (issue)    | Yes (readPercentile_issueNum)                   |                         |             |
|Relevance tag (issue)      | Yes (relevanceTag_issueNum)                     |                         |             |
|||||

  \* For these fields, if there are embedded values within a document, search will prioritize those values; otherwise, it will try to display the value from Office 365.
