---
title: Overview of taxonomy tagging
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 08/01/2025
ms.topic: concept-article
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: intro-overview
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about taxonomy tagging in SharePoint.
---

# Overview of taxonomy tagging

> [!NOTE]
> Through December 2025, you can try out a [limited amount](promo-syntex.md#included-monthly-capacity) of taxonomy tagging and other selected content services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out pay-as-you-go services](promo-syntex.md).

Taxonomy tagging in SharePoint uses AI to automatically apply terms from your organization's term store to documents in libraries. These terms are added to a managed metadata column—also known as a taxonomy column—on each item, helping you search, sort, filter, and manage content more effectively.

This feature offers a simple, no-training-required approach to tagging. It removes the need for users to manually apply tags or build and train custom AI models for basic term recognition. Taxonomy tagging is especially helpful when you want to:

- Quickly find documents in your libraries
- Trigger downstream processes based on tagged metadata
- Improve content discoverability and organization

By using AI and your existing term store, taxonomy tagging streamlines document management and enhances the value of your metadata.

## Requirements and limitations

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This service supports the following file types: .doc, .docx, .pdf, and .pptx. |

### Current release notes

- A maximum of five columns in a library can be configured with taxonomy tagging.

- Taxonomy tagging doesn't work on scanned PDF files at this time. It only works on regular (native) PDF files.

- The time taken for tags to appear in the taxonomy column ranges from a minimum of 20 minutes to a maximum of 24 hours.

- The configured column is an editable taxonomy column, allowing you to add new tags or remove AI-generated tags to meet your requirements.

- By default, existing documents aren't processed when taxonomy tagging is enabled. Any newly uploaded files or existing files that are edited will be processed for automatic taxonomy tagging.
