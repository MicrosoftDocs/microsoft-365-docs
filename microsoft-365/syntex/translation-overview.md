---
title: Overview of document translation in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/23/2025
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn about the document translation service in Microsoft Syntex.
---

# Overview of document translation in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of document translation and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

Microsoft Syntex lets you easily create a translated copy of a selected file or a set of files in a SharePoint document library. You can translate a file in one language or up to 10 language at a time, while preserving the original format and structure of the file. Translation is available for all supported languages and dialects.

![Screenshot showing a document library with translated documents.](../media/content-understanding/translation-sample-library.png)

This feature lets you translate files of different types either manually or automatically by [creating a rule](content-processing-translate.md).

You can also use the translation feature for translating video transcripts and closed captioning files. For more information, see [Transcript translations in Stream for SharePoint](https://support.microsoft.com/office/microsoft-syntex-pay-as-you-go-transcript-translations-in-stream-for-sharepoint-2e34ad1b-e213-47ed-a806-5cc0d88751de).

## Requirements and limitations

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This service supports the following file types: .csv, .docx, .htm, .html, .markdown, .md, .msg, .pdf, .pptx, .txt, and .xlsx. <br>For older file types like .doc, .odp, .ods, .rtf, .ppt, and .xls, the translated copy will be created in the modern equivalent formats: .docx, .pptx, or .xlsx. <br>SharePoint site pages aren't supported at this time. |
| ![Check mark in a circle symbol.](/office/media/icons/success-blue.png)  | **Supported file sizes** <br>The maximum file size for documents to be translated is limited to 40 MB. |
| ![Conversation symbol.](/office/media/icons/chat-room-conversation-blue.png)  | **Supported languages** <br>This service is available for [all supported languages and dialects](/azure/ai-services/translator/language-support?source=recommendations#translation). |
| ![Globe symbol.](/office/media/icons/globe-internet.png)  | **Multi-Geo environments** <br>When setting up this service in a [Microsoft 365 Multi-Geo](/microsoft-365/enterprise/microsoft-365-multi-geo) environment, you can only configure it to use the service in the central location. If you want to use this service in a satellite location, contact Microsoft support. |

## Current release notes

- Encrypted files aren't translated.
- Password-protected files aren't translated.
- Text on images within documents isn't translated.
- Document translation is also [available for files in OneDrive](/sharepoint/onedrive-document-translation).
- On-demand translation on folders will be available in a future release.

## Frequently asked questions

For answers to frequently asked questions about document translation, see [Document Translation: FAQ](/azure/ai-services/translator/document-translation/faq#document-translation-faq).

For specific questions about character count, see [How does Translator count characters?](/azure/ai-services/translator/translator-faq#how-does-translator-count-characters).