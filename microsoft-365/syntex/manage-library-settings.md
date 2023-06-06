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
description: Learn how to manage settings on a SharePoint document library with Microsoft Syntex.
---

# Manage library settings in Microsoft Syntex

*This article is currently in development.*
<!---
<sup>**Applies to:**  &ensp; &#10003; All custom models &ensp; | &ensp; &#10003; All prebuilt models</sup>
--->

<!---
Create new article in the "manage your model" node that briefly describes the settings panel and points to the appropriate article(s) for more details.

A library gets one or more models applied to it
When model applied it adds the content types, views, etc.
View/apply/manage model from "classify & extract" button
library settings  syntex settings (reprocess on edit; off by default)


From a SharePoint document libary, select **Settings** > **Library settings**.
--->
When you apply a model to a library, Syntex adds the associated content type, the columns, and the view.

By default, Syntex processes a file every time the file is uploaded or edited. If you want Syntex to process oly new files, follow these steps.

## To specify processing new files only

1. From a SharePoint document libary, select **Settings** (../media/content-understanding/settings-icon.png)> **Library settings**.

    ![Screenshot of the Settings menu for a SharePoint document library.](../media/content-understanding/syntex-library-settings.png)

2. On the **Library settings** panel, in the **Automatic classification and extraction** section, select **New files only**, and then select **Save**.

    ![Screenshot of the Library settings panel with the Automatic classification and extraction option highlighted.](../media/content-understanding/automatic-classification-setting.png)