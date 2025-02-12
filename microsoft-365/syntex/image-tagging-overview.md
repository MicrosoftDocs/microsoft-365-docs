---
title: Overview of enhanced image tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: shrganguly
ms.date: 01/16/2025
ms.topic: conceptual
ms.service: microsoft-syntex
ms.subservice: syntex-content-intelligence
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
description: Learn about enhanced image tagging in SharePoint.
---

# Overview of enhanced image tagging in Microsoft Syntex

> [!NOTE]
> Through June 2025, you can try out a [limited amount](promo-syntex.md#monthly-included-capacity) of image tagging and other selected Syntex services at no cost if you have [pay-as-you-go billing](syntex-azure-billing.md) set up. For information and limitations, see [Try out Microsoft Syntex and explore its services](promo-syntex.md).

Microsoft Syntex makes it easier to find and manage images in SharePoint document libraries. It does this process by automatically tagging images with descriptive keywords using AI. These keywords are stored in a managed metadata column (the **Image Tags** column), which makes it easier to search, sort, filter, and manage the images.

![Screenshot of the library view showing the Image Tags column.](../media/content-understanding/image-tagger-image-tags-column-overview.png)  

The image tagging feature makes it even easier to tag images without any training, which means to reduce the need for manual tagging or custom AI model building. This result means you can quickly find images in your libraries and set up processes based on the tags for the images.

## Requirements and limitations

| Icon          | Description   |
| ------------- | ------------- |
| ![Files symbol.](/office/media/icons/files-blue.png)  | **Supported file types** <br>This service supports the following file types: `.bmp, .png, .gif, .jpeg, .jpg, .tif, .tiff, .ari, .arw, .bay, .cap, .crw, .cr2, .cr3, .dcr, .dcs, .dng, .drf, .eip, .erf, .fff, .heic, .heif, .iiq, .kdc, .k25, .mef, .mos, .mrw, .nef, .nrw, .orf, .pef, .ptx, .pxn, .raf, .raw, .rwl, .rw2, .sr2, .srf, .srw, .x3f, and .3fr.` |

<!---
### Supported file types

Image tagging is available for the following image file types: .bmp, .png, .gif, .jpeg, .jpg, .tif, .tiff, .ari, .arw, .bay, .cap, .crw, .cr2, .cr3, .dcr, .dcs, .dng, .drf, .eip, .erf, .fff, .heic, .heif, .iiq, .kdc, .k25, .mef, .mos, .mrw, .nef, .nrw, .orf, .pef, .ptx, .pxn, .raf, .raw, .rwl, .rw2, .sr2, .srf, .srw, .x3f, and .3fr.
--->

### Current release notes

- The time taken for tags to appear in the **Image Tags** column ranges from a minimum of 5 minutes to a maximum of 24 hours.

- **Image Tags** is an editable taxonomy column, allowing you to add new tags or remove AI-generated tags as needed to meet your requirements.

- If the image already has custom metadata applied, that information is extracted and displayed in the **Image** Tags column.

- Existing images aren't processed when the image tagger is enabled. Only newly uploaded images are processed for automatic image tagging.

- Send us feedback on the image tagging quality. We closely monitor feedback and take appropriate action based on it.
