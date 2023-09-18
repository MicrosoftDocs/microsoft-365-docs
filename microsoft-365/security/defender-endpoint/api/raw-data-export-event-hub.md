---
title: Stream Microsoft Defender for Endpoint events to Azure Event Hubs
description: Learn how to configure Microsoft Defender for Endpoint to stream Advanced Hunting events to your Event Hubs.
keywords: raw data export, streaming API, API, Azure Event Hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
ms.service: microsoft-365-security
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
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/18/2020
---

# Configure Microsoft Defender for Endpoint to stream Advanced Hunting events to your Azure Event Hubs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> [!NOTE]
> For the full data streaming experience available, please visit [Stream Microsoft 365 Defender events | Microsoft Learn](/microsoft-365/security/defender/streaming-api).

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configuresiem-abovefoldlink)

## Before you begin

1. Create an [event hub](/azure/event-hubs/) in your tenant.

2. Log in to your [Azure tenant](https://ms.portal.azure.com/), go to **Subscriptions > Your subscription > Resource Providers > Register to Microsoft.insights**.

## Enable raw data streaming

1. Log in to the [Microsoft 365 Defender](https://security.microsoft.com) as a ***Global Administrator*** or ***Security Administrator***.

2. Go to the [Data export settings page](https://security.microsoft.com/interoperability/dataexport) in the Microsoft Defender portal.

3. Click on **Add data export settings**.

4. Choose a name for your new settings.

5. Choose **Forward events to Azure Event Hubs**.

6. Type your **Event Hubs name** and your **Event Hubs resource ID**.

> [!NOTE]
> Leaving Event Hubs name as empty will create an event hub for each category in the selected namespace. Event Hubs namespaces have a limit of 10 Event Hubs if you are not using a Dedicated Event Hubs Cluster.

   In order to get your **Event Hubs resource ID**, go to your Azure Event Hubs namespace page on [Azure](https://ms.portal.azure.com/) > properties tab \> copy the text under **Resource ID**:

   :::image type="content" source="images/event-hub-resource-id.png" alt-text="The Event Hubs resource Id-1" lightbox="images/event-hub-resource-id.png":::

7. Choose the events you want to stream and click **Save**.

## The schema of the events in Azure Event Hubs

```json
{
    "records": [
                    {
                        "time": "<The time WDATP received the event>"
                        "tenantId": "<The Id of the tenant that the event belongs to>"
                        "category": "<The Advanced Hunting table name with 'AdvancedHunting-' prefix>"
                        "properties": { <WDATP Advanced Hunting event as Json> }
                    }
                    ...
                ]
}
```

- Each event hub message in Azure Event Hubs contains list of records.

- Each record contains the event name, the time Microsoft Defender for Endpoint received the event, the tenant it belongs (you will only get events from your tenant), and the event in JSON format in a property called "**properties**".

- For more information about the schema of Microsoft Defender for Endpoint events, see [Advanced Hunting overview](advanced-hunting-overview.md).

- In Advanced Hunting, the **DeviceInfo** table has a column named **MachineGroup** which contains the group of the device. Here every event will be decorated with this column as well. See [Device Groups](machine-groups.md) for more information.
    > [!NOTE]
    > Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

## Data types mapping

To get the data types for event properties do the following:

1. Log in to [Microsoft 365 Defender](https://security.microsoft.com) and go to [Advanced Hunting page](https://security.microsoft.com/hunting-package).

2. Run the following query to get the data types mapping for each event:

   ```kusto
   {EventType}
   | getschema
   | project ColumnName, ColumnType 
   ```

- Here is an example for Device Info event:

  :::image type="content" source="images/machine-info-datatype-example.png" alt-text="The Event Hubs resource Id-2" lightbox="images/machine-info-datatype-example.png":::

## Related topics

- [Stream Microsoft 365 Defender events | Microsoft Learn](/microsoft-365/security/defender/streaming-api)

- [Overview of Advanced Hunting](advanced-hunting-overview.md)
- [Microsoft Defender for Endpoint streaming API](raw-data-export.md)
- [Stream Microsoft Defender for Endpoint events to your Azure storage account](raw-data-export-storage.md)
- [Azure Event Hubs documentation](/azure/event-hubs/)
- [Troubleshoot connectivity issues - Azure Event Hubs](/azure/event-hubs/troubleshooting-guide)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
