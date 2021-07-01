---
title: Overview of endpoint detection and response capabilities
ms.reviewer: 
description: Learn about the endpoint detection and response capabilities in Microsoft Defender for Endpoint
keywords: Microsoft Defender for Endpoint, endpoint detection and response, response, detection, cybersecurity, protection
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
ms.topic: conceptual
ms.technology: mde
---

# Overview of endpoint detection and response

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

Defender for Endpoint endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats.

When a threat is detected, alerts are created in the system for an analyst to investigate. Alerts with the same attack techniques or attributed to the same attacker are aggregated into an entity called an _incident_. Aggregating alerts in this manner makes it easy for analysts to collectively investigate and respond to threats.

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4o1j5]

Inspired by the "assume breach" mindset, Defender for Endpoint continuously collects behavioral cyber telemetry. This includes process information, network activities, deep optics into the kernel and memory manager, user login activities, registry and file system changes, and others. The information is stored for six months, enabling an analyst to travel back in time to the start of an attack. The analyst can then pivot in various views and approach an investigation through multiple vectors.

The response capabilities give you the power to promptly remediate threats by acting on the affected entities.


## Related topics
- [Security operations dashboard](security-operations-dashboard.md)
- [Incidents queue](view-incidents-queue.md)
- [Alerts queue](alerts-queue.md)
- [Devices list](machines-view-overview.md)

