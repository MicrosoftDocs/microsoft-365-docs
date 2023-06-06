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

By default, every time you then add or edit a document, Syntex processes the document again. After the model is applied, every time a new file is added to or modified in the library, applying the model to the document library, you can begin uploading documents to the site and see the results.

Because the model is associated to a content type, when you apply it to the library it will add the content type and update the default view with the labels you extracted showing as columns.

Syntex automatically classifies new and modified documents and also extracts text from them.

Use the classify and extract option to update existing files when their content changes, even when new files only is selected.

## Process new files only

By default, Syntex processes a file every time the file is uploaded or edited. If you want Syntex to process only new files, follow these steps.

1. From a SharePoint document library, select **Settings** ![Image showing the Settings menu icon](../media/content-understanding/settings-icon.png)> **Library settings**.

    ![Screenshot of the Settings menu for a SharePoint document library.](../media/content-understanding/syntex-library-settings.png)

2. On the **Library settings** panel, in the **Automatic classification and extraction** section, select **New files only**, and then select **Save**.

    ![Screenshot of the Library settings panel with the Automatic classification and extraction option highlighted.](../media/content-understanding/automatic-classification-setting.png)