---
title: Translate a document in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
ms.date: 12/01/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to translate documents using Microsoft Syntex.
---

# Translate a document in Microsoft Syntex

> [!NOTE]
> This article is currently in development.

Translation in Microsoft Syntex lets you create translated copies of documents manually and on demand or set a rule to create a translated copy automatically when a document is created or modified.​

## Translate a document on demand

To create a translated version of a document, follow these steps:

1. From a SharePoint document library, select the file or files you want to translate, and then select **Translate**.

2. On the **Translate documents** screen, use the drop-down menu to choose the language into which you want to translate the file, and then select **Translate**.

3. You'll receive a confirmation message that the file has been translated.

## Translate a document automatically

To create a rule to translate documents automatically under specific conditions, follow these steps:

1. From a SharePoint document library, select **Automate** > **Rules** > **Create a rule**.

2. On the **Create a rule** page, select **A new file is added**.

3. Under **When a new file is added**, complete the rule statement:

    a. Select **Choose action**, and then select **Create a translated copy in**.

    b. Select **Enter a language**, and then select the language into which you want to translate the file. 

4. When your rule statement is complete, select **Create**. You can [see and manage the new rule](content-processing-overview.md#manage-a-rule) on the **Manage rules** page.
