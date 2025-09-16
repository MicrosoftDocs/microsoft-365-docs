---
title: Find and manage images using enhanced image tagging
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 08/01/2025
ms.topic: how-to
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
ms.custom: admindeeplinkMAC
search.appverid:
ms.collection:
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn how to use enhanced image tagging to search, sort, filter, and manage images in SharePoint.
---

# Find and manage images using enhanced image tagging

Before you can use image tagging, you need to turn it on in a document library. There are two methods you can use to do this:

- [Use an existing **Image Tags** column](#use-an-existing-image-tags-column)
- [Turn on the **Image Tags** column](#turn-on-the-image-tags-column)

## Use an existing Image Tags column

If you already have an **Image Tags** column in your library, use these steps to turn on enhanced image tagging:

1. On the **Image Tags** column, select **Column settings** > **Edit**.

2. On the **Edit column** panel, in the **Automatically tag images with detected objects** section, toggle the switch to **Yes**.

   ![Screenshot showing the Column settings panel for the Image Tags column.](../media/content-understanding/image-tagger-edit-column-toggle-highlighted.png)

3. Once turned on, any new images uploaded to the library are tagged with the descriptive keywords.

## Turn on the Image Tags column

If you don't have an **Image Tags** column in your library, use these steps to turn on enhanced image tagging:

1. From the document library, select **Automate** > **Enable image tagger**.

   ![Screenshot showing the Automate menu in a document library.](../media/content-understanding/image-tagger-automate-menu.png)

2. Enhanced image tagging is then activated. Images uploaded are tagged with a set of descriptive keywords. The keywords are available in the **Image Tags** column that is added to the library view.

   ![Screenshot showing the library view with the Image Tags column.](../media/content-understanding/image-tagger-image-tags-column.png)

3. Once the **Image Tags** column is configured, you can upload images. The relevant tags are displayed in the library for each image.
