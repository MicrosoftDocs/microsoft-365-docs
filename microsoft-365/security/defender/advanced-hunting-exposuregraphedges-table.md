---
title: ExposureGraphEdges table in the advanced hunting schema
description: Learn about the ExposureGraphEdges table of the advanced hunting schema, which provides attack surface information, to help you understand how potential threats might reach, and compromise, valuable assets.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, ExposureGraphEdges, EdgeId, EdgeLabel, SourceNodeName, SourceNodeLabel, TargetNodeName, TargetNodeLabel, SourceNodeCategories, TargetNodeCategories, EdgeProperties
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: v-mjosephy
author: mjosephym
ms.localizationpriority: medium
manager: rayne-wiselman
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: reference
ms.date: 03/13/2024
---

# ExposureGraphEdges

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR
- Microsoft Security Exposure Management (public preview)

The `ExposureGraphEdges` table in the [advanced hunting](advanced-hunting-overview.md) schema provides visibility into relationships between entities and assets in the enterprise exposure graph. This visibility can help uncover critical organizational assets and explore entity relationships and attack paths. Use this reference to construct queries that return information from this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `EdgeId` |  `string` |   Unique identifier for the relationship/edge |
| `EdgeLabel` |  `string` |   The edge label like "routes traffic to" |
| `SourceNodeId` |  `string` |   Node ID of the edge's source |
| `SourceNodeName` |  `string` |   Source node display name |
| `SourceNodeLabel` |  `string` |   Source node label |
| `SourceNodeCategories` |  `Dynamic` | Categories list of the source node in JSON format |
| `TargetNodeId` |  `string` |   Node ID of the edge's target |
| `TargetNodeName` |  `string` |   Display name of the target node |
| `TargetNodeLabel` |  `string` |   Target node label |
| `TargetNodeCategories` |  `Dynamic` | The categories list of the target node in JSON format |
| `EdgeProperties` |  `Dynamic` | Optional data relevant for the relationship between the nodes in JSON format |

## Related articles

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Query the enterprise exposure graph](/security-exposure-management/query-enterprise-exposure-graph)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
