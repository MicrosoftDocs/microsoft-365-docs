---
title: Requirements and limitations for prebuilt document processing in SharePoint
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/22/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - essentials-manage
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about file limitations, file types, supported languages, and other requirements for prebuilt document processing in SharePoint.
---

# Requirements and limitations for prebuilt document processing in SharePoint

The following sections outline key factors to consider when planning to use a prebuilt document processing model.

## Contract processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports only English language contracts. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities are from the applied model only. |

## Invoice processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports invoices in English, Spanish, German, French, Italian, Portuguese, and Dutch. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities are from the applied model only. |

## Receipt processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports receipts in English, Croatian, Czech, Danish, Dutch, Finnish, German, Hungarian, Italian, Japanese, Latvian, Lithuanian, Norwegian, Portuguese, Spanish, Swedish, and Vietnamese. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities are from the applied model only. |

## Sensitive information processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .csv, .doc, .docx, .eml, .heic, .heif, .htm, .html, .jpeg, .jpg, .md, .msg, .pdf, .png, .ppt, .pptx, .rtf, .tif, .tiff, .txt, .xls, and .xlsx. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports the following languages: see [supported languages](/azure/ai-services/language-service/personally-identifiable-information/language-support?tabs=documents#pii-language-support). <br>This model also supports languages for both [handwritten text](/azure/ai-services/computer-vision/language-support#handwritten-text) and [print text](/azure/ai-services/language-service/personally-identifiable-information/language-support?tabs=documents#pii-language-support). |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less.<br>Supports languages for both [handwritten text](/azure/ai-services/computer-vision/language-support#handwritten-text) and [print text](/azure/ai-services/computer-vision/language-support#print-text). |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities are from the applied model only. |

## Simple document processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: .bmp, .jpeg, .pdf, .png, and .tiff. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports documents in more than 100 languages. |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png)  | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet the following requirements: <br> - File format of .jpg, .png, or .pdf (text or scanned). Text-embedded .pdf files are better, because there won't be any errors in character extraction and location. <br> - For .pdf and .tiff files, up to 2,000 pages can be processed. <br> - The file size must be less than 50 MB. <br> -  For images, dimensions must be between 50 x 50 and 10,000 x 10,000 pixels. <br> - For .pdf files, dimensions must be at most 11 x 17 inches, corresponding to Legal or A3 paper sizes and smaller. <br> - The total size of the training data is 500 pages or less. |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities are from the applied model only. |

