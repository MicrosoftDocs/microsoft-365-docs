---
title: Understand query errors from advanced hunting in Microsoft Threat Protection
description: Understand why errors occur and learn how to avoid them when using using advanced hunting
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, custom detections, schema, kusto, errors
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

# Handle errors in advanced hunting queries

**Applies to:**
- Microsoft Threat Protection

When using advanced hunting queries, you might encounter various errors. See the 

>[!TIP]
> You can avoid errors by using the correct [Kusto syntax](https://docs.microsoft.com/data-explorer/kusto/query/), using supported [schema names][advanced-hunting-schema-tables.md], applying [best practices for optimization](advanced-hunting-best-practices.md) 

## Semantics and syntax

| Error string | Details | Solution |
| -- | -- | -- |
| [MORE INFO] | -- | -- |

## Timeouts

| Error string | Details | Solution |
| -- | -- | -- |
| [MORE INFO] | -- | -- |

## Excessive resource consumption

| Error string | Details | Solution |
| -- | -- | -- |
| Query stopped due to excessive resource consumption. | The query consumed excessive amounts of resources. | Review query to ensure optimal performance. [Learn more](advanced-hunting-best-practices.md)  |
| Query stopped. Adjust use of the &lt;operator name&gt; operator to avoid excessive resource consumption. | Use of a particular operator consumed excessive amounts of resources | Optimize the use of the specified operator. [Learn more](advanced-hunting-best-practices.md) |

## Result size exceeded

| Error string | Details | Solution |
| -- | -- | -- |
| Result size limit exceeded. | Advanced hunting returns this error if a query returns more than 10,000 records | - Use `summarize` to aggregate results <br>- Use `project` to drop uninteresting columns<br>- Use `take` to truncate results |
 
## Quota throttling
| Error string | Details | Solution |
| -- | -- | -- |
| [MORE INFO] | -- | -- |

## Unknown errors
| Error string | Details | Solution |
| -- | -- | -- |
| [MORE INFO] | -- | -- |

## Related topics
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Advanced hunting best practices](advanced-hunting-best-practices.md)
- [Kusto best practices](https://docs.microsoft.com/azure/data-explorer/kusto/query/best-practices)
- [Kusto Query Language](https://docs.microsoft.com/data-explorer/kusto/query/)
- [Understand the schema](advanced-hunting-schema-tables.md)
