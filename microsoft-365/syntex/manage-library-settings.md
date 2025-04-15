---
title: Manage library settings for document processing in SharePoint
ms.author: chucked
author: chuckedmonson
manager: jtremper
ms.reviewer: ssquires
ms.date: 03/11/2025
audience: admin
ms.topic: how-to
ms.service: microsoft-syntex
search.appverid: 
ms.collection: 
    - essentials-manage
    - m365initiative-syntex
ms.localizationpriority:  medium
description: Learn how to manage settings for document processing on a SharePoint document library.
---

# Manage library settings for document processing in SharePoint

<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>

Library settings in a SharePoint document library provide information about the document processing model and allow you to configure specific settings for the library.

To access library settings from a SharePoint document library, select **Settings** ![Image showing the Settings menu icon](../media/content-understanding/settings-icon.png) > **Library settings**.

![Screenshot of the Settings menu for a SharePoint document library.](../media/content-understanding/syntex-library-settings.png)

## Automatic classification and extraction

When you apply a model to a library, Syntex automatically adds the content type and updates the default view with the labels you extracted showing as columns. Then, every time you add or edit a document in the library, Syntex processes the document again, classifying the document and extracting text from it.

By default, Syntex processes a file every time the file is uploaded or edited. If you want Syntex to process new files only and not every time a file is modified, you can change the setting.

### To process new files only

Follow these steps if you want Syntex to process new files only.

1. On the **Library settings** panel, under **Automatic classification and extraction**, select **New files only**.

    ![Screenshot of the Library settings panel with the Automatic classification and extraction option highlighted.](../media/content-understanding/automatic-classification-setting.png)

2. Select **Save**. Syntex will now automatically process new files only.

   Even with this setting selected, you can still select updated files and manually process them using the **Classify and extract** option in the document library.