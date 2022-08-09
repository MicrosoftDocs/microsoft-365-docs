---
title: Supported data types and filters in guided mode
description: Learn about advanced hunting queries in Microsoft 365 and how to use them to proactively find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.technology: m365d
---

# Working with query results in guided mode
[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

In hunting using guided mode, the results of the query appear in the **Results** tab. 

[ ![banner inviting user to take the tour](../../media/guided-hunting/results-view.png) ](../../media/guided-hunting/results-view.png#lightbox)

You can work on the results further by exporting them to a CSV file by selecting **Export**. This downloads the CSV file for your use.

You can view other information in the Results view:
- Number of records in the results list (beside the Search button)
- Duration of the query run time
- Resource usage of the query

## View more columns

A few standard columns are included in the results for easy viewing. 

To view more columns:
1. Select **Customize columns** in the upper right-hand portion of the results view.
 
 
![Screenshot showing different conditions you can use](../../media/guided-hunting/results-view-2.png)

2. From here, select the columns to include in the results view and deselect columns to hide. 

![Screenshot showing different conditions you can use](../../media/guided-hunting/results-view-customize-columns.png)

3. Select **Apply** to view results with tne added columns. Use the scroll bars if necessary.


## See also
- [Advanced hunting quotas and usage parameters](advanced-hunting-limits.md)
- [Switch to advanced mode](advanced-hunting-working-guided-mode.md#switching-to-advanced-mode-after-building-a-query)
- [Refine your query in guided mode](advanced-hunting-working-guided-mode.md)