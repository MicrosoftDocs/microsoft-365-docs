---
title: "Commit a draft collection to a review set"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
ms.reviewer: nickrob
manager: laurawi
ms.date: 
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
description: "After you create and iterate on a draft collection, you can commit it to a review set. When you commit a draft collection, the collected items are added to review set in the case. After the collected items are in the review set, you can analyze, review, and export them."
---

# Commit a draft collection to a review set in Advanced eDiscovery

When you're satisfied with the items you've collected in a draft collection and are ready to analyze, tag, and review them, you can add a collection to a review set in the case. When you commit a draft collection to a review set, collected items are copied from their original content location in Microsoft 365 to a review set. A review set is a secure, Microsoft-provided Azure Storage location in the Microsoft cloud.

## Before you commit a draft collection

- 




## Commit a draft collection to a review set

1. In the Microsoft 365 compliance center, open the Advanced eDiscovery case, and then select the **Collections** tab to display a list of the collections in the case.

   > [!TIP]
   > A value of `Estimated` in the **Status** column identifies the draft collections that can be added to a review set. A status of `Committed` indicates that a collection has already been added to a review set.

2. On the **Collections** page, select the draft collection that you want to commit to a review set.

3. On the bottom of the flyout page, select **Actions** > **Edit collection**.

4. In the edit collection wizard, click **Next** until the **Save draft or collect** page is displayed.

5. Configure the following settings:

   1. Select **Add collected items to review set**.

   2. Decide whether to add the collection to a new review set (which is created after you submit the collection) or to an existing review set. Complete this section based on your decision.

   3. Configure the additional collection settings:

       - 




9. On the **Review your collection** page, under **Save draft estimate or add collected items**, review the collection settings that you configured on the previous page. Click **Edit** if you want to change them.

10. Click **Submit** to create the draft collection. A page is displayed confirming that the collection was created.

## What happens after you create a draft collection

When you commit a draft collection to a review set, the following things happen:

- The collection search query is run again. This means the actual search results copied to the review set may be different than the estimated results that were returned when the collection search was last run.

- All items in the search results are copied from the original data source in the live service, and copied to a secure Azure Storage location in the Microsoft cloud.

- All items (including the content and metadata) are reindexed so that all data in the review set is fully searchable during the review of the case data. Reindexing the content in a collection results in thorough and fast searches when you search or filter the content in the review set during the case investigation.

- Encrypted SharePoint and OneDrive documents and encrypted files attached email messages that's returned in the search results are decrypted when you commit the collection to a review set. You can review and query the decrypted files in the review set. For more information, see [Decryption in Microsoft 365 eDiscovery tools](ediscovery-decryption.md).

- Optical character recognition (OCR) functionality extracts text from images, and includes the image text with the content that's added to a review set. For more information, see the [Optical character recognition](#more-information-about-optical-character-recognition) section in this article.

## More information about optical character recognition

When you add a collection to a review set, optical character recognition (OCR) functionality in Advanced eDiscovery automatically extracts text from images, and includes the image text with the content that's added to a review set. You can view the extracted text in the Text viewer of the selected image file in the review set. This lets you conduct further review and analysis on text in images. OCR is supported for loose files, email attachments, and embedded images. For a list of image file formats that are supported for OCR, see [Supported file types in Advanced eDiscovery](supported-filetypes-ediscovery20.md#image).

You have to enable OCR functionality for each case that you create in Advanced eDiscovery. For more information, see [Configure search and analytics settings](configure-search-and-analytics-settings-in-advanced-ediscovery.md#optical-character-recognition-ocr).