---
title: Requirements and limitations for models in Microsoft SharePoint Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about file limitations, file types, supported languages, and other requirements for models in SharePoint Syntex.
---

# Requirements and limitations for models in Microsoft SharePoint Syntex

SharePoint Syntex lets you create [custom models](model-types-overview.md) and [trained models](prebuilt-overview.md). Depending on the type of model you choose to use, there might be different file type and size requirements, different languages that are supported, and other considerations when you choose one of these models.

- [Classify and extract by text pattern](#classify-and-extract-by-text-pattern)
- [Extract by layout](#extract-by-layout)
- [Extract by text pattern and layout](#extract-by-text-pattern-and-layout)
- [Invoices](#invoices)
- [Receipts](#receipts)

## Classify and extract by text pattern

| Icon          | Description   |
| ------------- | ------------- |
| ![a hand and arrow](https://docs.microsoft.com/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .doc, .docx, .eml, .heic, .heif, .htm, .html, .jpeg, .jpg, .md, .msg, .pdf, .png, .ppt, .pptx, .rtf, .tif, .tiff, .txt, .xls, and .xlsx. |
| ![a map](https://docs.microsoft.com/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports all of the Latin-based languages, including: English,  French, German, Italian, and Spanish. |
| ![a map](https://docs.microsoft.com/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - If your .pdf files are password-locked, you must remove the lock before submitting them. <br> - The combined file size of the documents used for training per collection must not exceed 50 MB, and PDF documents shouldn't have more than 500 pages. <br> - For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. Images that are very wide or have odd dimensions (for example, floor plans) might get truncated in the OCR process and lose accuracy. <br> - For .pdf files, dimensions must be at most 17 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - If scanned from paper documents, scans should be high-quality images. <br> - Must use the Latin alphabet (English characters). <br> Note the following differences about Microsoft Office text-based files and OCR-scanned files (PDF, image, or TIFF): <br> - Office files: Truncated at 64,000 characters (in training and when run against files in a document library). <br> - OCR-scanned files: There's a 20-page limit.|

## Extract by layout


## Extract by text pattern and layout


## Invoices


## Receipts
