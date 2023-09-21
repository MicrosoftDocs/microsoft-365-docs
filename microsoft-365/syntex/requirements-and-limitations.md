---
title: Requirements and limitations for models in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
ms.date: 07/26/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about file limitations, file types, supported languages, and other requirements for models in Microsoft Syntex.
---

# Requirements and limitations for models in Microsoft Syntex

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

Microsoft Syntex lets you create [custom models and prebuilt models](model-types-overview.md). Depending on the type of model you choose, there might be different requirements, such as file type and size, languages that need to be supported, geographical considerations, and other factors that will help you decide which type of model to use.

Custom models:

- [Unstructured document processing](#unstructured-document-processing)
- [Freeform document processing](#freeform-document-processing)
- [Structured document processing](#structured-document-processing)
 
Prebuilt models:

- [Contract processing](#contract-processing)
- [Invoice processing](#invoice-processing)
- [Receipt processing](#receipt-processing)

## Custom models

### Unstructured document processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .csv, .doc, .docx, .eml, .heic, .heif, .htm, .html, .jpeg, .jpg, .md, .msg, .pdf, .png, .ppt, .pptx, .rtf, .tif, .tiff, .txt, .xls, and .xlsx ( formulas in .xls and .xlsx files are not run).|
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports any language that uses the Latin character set (for example, English, French, German, Italian, and Spanish). |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - If your .pdf files are password-locked, you must remove the lock before submitting them. <br> - The combined file size of the documents used for training per collection must not exceed 50 MB, and PDF documents shouldn't have more than 500 pages. <br> - For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. Images that are very wide or have odd dimensions (for example, floor plans) might get truncated in the OCR process and lose accuracy. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - If scanned from paper documents, scans should be high-quality images. <br> - Must use the Latin alphabet (English characters). <br> Note the following differences about Microsoft Office text-based files and OCR-scanned files (.pdf, image, or .tiff): <br> - All files: Truncated at 64,000 characters (in training and when run against files in a document library). <br> - OCR-scanned files: There's a 500-page limit. Only PDF and image file types are processed by OCR. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. |

### Freeform document processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: see [file type requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports the following language: English. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png) | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet [these requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Bandwidth/efficiency symbol.](/office/media/icons/bandwidth-efficiency-blue.png)  | **Optimization tips** <br>If your model isn't performing as you want it to, try [these steps to improve the performance of your model](/ai-builder/improve-form-processing-performance). |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Blocks symbol.](/office/media/icons/blocks-blue.png)  | **Custom Power Platform environments** <br>If you use a custom environment (rather than the default environment) for Power Platform processing, there are additional setup requirements. For more information, see [Custom Power Platform environments](/microsoft-365/contentunderstanding/set-up-content-understanding#custom-power-platform-environments). |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. You can have only one freeform or one structured model per library. |

### Structured document processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: see [file type requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports 73 languages: see [supported languages](/ai-builder/form-processing-model-requirements#languages-supported). |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png) | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet [these requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Bandwidth/efficiency symbol.](/office/media/icons/bandwidth-efficiency-blue.png)  | **Optimization tips** <br>If your model isn't performing as you want it to, try [these steps to improve the performance of your model](/ai-builder/improve-form-processing-performance). |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Blocks symbol.](/office/media/icons/blocks-blue.png)  | **Custom Power Platform environments** <br>If you use a custom environment (rather than the default environment) for Power Platform processing, there are additional setup requirements. For more information, see [Custom Power Platform environments](/microsoft-365/contentunderstanding/set-up-content-understanding#custom-power-platform-environments). |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. You can have only one freeform or one structured model per library. |

## Prebuilt models

### Contract processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports only English language contracts. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. |

### Invoice processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports invoices in English, Spanish, German, French, Italian, Portuguese, and Dutch. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. |

### Receipt processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports sales in English, Croation, Czech, Danish, Dutch, Finnish, German, Hungarian, Italian, Japanese, Latvian, Lithuanian, Norwegian, Portuguese, Spanish, Swedish, and Vietnamese. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities will be from the applied model only. |
