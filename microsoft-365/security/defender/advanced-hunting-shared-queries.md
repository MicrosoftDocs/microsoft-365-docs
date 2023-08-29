---
title: Use shared queries in Microsoft 365 Defender advanced hunting
description: Start threat hunting immediately with predefined and shared queries. Share your queries to the public or to your organization.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto, github repo, my queries, shared queries
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
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
- tier2
ms.topic: conceptual
ms.date: 02/16/2021
---

# Use shared queries in advanced hunting

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

[Advanced hunting](advanced-hunting-overview.md) queries can be shared among users in the same organization. You can also save queries that are only accessible to you. You can also find community queries that are shared publicly on GitHub. These saved queries let you quickly pursue specific threat hunting scenarios without having to write queries from scratch.

Under the Queries tab in advanced hunting, you can find the drop-down menus for **Shared queries**, **My queries**, and **Community queries**. You can select a downward-facing arrow to expand a menu.

:::image type="content" source="../../media/advanced-hunting-shared-queries-1.png" alt-text="Shared queries, My queries, and Community queries in the Microsoft 365 Defender portal" lightbox="../../media/advanced-hunting-shared-queries-1.png":::

## Save, modify, and share a query
You can save a new or existing query so that it is only accessible to you or shared with other users in your organization.

1. Create or modify a query.

2. Click the **Save query** drop-down button and select **Save as**.

3. Enter a name for the query.

   :::image type="content" source="../../media/shared-query-2.png" alt-text="The new query that is about to be saved in the Microsoft 365 Defender portal" lightbox="../../media/shared-query-2.png":::

4. Select the folder where you'd like to save the query.
    - **Shared queries** — shared to all users your organization
    - **My queries** — accessible only to you

5. Select **Save**.

## Delete or rename a query

1. Select the three dots to the right of a query you want to rename or delete.

    :::image type="content" source="../../media/advanced-hunting-del-save-query.png" alt-text="Rename or delete a query in the Advanced Hunting page in the Microsoft 365 Defender portal" lightbox="../../media/advanced-hunting-del-save-query.png":::

2. Select **Delete** and confirm deletion. Or select **Rename** and provide a new name for the query.

## Create a direct link to a query

To generate a link that opens your query directly in the advanced hunting query editor, finalize your query and select **Share link**.

## Access community queries in the GitHub repo

Microsoft security researchers regularly share advanced hunting queries in a [designated public repository on GitHub](https://github.com/Azure/Azure-Sentinel/tree/master/Hunting%20Queries/Microsoft%20365%20Defender). Contributions to this repository are reviewed before getting published. To contribute, [join GitHub for free](https://github.com/).

You can easily find these queries in the **Community queries** drop-down menu as well.

:::image type="content" source="../../media/advanced-hunting-shared-queries-2.png" alt-text="Community queries organized by folder in the Microsoft 365 Defender portal" lightbox="../../media/advanced-hunting-shared-queries-2.png":::

Community queries are grouped into folders like *Campaigns*, *Collection*, *Defense evasion*, and the like. Further information about the query is provided as in-line comments in the query itself.

> [!TIP]
> Microsoft security researchers also provide advanced hunting queries that you can use to locate activities and indicators associated with emerging threats. These queries are provided as part of the [threat analytics](/windows/security/threat-protection/microsoft-defender-atp/threat-analytics) reports in Microsoft 365 Defender.

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Hunt across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
