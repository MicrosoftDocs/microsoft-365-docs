---
title: Handle errors in advanced hunting for Microsoft 365 Defender
description: Understand errors displayed when using advanced hunting
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, schema, kusto, timeout, resources, errors, unknown error, limits, quota, parameter, allocation
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
- tier3
ms.topic: article
---

# Handle advanced hunting errors

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender
- Microsoft Defender for Endpoint


Advanced hunting displays errors to notify for syntax mistakes and whenever queries hit [predefined quotas and usage parameters](advanced-hunting-limits.md). Refer to the table below for tips on how to resolve or avoid errors.

| Error type | Cause | Resolution | Error message examples |
|--|--|--|--|
| Syntax errors | The query contains unrecognized names, including references to nonexistent operators, columns, functions, or tables. | Ensure references to [Kusto operators and functions](/azure/data-explorer/kusto/query/) are correct. Check [the schema](advanced-hunting-schema-tables.md) for the correct advanced hunting columns, functions, and tables. Enclose variable strings in quotes so they are recognized. While writing your queries, use the autocomplete suggestions from IntelliSense. | `A recognition error occurred.` |
| Semantic errors | While the query uses valid operator, column, function, or table names, there are errors in its structure and resulting logic. In some cases, advanced hunting identifies the specific operator that caused the error. | Check for errors in the structure of query. Refer to [Kusto documentation](/azure/data-explorer/kusto/query/) for guidance. While writing your queries, use the autocomplete suggestions from IntelliSense. |  `'project' operator: Failed to resolve scalar expression named 'x'`|
| Timeouts | A query can only run within a [limited period before timing out](advanced-hunting-limits.md). This error can happen more frequently when running complex queries. | [Optimize the query](advanced-hunting-best-practices.md) | `Query exceeded the timeout period.` |
| CPU throttling | Queries in the same tenant have exceeded the [CPU resources](advanced-hunting-limits.md) that have been allocated based on tenant size. | The service checks CPU resource usage every 15 minutes and daily and displays warnings after usage exceeds 10% of the allocated quota. If you reach 100% utilization, the service blocks queries until after the next daily or 15-minute cycle. [Optimize your queries to avoid hitting CPU quotas](advanced-hunting-best-practices.md) | - `This query used X% of your organization's allocated resources for the current 15 minutes.`<br>- `You have exceeded processing resources allocated to this tenant. You can run queries again in <duration>.` |
| Result size limit exceeded  | The aggregate size of the result set for the query has exceeded the maximum size. This error can occur if the result set is so large that truncation at the 10,000-record limit can't reduce it to an acceptable size. Results that have multiple columns with sizable content are more likely to be impacted by this error. | [Optimize the query](advanced-hunting-best-practices.md) | `Result size limit exceeded. Use "summarize" to aggregate results, "project" to drop uninteresting columns, or "take" to truncate results.` |
| Excessive resource consumption | The query has consumed excessive amounts of resources and has been stopped from completing. In some cases, advanced hunting identifies the specific operator that wasn't optimized. | [Optimize the query](advanced-hunting-best-practices.md) | -`Query stopped due to excessive resource consumption.`<br>-`Query stopped. Adjust use of the <operator name> operator to avoid excessive resource consumption.` |
| Unknown errors | The query failed because of an unknown reason. | Try running the query again. Contact Microsoft through the portal if queries continue to return unknown errors. | `An unexpected error occurred during query execution. Please try again in a few minutes.`



## Related topics
- [Advanced hunting best practices](advanced-hunting-best-practices.md)
- [Quotas and usage parameters](advanced-hunting-limits.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Kusto Query Language overview](/azure/data-explorer/kusto/query/)