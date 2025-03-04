---
title: Overview of optical character recognition in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: kkameth
ms.date: 08/13/2024
audience: admin
ms.topic: concept-article
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: admindeeplinkMAC
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about optical character recognition in Microsoft Syntex.
---

# Overview of optical character recognition in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of optical character recognition and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

The optical character recognition (OCR) service in Microsoft Syntex lets you extract printed or handwritten text from images and documents. Examples of images include posters, drawings, and product labels. Examples of documents include articles, reports, forms, and invoices.

The text is typically extracted as words, text lines, and paragraphs or text blocks, enabling access to digital version of the scanned text. The extracted information is indexed in search and can be made available for compliance features like [data loss prevention (DLP)](../compliance/dlp-learn-about-dlp.md).

For example, you enable the OCR service and then add image files to your document library. Microsoft Syntex automatically scans the image files, extracts the relevant text, and makes the text from the images available for search and indexing. This feature lets you quickly and accurately find the keywords and phrases you're looking for.

## Requirements and limitations

### Supported file types

|Endpoint  |Supported file types  |
|---------|---------|
|SharePoint and OneDrive     |`.bmp, .png, .jpeg, .jpg, .jfif, .arw, .cr2, .crw, .erf, .gif, .mef, .mrw, .nef, .nrw, .orf, .pef, .raw, .rw2, .rw1, .sr2, .tif, .tiff, .heic, .heif, .ari, .bay, .cap, .cr3, .dcs, .dcr, .drf, .eip, .fff, .iiq, .k25, .kdc, .mef, .mos, .ptx, .pxn, .raf, .rwl, .sr2, .srf, .srw, .x3f, .dng, .tiff, and .pdf`  |
|Teams, Exchange, and Windows devices     |`.bmp, .png, .jpeg, .jpg, .tiff, and .pdf`   |

In addition to image-based PDF, Syntex OCR will support hybrid PDF (text plus image PDF) beginning November 2024. After that time, newly uploaded hybrid PDFs will be processed by the OCR service.

> [!NOTE]
> When you apply OCR to an image file, the text is stored in the **Extracted text** metadata column. When you apply OCR to a PDF or TIFF file, the extracted text is indexed in search but not available in the metadata column.

### Supported languages

The OCR service supports more than [150 languages](/azure/cognitive-services/language-support).

### Supported locations and solutions

The OCR service supports multiple solutions, as shown in the following table. For details about compliance solutions, see [Supported locations and solutions in Microsoft Purview](/purview/ocr-learn-about#supported-locations-and-solutions).

|Location    |Supported solution  |
|---------|---------|
|Exchange           |Text is available for end-user search and search-driven solutions.<br>Text is available for [compliance solutions](/purview/ocr-learn-about#supported-locations-and-solutions). |
|SharePoint sites   |Text is available for end-user search and search-driven solutions.<br>Text is available for [compliance solutions](/en-us/purview/ocr-learn-about#supported-locations-and-solutions). |
|OneDrive accounts  |Text is available for end-user search and search-driven solutions.<br>Text is available for [compliance solutions](/purview/ocr-learn-about#supported-locations-and-solutions). |
|Teams chat and channel message  |Text is available for [compliance solutions](/purview/ocr-learn-about#supported-locations-and-solutions). |
|Devices            | Text is available for [compliance solutions](/purview/ocr-learn-about#supported-locations-and-solutions).    |

### File limitations

- Images must be less than 50 MB.

- Images must be at least 50 x 50 pixels and not larger than 16,000 x 16,000 pixels.

- Images uploaded after OCR has been enabled are the only images that are scanned.

- Images that are embedded in Office documents aren't supported.

