---
title: Manage library settings in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
ms.reviewer: ssquires
ms.date: 06/01/2023
audience: admin
ms.topic: conceptual
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority:  medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to manage settings on a SharePoint document library with Microsoft Syntex.
---

# Manage library settings in Microsoft Syntex

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

When you apply a model to a library, Syntex automatically adds the content type and updates the default view with the labels you extracted showing as columns.

Every time you then add or edit a document, Syntex processes the document again, classifying the document and extracting text from it.

By default, Syntex processes a file every time the file is uploaded or edited. If you want Syntex to process only new files, you need to enable the setting.

## Process new files only

Follow these steps if you want Syntex to process new files only.

1. From a SharePoint document library, select **Settings** ![Image showing the Settings menu icon](../media/content-understanding/settings-icon.png)> **Library settings**.

    ![Screenshot of the Settings menu for a SharePoint document library.](../media/content-understanding/syntex-library-settings.png)

2. On the **Library settings** panel, in the **Automatic classification and extraction** section, select **New files only**, and then select **Save**.

    ![Screenshot of the Library settings panel with the Automatic classification and extraction option highlighted.](../media/content-understanding/automatic-classification-setting.png)