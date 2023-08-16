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

Below you can find a brief explanation about the MTO experiences, focusing on the new capabilities:

## Incidents & Alerts

You can manage alerts & incidents originating from multiple tenants under **Incidents & alerts**

1. To view Incidents, go to the [Incidents page](https://mto.security.microsoft.com/incidents) in the Microsoft 365 Defender multi-tenant Unified View
2. A new **Tenant Name** column exists:  
3. Select **Filter** to filter the incidents by tenant name:  
4. Select an incident to see the incident management options available you
5. Selecting a link will open the page, in a new tab, for the respective tenant in the [Microsoft 365 Defender portal](https://security.microsoft.com).

To view Alerts, go to the [Alerts page](https://mto.security.microsoft.com/alerts) in the Microsoft 365 Defender multi-tenant Unified View. The alerts page appears and has the same capabilities as the Incidents page.

### Advanced Hunting

The unified advanced hunting experience allows you to proactively hunt for intrusion attempts and breach activity affecting your email, data, devices, and accounts over multiple tenants at the same time.

1. Go to [Advance Hunting](https://mto.security.microsoft.com/v2/advanced-hunting)

2. **Run** your cross-tenant query. It will run on the combined data set of all the tenants you are authorized to access.
3. A new **TenantID** column exists in the query results
4. You can restrict the query to a specific set of tenants by selecting **Tenant scope** at the top right corner of the page
5. On the left, you can see the **unified schema**, which displays all tables available across all tenants.  

### Defender Vulnerability Management

Microsoft 365 Defender multi-tenant Unified View Vulnerability Management provides both security administrators and security operations teams with aggregated vulnerability management information across multiple tenants. It includes two main pages:

#### Dashboard

The dashboard provides aggregated and summarized information across all tenants.  

In the Microsoft 365 Defender multi-tenant Unified View dashboard page, you can find the following information across all the tenants you have access to:

| Area                                          | Description                                                                                             |
|-----------------------------------------------|---------------------------------------------------------------------------------------------------------|
| Exposure score                                | Reflects the current exposure associated with devices in your organization, across all managed tenants. |
| Most exposed tenants                          | Provides real time visibility into the tenants with the highest current exposure level.                 |
| Exposure distribution                         | Shows how many devices are exposed, across all tenants, based on their exposure level.                  |
| Tenants with the largest increase in exposure | Identify tenants with the largest increase in exposure over the last 30 days.                           |
| Tenants exposure distribution                 | View a summary of exposed tenants aggregated by exposure level.                                         |

#### Tenant List

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

### Unified View Status Indicator

The Unified View Status Indicator is always available in the bottom right corner of the Microsoft 365 Defender multi-tenant Unified View. This indicator provides information when data issues occur with the page you are viewing, such as data loading issues or permissions issues.

When an issue exists the status indicator will show a red warning sign hovering over it will display the issues that have occurred and the tenant information. By expanding each section, you’ll see all the tenants with this issue.
