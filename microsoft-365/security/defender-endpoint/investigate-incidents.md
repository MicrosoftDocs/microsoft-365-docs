---
title: Investigate incidents in Microsoft Defender for Endpoint
description: See associated alerts, manage the incident, and see alert metadata to help you investigate an incident
keywords: investigate, incident, alerts, metadata, risk, detection source, affected devices, patterns, correlation
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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
- tier1
ms.topic: conceptual
ms.subservice: mde
ms.date: 12/18/2020
---

# Investigate incidents in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


Investigate incidents that affect your network, understand what they mean, and collate evidence to resolve them.

When you investigate an incident, you'll see:

- Incident details
- Incident comments and actions
- Tabs (alerts, devices, investigations, evidence, graph)

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4qLUV]

## Analyze incident details

Click an incident to see the **Incident pane**. Select **Open incident page** to see the incident details and related information (alerts, devices, investigations, evidence, graph).

:::image type="content" source="images/atp-incident-details.png" alt-text="The details of an incident" lightbox="images/atp-incident-details.png":::

### Alerts

You can investigate the alerts and see how they were linked together in an incident. Alerts are grouped into incidents based on the following reasons:

- Automated investigation - The automated investigation triggered the linked alert while investigating the original alert
- File characteristics - The files associated with the alert have similar characteristics
- Manual association - A user manually linked the alerts
- Proximate time - The alerts were triggered on the same device within a certain timeframe
- Same file - The files associated with the alert are exactly the same
- Same URL - The URL that triggered the alert is exactly the same

:::image type="content" source="images/atp-incidents-alerts-reason.png" alt-text="The Alerts tab with incident details page showing the reasons the alerts were linked together in that incident" lightbox="images/atp-incidents-alerts-reason.png":::

You can also manage an alert and see alert metadata along with other information. For more information, see [Investigate alerts](investigate-alerts.md).

### Devices

You can also investigate the devices that are part of, or related to, a given incident. For more information, see [Investigate devices](investigate-machines.md).

:::image type="content" source="images/atp-incident-device-tab.png" alt-text="The Devices tab in incident details page" lightbox="images/atp-incident-device-tab.png":::

### Investigations

Select **Investigations** to see all the automatic investigations launched by the system in response to the incident alerts.

:::image type="content" source="images/atp-incident-investigations-tab.png" alt-text="The investigations tab in the incident details page" lightbox="images/atp-incident-investigations-tab.png":::

## Going through the evidence

Microsoft Defender for Endpoint automatically investigates all the incidents' supported events and suspicious entities in the alerts, providing you with autoresponse and information about the important files, processes, services, and more.

Each of the analyzed entities will be marked as infected, remediated, or suspicious.

:::image type="content" source="images/atp-incident-evidence-tab.png" alt-text="The Evidence tab in incident details page" lightbox="images/atp-incident-evidence-tab.png":::

## Visualizing associated cybersecurity threats

Microsoft Defender for Endpoint aggregates the threat information into an incident so you can see the patterns and correlations coming in from various data points. You can view such correlation through the incident graph.

### Incident graph

The **Graph** tells the story of the cybersecurity attack. For example, it shows you what was the entry point, which indicator of compromise or activity was observed on which device. etc.

:::image type="content" source="images/atp-incident-graph-tab.png" alt-text="The incident graph" lightbox="images/atp-incident-graph-tab.png":::

You can click the circles on the incident graph to view the details of the malicious files, associated file detections, how many instances have there been worldwide, whether it's been observed in your organization, if so, how many instances.

:::image type="content" source="images/atp-incident-graph-details.png" alt-text="The incident details page" lightbox="images/atp-incident-graph-details.png":::

## Related topics

- [Incidents queue](/microsoft-365/security/defender-endpoint/view-incidents-queue)
- [Investigate incidents in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/investigate-incidents)
- [Manage Microsoft Defender for Endpoint incidents](/microsoft-365/security/defender-endpoint/manage-incidents)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
