---
title: Stream Microsoft Defender XDR events to your Storage account
description: Learn how to configure Microsoft Defender XDR to stream Advanced Hunting events to your Storage account.
keywords: raw data export, streaming API, API, Event Hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
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

# Configure Microsoft Defender XDR to stream Advanced Hunting events to your Storage account

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview).

[!include[Prerelease information](../../includes/prerelease.md)]

## Before you begin

1. Create a [Storage account](/azure/storage/common/storage-account-overview) in your tenant.

2. Log in to your [Azure tenant](https://ms.portal.azure.com/), go to **Subscriptions > Your subscription > Resource Providers > Register to Microsoft.Insights**.

### Add contributor permissions

Once the Storage account is created you will need to:

1. Define the user who will be logging into Microsoft Defender XDR as Contributor.

    Go to **Storage Account > Access control (IAM) > Add** and verify under **Role assignments**.

## Enable raw data streaming

1. Log in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender XDR</a> as a ***Global Administrator*** or ***Security Administrator***.

2. Go to **Settings** \> **Microsoft Defender XDR** \> **Streaming API**. To go directly to the **Streaming API** page, use <https://security.microsoft.com/settings/mtp_settings/raw_data_export>.

3. Click **Add**.

4. In the **Add new Streaming API settings** flyout that appears, configure the following settings:
   1. **Name**: Choose a name for your new settings.
   2. Select **Forward events to Azure Storage**.
4. To display the Azure Resource Manager resource ID for a storage account in the Azure portal, follow these steps:

   1. Navigate to your storage account in the Azure portal.
   2. On the **Overview** page, in the **Essentials** section, select the **JSON View** link.
   3. The resource ID for the storage account is displayed at the top of the page, copy the text under **Storage Account Resource ID**.

   4. Back on the **Add new Streaming API settings** flyout, choose the **Event types** that you want to stream.

   When you're finished, click **Submit**.

## The schema of the events in the Storage account

- A blob container will be created for each event type:

  :::image type="content" source="../defender-endpoint/images/storage-account-event-schema.png" alt-text="Example of a blob container" lightbox="../defender-endpoint/images/storage-account-event-schema.png":::

- The schema of each row in a blob is the following JSON:

  ```JSON
  {
          "time": "<The time Microsoft Defender XDR received the event>"
          "tenantId": "<Your tenant ID>"
          "category": "<The Advanced Hunting table name with 'AdvancedHunting-' prefix>"
          "properties": { <Microsoft Defender XDR Advanced Hunting event as Json> }
  }
  ```

- Each blob contains multiple rows.

- Each row contains the event name, the time Defender for Endpoint received the event, the tenant it belongs (you will only get events from your tenant), and the event in JSON format in a property called "properties".

- For more information about the schema of Microsoft Defender XDR events, see [Advanced Hunting overview](../defender/advanced-hunting-overview.md).

## Data types mapping

In order to get the data types for our events properties do the following:

1. Log in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft Defender XDR</a> and go to **Hunting** \> **Advanced hunting**. To go directly to the **Advanced hunting** page, use <security.microsoft.com/advanced-hunting>.

2. On the **Query** tab, run the following query to get the data types mapping for each event:

   ```text
   {EventType}
   | getschema
   | project ColumnName, ColumnType
   ```

- Here is an example for Device Info event:

  :::image type="content" source="../defender-endpoint/images/machine-info-datatype-example.png" alt-text="An example device info query" lightbox="../defender-endpoint/images/machine-info-datatype-example.png":::

## Monitoring created resources

You can monitor the resources created by the streaming API using **Azure Monitor**. 
For more information, see [Monitor destinations - Azure Monitor | Microsoft Docs](/azure/azure-monitor/logs/logs-data-export?tabs=portal#monitor-destinations).

## Related topics

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)

- [Overview of Advanced Hunting](../defender/advanced-hunting-overview.md)
- [Microsoft Defender XDR Streaming API](streaming-api.md)
- [Stream Microsoft Defender XDR events to your Azure storage account](streaming-api-storage.md)
- [Azure Storage Account documentation](/azure/storage/common/storage-account-overview)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
