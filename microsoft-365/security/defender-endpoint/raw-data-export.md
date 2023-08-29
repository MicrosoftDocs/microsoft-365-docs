---
title: Stream Microsoft Defender for Endpoint event
description: Learn how to configure Microsoft Defender for Endpoint to stream Advanced Hunting events to Event Hubs or Azure storage account
keywords: raw data export, streaming API, API, Event hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
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

# Raw Data Streaming API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)


> [!NOTE]
> For the full data streaming experience available, please visit [Stream Microsoft 365 Defender events | Microsoft Learn](/microsoft-365/security/defender/streaming-api).
> If you're using Microsoft Defender for Business, see [Use the streaming API (preview) with Microsoft Defender for Business](../defender-business/mdb-streaming-api.md).

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-configuresiem-abovefoldlink)

## Stream Advanced Hunting events to Event Hubs and/or Azure storage account

Microsoft Defender for Endpoint supports streaming events available through [Advanced Hunting](../defender/advanced-hunting-overview.md) to an [Event Hubs](/azure/event-hubs/) and/or [Azure storage account](/azure/storage/common/storage-account-overview).

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4r4ga]

## In this section

Topic|Description
:---|:---
[Stream Microsoft Defender for Endpoint events to Azure Event Hubs](raw-data-export-event-hub.md)|Learn about enabling the streaming API in your tenant and configure Defender for Endpoint to stream [Advanced Hunting](advanced-hunting-overview.md) to Event Hubs.
[Stream Defender for Endpoint events to your Azure storage account](raw-data-export-storage.md)|Learn about enabling the streaming API in your tenant and configure Defender for Endpoint to stream [Advanced Hunting](advanced-hunting-overview.md) to your Azure storage account.

## Related topics

- [Stream Microsoft 365 Defender events | Microsoft Learn](/microsoft-365/security/defender/streaming-api)

- [Overview of Advanced Hunting](advanced-hunting-overview.md)
- [Azure Event Hubs documentation](/azure/event-hubs/)
- [Azure Storage Account documentation](/azure/storage/common/storage-account-overview)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
