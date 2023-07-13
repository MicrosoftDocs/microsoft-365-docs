---
title: Investigate data loss prevention alerts with Microsoft Sentinel
description: Investigate data loss prevention alerts in Microsoft Sentinel.
keywords: Data Loss Prevention, incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
f1.keywords: 
  - NOCSH
ms.service: microsoft-365-security
ms.subservice: m365d
ms.author: chrfox
author: chrfox
ms.localizationpriority: medium
manager: laurawi
audience: ITPro
ms.collection: 
  - m365-security
  - tier2
ms.topic: how-to
search.appverid: 
  - MOE150
  - met150
ms.date: 07/11/2023
---

# Investigate data loss prevention alerts with Microsoft Sentinel

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender
- Microsoft Sentinel

## Before you start

See, [Investigate data loss prevention alerts with Microsoft 365 Defender](dlp-investigate-alerts-defender.md#investigate-data-loss-prevention-alerts-with-microsoft-365-defender) for more details.

## DLP investigation experience in Microsoft Sentinel

You can use the Microsoft 365 Defender connector in Microsoft Sentinel to import all DLP incidents into Sentinel to extend your correlation, detection, and investigation across other data sources and extend your automated orchestration flows using Sentinel's native SOAR capabilities.

1. Follow instructions on Connect data from Microsoft 365 Defender to Microsoft Sentinel to import all incidents including DLP incidents and alerts into Sentinel. Enable `CloudAppEvents` event connector to pull all Office 365 audit logs into Sentinel.

   You should be able to see your DLP incidents in Sentinel once the above connector is set up.

2. Select **Alerts** to view the alert page.

3. You can use **AlertType**, **startTime**, and **endTime** to query the **CloudAppEvents** table to get all the user activities that contributed to the alert. Use this query to identify the underlying activities:

```kusto
let Alert = SecurityAlert
| where TimeGenerated > ago(30d)
| where SystemAlertId == ""; // insert the systemAlertID here
CloudAppEvents
| extend correlationId1 = parse_json(tostring(RawEventData.Data)).cid
| extend correlationId = tostring(correlationId1)
| join kind=inner Alert on $left.correlationId == $right.AlertType
| where RawEventData.CreationTime > StartTime and RawEventData.CreationTime < EndTime
```

## Related articles

- [Incidents overview](incidents-overview.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
