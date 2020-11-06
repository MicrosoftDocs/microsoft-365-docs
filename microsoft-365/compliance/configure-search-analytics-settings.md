---
title: Configure search and analytics settings - Data investigations
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
description: Learn how to configure search and analytics settings, like near duplicates, email threading, and themes when managing data investigations.
ms.custom: seo-marvel-mar2020
---

# Configure search and analytics settings in Data Investigations

## Near duplicates and email threading

In this section, you can set parameters for duplicate detection, near duplicate detection, and email threading.

- Enable/disable: include duplicate detection, near duplicate detection, and email threading as part of analytics flow if enabled. Because they build on top of each other, you must enable all of them or disable all of them.

- Threshold: if the similarity level of two documents is above the threshold, they will be put in the same near duplicate set.

- Hide duplicates by default: if this setting is on, a filter to hide duplicate documents will be applied in the working set by default. The filter can be removed manually in the working set if necessary.

- Minimum/maximum number of words: near duplicates and email threading will run only on documents that have at least the minimum number of words and at most the maximum number of words.

For more information, see [Near duplicate detection](near-duplicates.md) and [Email threading](email-threading.md).

## Themes

In this section, you can set parameters for themes.

- Enable/disable: include themes clustering as part of analytics flow if enabled.

- Adjust maximum number of themes dynamically: in certain cases, there are not enough documents to produce the desired number of themes. If this setting is turned on, then rather than trying to force the desired maximum number of themes, the system adjusts maximum number of themes dynamically.

- Maximum number of themes: desired number of themes.

- Include numbers in themes: When enabled, it will include numbers in when generating themes.  

## Optical character recognition (OCR)

When this setting is turned on, OCR will be run on images that are ingested into working sets so that they can be searchable.

## Ignore text

There are instances where certain texts will diminish the quality of analytics, such as lengthy disclaimers that get added to certain emails regardless of the content of the email. If you are aware of such cases, you can exclude this text from analytics by specifying the text (RegEx is supported) and which modules that text should be excluded for.
