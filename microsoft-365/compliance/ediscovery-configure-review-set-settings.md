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

You can configure review set grouping settings for each Microsoft Purview eDiscovery (Premium) case to control how the datea in a review set is grouped and displayed. This setting is applied to all review sets in cases created in your organization after April 28, 2023.

Items in a review set can be grouped in two ways:

 - **Group review set items by Group ID and Thread ID (preview)**: When enabled, review set items are grouped by *Group ID* and *Thread ID*.
 - **Group review set items by Family ID and Converstion ID**: When enabled, review set items are grouped by *Family ID* and *Converstion ID*. This is the default setting.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Configure review set grouping settings for a case

To configure review set grouping settings for a case:

1. On the **eDiscovery (Premium)** page, select the case.
2. On the **Settings** tab, under **Review sets**, choose **Select**.
3. On the **Review sets** page, select the **Enable group** toggle to enable grouping review set items by *Group ID* and *Thread ID*.

>[!NOTE]
> For cases created before April 28, 2023, the **Enable group** toggle is disabled. Item grouping in review sets for these cases is based on *Family ID* and *Converstion ID*.
