---
title: Overview of endpoint detection and response capabilities
ms.reviewer: 
description: Learn about the endpoint detection and response capabilities in Microsoft Defender for Endpoint
keywords: Microsoft Defender for Endpoint, endpoint detection and response, response, detection, cybersecurity, protection
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
- tier2
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 12/18/2020
---

# Overview of endpoint detection and response

**Applies to:**
- [Microsoft Defender for Endpoint Plans 1 and 2](defender-endpoint-plan-1-2.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Endpoint detection and response capabilities in Defender for Endpoint provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats.

When a threat is detected, alerts are created in the system for an analyst to investigate. Alerts with the same attack techniques or attributed to the same attacker are aggregated into an entity called an _incident_. Aggregating alerts in this manner makes it easy for analysts to collectively investigate and respond to threats.

> [!NOTE]
> Defender for Endpoint detection is not intended to be an auditing or logging solution that records every operation or activity that happens on a given endpoint. Our sensor has an internal throttling mechanism, so the high rate of repeat identical events will not flood the logs.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4o1j5]

> [!IMPORTANT]
> [Defender for Endpoint Plan 1](defender-endpoint-plan-1.md) and [Microsoft Defender for Business](../defender-business/mdb-overview.md) include only the following manual response actions:
> - Run antivirus scan
> - Isolate device
> - Stop and quarantine a file
> - Add an indicator to block or allow a file

Inspired by the "assume breach" mindset, Defender for Endpoint continuously collects behavioral cyber telemetry. This includes process information, network activities, deep optics into the kernel and memory manager, user login activities, registry and file system changes, and others. The information is stored for six months, enabling an analyst to travel back in time to the start of an attack. The analyst can then pivot in various views and approach an investigation through multiple vectors.

The response capabilities give you the power to promptly remediate threats by acting on the affected entities.

## Related topics

- [Incidents queue](view-incidents-queue.md)
- [Alerts queue](alerts-queue.md)
- [Devices list](machines-view-overview.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
