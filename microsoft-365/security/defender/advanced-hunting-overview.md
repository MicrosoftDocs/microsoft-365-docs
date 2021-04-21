---
title: Overview - Advanced hunting
description: Learn about advanced hunting queries in Microsoft 365 and how to use them to proactively find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft 365 Defender, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto
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
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: article
ms.custom: seo-marvel-apr2020
ms.technology: m365d
---

# Proactively hunt for threats with advanced hunting in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](m365d-evaluation.md?ocid=cx-docs-MTPtriallab) or [run your pilot project in production](m365d-pilot.md?ocid=cx-evalpilot).
>

Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. The flexible access to data enables unconstrained hunting for both known and potential threats.
<p></p>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Bp7O]

You can use the same threat-hunting queries to build custom detection rules. These rules run automatically to check for and then respond to suspected breach activity, misconfigured machines, and other findings.

This capability is similar to [advanced hunting in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview). Available in Microsoft 365 security center, this capability supports queries that check a broader data set from:

- Microsoft Defender for Endpoint
- Microsoft Defender for Office 365
- Microsoft Cloud App Security
- Microsoft Defender for Identity

To use advanced hunting, [turn on Microsoft 365 Defender](m365d-enable.md).

### Before you begin

Users need one of the following levels of permissions to access Microsoft Defender:

- Full access (read and write)
- Read-only access

**Full access**:
Users with full access can save, modify, and share a query. Assigning full access rights requires adding the users to the "Security Administrator" or "Global Administrator" built-in roles in Azure Active Directory (AAD).

**Read-only access**:
Users with read-only access can log in and view all alerts and related information. They will not be able to save, modify, or share a query. Assigning read-only access rights requires adding the users to the "Security Reader" built-in role in AAD.

## Get started with advanced hunting

We recommend going through several steps to quickly get started with advanced hunting.

| Learning goal | Description | Resource |
|--|--|--|
| **Learn the language** | Advanced hunting is based on [Kusto query language](/azure/kusto/query/), supporting the same syntax and operators. Start learning the query language by running your first query. | [Query language overview](advanced-hunting-query-language.md) |
| **Learn how to use the query results** | Learn about charts and various ways you can view or export your results. Explore how you can quickly tweak queries, drill down to get richer information, and take response actions. | - [Work with query results](advanced-hunting-query-results.md)<br>- [Take action on query results](advanced-hunting-take-action.md) |
| **Understand the schema** | Get a good, high-level understanding of the tables in the schema and their columns. Learn where to look for data when constructing your queries. | - [Schema reference](advanced-hunting-schema-tables.md)<br>- [Transition from Microsoft Defender for Endpoint](advanced-hunting-migrate-from-mde.md) |
| **Get expert tips and examples** | Train for free with guides from Microsoft experts. Explore collections of predefined queries covering different threat hunting scenarios. | - [Get expert training](advanced-hunting-expert-training.md)<br>- [Use shared queries](advanced-hunting-shared-queries.md)<br>- [Go hunt](advanced-hunting-go-hunt.md)<br>- [Hunt for threats across devices, emails, apps, and identities](advanced-hunting-query-emails-devices.md) |
| **Optimize queries and handle errors** | Understand how to create efficient and error-free queries. | - [Query best practices](advanced-hunting-best-practices.md)<br>- [Handle errors](advanced-hunting-errors.md) |
| **Create custom detection rules** | Understand how you can use advanced hunting queries to trigger alerts and take response actions automatically. | - [Custom detections overview](custom-detections-overview.md)<br>- [Custom detection rules](custom-detection-rules.md) |

## Get access
To use advanced hunting or other [Microsoft 365 Defender](microsoft-365-defender.md) capabilities, you need an appropriate role in Azure Active Directory. Also, your access to endpoint data is determined by role-based access control (RBAC) settings in Microsoft Defender for Endpoint. [Read about managing access to Microsoft 365 Defender](m365d-permissions.md)

## Data freshness and update frequency
Advanced hunting data can be categorized into two distinct types, each consolidated differently.

- **Event or activity data**—populates tables about alerts, security events, system events, and routine assessments. Advanced hunting receives this data almost immediately after the sensors that collect them successfully transmit them to the corresponding cloud services. For example, you can query event data from healthy sensors on workstations or domain controllers almost immediately after they are available on Microsoft Defender for Endpoint and Microsoft Defender for Identity.
- **Entity data**—populates tables with information about users and devices. This data comes from both relatively static data sources and dynamic sources, such as Active Directory entries and event logs. To provide fresh data, tables are updated with any new information every 15 minutes, adding rows that might not be fully populated. Every 24 hours, data is consolidated to insert a record that contains the latest, most comprehensive data set about each entity.

## Time zone
Time information in advanced hunting is in the UTC time zone.

## Related topics
- [Learn the query language](advanced-hunting-query-language.md)
- [Get expert training](advanced-hunting-expert-training.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-schema-tables.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](custom-detections-overview.md)
