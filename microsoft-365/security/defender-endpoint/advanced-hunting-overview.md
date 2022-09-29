---
title: Overview of advanced hunting in Microsoft Defender for Endpoint
description: Use threat hunting capabilities in Microsoft Defender for Endpoint to build queries that find threats and weaknesses in your network
keywords: advanced hunting, threat hunting, cyber threat hunting, mdatp, microsoft defender atp, microsoft defender for endpoint, wdatp, search, query, telemetry, custom detections, schema, kusto, time zone, UTC
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.topic: article
ms.subservice: mde
---

# Proactively hunt for threats with advanced hunting

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-advancedhunting-abovefoldlink)

Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. The flexible access to data enables unconstrained hunting for both known and potential threats.

Watch this video for a quick overview of advanced hunting and a short tutorial that will get you started fast.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bGqo]

You can use the same threat-hunting queries to build custom detection rules. These rules run automatically to check for and then respond to suspected breach activity, misconfigured machines, and other findings.

> [!TIP]
> Use [advanced hunting in Microsoft 365 Defender](/microsoft-365/security/defender/advanced-hunting-overview) to hunt for threats using data from Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Cloud Apps, and Microsoft Defender for Identity. [Turn on Microsoft 365 Defender](/microsoft-365/security/defender/m365d-enable).

Learn more about how to move your advanced hunting workflows from Microsoft Defender for Endpoint to Microsoft 365 Defender in [Migrate advanced hunting queries from Microsoft Defender for Endpoint](/microsoft-365/security/defender/advanced-hunting-migrate-from-mde).

## Get started with advanced hunting

Go through the following steps to ramp up your advanced hunting knowledge.

We recommend going through several steps to quickly get up and running with advanced hunting.

<br>

****

|Learning goal|Description|Resource|
|---|---|---|
|**Learn the language**|Advanced hunting is based on [Kusto query language](/azure/kusto/query/), supporting the same syntax and operators. Start learning the query language by running your first query.|[Query language overview](advanced-hunting-query-language.md)|
|**Learn how to use the query results**|Learn about charts and various ways you can view or export your results. Explore how you can quickly tweak queries and drill down to get richer information.|[Work with query results](advanced-hunting-query-results.md)|
|**Understand the schema**|Get a good, high-level understanding of the tables in the schema and their columns. Learn where to look for data when constructing your queries.|[Schema reference](advanced-hunting-schema-reference.md)|
|**Use predefined queries**|Explore collections of predefined queries covering different threat hunting scenarios.|[Shared queries](advanced-hunting-shared-queries.md)|
|**Optimize queries and handle errors**|Understand how to create efficient and error-free queries.|[Query best practices](advanced-hunting-best-practices.md) <p> [Handle errors](advanced-hunting-errors.md)|
|**Get the most complete coverage**|Use audit settings to provide better data coverage for your organization.|[Extend advanced hunting coverage](advanced-hunting-extend-data.md)|
|**Run a quick investigation**|Quickly run an advanced hunting query to investigate suspicious activity.|[Quickly hunt for entity or event information with *go hunt*](advanced-hunting-go-hunt.md)|
|**Contain threats and address compromises**|Respond to attacks by quarantining files, restricting app execution, and other actions|[Take action on advanced hunting query results](advanced-hunting-take-action.md)|
|**Create custom detection rules**|Understand how you can use advanced hunting queries to trigger alerts and take response actions automatically.|[Custom detections overview](overview-custom-detections.md) <p> [Custom detection rules](custom-detection-rules.md)|
|

## Data freshness and update frequency

Advanced hunting data can be categorized into two distinct types, each consolidated differently.

- **Event or activity data**: Populates tables about alerts, security events, system events, and routine assessments. Advanced hunting receives this data almost immediately after the sensors that collect them successfully transmit them to Defender for Endpoint.
- **Entity data**: Populates tables with consolidated information about users and devices. This data comes from both relatively static data sources and dynamic sources, such as Active Directory entries and event logs. To provide fresh data, tables are updated with any new information every 15 minutes, adding rows that might not be fully populated. Every 24 hours, data is consolidated to insert a record that contains the latest, most comprehensive data set about each entity.

## Time zone

Time information in advanced hunting is currently in the UTC time zone.

## Related topics

- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the schema](advanced-hunting-schema-reference.md)
- [Apply query best practices](advanced-hunting-best-practices.md)
- [Custom detections overview](overview-custom-detections.md)
- [Storage account overview](/azure/storage/common/storage-account-overview)
- [Azure Event Hubs — A big data streaming platform and event ingestion service](/azure/event-hubs/event-hubs-about)
