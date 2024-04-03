---
title: ExposureGraphNodes table in the advanced hunting schema
description: Learn about the ExposureGraphNodes table of the advanced hunting schema, which provides attack surface information, to help you understand how potential threats might reach, and compromise, valuable assets.
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, schema reference, kusto, table, column, data type, description, ExposureGraphNodes, NodeId, NodeLabel, NodeName, NodeProperties, EntityIds
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
ms.date: 03/12/2024
---

# ExposureGraphNodes

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Defender XDR
- Microsoft Security Exposure Management (public preview)

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The `ExposureGraphNodes` table in the [advanced hunting](advanced-hunting-overview.md) schema contains organizational entities and their properties. These include entities like devices, identities, user groups, and cloud assets such as virtual machines (VMs), storage, and containers. Each node corresponds to an individual entity and encapsulates information about its characteristics, attributes, and security related insights within the organizational structure. Use this reference to construct queries that return information from this table.

For information on other tables in the advanced hunting schema, [see the advanced hunting reference](advanced-hunting-schema-tables.md).

| Column name | Data type | Description |
|-------------|-----------|-------------|
| `NodeId` | `string` | Unique node identifier |
| `NodeLabel` | `string` | Node label |
| `NodeName` |`string` | Node display name |
| `Categories` |`dynamic` | Categories of the node in JSON format |
| `NodeProperties` |`dynamic` | Properties of the node, including insights related to the resource, such as whether the resource is exposed to the internet, or vulnerable to remote code execution. Values are JSON formatted raw data (unstructured). |
| `EntityIds` | `dynamic` | All known node identifiers in JSON format |

## Related articles

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Query the enterprise exposure graph](/security-exposure-management/query-enterprise-exposure-graph)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
