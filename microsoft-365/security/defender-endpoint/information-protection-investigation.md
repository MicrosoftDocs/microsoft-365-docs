---
title: Use Microsoft Defender for Endpoint sensitivity labels to protect your data and prioritize security incident response
description: Learn how to use Defender for Endpoint sensitivity labels to protect, prioritize, and investigate incidents that involve data loos, dlp, security incidents.
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
- ContentEngagementFY23
- tier2
 - EngageScoreSep2022
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Microsoft Defender for Endpoint sensitivity labels protect and prioritize incident response

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

A typical advanced persistent threat lifecycle (or APT) involves some data exfiltration -- the point at which data is *taken* from the organization. In those situations, sensitivity labels can tell security operations where to start by spelling out what data is highest priority to protect.

Defender for Endpoint helps to make prioritization of security incidents simpler with the use of sensitivity labels too. For example, sensitivity labels quickly identify incidents that may involve devices with sensitive information on them (such as confidential information).

Here's how to use sensitivity labels in Defender for Endpoint.

## Investigate incidents that involve sensitive data on devices with Defender for Endpoint

Learn how to use data sensitivity labels to prioritize incident investigation.

> [!NOTE]
> Labels are detected for Windows 10, version 1809 or later, and Windows 11.

1. In Microsoft 365 Defender portal, select **Incidents & alerts** \> **Incidents**.

2. Scroll to the right to see the **Data sensitivity** column. This column reflects sensitivity labels that have been observed on devices related to the incidents providing an indication of whether sensitive files may be impacted by the incident.

   :::image type="content" source="images/data-sensitivity-column.png" alt-text="The Highly confidential option in the data sensitivity column" lightbox="images/data-sensitivity-column.png":::

    You can also filter based on **Data sensitivity**

    :::image type="content" source="images/data-sensitivity-filter.png" alt-text="The data sensitivity filter" lightbox="images/data-sensitivity-filter.png":::

3. Open the incident page to further investigate.

   :::image type="content" source="images/incident-page.png" alt-text="The incident page details" lightbox="images/incident-page.png":::

4. Select the **Devices** tab to identify devices storing files with sensitivity labels.

   :::image type="content" source="images/investigate-devices-tab.png" alt-text="The Device tab" lightbox="images/investigate-devices-tab.png":::

5. Select the devices that store sensitive data and search through the timeline to identify which files may be impacted then take appropriate action to ensure that data is protected.

   You can narrow down the events shown on the device timeline by searching for data sensitivity labels. Doing this will show only events associated with files that have said label name.

   :::image type="content" source="images/machine-timeline-labels.png" alt-text="The device timeline with narrowed down search results based on label" lightbox="images/machine-timeline-labels.png":::

> [!TIP]
> These data points are also exposed through the 'DeviceFileEvents' in advanced hunting, allowing advanced queries and schedule detection to take into account sensitivity labels and file protection status.

## Related information about sensitivity labels

- [Learn about sensitivity labels in Office 365](../../compliance/sensitivity-labels.md)
- [Learn to apply sensitivity label inside of email or Office](https://support.microsoft.com/office/apply-sensitivity-labels-to-your-files-and-email-in-office-2f96e7cd-d5a4-403b-8bd7-4cc636bae0f9)
- [Learn how to use sensitivity labels as a condition when applying Data Loss Prevention](../../compliance/dlp-sensitivity-label-as-condition.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
