---
title: Use metadata to find content in document libraries in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: kkameth
ms.date: 05/16/2024
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

Syntex content query lets you use the metadata associated with a document to help locate the file in a SharePoint document library. This feature is particularly useful when you have a specific piece of information you want to search for, such as when a document was last modified, a specific person associated with a file, specific keywords in a file, or a specific file type.

> [!NOTE]
> The content query feature is available for users who have Syntex [per-user](set-up-content-understanding.md) or [pay-as-you-go](syntex-azure-billing.md) licensing.

## Columns you can query

You can now use content query to search for metadata in any of the queriable columns in your document library. Queriable columns include the following types:

- Text
- Note
- DateTime
- Choice
- MultiChoice
- User
- Boolean
- Currency
- Number
- TaxonomyFieldType
- TaxonomyFieldTypeMulti

When you add new document libraries within a site, all of these column types are queriable.

On existing libraries, when you select the content query icon (![Screenshot of the metadata search icon.](../media/content-understanding/metadata-search-icon.png)), the service will start a workflow to make all of these column types queriable as well. This process can take up to five days to complete.
<!---
Not all columns that show up in a document library are queriable. To learn more about queriable columns in SharePoint, see [List columns or Site columns: Which one to choose?](/microsoft-365/community/list-column-or-site-column-which-one-to-choose).
--->
<!---
**New document libraries** — For new libraries, all of the columns are available in content query.

**Existing document libraries** — For existing libraries, all of the queriable columns won't be immediately available. You need to select the content query icon (![Screenshot of the metadata search icon.](../media/content-understanding/metadata-search-icon.png)) in the existing library. Then after five days, check the library again and all of the columns should be available.
--->

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
   |Content type  |Search by selected content type. This option will only appear if there's a nondefault content type applied to the library. Default content types are *document* and *folder*.        |

3. You can also search for custom site columns that are in the current library view. This is especially useful if you have a model running on the library because the metadata extractors automatically populate information into site columns.  

    To add a custom site column to your query, select **Add more options**, and then select the name of the site column.

    ![Screenshot of the Add more options menu on the content query pane.](../media/content-understanding/metadata-search-add-more-options.png)

    For numbers, currency, and date columns, you can scope parameters of the query—for example, greater than a specific amount or within a specific period of time. For text columns, you can specify if you want to contain or not contain certain words.

4. Select **Search**. The documents that match your metadata query are shown on the results page. 

