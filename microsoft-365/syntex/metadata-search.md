---
title: Use metadata to find content in document libraries in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: kkameth
ms.date: 08/11/2022
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: high
description: Learn how to use Syntex content query and search for custom site columns to find items in SharePoint document libraries using Microsoft Syntex.
---

# Use metadata to find content in document libraries in Microsoft Syntex

Microsoft Syntex gives you the ability to quickly search through your document's metadata with ease. The Syntex content query feature lets you perform specific metadata-based queries on SharePoint document libraries. You can make faster, more precise queries based on specific metadata column values, rather than just searching for keywords.

Syntex content query lets you use the metadata associated with a document to help locate the file in a SharePoint document library. This feature is particularly useful when you have a specific piece of information you want to search for, such as when a document was last modified, a specific person associated with a file, or a specific file type.

> [!NOTE]
> This feature is available only for licensed Syntex users. 

## To use Syntex content query

1. From a SharePoint document library, in the **Search this library** box, select the content query icon (![Screenshot of the metadata search icon.](../media/content-understanding/metadata-search-icon.png)).

    ![Screenshot of a document library page showing the search box with the content query icon highlighted.](../media/content-understanding/metadata-search-box.png)

2. In the content query pane, type the text or select the parameter you want to find in one or more of the search fields.

    ![Screenshot of a document library page showing the content query pane.](../media/content-understanding/metadata-search-pane.png)

   The following metadata search fields are currently available. More fields will be added in the future.

   |Field    |Use this field to  |
   |---------|---------|
   |Keywords |Search for a string match in metadata or in the full text of a document. |
   |File name     |Search in the **Name** column in the library.          |
   |People   |Search for a match on people in any column in the library.   |
   |Modified date |Search by selected date range in the **Modified** column in the library.         |
   |File type     |Search by selected file type (for example, Word document or PDF).        |
   |Content type  |Search by selected content type. This option will only appear if there's a non-default content type applied to the library. Default content types are *document* and *folder*.        |

3. You can also search for custom site columns that are in the current library view. This is especially useful if you have a model running on the library because the metadata extractors automatically populate information into site columns.  

    To add a custom site column to your query, select **Add more options**, and then select the name of the site column.

    ![Screenshot of the Add more options menu on the content query pane.](../media/content-understanding/metadata-search-add-more-options.png)

    For numbers, currency, and date columns, you can scope parameters of the query—for example, greater than a specific amount or within a specific period of time. For text columns, you can specify if you want to contain or not contain certain words.

4. Select **Search**. The documents that match your metadata query are shown on the results page. 
