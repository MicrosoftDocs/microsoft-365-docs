---
title: View tenants devices with Microsoft 365 Defender multi-tenant view
description: Learn about the devices for multi-tenants in the Microsoft 365 Defender multi-tenant view
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 09/01/2023
---

# Microsoft 365 Defender multi-tenant device view

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

[!include[Prerelease information](../../includes/prerelease.md)]

## Tenant device list

The Tenants page contains a list of all tenants, with the following information:

Tenant name, Exposure score, Exposure trend, Exposure change (last 30 days), Exposed devices, Recommendations, Weaknesses, and Critical CVEs.

Select a tenant name to navigate to the Defender Vulnerability Management dashboard for that tenant.

### Device inventory

Device inventory provides both security administrators and security operations teams with aggregated information about devices of each tenant, along with aggregated data across all tenants.

Select a tenant name to navigate to the device inventory screen for that tenant, where all data and inventory-related actions are available.

At the top of the device inventory, you can find counters for multiple device inventory metrics:

| Counter          | Description                                                                                                                   |
|------------------|-------------------------------------------------------------------------------------------------------------------------------|
| All tenants      | Number of tenants presented in the tenant list                                                                                |
| All devices      | Number of devices, onboarded or discovered, across all tenants.                                                               |
| High risk        | Number of devices with risk score ‘high’                                                                                      |
| High exposure    | Number of devices with exposure score ‘high’                                                                                  |
| Internet facing  | Number of devices identified as being internet facing, i.e., exposed to external communication from outside the organization. |
| Can be onboarded | Number of devices that can be onboarded to Microsoft Defender for Endpoint agent.                                             |
| Newly discovered | Number of devices discovered in the selected time frame                                                                       |
| High value       | Number of devices with device value attribute set to ‘high.’; device value affects exposure score calculation                 |

