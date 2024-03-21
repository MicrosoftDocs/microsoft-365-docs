---
title: Overview of document translation in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 01/19/2024
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
> Through June 2024, you can try out document translation and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

Microsoft Syntex lets you easily create a translated copy of a selected file or a set of files in a SharePoint document library. You can translate a file, while preserving the original format and structure of the file. Translation is available for all supported languages and dialects.

![Screenshot showing a document library with translated documents.](../media/content-understanding/translation-sample-library.png)

This feature lets you translate files of different types either manually or automatically by creating a rule.

You can also use the translation feature for translating video transcripts and closed captioning files. For more information, see [Transcript translations in Stream for SharePoint](https://prod.support.services.microsoft.com/office/microsoft-syntex-pay-as-you-go-transcript-translations-in-stream-for-sharepoint-2e34ad1b-e213-47ed-a806-5cc0d88751de).

## Requirements and limitations

### Supported file types

Document translation is available for the following file types: .csv, .docx, .htm, .html, .markdown, .md, .msg, .pdf, .pptx, .txt, and .xlsx. For legacy file types .doc, .rtf, .xls, .ods, .ppt, and .odp, the translated copy is created in the modern equivalent (.docx, .xlsx, or .pptx). SharePoint site pages aren't supported at this time.

### Supported file size

The maximum file size for documents to be translated is limited to 40 MB.

### Supported languages

Translation in Syntex is available for [all supported languages and dialects](/azure/ai-services/translator/language-support?source=recommendations#translation).

### Current release notes

- Text on an image within a document isn't translated.

- Password-protected files aren't translated.

- On-demand translation on folders will be available in a future release.

### Frequently asked questions

For answers to frequently asked questions about document translation, see [Document Translation: FAQ](/azure/ai-services/translator/document-translation/faq#document-translation-faq).