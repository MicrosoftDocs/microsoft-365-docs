---
title: Overview - Advanced hunting
description: Learn about advanced hunting queries in Microsoft 365 and how to use them to proactively find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, custom detections, schema, kusto, microsoft 365, Microsoft Threat Protection
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
ms.custom: seo-marvel-apr2020
---

# Proactively hunt for threats with advanced hunting in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

[!INCLUDE [Prerelease information](../includes/prerelease.md)]

Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate interesting indicators and entities. The flexible access to data facilitates unconstrained hunting for both known and potential threats.

You can use the same threat-hunting queries to build custom detection rules. These rules run automatically to check for and respond to various events and system states, including suspected breach activity and misconfigured machines.

In the Microsoft 365 security center, advanced hunting supports queries that look into data from various workspaces, including data about devices, emails, apps, and identities from Microsoft Defender ATP, Office 365 ATP, Microsoft Cloud App Security, and Azure ATP. To use advanced hunting, [turn on Microsoft Threat Protection](mtp-enable.md).

## Get started with advanced hunting

We recommend going through several steps to quickly get up and running with advanced hunting.

| Learning goal | Description | Resource |
|--|--|--|
| **Get a feel for the language** | Advanced hunting is based on [Kusto query language](https://docs.microsoft.com/azure/kusto/query/), supporting the same syntax and operators. Start learning the query language by running your first query. | [Query language overview](advanced-hunting-query-language.md) |
| **Learn how to use the query results** | Learn about charts and various ways you can view or export your results. Explore how you can quickly tweak queries and drill down to get richer information. | [Work with query results](advanced-hunting-query-results.md) |
| **Understand the schema** | Get a good, high-level understanding of the tables in the schema and their columns. This will help you determine where to look for data and how to construct your queries. | [Schema reference](advanced-hunting-schema-tables.md) |
| **Leverage predefined queries** | Explore collections of predefined queries covering different threat hunting scenarios. | - [Use shared queries](advanced-hunting-shared-queries.md)<br>- [Go hunt](advanced-hunting-go-hunt.md) |
| **Optimize queries** | Understand how to create efficient queries and queries that combine data from emails and devices. | - [Query best practices](advanced-hunting-shared-queries.md) <br>- [Hunt across devices and emails](advanced-hunting-best-practices.md) |
| **Create custom detection rules** | Understand how you can use advanced hunting queries to trigger alerts and apply response actions automatically. | - [Custom detections overview](custom-detections-overview.md)<br>- [Custom detection rules](custom-detection-rules.md) |

## Get access
To use advanced hunting or other [Microsoft Threat Protection](microsoft-threat-protection.md) capabilities, you need to be assigned an appropriate role in Azure AD. Note that your access to endpoint data is influenced by role-based access control settings in Microsoft Defender ATP. [Read about managing access to Microsoft Threat Protection](mtp-permissions.md)

## Data freshness and update frequency
Advanced hunting data can be categorized into two distinct types, each consolidated differently.

- **Event or activity data** — populates tables about alerts, security events, system events, and routine assessments. Advanced hunting receives this data almost immediately after the sensors that collect them successfully transmit them to the corresponding cloud services. For example, you can start to query event data from healthy sensors on workstations or domain controllers almost immediately after they are available on Microsoft Defender ATP and Azure ATP.
- **Entity data** — populates tables with consolidated information about users and devices. This data comes from both relatively static data sources, such as Active Directory entries, and dynamic sources, such as event logs. To provide fresh data, tables are updated every 15 minutes with any new information, adding rows that might not be fully populated. Every 24 hours, data is consolidated to insert a record that contains the latest, most comprehensive data set about each entity.

## Related topics
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Hunt for threats across devices and emails](advanced-hunting-query-emails-devices.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](custom-detections-overview.md)
