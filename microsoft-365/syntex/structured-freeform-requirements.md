---
title: Requirements and limitations for structured and freeform document processing in SharePoint
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
description: Learn about file limitations, file types, supported languages, and other requirements for structured and freeform document processing in SharePoint.
---

# Requirements and limitations for structured and freeform document processing in SharePoint

The following sections outline key factors to consider when planning to use a structured or freeform document processing model.

## Structured document processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: see [file type requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports the following languages: see [Model for Fixed-template documents](/ai-builder/form-processing-model-requirements#model-for-fixed-template-documents). |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png) | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet [these requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Bandwidth/efficiency symbol.](/office/media/icons/bandwidth-efficiency-blue.png)  | **Optimization tips** <br>If your model isn't performing as you want it to, try [these steps to improve the performance of your model](/ai-builder/improve-form-processing-performance). |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Blocks symbol.](/office/media/icons/blocks-blue.png)  | **Custom Power Platform environments** <br>If you use a custom environment (rather than the default environment) for Power Platform processing, there are additional setup requirements. For more information, see [Custom Power Platform environments](/microsoft-365/contentunderstanding/set-up-content-understanding#custom-power-platform-environments). |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities are from the applied model only. You can have only one freeform or one structured model per library. |

## Freeform document processing

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This model supports the following file types: see [file type requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This model supports the following languages: see [Model for General documents](/ai-builder/form-processing-model-requirements#model-for-general-documents). |
| ![Paragraph symbol.](/office/media/icons/paragraph-writing-blue.png) | **OCR considerations** <br>This model uses optical character recognition (OCR) technology to scan .pdf files, image files, and .tiff files. OCR processing works best on documents that meet [these requirements](/ai-builder/form-processing-model-requirements#requirements). |
| ![Bandwidth/efficiency symbol.](/office/media/icons/bandwidth-efficiency-blue.png)  | **Optimization tips** <br>If your model isn't performing as you want it to, try [these steps to improve the performance of your model](/ai-builder/improve-form-processing-performance). |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up Syntex in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the model type in the central location. If you want to use this model type in a satellite location, contact Microsoft support. |
| ![Blocks symbol.](/office/media/icons/blocks-blue.png)  | **Custom Power Platform environments** <br>If you use a custom environment (rather than the default environment) for Power Platform processing, there are additional setup requirements. For more information, see [Custom Power Platform environments](/microsoft-365/contentunderstanding/set-up-content-understanding#custom-power-platform-environments). |
| ![Objects symbol.](/office/media/icons/objects-blue.png)  | **Multi-model libraries** <br>If two or more trained models are applied to the same library, the file is classified using the model that has the highest average confidence score. The extracted entities are from the applied model only. You can have only one freeform or one structured model per library. |
