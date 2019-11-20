---
title: "Configure search and analytics settings"
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

description: ""
---

# Configure search and analytics settings

You can configure settings for each Advanced eDiscovery case to control the following functionality.

- Near duplicates and email threading
- Themes
- Ignore text
- Optical character recognition

To configure search and analytics settings for a case:

1. On the **Advanced eDiscovery** page, select the case.

2. On the **Settings** tab, under **Search & analytics**, click **Select**.

   The case settings page is displayed. These settings are applied to all review sets in a case.

   ![Configure analytics and search settings for an Advanced eDiscovery case](media/AeDCaseSettings.png)

## Near duplicates and email threading

In this section, you can set parameters for duplicate detection, near duplicate detection, and email threading. For more information, see [Near duplicate detection](near-duplicates.md) and [Email threading](email-threading.md).

- **Near duplicates/email threading:** When turned on, duplicate detection, near duplicate detection, and email threading are included as part of the workflow when you run analytics on the data in a review set.

- **Document and email similarity threshold:** If the similarity level for two documents are above the threshold, both documents are put in the same near duplicate set.

- **Minimum/maximum number of words:** These settings specify that near duplicates and email threading analysis are performed only on documents that have at least the minimum number of words and at most the maximum number of words.

## Themes

In this section, you can set parameters for themes. For more information, see [Themes](themes-in-advanced-ediscovery.md).

- **Themes:** When turned on, themes clustering is performed as part of the workflow when you run analytics on the data in a review set.

- **Maximum number of themes:** Specifies the maximum number of themes that can be generated when you run analytics on the data in a review set.

- **Include numbers in themes:** When turned on, numbers (that identify a theme) are included when generating themes. 

- **Adjust maximum number of themes dynamically:** In certain situations, there may not be enough documents in a review set to produce the desired number of themes. When this setting is enabled, Advanced eDiscovery adjusts the maximum number of themes dynamically rather than attempting to enforce the maximum number of themes.

## Ignore text

There are situations where certain text will diminish the quality of analytics, such as lengthy disclaimers that get added to email messages regardless of the content of the email. If you know of text that should be ignored, you can exclude it from analytics by specifying the text string and the analytics functionality (Near-duplicates, Email threading, Themes, and Relevance) that the text should be excluded for. Using regular expressions (RegEx) as ignored text is also supported. 

## Optical character recognition (OCR)

When this setting is turned on, OCR will be run on image files that are added to review sets so that image text can be reviewed, searched, tagged, and analyzed. For more information, see:

- [Add search results to a review set](add-data-to-review-set.md#optical-character-recognition)
- [Supported image file types](supported-filetypes-ediscovery20.md#image)