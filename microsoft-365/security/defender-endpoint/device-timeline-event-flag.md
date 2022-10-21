---
title: Microsoft Defender for Endpoint device timeline
description: Use Microsoft Defender for Endpoint device timeline and timeline event flags.
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
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Microsoft Defender for Endpoint device timeline

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!NOTE]
> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-assignaccess-abovefoldlink)

The Defender for Endpoint device timeline helps you research and investigate anomalous behavior on your devices more quickly. You can explore specific events and endpoints to review potential attacks in your organization. You can review specific times of each event, set flags to follow up for potentially connected events, and filter to specific date ranges. 

- Custom time range picker:

    :::image type="content" source="images/custom-time-range.png" alt-text="Screenshot of the custom time range.":::

- Process tree experience – event side panel:

    :::image type="content" source="images/event-side-panel.png" alt-text="Screenshot of the event side panel." lightbox="images/event-side-panel.png":::

- All MITRE techniques are shown when there’s more than 1 related technique:

    :::image type="content" source="images/all-mitre-techniques.png" alt-text="Screenshot of all MITRE techniques. " lightbox="images/all-mitre-techniques.png":::

- Timeline events are linked to the new user page:

    :::image type="content" source="images/timeline events-new user page.png" alt-text="Screenshot of timeline events linked to the new user page." lightbox="images/timeline events-new user page.png":::

    :::image type="content" source="images/timeline events-new user page-2.png" alt-text="Screenshot of timeline events linked to the new user page 2." lightbox="images/timeline events-new user page-2.png":::

- Defined filters are now visible at the top of the timeline: 

    :::image type="content" source="images/defined-filters.png" alt-text="Screenshot of defined filters." lightbox="images/defined-filters.png":::

## Timeline event flags

Event flags in the Defender for Endpoint device timeline help you filter and organize specific events when you're investigating potential attacks.

The Defender for Endpoint device timeline provides a chronological view of the events and associated alerts observed on a device. This list of events provides full visibility into any events, files, and IP addresses observed on the device. The list can sometimes be lengthy. Device timeline event flags help you track events that could be related.

After you've gone through a device timeline, you can sort, filter, and export the specific events that you flagged.

While navigating the device timeline, you can search and filter for specific events. You can set event flags by:

- Highlighting the most important events
- Marking events that require deep dive
- Building a clean breach timeline

## Flag an event

1. Find the event that you want to flag

2. Click the flag icon in the Flag column. 

:::image type="content" source="images/device-flags.png" alt-text="The device timeline flag" lightbox="images/device-flags.png":::

## View flagged events

1. In the timeline **Filters** section, enable **Flagged events**.
2. Click **Apply**. Only flagged events are displayed.

You can apply additional filters by clicking on the time bar. This will only show events prior to the flagged event.  

:::image type="content" source="images/device-flag-filter.png" alt-text="Screenshot that shows the device timeline flag with the filter switched on." lightbox="images/device-flag-filter.png":::
