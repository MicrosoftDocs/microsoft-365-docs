---
title: Overview of autofill columns Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 03/01/2024
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about the autofill columns service in Microsoft Syntex.
---

# Overview of autofill columns in Microsoft Syntex

> [!NOTE]
> Through June 2024, you can try out autofill columns and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

Autofill columns in Microsoft Syntex automatically extract, summarize, or generate content from files uploaded to a SharePoint document library. Using large language models (LLMs), autofill columns can save metadata automatically, streamlining the process of managing files and their associated information.

For example, you can ask a question (a *prompt*) of a document in natural language, and the system saves the response directly to a designated library column. Or you can have more than one of these questions set to process any file uploaded to a library, with each response allocated to a specific column.

Autofill columns can work alongside other Microsoft Syntex models. You can associate different extractive prompts (where you take information from existing data) or generative prompts (where you create new content) with more than one column, allowing you to extract metadata that other models might not detect or generate.

## Requirements and limitations

### Supported file types

Autofill columns is available for the following file types: TBD

## Supported column data types

Autofill columns is available for the following column data types:

- Choice
- Number
- Text
- DateTime
- Boolean
- Note
- Currency
- DateTime
- URL
- MMD

### Current release notes

- Bulk processing options for existing library files will be added in a future release.

- Currently, autofill columns doesn't support the following library types: FormServerTemplates, SitePages, Style Library, and SiteAssets.