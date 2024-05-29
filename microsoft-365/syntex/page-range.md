---
title: Set a page range to extract information from specific pages in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 05/01/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to specify a page range for extracting information from documents in a SharePoint document library with Microsoft Syntex.
---

# Set a page range to extract information from specific pages in Microsoft Syntex

<sup>**Applies to:**  &ensp; &#10003; Structured and freeform models &ensp; | &ensp; &#10003; All prebuilt models</sup>

You can set a page range to specify which pages in a document you want to extract information from when using a document processing model. Processing fewer pages can lead to cost savings, because model services are billed based on the number of pages processed. It can also be more efficient by reducing processing time.

This setting can be used to process a range of pages for files rather than the entire file. This setting is applied at the model-level, not at the library- or file-level.

> [!NOTE]
> This setting is not yet available for unstructured document processing models.

## Understanding page ranges

This setting can be used to process a range of pages for files rather than the entire file. This setting is applied at the model-level, not at the library- or file-level.

The following table shows the page range format and options.

|Page range  |Example range  |Result  |
|---------|---------|---------|
|Single pages    | “1, 5, 9”        | Pages 1, 5, and 9 will be processed.  |
|Finite ranges     | “2-5”       | Pages 2 to 5 will be processed.  |
|Open-ended ranges    | "5-"      | All pages from page 5 to the end of file will be processed.        |

These range options are cumulative and can be mixed or with overlapping ranges. For example, for the range “-5, 1, 3, 5-10", pages 1 to 10 will be processed.

Pages within the specified range will be processed and charged. For example, in a five-page document with a page setting of “5-100,” only page 5 will be processed.

Pages outside the set range will not be processed or charged. For example, a five-page document with a page setting of “45, 48-50” will not have any pages processed.

By default, the page range setting is empty. If no page range is provided, the entire document will be processed.

## To set a page range

