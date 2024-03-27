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
description: Learn about the autofill columns service in Microsoft Syntex.
---

# Overview of autofill columns in Microsoft Syntex

> [!NOTE]
> Through June 2024, you can try out autofill columns and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

Autofill columns in Microsoft Syntex automatically extract, summarize, or generate content from files uploaded to a SharePoint document library. Using large language models (LLMs), autofill columns can save metadata automatically, streamlining the process of managing files and their associated information.

For example, you can ask a question (a *prompt*) of a document in natural language, and the system save the response directly to a designated library column. Or you can have more than one of these questions set to process any file uploaded to a library, with each response allocated to a specific column.

Your prompt can be extractive (where you take information from existing data) or generative (where you create new content). Prompts can be linked to more than one column, and can work together alongside other models.

For extracting basic metadata, autofill columns is quicker and easier than configuring a prebuilt or training a custom model, and generates content.

## Requirements and limitations

### Supported file types

Autofill columns is available for the following file types: TBD

### Current release notes

- Bulk processing options for existing library files will be added in a future release.

