---
title: Configure review set grouping settings for eDiscovery (Premium) cases
description: "Configure review set settings that apply to a case in eDiscovery (Premium)"
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
ms.date: 04/28/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
- ediscovery
search.appverid: 
- MOE150
- MET150
ms.custom: seo-marvel-mar2020
---

# Configure review set grouping settings for eDiscovery (Premium) cases

You can configure grouping settings for each Microsoft Purview eDiscovery (Premium) case to control how the data in a review set is grouped and displayed. Turning on the **Enable group** setting is only available for review sets in cases created in your organization after March 15, 2023.

Depending when the case is created, items in a review set can be grouped in two ways:

- **Group review set items by Group ID and Thread ID**: When enabled, review set items are grouped by *Group ID* and *Thread ID*. This setting is the default for all cases created after March 15, 2023.
- **Group review set items by Family ID and Conversation ID**: When disabled, review set items are grouped by *Family ID* and *Conversation ID*. This setting is the default for all cases created before March 15, 2023.

For more information about review set grouping, see [Group and view documents in a review set](ediscovery-view-documents-in-review-set.md).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Configure review set grouping settings for a case

To configure review set grouping settings for a case:

1. On the **eDiscovery (Premium)** page, select the case.
2. On the **Settings** tab, under **Review sets**, choose **Select**.
3. On the **Review sets** page, select the **Enable group** toggle to enable grouping review set items by *Group ID* and *Thread ID*.

>[!NOTE]
> For cases created before March 15, 2023, the **Enable group** toggle is disabled. Item grouping in review sets for these cases is based on *Family ID* and *Conversation ID*.
