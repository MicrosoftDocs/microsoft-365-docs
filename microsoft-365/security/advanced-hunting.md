---
title: Overview of advanced hunting in Microsoft 365
description: Learn about advanced hunting queries in Microsoft 365 and how to use it to proactively find threats in your organization
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
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

Advanced hunting provides access to raw data through a flexible query-based interface, allowing you to proactively explore events in your environment and locate interesting indicators and entities. This flexible access to data enables unconstrained hunting for both known and potential threats.

On Microsoft 365 security center, advanced hunting supports queries that look into data from several sources both Microsoft Defender ATP, covering data from onboarded Windows 10 devices, and Office 365 ATP, providing data from emails. Refer to the table below to contrast advanced hunting on Microsoft Defender Security Center and Microsoft 365 security center.

|| Microsoft 365 security center  |  Microsoft Defender Security Center |
|-------------------------------|---|---|
| Portal link | [tbd] | https://securitycenter.windows.com/hunting |
| Schema coverage | Windows 10 devices, Office 365 email  | Windows 10 devices  |
| Custom detections | Not available  | Available |
| Shared queries | Available  | Available |

## Get started with advanced hunting

We recommend going through the following steps to quickly get up and running with advanced hunting:

1. **Get a feel for the language** — advanced hunting is based on the [Kusto query language](https://docs.microsoft.com/en-us/azure/kusto/query/) and thus supports the same syntax and operators. Explore the basic operators and get  some  
2. **Try simple queries** — as soon as you open advanced hunting you will find a few simple queries based on commonly used operators. To quickly get started, try running these queries and making small modifications to them... 
3. **Understand the schema tables and their columns** — as you use advanced hunting you will start to wonder where you can find the data you need. A good high-level understanding of the tables in the schema will give you a decent grasp of the kinds of data that are available on advanced hunting and where to find them...
4. **Use predefined queries for specific threats and use cases** — if you are ready to jump into specific threat hunting scenarios, explore our library of predefined queries. These queries are constantly updated by security researchers...
5. **Share your queries**—as you refine your advanced hunting expertise, you can share...

## Leverage query results

The query results provide columns that return entity-related objects, such as Machine name, Machine ID, File name, SHA1, User, IP, and URL, are linked to their entity pages in Microsoft Defender Security Center.

You can right-click on a cell in the result set and add a filter to your written query. The current filtering options are **include**, **exclude** or **advanced filter**, which provides additional filtering options on the cell value. These cell values are part of the row set. 

![Image of Microsoft Defender ATP Advanced hunting result set](images/atp-advanced-hunting-results-filter.png)

### Filter query results
Use the advanced filter on the output result set of the query. The filters provide an overview of the result set where each column has it's own section and shows the distinct values that appear in the column and their prevalence.

You can refine your query based on the filter by clicking the "+" or "-" buttons on the values that you want to include or exclude and click **Run query**.

![Image of Advanced hunting filter](images/atp-filter-advanced-hunting.png)

The filter selections will resolve as an additional query term and the results will be updated accordingly.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-advancedhunting-belowfoldlink)

## Related topics
- [Learn the query language](advanced-hunting-language-overview.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the data tables](advanced-hunting-schema-tables.md)
- [Understand the data columns](advanced-hunting-column-reference.md)
- [Find miscellaneous events](advanced-hunting-misc-events.md)
- [Apply query best practices](advanced-hunting-best-practices.md)



