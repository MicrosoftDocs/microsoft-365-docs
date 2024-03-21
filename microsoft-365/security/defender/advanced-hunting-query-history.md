---
title: Rerun queries in query history
description: Learn about the query history tab in advanced hunting 
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, security events, antivirus, query history, features
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
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
- m365-security
- tier3
ms.topic: reference
ms.date: 01/02/2024
---

# Rerun queries in query history

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Defender XDR

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Your previous queries appear in the **Query history** tab in the lower half of the advanced hunting page. You can run queries you have generated and run before even if you have already closed the query tab that contains it. 

## View the query history tab

To view your query history, select the **Query history** tab. 

:::image type="content" source="../../media/advanced-hunting-query-history.png" alt-text="Screenshot of the query history pane in advanced hunting" lightbox="../../media/advanced-hunting-query-history.png":::

Your recent queries appear in descending order of when you last ran them. The query history contains up to 30 queries from the last 28 days.

By default, **Query history** contains following columns:
- Time - when the query was started
- Query   
- Query time - how long the query ran
- State - whether the query was completed, failed, or was throttled

Select **Customize columns** to hide any of the columns in your view.



## Rerun queries from query history

To use any of your previous queries, select the query. The **Run query** and **Use in editor** options then appear. 

:::image type="content" source="../../media/advanced-hunting-query-history-functions.png" alt-text="Screenshot of the query history functions in advanced hunting" lightbox="../../media/advanced-hunting-query-history-functions.png":::

Select **Run query** to load and run the query in the query editor. Select **Use in editor** to load the query in the editor, where you can then refine it further.

