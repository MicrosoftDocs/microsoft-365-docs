---
title: SeenBy() function in advanced hunting for Microsoft 365 Defender
description: Learn how to use the SeenBy() to enrich information about files in your advanced hunting query results
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema reference, kusto, FileProfile, file profile, function, enrichment
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
ms.collection: m365-security-compliance
ms.topic: article
ms.technology: m365d
---

# SeenBy()

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

The `FileProfile()` function is an enrichment function in [advanced hunting](advanced-hunting-overview.md) that adds the following data to files found by the query.

| Column | Data type | Description |
|------------|---------------|-------------|
| `SHA1` | `string` | SHA-1 of the file that the recorded action was applied to |
| `SHA256` | `string` | SHA-256 of the file that the recorded action was applied to |

## Syntax

```kusto
invoke FileProfile(x,y)
```

## Arguments

- **x**—file ID column to use: `SHA1`, `SHA256`, `InitiatingProcessSHA1`, or `InitiatingProcessSHA256`; function uses `SHA1` if unspecified
- **y**—limit to the number of records to enrich, 1-1000; function uses 100 if unspecified


>[!TIP]
> Enrichment functions will show supplemental information only when they are available. Availability of information is varied and depends on a lot of factors. Make sure to consider this when using FileProfile() in your queries or in creating custom detections. For best results, we recommend using the FileProfile() function with SHA1.

## Examples

### Project only the SHA1 column and enrich it

```kusto
DeviceFileEvents
| where isnotempty(SHA1) and Timestamp > ago(1d)
| take 10
| project SHA1
| invoke FileProfile()
```

### Enrich the first 500 records and list low-prevalence files

```kusto
DeviceFileEvents
| where ActionType == "FileCreated" and Timestamp > ago(1d)
| project CreatedOn = Timestamp, FileName, FolderPath, SHA1
| invoke FileProfile("SHA1", 500) 
| where GlobalPrevalence < 15
```

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Get more query examples](advanced-hunting-shared-queries.md)
