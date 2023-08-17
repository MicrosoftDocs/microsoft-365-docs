---
title: Visit the Microsoft 365 Defender multi-tenant portal
description: Learn about the Microsoft 365 Defender multi-tenant Unified View portal
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

# Visit the Microsoft 365 Defender multi-tenant portal

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft 365 Defender multi-tenant Unified View

[!include[Prerelease information](../../includes/prerelease.md)]

## Get started in the Microsoft 365 Defender multi-tenant Unified View

- welcome flow

## The navigation bar

Use the navigation bar on the left side of the screen to access your incidents and alerts, view the vulnerability management dashboard, use advanced hunting and manage your tenants. The following table describes items you'll see in your navigation bar.

| Item | Description |
|:---|:---|
| **Home** | Takes you to your home page in the Microsoft 365 Defender portal. The home page highlights any active threats that are detected, along with recommendations to help secure your company's data and devices.|
| **Incidents** | Takes you to your list of recent incidents. As alerts are triggered, incidents are created. An incident can include multiple alerts. Make sure to review your incidents regularly. |
| **Assets** > **Devices** | |
| **Endpoints** > **Vulnerability management** | Provides a dashboard, recommendations, remediation activities, a software inventory, and a list of potential weaknesses within your company. |
| **Settings** | Enables you to edit settings for the Microsoft 365 Defender portal and Defender for Business. For example, you can onboard (or offboard) your company's devices (also referred to as endpoints). You can also define rules, such as alert-suppression rules, and set up indicators to block or allow certain files or processes.  |

## Next steps

- [See the overall setup and configuration process](mdb-setup-configuration.md)

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

### Unified View Status Indicator

The Unified View Status Indicator is always available in the bottom right corner of the Microsoft 365 Defender multi-tenant Unified View. This indicator provides information when data issues occur with the page you are viewing, such as data loading issues or permissions issues.

When an issue exists the status indicator will show a red warning sign hovering over it will display the issues that have occurred and the tenant information. By expanding each section, you’ll see all the tenants with this issue.
