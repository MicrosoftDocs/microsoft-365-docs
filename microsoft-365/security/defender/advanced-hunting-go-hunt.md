---
title: Get relevant info about an entity with go hunt
description: Learn how to use the go hunt tool on to quickly query for relevant information about an entity or event using advanced hunting.
keywords: advanced hunting, incident, pivot, entity, go hunt, relevant events, threat hunting, cyber threat hunting, search, query, telemetry, Microsoft 365, Microsoft 365 Defender
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
  - tier1
ms.topic: conceptual
ms.date: 02/16/2021
---

# Quickly hunt for entity or event information with go hunt

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

With the *go hunt* action, you can quickly investigate events and various entity types using powerful query-based [advanced hunting](advanced-hunting-overview.md) capabilities. This action automatically runs an advanced hunting query to find relevant information about the selected event or entity.

The *go hunt* action is available in various sections of Microsoft 365 Defender. This action is available to view once event or entity details are displayed. For example, you can use the *go hunt* option from the following sections:

- In the [incident page](investigate-incidents.md#summary), you can review details about users, devices, and many other entities associated with an incident. As you select an entity, you get additional information and the various actions you could take on that entity. In the example below, a mailbox is selected, showing details about the mailbox and the option to hunt for more information about the mailbox.

    :::image type="content" source="../../media/go-hunt-1-incident.png" alt-text="The Mailboxes page with the Go hunt option in the Microsoft 365 Defender portal " lightbox="../../media/go-hunt-1-incident.png":::

- In the incident page, you can also access a list of entities under the **Evidence** tab. Selecting one of those entities provides an option to quickly hunt for information about that entity.

    :::image type="content" source="../../media/go-hunt-2-entity.png" alt-text="The Go hunt option for a piece of evidence in the Incident page in Microsoft 365 Defender portal" lightbox="../../media/go-hunt-2-entity.png":::

- When viewing the timeline for a device, you can select an event in the timeline to view additional information about that event. Once an event is selected, you get the option to hunt for other relevant events in advanced hunting.

    :::image type="content" source="../../media/go-hunt-3-event.png" alt-text="The Hunt for related events option on an event's page in the Timelines tab in Microsoft 365 Defender portal" lightbox="../../media/go-hunt-3-event.png":::

Selecting **Go hunt** or **Hunt for related events** passes different queries, depending on whether you've selected an entity or an event.

## Query for entity information

You can use *go hunt* to query for information about a user, device, or any other type of entity; the query checks all relevant schema tables for any events involving that entity to return information. To keep the results manageable, the query is:

- scoped to around the same time period as the earliest activity in the past 30 days that involves the entity
- associated with the incident.

Here is an example of the go hunt query for a device:

```kusto
let selectedTimestamp = datetime(2020-06-02T02:06:47.1167157Z);
let deviceName = "fv-az770.example.com";
let deviceId = "device-guid";
search in (DeviceLogonEvents, DeviceProcessEvents, DeviceNetworkEvents, DeviceFileEvents, DeviceRegistryEvents, DeviceImageLoadEvents, DeviceEvents, DeviceImageLoadEvents, IdentityLogonEvents, IdentityQueryEvents)
Timestamp between ((selectedTimestamp - 1h) .. (selectedTimestamp + 1h))
and DeviceName == deviceName
// or RemoteDeviceName == deviceName
// or DeviceId == deviceId
| take 100
```

### Supported entity types

You can use the *go hunt* option after selecting any of these entity types:

- Files
- Emails
- Email clusters
- Mailboxes
- Users
- Devices
- IP addresses
- URLs

## Query for event information

When using *go hunt* to query for information about a timeline event, the query checks all relevant schema tables for other events around the time of the selected event. For example, the following query lists events in various schema tables that occurred around the same time period on the same device:

```kusto
// List relevant events 30 minutes before and after selected LogonAttempted event
let selectedEventTimestamp = datetime(2020-06-04T01:29:09.2496688Z);
search in (DeviceFileEvents, DeviceProcessEvents, DeviceEvents, DeviceRegistryEvents, DeviceNetworkEvents, DeviceImageLoadEvents, DeviceLogonEvents)
    Timestamp between ((selectedEventTimestamp - 30m) .. (selectedEventTimestamp + 30m))
    and DeviceId == "079ecf9c5798d249128817619606c1c47369eb3e"
| sort by Timestamp desc
| extend Relevance = iff(Timestamp == selectedEventTimestamp, "Selected event", iff(Timestamp < selectedEventTimestamp, "Earlier event", "Later event"))
| project-reorder Relevance
```

## Adjust the query

With some knowledge of the [query language](advanced-hunting-query-language.md), you can adjust the query to your preference. For example, you can adjust this line, which determines the size of the time window:

```kusto
Timestamp between ((selectedTimestamp - 1h) .. (selectedTimestamp + 1h))
```

In addition to modifying the query to get more relevant results, you can also:

- [View the results as charts](advanced-hunting-query-results.md#view-query-results-as-a-table-or-chart)
- [Create a custom detection rule](custom-detection-rules.md)

> [!NOTE]
> Some tables in this article might not be available in Microsoft Defender for Endpoint. [Turn on Microsoft 365 Defender](m365d-enable.md) to hunt for threats using more data sources. You can move your advanced hunting workflows from Microsoft Defender for Endpoint to Microsoft 365 Defender by following the steps in [Migrate advanced hunting queries from Microsoft Defender for Endpoint](advanced-hunting-migrate-from-mde.md).

## Related topics

- [Advanced hunting overview](advanced-hunting-overview.md)
- [Learn the query language](advanced-hunting-query-language.md)
- [Work with query results](advanced-hunting-query-results.md)
- [Custom detection rules](custom-detection-rules.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
