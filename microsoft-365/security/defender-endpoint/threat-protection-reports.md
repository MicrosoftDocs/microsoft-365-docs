---
title: Threat protection report in Microsoft Defender for Endpoint
description: Track alert detections, categories, and severity using the threat protection report
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.topic: conceptual
search.appverid: met150
ms.date: 1/31/2024
---

# Threat protection report in Microsoft Defender for Endpoint

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!IMPORTANT]
> The Microsoft Defender for Endpoint Threat Protection report page is now deprecated and is no longer available. Microsoft recommends that you transition to either the Defender XDR alerts or advanced hunting to understand endpoint threat protection details. See the following sections for more information.

## Use the alert queue filter in Defender XDR
Due to the deprecation of the Defender for Endpoint Threat protection report, you can use the Defender XDR alerts view, filtered against Defender for Endpoint, to see the current status of alerts for protected devices. For alert status, such as *unresolved*, you can filter against *New* and *In progress* items. [Learn more about Defender XDR Alerts](../defender/investigate-alerts.md).

## Use Advanced hunting queries
Due to the deprecation of the Defender for Endpoint Threat protection report, you can use Advanced hunting queries to find Defender for Endpoint threat protection information.  Note that currently there is no alert status in Advanced hunting elements that maps to resolve/unresolve. [Learn more about Advanced hunting in Defender XDR](../defender/advanced-hunting-overview.md). See below for a sample advanced hunting query that shows endpoint related threat protection details.

### Alert status
```kusto
// Severity
AlertInfo
| where Timestamp > startofday(now()) // Today
| summarize count() by Severity
| render columnchart

// Detection source
AlertInfo
| where Timestamp > startofday(now()) // Today
| summarize count() by Severity
| render columnchart

// Detection category
AlertInfo
| where Timestamp > startofday(now()) // Today
| summarize count() by Category
| render columnchart
```


### Alert trend

```kusto
// Severity
AlertInfo
| where Timestamp > ago(30d)
| summarize count() by DetectionSource , bin(Timestamp, 1d)
| render timechart

// Detection source
AlertInfo
| where Timestamp > ago(30d)
| summarize count() by DetectionSource , bin(Timestamp, 1d)
| render timechart

// Detection category
AlertInfo
| where Timestamp > ago(30d)
| summarize count() by Category , bin(Timestamp, 1d)
| render timechart
```

## Related topics 

- [Device health and compliance report](device-health-reports.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
