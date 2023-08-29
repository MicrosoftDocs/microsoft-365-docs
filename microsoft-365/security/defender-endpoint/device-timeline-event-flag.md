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
ms.date: 12/18/2020
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

   
- All MITRE techniques are shown when there's more than 1 related technique:

    :::image type="content" source="images/new-timeline-mitre-techniques.png" alt-text="Screenshot of all MITRE techniques. " lightbox="images/new-timeline-mitre-techniques.png":::

- Timeline events are linked to the new user page:

    :::image type="content" source="images/new-timeline-user.png" alt-text="Screenshot of timeline events linked to the new user page." lightbox="images/new-timeline-user.png":::

    :::image type="content" source="images/new-timeline-user-details.png" alt-text="Screenshot of timeline events linked to the new user page 2." lightbox="images/new-timeline-user-details.png":::

- Defined filters are now visible at the top of the timeline: 

    :::image type="content" source="images/new-timeline-highlight.png" alt-text="Screenshot of defined filters." lightbox="images/new-timeline-highlight.png":::

## Techniques in the device timeline

You can gain more insight in an investigation by analyzing the events that happened on a specific device. First, select the device of interest from the [Devices list](machines-view-overview.md). On the device page, you can select the **Timeline** tab to view all the events that occurred on the device.

### Understand techniques in the timeline

> [!IMPORTANT]
> Some information relates to a prereleased product feature in public preview which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

In Microsoft Defender for Endpoint, **Techniques** are an additional data type in the event timeline. Techniques provide more insight on activities associated with [MITRE ATT&CK](https://attack.mitre.org/) techniques or sub-techniques.

This feature simplifies the investigation experience by helping analysts understand the activities that were observed on a device. Analysts can then decide to investigate further.

For public preview, Techniques are available by default and shown together with events when a device's timeline is viewed.

:::image type="content" source="images/new-timeline-mitre-techniques.png" alt-text="Screenshot of all MITRE techniques." lightbox="images/new-timeline-mitre-techniques.png":::

Techniques are highlighted in bold text and appear with a blue icon on the left. The corresponding MITRE ATT&CK ID and technique name also appear as tags under Additional information.

Search and Export options are also available for Techniques.

### Investigate using the side pane

Select a Technique to open its corresponding side pane. Here you can see additional information and insights like related ATT&CK techniques, tactics, and descriptions.

Select the specific *Attack technique* to open the related ATT&CK technique page where you can find more information about it.

You can copy an entity's details when you see a blue icon on the right. For instance, to copy a related file's SHA1, select the blue page icon.

:::image type="content" source="images/new-timeline-process-tree.png" alt-text="Screenshot that shows the copy entity details." lightbox="images/new-timeline-process-tree.png":::

:::image type="content" source="images/new-timeline-side-panel-1.png" alt-text="Screenshot that shows the side pane details." lightbox="images/new-timeline-side-panel-1.png":::

You can do the same for command lines.

:::image type="content" source="images/techniques-side-pane-command-1.png" alt-text="Screenshot that shows the option to copy command line." lightbox="images/techniques-side-pane-command-1.png":::

### Investigate related events

To use [advanced hunting](advanced-hunting-overview.md) to find events related to the selected Technique, select **Hunt for related events**. This leads to the advanced hunting page with a query to find events related to the Technique.

:::image type="content" source="images/techniques-hunt-for-related-events-1.png" alt-text="Screenshot that shows the Hunt for related events option." lightbox="images/techniques-hunt-for-related-events-1.png":::

> [!NOTE]
> Querying using the **Hunt for related events** button from a Technique side pane displays all the events related to the identified technique but does not include the Technique itself in the query results.

### Customize your device timeline

On the upper right-hand side of the device timeline, you can choose a date range to limit the number of events and techniques in the timeline.

You can customize which columns to expose. You can also filter for flagged events by data type or by event group.

### Choose columns to expose

You can choose which columns to expose in the timeline by selecting the **Choose columns** button.

:::image type="content" source="images/new-timeline-customize-columns.png" alt-text="Screenshot that shows the pane in which you can customize columns." lightbox="images/new-timeline-customize-columns.png":::


From there you can select which information set to include.

### Filter to view techniques or events only

To view only either events or techniques, select **Filters** from the device timeline and choose your preferred Data type to view.

:::image type="content" source="images/new-timeline-filter.png" alt-text="Screenshot that shows the Filters pane." lightbox="images/new-timeline-filter.png":::

## Timeline event flags

Event flags in the Defender for Endpoint device timeline help you filter and organize specific events when you're investigating potential attacks.

The Defender for Endpoint device timeline provides a chronological view of the events and associated alerts observed on a device. This list of events provides full visibility into any events, files, and IP addresses observed on the device. The list can sometimes be lengthy. Device timeline event flags help you track events that could be related.

After you've gone through a device timeline, you can sort, filter, and export the specific events that you flagged.

While navigating the device timeline, you can search and filter for specific events. You can set event flags by:

- Highlighting the most important events
- Marking events that require deep dive
- Building a clean breach timeline

## Flag an event

1. Find the event that you want to flag.

2. Click the flag icon in the Flag column. 

:::image type="content" source="images/device-flags.png" alt-text="The device timeline flag" lightbox="images/device-flags.png":::

## View flagged events

1. In the timeline **Filters** section, enable **Flagged events**.
2. Click **Apply**. Only flagged events are displayed.

You can apply additional filters by clicking on the time bar. This will only show events prior to the flagged event.  

:::image type="content" source="images/device-flag-filter.png" alt-text="Screenshot that shows the device timeline flag with the filter switched on." lightbox="images/device-flag-filter.png":::
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
