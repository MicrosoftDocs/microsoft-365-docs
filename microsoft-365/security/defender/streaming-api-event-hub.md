---
title: Stream Microsoft 365 Defender events to Azure Event Hubs
description: Learn how to configure Microsoft 365 Defender to stream Advanced Hunting events to your Event Hubs.
keywords: raw data export, streaming API, API, Azure Event Hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.date: 02/08/2023
---

# Configure Microsoft 365 Defender to stream Advanced Hunting events to your Azure Event Hub

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview).

[!include[Prerelease information](../../includes/prerelease.md)]

## Prerequisites

Prior to configuring Microsoft 365 Defender to stream data to Event Hubs, ensure the following prerequisites are fulfilled:

1. Create an Event Hubs (for information, see [Set up Event Hubs](configure-event-hub.md#set-up-event-hubs)).

2. Creating an Event Hubs Namespace (for information, see [Set up Event Hubs namespace](configure-event-hub.md#set-up-event-hubs-namespace)).

3. Add permissions to the entity who has the privileges of a **Contributor** so that this entity can export data to the Event Hubs. For more information on adding permissions, see [Add permissions](configure-event-hub.md#add-permissions)

> [!NOTE]
> The Streaming API can be integrated either via Event Hubs or Azure Storage Account.

## Enable raw data streaming

1. Log on to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> as a ***Global Administrator*** or ***Security Administrator***.

2. Go to the [Streaming API settings page](https://sip.security.microsoft.com/settings/mtp_settings/raw_data_export).

3. Click on **Add**.

4. Choose a name for your new settings.

5. Choose **Forward events to Azure Event Hub**.

6. You can select if you want to export the event data to a single Event Hub, or to export each event table to a different Event Hubs in your Event Hubs namespace.

7. To export the event data to a single Event Hub, enter your **Event Hub name** and your **Event Hub resource ID**.

   To get your **Event Hub resource ID**, go to your Azure Event Hubs namespace page on [Azure](https://ms.portal.azure.com/) > **Properties** tab > copy the text under **Resource ID**:

   :::image type="content" source="../defender-endpoint/images/event-hub-resource-id.png" alt-text="An Event Hub resource ID" lightbox="../defender-endpoint/images/event-hub-resource-id.png":::

8. Go to the [Supported Microsoft 365 Defender event types in event streaming API](supported-event-types.md) to review the support status of event types in the Microsoft 365 Streaming API.

9. Choose the events you want to stream and click **Save**.

## The schema of the events in Azure Event Hub

```JSON
{
   "records": [
               {
                  "time": "<The time Microsoft 365 Defender received the event>"
                  "tenantId": "<The Id of the tenant that the event belongs to>"
                  "category": "<The Advanced Hunting table name with 'AdvancedHunting-' prefix>"
                  "properties": { <Microsoft 365 Defender Advanced Hunting event as Json> }
               }
               ...
            ]
}
```

- Each Event Hubs message in Azure Event Hubs contains list of records.

- Each record contains the event name, the time Microsoft 365 Defender received the event, the tenant it belongs (you'll only get events from your tenant), and the event in JSON format in a property called "**properties**".

- For more information about the schema of Microsoft 365 Defender events, see [Advanced Hunting overview](advanced-hunting-overview.md).

- In Advanced Hunting, the **DeviceInfo** table has a column named **MachineGroup** which contains the group of the device. Here every event will be decorated with this column as well.

## Data types mapping

To get the data types for event properties, do the following steps:

1. Log on to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> and go to [Advanced Hunting page](https://security.microsoft.com/hunting-package).

2. Run the following query to get the data types mapping for each event:

   ```kusto
   {EventType}
   | getschema
   | project ColumnName, ColumnType
   ```

- Here's an example for Device Info event:

  :::image type="content" source="../defender-endpoint/images/machine-info-datatype-example.png" alt-text="An example query for device info" lightbox="../defender-endpoint/images/machine-info-datatype-example.png":::

## Estimating initial Event Hub capacity
The following Advanced Hunting query can help provide a rough estimate of data volume throughput and initial event hub capacity based on events/sec and estimated MB/sec. We recommend running the query during regular business hours so as to capture 'real' throughput.
 
```kusto 
let bytes_ = 500;
union withsource=MDTables *
| where Timestamp > startofday(ago(6h))
| summarize count() by bin(Timestamp, 1m), MDTables
| extend EPS = count_ /60
| summarize avg(EPS), estimatedMBPerSec = (avg(EPS) * bytes_ ) / (1024*1024) by MDTables
| sort by toint(estimatedMBPerSec) desc
```

## Monitoring created resources

You can monitor the resources created by the streaming API using **Azure Monitor**. 
For more information, see [Log Analytics workspace data export in Azure Monitor](/azure/azure-monitor/logs/logs-data-export). 

## Related topics

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)

- [Overview of Advanced Hunting](advanced-hunting-overview.md)
- [Microsoft 365 Defender streaming API](streaming-api.md)
- [Supported Microsoft 365 Defender event types in event streaming API](supported-event-types.md)
- [Stream Microsoft 365 Defender events to your Azure storage account](streaming-api-storage.md)
- [Azure Event Hubs documentation](/azure/event-hubs/)
- [Troubleshoot connectivity issues - Azure Event Hubs](/azure/event-hubs/troubleshooting-guide)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
