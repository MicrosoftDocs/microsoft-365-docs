---
title: "Add search results to a review set"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.assetid: 
ms.custom:
- seo-marvel-apr2020
description: Learn how to add search results or samples of those search results to an Advanced eDiscovery case review set.
---

# Add search results to a review set

When you're satisfied with the results of a search and you're ready to review and analyze those search results, you can add them to a review set in the case. Copying the original data to the review set also facilitates the review and analysis process by providing you with advanced analytics tools such as themes detection, near-duplicate detection, and email thread identification. You can also add data from non-Microsoft 365 data sources to a review set so that you can review that data in addition to the data you collect from Microsoft 365.

When you add the results of a search to a review set (the review sets in a case are listed on the **Review sets** tab), the following things occur:

- The search is run again. This means the actual search results copied to the review set may be different than the estimated results that were returned when the search was last run.

- All items in the search results are copied from the original data source in the live services, and copied to a secure Azure Storage location in the Microsoft cloud.

- All items (including the content and metadata) are reindexed so that all data in the review set is fully searchable during the review of the case data. Reindexing the data results in thorough and fast searches when you search the data in the review set during the case investigation.

- A file encrypted with a [Microsoft encryption technology](encryption.md) and is attached to an email message that's returned in the search results is decrypted when the email message and attached file are added to the review set. You can review and query the decrypted file in the review set. You have to be assigned the RMS Decrypt role to add decrypted email attachments to a review set. For more information, see [Decryption in Microsoft 365 eDiscovery tools](ediscovery-decryption.md).

To add data to a review set, click a search on the **Searches** tab, and then click **Add results to review set** on the flyout page.

You can add to an existing review set or create a new review set.  If adding to a new review set, specify the name and then click **Add** to display the flyout page.

![Select a review set and configure collection options](../media/AeD_AddToReviewSet.png)

Adding data to a review set is a long-running process. This process includes gathering items from the original data sources in Microsoft 365 (for example, from mailboxes and sites), copying them to the Azure Storage location (this copying process is also called *ingestion*), and then reindexing the items. You can track the progress on the **Jobs** tab or on the **Searches** tab by monitoring the status in the **Added data to review set** column. After the review set processing is completed, click the **Review sets** tab in the case, and then click the review set to start the process of filtering, reviewing, tagging, and exporting data in the review set.

## Define options to scope your collection for review

When you add the content of a search to an existing or new review set, you have the following options for how to collect the content for review:

- **Include versions from SharePoint (beta)**: Use this option to enable the collection of all version of a SharePoint document per the version limits and search parameters of the collection. Selecting this option will significantly increase the size of items that are added to the review set.

- **Conversation retrieval options**: Items added to the review set are enabled for threaded conversations to help review content in context of the back and forth conversation. For more information, see [Review conversations in Advanced eDiscovery](conversation-review-sets.md).

- **Enable retrieval for modern attachments**: Use this option to include modern attachments or linked files in the collection for further review. For more information about the searchable properties related to modern attachments, see [Document metadata fields in Advanced eDiscovery](document-metadata-fields-in-Advanced-eDiscovery.md).

## Add a sample to a review set

If you want to validate the results of a search more thoroughly before adding all of them to a review set, you can add a sample of the search results to a review set instead of adding everything.

To add a sample to a review set, click a search on the **Searches** tab and click **Sample** on the flyout page. On the **Sampling parameters** page, choose one of the following options:

- **Confidence level %** and **Confidence interval %** - The items added to the review set will be determined by the statistical parameters that you set. If you typically use a confidence level and interval when sampling results, specify them in the drop-down boxes. Otherwise, use the default settings.

- **Random sample %** - The items added to the review set is based on a random selection of the specified percentage of the total number of items returned by the search.

After selecting and configuring one of the previous options, choose a review set to add the sample to and then click **Send**. Again, you can track the progress on the **Jobs** tab or on the **Searches** tab by monitoring the status in the **Added data to review set** column.

## Optical character recognition

When you add search results to a review set, optical character recognition (OCR) functionality in Advanced eDiscovery automatically extracts text from images, and includes the image text with the data that's added to a review set. You can view the extracted text in the Text viewer of the selected image file in the review set. This lets you conduct further review and analysis on text in images. OCR is supported for loose files, email attachments, and embedded images. For a list of image file formats that are supported for OCR, see [Supported file types in Advanced eDiscovery](supported-filetypes-ediscovery20.md#image).

You have to enable OCR functionality for each case that you create in Advanced eDiscovery. For more information, see [Configure search and analytics settings](configure-search-and-analytics-settings-in-advanced-ediscovery.md#optical-character-recognition-ocr).
