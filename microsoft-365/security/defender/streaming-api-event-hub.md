---
title: Stream Microsoft 365 Defender events to Azure Event Hubs
description: Learn how to configure Microsoft 365 Defender to stream Advanced Hunting events to your Event Hub.
keywords: raw data export, streaming API, API, Azure Event Hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Configure Microsoft 365 Defender to stream Advanced Hunting events to your Azure Event Hubs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Before you begin:

1. Create an [event hub](/azure/event-hubs/) in your tenant.

2. Log in to your [Azure tenant](https://ms.portal.azure.com/), go to **Subscriptions > Your subscription > Resource Providers > Register to Microsoft.Insights**.

3. Create an Event Hub Namespace, go to **Event Hubs > Add** and select the pricing tier, throughput units and Auto-Inflate appropriate for expected load. For more information, see [Pricing - Event Hubs | Microsoft Azure](https://azure.microsoft.com/en-us/pricing/details/event-hubs/).  

4. Once the event hub namespace is created you will need to add the App Registration Service Principal as Reader, Azure Event Hubs Data Receiver and the user who will be logging into Microsoft 365 Defender as Contributor (this can also be done at Resource Group or Subscription level). Go to **Event hubs namespace > Access control (IAM) > Add** and verify under **Role assignements**.

## Enable raw data streaming:

1. Log in to the [Microsoft 365 Defender security center](https://security.microsoft.com) as a ***Global Administrator*** or ***Security Administrator***.

2. Go to the [Data export settings page](https://security.microsoft.com/settings/mtp_settings/raw_data_export).

3. Click on **Add**.

4. Choose a name for your new settings.

5. Choose **Forward events to Azure Event Hubs**.

6. You can select if you want to export the event data to a single event hub, or to export each event table to a different even hub in your event hub namespace. 

7. To export the event data to a single event hub, Enter your **Event Hub name** and your **Event Hub resource ID**.

   To get your **Event Hubs resource ID**, go to your Azure Event Hubs namespace page on [Azure](https://ms.portal.azure.com/) > **Properties** tab > copy the text under **Resource ID**:

   ![Image of event hub resource Id1](../defender-endpoint/images/event-hub-resource-id.png)

8. Choose the events you want to stream and click **Save**.

## The schema of the events in Azure Event Hubs:

```
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

- Each event hub message in Azure Event Hubs contains list of records.

- Each record contains the event name, the time Microsoft 365 Defender received the event, the tenant it belongs (you will only get events from your tenant), and the event in JSON format in a property called "**properties**".

- For more information about the schema of Microsoft 365 Defender events, see [Advanced Hunting overview](advanced-hunting-overview.md).

- In Advanced Hunting, the **DeviceInfo** table has a column named **MachineGroup** which contains the group of the device. Here every event will be decorated with this column as well. 

9. To export each event table to a different event hub, simply leave the **Event hub name** empty, and Microsoft 365 Defender will do the rest.


## Data types mapping:

To get the data types for event properties do the following:

1. Log in to [Microsoft 365 security center](https://security.microsoft.com) and go to [Advanced Hunting page](https://security.microsoft.com/hunting-package).

2. Run the following query to get the data types mapping for each event:
 
   ```
   {EventType}
   | getschema
   | project ColumnName, ColumnType 
   ```

- Here is an example for Device Info event: 

  ![Image of event hub resource Id2](../defender-endpoint/images/machine-info-datatype-example.png)

## Related topics
- [Overview of Advanced Hunting](advanced-hunting-overview.md)
- [Microsoft 365 Defender streaming API](streaming-api.md)
- [Stream Microsoft 365 Defender events to your Azure storage account](streaming-api-storage.md)
- [Azure Event Hubs documentation](/azure/event-hubs/)
- [Troubleshoot connectivity issues - Azure Event Hubs](/azure/event-hubs/troubleshooting-guide)
