---
title: Overview of advanced hunting in Microsoft 365
description: Learn about advanced hunting queries in Microsoft 365 and how to use it to proactively find threats in your organization
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
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

# Proactively hunt for threats with advanced hunting

**Applies to**:
- Microsoft 365 security center

Advanced hunting provides access to 30 days of raw data through a flexible query-based interface, allowing you to proactively explore events in your environment and locate interesting indicators and entities. This flexible access to data enables unconstrained hunting for both known and potential threats.

On Microsoft 365 security center, advanced hunting supports queries that look into data from both Microsoft Defender ATP, covering data from onboarded Windows 10 devices, and Office 365 ATP, providing data from emails. The table below compares advanced hunting on Microsoft Defender Security Center and Microsoft 365 security center.

|| Microsoft 365 security center  |  Microsoft Defender Security Center |
|-------------------------------|---|---|
| Portal link | [securityoperations.microsoft.com/hunting](https://securityoperations.microsoft.com/hunting) | [securitycenter.windows.com/hunting](https://securitycenter.windows.com/hunting) |
| Schema coverage | Windows 10 devices, Office 365 email  | Windows 10 devices  |
| Custom detections | Not available  | Available |
| Shared queries | Available  | Available — queries are shared with M365 security center |

## Get started with advanced hunting

We recommend going through several steps to quickly get up and running with advanced hunting.

| Learning goal | Description | Resource |
|--|--|--|
| **Get a feel for the language** | Advanced hunting is based on the [Kusto query language](https://docs.microsoft.com/en-us/azure/kusto/query/) and thus supports the same syntax and operators | [Query language overview](advanced-hunting-language-overview.md) |
| **Understand the schema** | A good high-level understanding of the tables in the schema and the columns will give you a decent grasp of the kinds of data that are available | [Schema tables](advanced-hunting-schema-tables.md), [Column reference](advanced-hunting-column-reference.md) |
| **Use predefined queries** | If you would like to quickly jump into specific threat hunting scenarios, explore several collections of predefined queries | [Shared queries](advanced-hunting-shared-queries.md)

## Get help as you write queries
Take advantage of the following functionality to write queries faster:
- **Autosuggest** — as you write queries, advanced hunting provides suggestions.. 
- **Schema reference** — a schema reference that includes the list of tables and their columns is provided next to your working area. For more information, hover over an item. Double-click an item to insert it to the query editor.

## Drilldown from query results
To view more information about entities, such as machines, files, users, IP addresses, and URLs, in your query results, simply click the entity identifier. This opens a detailed profile page for the selected entity in Microsoft Defender Security Center.

## Tweak your queries from the results
Right-click a value in the result set to quickly enhance your query. You can use the options to:

- Explicitly look for the selected value (`==`)
- Exclude the selected value from the query (`!=`)
- Get more advanced operators for adding the value to your query, such as `contains`, `starts with` and `ends with` 

![Image of Microsoft Defender ATP Advanced hunting result set](images/atp-advanced-hunting-results-filter.png)

## Filter the query results
The filters displayed to the right provide a summary of the result set. Each column has its own section that lists the distinct values found for that column and the number of instances.

Refine your query by selecting the "+" or "-" buttons on the values that you want to include or exclude and then selecting **Run query**.

![Image of Advanced hunting filter](images/atp-filter-advanced-hunting.png)

The filter selections are added as additional query elements and the results are updated accordingly.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhunting-belowfoldlink)

## Related topics
- [Learn the query language](advanced-hunting-language-overview.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the data tables](advanced-hunting-schema-tables.md)
- [Understand the data columns](advanced-hunting-column-reference.md)
- [Find miscellaneous events](advanced-hunting-misc-events.md)
- [Apply query best practices](advanced-hunting-best-practices.md)