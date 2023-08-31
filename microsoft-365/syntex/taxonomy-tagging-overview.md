---
title: Overview of taxonomy tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: shrganguly
ms.date: 08/31/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: intro-overview
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about taxonomy tagging in Microsoft Syntex.
---

# Overview of taxonomy tagging in Microsoft Syntex

Microsoft Syntex gives you the ability to automatically tag documents in SharePoint libraries with terms configured in your term store using AI. These terms are stored in a managed metadata column (also known as a taxonomy column) on the item, making the documents easier to search, sort, filter, and manage.

The taxonomy tagging feature offers an automated tagging solution for documents stored in document libraries. This straightforward, no-training option eliminates the need for users to manually tag documents or build and train sophisticated AI models to tag basic terms. This feature is beneficial if you want to quickly search for and locate documents in your libraries or set up any subsequent processes based on the tags attached to files.

## Requirements and limitations

### Supported file types

Taxonomy tagging is available for the following file types: .doc, .docx, .pdf, and .pptx.

### Current release notes

- A maximum of three columns can be configured with taxonomy tagging.

- Time taken to reflect tags getting in the taxonomy column: Minimum: 20 minutes, maximum: 24 hours.

- The configured column is an editable taxonomy column. Therefore, you can add new tags or remove the AI-generated tags to meet your requirements.

- Existing documents processing: By default, existing documents are not processed when taxonomy tagging is enabled. Any newly uploaded files or existing files that are edited will be processed for automatic taxonomy tagging.
