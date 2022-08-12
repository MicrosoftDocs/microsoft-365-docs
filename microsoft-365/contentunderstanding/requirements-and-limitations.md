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
| ![Files symbol.](https://docs.microsoft.com/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .doc, .docx, .eml, .heic, .heif, .htm, .html, .jpeg, .jpg, .md, .msg, .pdf, .png, .ppt, .pptx, .rtf, .tif, .tiff, .txt, .xls, and .xlsx. |
| ![Conversation symbol.](https://docs.microsoft.com/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports all of the Latin-based languages, including: English,  French, German, Italian, and Spanish. |
| ![Paragraph symbol.](https://docs.microsoft.com/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - If your .pdf files are password-locked, you must remove the lock before submitting them. <br> - The combined file size of the documents used for training per collection must not exceed 50 MB, and PDF documents shouldn't have more than 500 pages. <br> - For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. Images that are very wide or have odd dimensions (for example, floor plans) might get truncated in the OCR process and lose accuracy. <br> - For .pdf files, dimensions must be at most 17 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - If scanned from paper documents, scans should be high-quality images. <br> - Must use the Latin alphabet (English characters). <br> Note the following differences about Microsoft Office text-based files and OCR-scanned files (.pdf, image, or .tiff): <br> - Office files: Truncated at 64,000 characters (in training and when run against files in a document library). <br> - OCR-scanned files: There's a 20-page limit.|

## Extract by layout

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](https://docs.microsoft.com/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: see [file type requirements](https://docs.microsoft.com/en-us/ai-builder/form-processing-model-requirements#requirements). |
| ![Conversation symbol.](https://docs.microsoft.com/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports 73 languages: see [supported languages](https://docs.microsoft.com/en-us/ai-builder/form-processing-model-requirements#languages-supported). |
| ![Globe symbol.](https://docs.microsoft.com/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up SharePoint Syntex in a [Microsoft 365 Multi-Geo](https://docs.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Blocks symbol.](https://docs.microsoft.com/office/media/icons/blocks-blue.png)  | **Custom environments** <br>If you use a custom environment (rather than the default environment) for Power Platform processing, there are additional setup requirements. For more information, see [Custom Power Platform environments](https://docs.microsoft.com/en-us/microsoft-365/contentunderstanding/set-up-content-understanding#custom-power-platform-environments). |

## Extract by text pattern and layout

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](https://docs.microsoft.com/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: see [file type requirements](https://docs.microsoft.com/en-us/ai-builder/form-processing-model-requirements#requirements). |
| ![Conversation symbol.](https://docs.microsoft.com/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports the following language: English. |
| ![Globe symbol.](https://docs.microsoft.com/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up SharePoint Syntex in a [Microsoft 365 Multi-Geo](https://docs.microsoft.com/en-us/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Blocks symbol.](https://docs.microsoft.com/office/media/icons/blocks-blue.png)  | **Custom environments** <br>If you use a custom environment (rather than the default environment) for Power Platform processing, there are additional setup requirements. For more information, see [Custom Power Platform environments](https://docs.microsoft.com/en-us/microsoft-365/contentunderstanding/set-up-content-understanding#custom-power-platform-environments). |

## Invoices

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](https://docs.microsoft.com/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](https://docs.microsoft.com/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports only English language invoices from the United States. |
| ![Paragraph symbol.](https://docs.microsoft.com/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 17 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. <br> Note the following differences about Microsoft Office text-based files and OCR-scanned files (.pdf, image, or .tiff): <br> - Office files: Truncated at 64,000 characters (in training and when run against files in a document library). <br> - OCR-scanned files: There's a 20-page limit.|
| ![Structure symbol.](https://docs.microsoft.com/office/media/icons/structure-blue.png)  | **Model considerations** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. |

## Receipts
