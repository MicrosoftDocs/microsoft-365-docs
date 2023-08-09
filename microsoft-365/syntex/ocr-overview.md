---
title: Overview of optical character recognition in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: kkameth
ms.date: 07/01/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: admindeeplinkMAC
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about optical character recognition in Microsoft Syntex.
---

# Overview of optical character recognition in Microsoft Syntex

The optical character recognition (OCR) service in Microsoft Syntex lets you extract printed or handwritten text from images, such as posters, drawings, and product labels, as well as from documents like articles, reports, forms, and invoices.

The text is typically extracted as words, text lines, and paragraphs or text blocks, enabling access to digital version of the scanned text. The extracted information is indexed in search and can be made available for compliance features like [data loss prevention (DLP)](../compliance/dlp-learn-about-dlp.md).

For example, you enable the OCR service and then add image files to your document library. Syntex automatically scans the image files, extracts the relevant text, and makes the text from the images available for search and indexing. This lets you quickly and accurately find the keywords and phrases you're looking for.

## Requirements and limitations

### Supported file types

The OCR service is available for the following file types:

- JPEG
- JPG
- PNG
- BMP
- TIFF
- PDF (image only)

### Supported languages

The OCR service supports more than [150 languages](/azure/cognitive-services/language-support).

### File limitations

- Image file sizes must be less than 50 MB.

- Images must be at least 50 x 50 pixels and not larger than 16,000 x 16,000 pixels.

- Only images uploaded after OCR has been enabled are scanned.

- Currently, images that are embedded in Office documents aren't supported.

