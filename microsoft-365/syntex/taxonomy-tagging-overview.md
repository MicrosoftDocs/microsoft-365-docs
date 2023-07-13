---
title: Overview of taxonomy tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: shrganguly
ms.date: 07/01/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: intro-overview
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn about taxonomy tagging in Microsoft Syntex.
---

# Overview of taxonomy tagging in Microsoft Syntex

Microsoft Syntex makes it easier to find and manage images in SharePoint document libraries. It does this by automatically tagging images with descriptive keywords using AI. These keywords are stored in a managed metadata column (the **Image Tags** column), which makes it easier to search, sort, filter, and manage the images.

The image tagging feature makes it even easier to tag images without any training, thereby reducing the need for manual tagging or custom AI model building. This means you can quickly find images in your libraries and set up processes based on the tags for the images.

## Requirements and limitations

### Supported file types

Image tagging is available for the following image file types: .bmp, .png, .gif, .jpeg, .jpg, .tif, .tiff, .ari, .arw, .bay, .cap, .crw, .cr2, .cr3, .dcr, .dcs, .dng, .drf, .eip, .erf, .fff, .heic, .heif, .iiq, .kdc, .k25, .mef, .mos, .mrw, .nef, .nrw, .orf, .pef, .ptx, .pxn, .raf, .raw, .rwl, .rw2, .sr2, .srf, .srw, .x3f, and .3fr.

### Current release notes

- **Time taken to reflect tags getting in the **Image Tags** column:** Minimum: 5 minutes, maximum: 24 hours.

- **Image Tags is an editable taxonomy column:**  You can add new tags or remove the AI-generated tags as needed to meet your requirements.

- **Custom metadata already applied:** If the image already has custom metadata applied to it, that information will also be extracted and shown in the **Image Tags** column.

- **Existing image processing:** Currently, existing images aren't processed when image tagger is enabled. Any newly uploaded images are processed for automatic image tagging.

- **Responsible AI guidelines:** Send us feedback on the image tagging quality. We monitor feedback closely and take appropriate action based on the feedback.

