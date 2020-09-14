---
title: Handle errors in advanced hunting for Microsoft Threat Protection
description: Understand errors displayed when using advanced hunting
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, schema, kusto, timeout, resources, errors, unknown error
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Handle advanced hunting errors

Advanced hunting displays various types of error messages to notify for syntax mistakes and whenever queries hit [predefined limits](advanced-hunting-limits.md). Refer to the table below for tips on how to resolve or avoid errors. 

| Error type | Cause | Resolution | Error strings examples |
|--|--|--|--|
| Syntax error | The query contains unrecognized sections, including references to nonexistent operators, columns, functions, or tables. | Ensure references to [Kusto operators and functions](https://docs.microsoft.com/azure/data-explorer/kusto/query/) are correct. Check [the schema](advanced-hunting-schema-tables.md) for the correct advanced hunting columns, functions, and tables. Enclose variable strings in quotes so they are recognized. While writing your queries, use the autocomplete suggestions from IntelliSense. |  `'project' operator: Failed to resolve scalar expression named 'x'`|
| Timeouts | A query can only run within a [limited period before timing out](advanced-hunting-limits.md). This error can happen more frequently when running complex queries or queries with large results. The same queries might return truncated results because of the 10,000-record limit or hit resource limits. | [Learn to optimize queries](advanced-hunting-best-practices.md) | `Query execution took longer than the assigned timeout and has been aborted.` |
| CPU throttling | Queries in the same tenant have exceeded the [CPU resources](advanced-hunting-limits.md) that have been allocated based on tenant size. | The service checks CPU resource usage every 15 minutes and daily and displays warnings after usage exceeds 10% of the allocated limit. If you reach 100% utilization, you won't be able to run queries until after the next daily or 15-minute cycle. [Optimize your queries to avoid hitting CPU limits](advanced-hunting-best-practices.md) | `You have exceeded processing resources allocated to this tenant. You can run queries again in (duration).`
| Unknown errors | The query failed because of an unknown reason. | Try running the query again. Contact Microsoft through the portal if queries continue to return unknown errors. | `An unexpected error occurred during query execution. Please try again in a few minutes.`

## Related topics
- [Advanced hunting best practices](advanced-hunting-best-practices.md)
- [Service limits](advanced-hunting-limits.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Kusto Query Language overview](https://docs.microsoft.com/azure/data-explorer/kusto/query/)
