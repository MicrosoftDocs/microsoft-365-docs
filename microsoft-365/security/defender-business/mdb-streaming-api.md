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

- [Microsoft Sentinel](/azure/sentinel/overview), a scalable, cloud-native solution that provides security information and event management (SIEM) and security orchestration, automation, and response (SOAR) capabilities. 
- [Azure Event Hubs](/azure/event-hubs/event-hubs-about),  a modern big data streaming platform and event ingestion service that can seamlessly integrate with other Azure and Microsoft services, such as Stream Analytics, Power BI, and Event Grid, along with outside services like Apache Spark.
- [Azure Storage](/azure/storage/common/storage-introduction), Microsoft's cloud storage solution for modern data storage scenarios, with highly available, massively scalable, durable, and secure storage for a variety of data objects in the cloud. 

With the streaming API, you can now use [advanced hunting](../defender/advanced-hunting-overview.md) and [attack detection](../defender-endpoint/overview-endpoint-detection-response.md) with Defender for Business and Microsoft 365 Business Premium. The streaming API enables SOCs to view more data about devices, understand better how an attack occurred, and take steps to improve device security. 

## Use the streaming API with Microsoft Sentinel (preview)

> [!NOTE]
> Microsoft Sentinel is a paid service. Several plans and pricing options are available. See [Microsoft Sentinel pricing](https://azure.microsoft.com/en-us/pricing/details/microsoft-sentinel/).

1. Make sure that Defender for Business is set up and configured, and that devices are already onboarded. See [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md).

2. Make sure that the tenant is set up to receive preview features. See [Microsoft Defender for Business preview features](mdb-preview.md).

3. Create a Log Analytics workspace that you'll use with Sentinel. See [Create a Log Analytics workspace](/azure/azure-monitor/logs/quick-create-workspace?tabs=azure-portal).

4. Onboard to Microsoft Sentinel. See [Quickstart: Onboard Microsoft Sentinel](/azure/sentinel/quickstart-onboard).

5. Enable the Microsoft 365 Defender connector.

## Use the streaming API with Event Hubs (preview)



## Use the streaming API with Azure Storage (preview)

