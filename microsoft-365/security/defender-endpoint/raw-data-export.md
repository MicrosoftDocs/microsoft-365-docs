---
title: Stream Microsoft 365 Defender events
description: Learn how to configure Microsoft 365 Defender to stream Advanced Hunting events to Event Hubs or Azure storage account
keywords: raw data export, streaming API, API, Event hubs, Azure storage, storage account, Advanced Hunting, raw data sharing
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

# Streaming API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Stream Advanced Hunting events to Event Hubs and/or Azure storage account.

Microsoft 365 Defender supports streaming all the events available through [Advanced Hunting](../defender/advanced-hunting-overview.md) to an [Event Hubs](/azure/event-hubs/) and/or [Azure storage account](/azure/storage/common/storage-account-overview).



## In this section

Topic | Description
:---|:---
[Stream events to Azure Event Hubs](raw-data-export-event-hub.md)| Learn about enabling the streaming API in your tenant and configure Microsoft 365 Defender to stream [Advanced Hunting](../defender/advanced-hunting-overview.md) to Event Hubs.
[Stream events to your Azure storage account](raw-data-export-storage.md)| Learn about enabling the streaming API in your tenant and configure Microsoft 365 Defender to stream [Advanced Hunting](../defender/advanced-hunting-overview.md) to your Azure storage account.


## Related topics
- [Overview of Advanced Hunting](../defender/advanced-hunting-overview.md)
- [Azure Event Hubs documentation](/azure/event-hubs/)
- [Azure Storage Account documentation](/azure/storage/common/storage-account-overview)
