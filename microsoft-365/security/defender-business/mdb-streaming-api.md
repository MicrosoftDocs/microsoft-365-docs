---
title: Use the streaming API (preview) with Microsoft Defender for Business            
description:  The Defender for Endpoint streaming API is now in preview for Defender for Business and Microsoft 365 Business Premium. Stream of device file, registry, network, sign-in events, and other data to Azure Event Hub, Azure Storage, and Microsoft Sentinel to support advanced hunting and attack detection.       
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 07/19/2023
ms.topic: how-to
ms.service:  microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium 
ms.collection: 
- SMB
- m365-security
- m365solution-mdb-setup
- highpri
- tier1
ms.reviewer: davidb, nehabha, efratka
search.appverid: MET150 
f1.keywords: NOCSH 
audience: ITPro
---

## Use the streaming API (preview) with Microsoft Defender for Business

If your organization has a Security Operations Center (SOC), the ability to use the Microsoft Defender for Endpoint streaming API is now in [preview](mdb-preview.md) for [Defender for Business](mdb-overview.md) and [Microsoft 365 Business Premium](../../business-premium/index.md). The API enables you to stream data, such as device file, registry, network, sign-in events, and more to one of the following services:

- [Microsoft Sentinel](#use-the-streaming-api-with-microsoft-sentinel-preview), a scalable, cloud-native solution that provides security information and event management (SIEM) and security orchestration, automation, and response (SOAR) capabilities. 
- [Azure Event Hubs](#use-the-streaming-api-with-event-hubs-preview), a modern big data streaming platform and event ingestion service that can seamlessly integrate with other Azure and Microsoft services, such as Stream Analytics, Power BI, and Event Grid, along with outside services like Apache Spark.
- [Azure Storage](/azure/storage/common/storage-introduction), Microsoft's cloud storage solution for modern data storage scenarios, with highly available, massively scalable, durable, and secure storage for a variety of data objects in the cloud. 

With the streaming API, you can now use [advanced hunting](../defender/advanced-hunting-overview.md) and [attack detection](../defender-endpoint/overview-endpoint-detection-response.md) with Defender for Business and Microsoft 365 Business Premium. The streaming API enables SOCs to view more data about devices, understand better how an attack occurred, and take steps to improve device security. 

## Use the streaming API with Microsoft Sentinel (preview)

> [!NOTE]
> [Microsoft Sentinel](/azure/sentinel/overview) is a paid service. Several plans and pricing options are available. See [Microsoft Sentinel pricing](https://azure.microsoft.com/en-us/pricing/details/microsoft-sentinel/).

1. Make sure that Defender for Business is set up and configured, and that devices are already onboarded. See [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md).

2. Make sure that the tenant is set up to receive preview features. See [Microsoft Defender for Business preview features](mdb-preview.md).

3. Create a Log Analytics workspace that you'll use with Sentinel. See [Create a Log Analytics workspace](/azure/azure-monitor/logs/quick-create-workspace?tabs=azure-portal).

4. Onboard to Microsoft Sentinel. See [Quickstart: Onboard Microsoft Sentinel](/azure/sentinel/quickstart-onboard).

5. Enable the Microsoft 365 Defender connector. See [Connect data from Microsoft 365 Defender to Microsoft Sentinel](/azure/sentinel/connect-microsoft-365-defender?tabs=MDE).

## Use the streaming API with Event Hubs (preview)

> [!NOTE]
> [Azure Event Hubs](/azure/event-hubs/event-hubs-about) requires an Azure subscription. Before you begin, make sure to create an [event hub](/azure/event-hubs/) in your tenant. Then, sign in to the [Azure portal](https://ms.portal.azure.com/), go to **Subscriptions** > **Your subscription** > **Resource Providers** > **Register to Microsoft.insights**.
> 
1. Go to [Microsoft 365 Defender](https://security.microsoft.com) and sign in as a ***Global Administrator*** or ***Security Administrator***.

2. Go to the [Data export settings page](https://security.microsoft.com/interoperability/dataexport).

3. Select **Add data export settings**.

4. Choose a name for your new settings.

5. Choose **Forward events to Azure Event Hubs**.

6. Type your **Event Hubs name** and your **Event Hubs ID**.

   > [!NOTE]
   > Leaving the Event Hubs name field empty creates an event hub for each category in the selected namespace. If you're not using a Dedicated Event Hubs Cluster, keep in mind that there's a limit of 10 Event Hubs namespaces.

   To get your **Event Hubs ID**, go to your Azure Event Hubs namespace page in the [Azure portal](https://ms.portal.azure.com/). On the **Properties** tab, copy the text under **ID**.

7. Choose the events you want to stream and then select **Save**.

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

## Use the streaming API with Azure Storage (preview)

