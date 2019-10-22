---
title: Overview of Advanced hunting in Microsoft 365
description: Learn about Advanced hunting queries in Microsoft 365 and how to use them to proactively find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, search, query, telemetry, custom detections, schema, kusto, microsoft 365
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Proactively hunt for threats with Advanced hunting

**Applies to**:
- Microsoft 365 security center

Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate interesting indicators and entities. The flexible access to data facilitates unconstrained hunting for both known and potential threats.

In Microsoft 365 security center, Advanced hunting supports queries that look into data from both Microsoft Defender ATP, covering data from Windows 10 devices, and Office 365 ATP, providing data from emails. The table below compares Advanced hunting on Microsoft Defender Security Center and Microsoft 365 security center.

|| Microsoft 365 security center  |  Microsoft Defender Security Center |
|-------------------------------|---|---|
| Portal link | [securityoperations.microsoft.com/hunting](https://securityoperations.microsoft.com/hunting) | [securitycenter.windows.com/hunting](https://securitycenter.windows.com/hunting) |
| Schema coverage | Windows 10 devices, Office 365 email  | Windows 10 devices  |
| Custom detections | Not available  | Available |
| Shared queries | Available  | Available — queries are shared with M365 security center |

## Get started with Advanced hunting

We recommend going through several steps to quickly get up and running with advanced hunting.

| Learning goal | Description | Resource |
|--|--|--|
| **Get a feel for the language** | Advanced hunting is based on the [Kusto query language](https://docs.microsoft.com/en-us/azure/kusto/query/), supporting the same syntax and operators. Start learning the query language by running your first query. | [Query language overview](advanced-hunting-query-language.md) |
| **Understand the schema** | Get a good, high-level understanding of the tables in the schema and their columns. This will help you determine where to look for data and how to construct your queries. | [Schema reference](advanced-hunting-schema-tables.md) |
| **Use predefined queries** | Explore collections of predefined queries covering different threat hunting scenarios. | [Shared queries](advanced-hunting-shared-queries.md), [Hunt across devices and emails](advanced-hunting-query-emails-devices.md)

## Get help as you write queries
Take advantage of the following functionality to write queries faster:
- **Autosuggest** — as you write queries, Advanced hunting provides suggestions. 
- **Schema reference** — a schema reference that includes the list of tables and their columns is provided next to your working area. For more information, hover over an item. Double-click an item to insert it to the query editor.

## Drilldown from query results
To view more information about entities, such as machines, files, users, IP addresses, and URLs, in your query results, simply click the entity identifier. This opens a detailed profile page for the selected entity in Microsoft Defender Security Center.

## Tweak your queries from the results
Right-click a value in the result set to quickly enhance your query. You can use the options to:

- Explicitly look for the selected value (`==`)
- Exclude the selected value from the query (`!=`)
- Get more advanced operators for adding the value to your query, such as `contains`, `starts with` and `ends with` 

![Image of Microsoft Defender ATP Advanced hunting result set](../images/atp-advanced-hunting-results-filter.png)

C:\Users\lomayor\Documents\GitHub\microsoft-365-docs-pr\microsoft-365\images

## Filter the query results
The filters displayed to the right provide a summary of the result set. Each column has its own section that lists the distinct values found for that column and the number of instances.

Refine your query by selecting the "+" or "-" buttons on the values that you want to include or exclude and then selecting **Run query**.

![Image of Advanced hunting filter](../images/atp-filter-advanced-hunting.png)

Once you apply the filter to modify the query and then run the query, the results are updated accordingly.

## Related topics
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Find miscellaneous events](advanced-hunting-misc-events.md)
- [Apply query best practices](advanced-hunting-best-practices.md)