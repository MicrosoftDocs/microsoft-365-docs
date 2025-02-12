---
title: Overview of taxonomy tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 01/16/2025
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: intro-overview
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about taxonomy tagging in Microsoft Syntex.
---

# Overview of taxonomy tagging in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of taxonomy tagging and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

Microsoft Syntex gives you the ability to automatically tag documents in SharePoint libraries with terms configured in your term store using AI. These terms are stored in a managed metadata column (also known as a taxonomy column) on the item, making the documents easier to search, sort, filter, and manage.

The taxonomy tagging feature offers an automated tagging solution for documents stored in document libraries. This straightforward, no-training option eliminates the need for users to manually tag documents or build and train sophisticated AI models to tag basic terms. This feature is beneficial if you want to quickly search for and locate documents in your libraries or set up any subsequent processes based on the tags attached to files.

## Requirements and limitations

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This service supports the following file types: .doc, .docx, .pdf, and .pptx. |

### Current release notes

- A maximum of three columns in a library can be configured with taxonomy tagging.

- Taxonomy tagging doesn't work on scanned PDF files at this time. It only works on regular (native) PDF files.

- The time taken for tags to appear in the taxonomy column ranges from a minimum of 20 minutes to a maximum of 24 hours.

- The configured column is an editable taxonomy column, allowing you to add new tags or remove AI-generated tags to meet your requirements.

- By default, existing documents aren't processed when taxonomy tagging is enabled. Any newly uploaded files or existing files that are edited will be processed for automatic taxonomy tagging.
