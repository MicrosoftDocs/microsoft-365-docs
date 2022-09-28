---
title: Microsoft Defender for Endpoint device timeline event flags
description: Use Microsoft Defender for Endpoint device timeline event flags to
keywords: Defender for Endpoint device timeline, event flags
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m365-security
ms.topic: article
ms.subservice: mde
search.appverid: met150
---

# Microsoft Defender for Endpoint device timeline event flags

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

Event flags in the Defender for Endpoint device timeline help you filter and organize specific events when you're  investigate potential attacks.

The Defender for Endpoint device timeline provides a chronological view of the events and associated alerts observed on a device. This list of events provides full visibility into any events, files, and IP addresses observed on the device. The list can sometimes be lengthy. Device timeline event flags help you track events that could be related.

After you've gone through a device timeline, you can sort, filter, and export the specific events that you flagged.

While navigating the device timeline, you can search and filter for specific events. You can set event flags by:

- Highlighting the most important events
- Marking events that requires deep dive
- Building a clean breach timeline

## Flag an event

1. Find the event that you want to flag

2. Click the flag icon in the Flag column. 

:::image type="content" source="images/device-flags.png" alt-text="The device timeline flag" lightbox="images/device-flags.png":::

## View flagged events

1. In the timeline **Filters** section, enable **Flagged events**.
2. Click **Apply**. Only flagged events are displayed.

You can apply additional filters by clicking on the time bar. This will only show events prior to the flagged event.  

:::image type="content" source="images/device-flag-filter.png" alt-text="The device timeline flag with the filter switched on" lightbox="images/device-flag-filter.png":::