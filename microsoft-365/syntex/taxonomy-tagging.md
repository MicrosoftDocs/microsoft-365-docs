---
title: Find and manage images using image tagging in Microsoft Syntex
ms.author: chucked
author: chuckedmonson
manager: pamgreen
audience: admin
ms.reviewer: shrganguly
ms.date: 05/30/2023
ms.topic: conceptual
ms.service: microsoft-syntex
ms.custom: admindeeplinkMAC
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-syntex
ms.localizationpriority: medium
ROBOTS: NOINDEX, NOFOLLOW
description: Learn how to use image tagging to search, sort, filter, and manage images in  Microsoft Syntex.
---

# Find and manage images using image tagging in Microsoft Syntex

Microsoft Syntex makes it easier to find and manage images in SharePoint document libraries. It does this by automatically tagging images with descriptive keywords using AI. These keywords are stored in a managed metadata column (the **Image Tags** column), which makes it easier to search, sort, filter, and manage the images.

The image tagging feature makes it even easier to tag images without any training, thereby reducing the need for manual tagging or custom AI model building. This means you can quickly find images in your libraries and set up processes based on the tags for the images.

> [!NOTE]
> Before you can use image tagging in Syntex, you must first enter your Azure subscription in [Syntex pay-as-you-go](syntex-azure-billing.md). Image tagging in Syntex is billed based on the [type and number of transactions](syntex-pay-as-you-go-services.md). 


## To enable image tagging in a library

There are two methods you can use to enable image tagging in a document library:

- [Use an existing **Image Tags** column](#use-an-existing-image-tags-column)
- [Enable the **Image Tags** column](#enable-the-image-tags-column)

### Use an existing Image Tags column

If you already have an [**Image Tags** column in your library](https://support.microsoft.com/office/work-with-image-tags-in-a-sharepoint-library), use these steps to enable enhanced image tagging:

1. On the **Image Tags** column, select **Column settings** > **Edit**. 

2. On the **Edit column** panel, in the **Automatically tag images with detected objects** section, toggle the switch to **Yes**.

   ![Screenshot showing the Column settings panel for the Image Tags column.](../media/content-understanding/image-tagger-edit-column-toggle-highlighted.png)  
 
3. Once enabled, any new images uploaded to the library are tagged with the descriptive keywords.

### Enable the Image Tags column

If you don't have an **Image Tags** column in your library, use these steps to enable enhanced image tagging:

1. From the document library, select **Automate** > **Enable image tagger**.

   ![Screenshot showing the Automate menu in a document library.](../media/content-understanding/image-tagger-automate-menu.png) 

2. Enhanced image tagging is then activated. Images uploaded are tagged with a set of descriptive keywords. The keywords are available in the **Image Tags** column that is added to the library view.

   ![Screenshot showing the library view with the Image Tags column.](../media/content-understanding/image-tagger-image-tags-column.png)  

3. Once the **Image Tags** column is configured, you can upload images. The relevant tags are displayed in the library for each image.

   > [!NOTE]
   >- **Supported image file types:** .bmp, .png, .gif, .jpeg, .jpg, .tif, .tiff, .ari, .arw, .bay, .cap, .crw, .cr2, .cr3, .dcr, .dcs, .dng, .drf, .eip, .erf, .fff, .heic, .heif, .iiq, .kdc, .k25, .mef, .mos, .mrw, .nef, .nrw, .orf, .pef, .ptx, .pxn, .raf, .raw, .rwl, .rw2, .sr2, .srf, .srw, .x3f, and .3fr.<br>
   >- **Time taken to reflect tags getting in the **Image Tags** column:** Minimum: 5 minutes, maximum: 24 hours.<br>
   >- **Image Tags is an editable taxonomy column:**  You can add new tags or remove the AI-generated tags as needed to meet your requirements.
   >- **Custom metadata already applied:** If the image already has custom metadata applied to it, that information will also be extracted and shown in the **Image Tags** column.
   >- **Existing image processing:** Currently, existing images aren't processed when image tagger is enabled. Any newly uploaded images are processed for automatic image tagging.<br>
   >- **Responsible AI guidelines:** Send us feedback on the image tagging quality. We monitor feedback closely and take appropriate action based on the feedback.



<!---
# Set up image tagging in Microsoft Syntex

(Coming soon)

With image tagging in Microsoft Syntex, users can find images through search by searching on image tags, and create workflows based on image tags. By default, basic image tagging is turned on for SharePoint and OneDrive. Images uploaded to either location are automatically scanned and applicable tags are applied, if available, from a list of 37 basic tags. Users can find images through search by searching on the image tags.

When a user uploads an image, the  tagging process runs automatically. If an image is edited, the tagging process runs again to update the tags.

Users with permissions to the image file can see and edit the tags in the file information panel or in the search results page. Once a user edits an image's tags, the system no longer auto-tags that image, even if it's edited.

If you turn tagging off, images will no longer be automatically tagged. Existing tags won't be removed.

> [!NOTE]
> System generated tags may change with updates to the image or our tag technology.

## Configure image tagging

After you [set up Syntex](set-up-content-understanding.md), you can configure image tagging in the Microsoft 365 admin center.

To turn image tagging on or off

1. In the Microsoft 365 admin center, select <a href="https://go.microsoft.com/fwlink/p/?linkid=2171997" target="_blank">**Setup**</a>.

2. Under **Organizational knowledge**, click **Automate content understanding**.

3. Click **Manage**.

4. On the **Image tagging** tab, click **Edit**.

5. Choose to allow **Basic tagging** or turn tagging **Off**.

6. Click **Save**.

    ![Screenshot of image tagging control.](../media/content-understanding/sharepoint-syntex-image-tagging-control.png)
--->
