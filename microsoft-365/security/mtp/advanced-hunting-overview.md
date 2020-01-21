---
title: Overview of advanced hunting in Microsoft Threat Protection
description: Learn about advanced hunting queries in Microsoft 365 and how to use them to proactively find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, custom detections, schema, kusto, microsoft 365, Microsoft Threat Protection
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

# Proactively hunt for threats with advanced hunting in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate interesting indicators and entities. The flexible access to data facilitates unconstrained hunting for both known and potential threats.

In the Microsoft 365 security center, advanced hunting supports queries that look into data from both Microsoft Defender ATP, covering data from onboarded devices, and Office 365 ATP, providing data from emails. To use advanced hunting, [turn on Microsoft Threat Protection](mtp-enable.md).

## Get started with advanced hunting

We recommend going through several steps to quickly get up and running with advanced hunting.

| Learning goal | Description | Resource |
|--|--|--|
| **Get a feel for the language** | Advanced hunting is based on the [Kusto query language](https://docs.microsoft.com/azure/kusto/query/), supporting the same syntax and operators. Start learning the query language by running your first query. | [Query language overview](advanced-hunting-query-language.md) |
| **Understand the schema** | Get a good, high-level understanding of the tables in the schema and their columns. This will help you determine where to look for data and how to construct your queries. | [Schema reference](advanced-hunting-schema-tables.md) |
| **Use predefined queries** | Explore collections of predefined queries covering different threat hunting scenarios. | [Use shared queries](advanced-hunting-shared-queries.md)
| **Optimize queries** | Understand how to create efficient queries and queries that combine data from emails and devices. | [Query best practices](advanced-hunting-shared-queries.md), [Hunt across devices and emails](advanced-hunting-best-practices.md)

## Get help as you write queries
Take advantage of the following functionality to write queries faster:
- **Autosuggest** — as you write queries, advanced hunting provides suggestions. 
- **Schema reference** — a schema reference that includes the list of tables and their columns is provided next to your working area. For more information, hover over an item. Double-click an item to insert it to the query editor.

## Drilldown from query results
To view more information about entities, such as machines, files, users, IP addresses, and URLs, in your query results, simply click the entity identifier. This opens a detailed profile page for the selected entity in Microsoft Defender Security Center.

## Tweak your queries from the results
Right-click a value in the result set to quickly enhance your query. You can use the options to:

- Explicitly look for the selected value (`==`)
- Exclude the selected value from the query (`!=`)
- Get more advanced operators for adding the value to your query, such as `contains`, `starts with` and `ends with` 

![Image of Microsoft Defender ATP advanced hunting result set](../images/advanced-hunting-results-filter.png)

## Filter the query results
The filters displayed to the right provide a summary of the result set. Each column has its own section that lists the distinct values found for that column and the number of instances.

Refine your query by selecting the "+" or "-" buttons on the values that you want to include or exclude and then selecting **Run query**.

![Image of advanced hunting filter](../images/advanced-hunting-filter.png)

Once you apply the filter to modify the query and then run the query, the results are updated accordingly.

## Related topics
- [Learn the query language](advanced-hunting-query-language.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)