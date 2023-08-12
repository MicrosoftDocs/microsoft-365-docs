---
title: Track and respond to emerging threats with Microsoft Defender for Endpoint threat analytics
ms.reviewer:
description: Understand emerging threats and attack techniques and how to stop them. Assess their impact to your organization and evaluate your organizational resilience.
keywords: threat analytics, risk evaluation, OS mitigation, microcode mitigation, mitigation status
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365initiative-defender-endpoint
  - tier1
ms.topic: conceptual
ms.subservice: mde
ms.date: 12/18/2020
---

# Track and respond to emerging threats through threat analytics

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

With more sophisticated adversaries and new threats emerging frequently and prevalently, it's critical to be able to quickly:

- Assess the impact of new threats
- Review your resilience against or exposure to the threats
- Identify the actions you can take to stop or contain the threats

Threat analytics is a set of reports from expert Microsoft security researchers covering the most relevant threats, including:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

Each report provides a detailed analysis of a threat and extensive guidance on how to defend against that threat. It also incorporates data from your network, indicating whether the threat is active and if you have applicable protections in place.

Watch this short video to learn more about how threat analytics can help you track the latest threats and stop them.

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4bw1f]

## Required roles and permissions
The following table outlines the roles and permissions required to access Threat Analytics. Roles defined in the table below refer to custom roles in individual portals and are not connected to global roles in Azure AD, even if similarly named.

| **One of the following roles are required for Microsoft 365 Defender**  | **One of the following roles are required for Defender for Endpoint**  | **One of the following roles are required for Defender for Office 365** | **One of the following roles are required for Defender for Cloud Apps** | 
|---------|---------|---------|---------|
| Threat Analytics | Alerts and incidents data: <ul><li>View data- security operations</li></ul>Defender Vulnerability Management mitigations:<ul><li>View data - Threat and vulnerability management</li></ul> | Alerts and incidents data:<ul> <li>View-only manage alerts</li> <li>Manage alerts</li> <li>Organization configuration</li><li>Audit logs</li> <li>View-only audit logs</li><li>Security reader</li> <li>Security admin</li><li>View-only recipients</li> </ul> Prevented email attempts: <ul><li>Security reader</li> <li>Security admin</li><li>View-only recipients</li> | Not available for Defender for Cloud Apps or MDI users |

## View the threat analytics dashboard

The threat analytics dashboard is a great jump off point for getting to the reports that are most relevant to your organization. It summarizes the threats in the following sections:

- **Latest threats**: Lists the most recently published threat reports, along with the number of devices with active and resolved alerts.
- **High-impact threats**: Lists the threats that have had the highest impact to the organization. This section ranks threats by the number of devices that have active alerts.
- **Threat summary**: Shows the overall impact of tracked threats by showing the number of threats with active and resolved alerts.

Select a threat from the dashboard to view the report for that threat.

:::image type="content" source="images/ta_dashboard.png" alt-text="The threat analytics dashboard" lightbox="images/ta_dashboard.png":::

## View a threat analytics report

Each threat analytics report provides information in three sections: **Overview**, **Analyst report**, and **Mitigations**.

### Overview: Quickly understand the threat, assess its impact, and review defenses

The **Overview** section provides a preview of the detailed analyst report. It also provides charts that highlight the impact of the threat to your organization and your exposure through misconfigured and unpatched devices.

:::image type="content" source="images/ta-overview.png" alt-text="The Overview section of a threat analytics report" lightbox="images/ta-overview.png":::
_Overview section of a threat analytics report_

#### Assess the impact to your organization

Each report includes charts designed to provide information about the organizational impact of a threat:

- **Devices with alerts**: Shows the current number of distinct devices that have been impacted by the threat. A device is categorized as **Active** if there is at least one alert associated with that threat and **Resolved** if *all* alerts associated with the threat on the device have been resolved.
- **Devices with alerts over time**: Shows the number of distinct devices with **Active** and **Resolved** alerts over time. The number of resolved alerts indicates how quickly your organization responds to alerts associated with a threat. Ideally, the chart should be showing alerts resolved within a few days.

#### Review security resilience and posture

Each report includes charts that provide an overview of how resilient your organization is against a given threat:

- **Security configuration status**: Shows the number of devices that have applied the recommended security settings that can help mitigate the threat. Devices are considered **Secure** if they have applied _all_ the tracked settings.
- **Vulnerability patching status**: Shows the number of devices that have applied security updates or patches that address vulnerabilities exploited by the threat.

### Analyst report: Get expert insight from Microsoft security researchers

Go to the **Analyst report** section to read through the detailed expert write-up. Most reports provide detailed descriptions of attack chains, including tactics and techniques mapped to the MITRE ATT&CK framework, exhaustive lists of recommendations, and powerful [threat hunting](advanced-hunting-overview.md) guidance.

[Learn more about the analyst report](threat-analytics-analyst-reports.md)

### Mitigations: Review list of mitigations and the status of your devices

In the **Mitigations** section, review the list of specific actionable recommendations that can help you increase your organizational resilience against the threat. The list of tracked mitigations includes:

- **Security updates**: Deployment of security updates or patches for vulnerabilities
- **Microsoft Defender Antivirus settings**
  - Security intelligence version
  - Cloud-delivered protection
  - Potentially unwanted application (PUA) protection
  - Real-time protection

Mitigation information in this section incorporates data from [Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md), which also provides detailed drill-down information from various links in the report.

:::image type="content" source="images/ta-mitigations.png" alt-text="The Mitigations section of a threat analytics report" lightbox="images/ta-mitigations.png":::


_Mitigations section of a threat analytics report_

## Additional report details and limitations

When using the reports, keep the following in mind:

- Data is scoped based on your role-based access control (RBAC) scope. You will see the status of devices in [groups that you can access](machine-groups.md).
- Charts reflect only mitigations that are tracked. Check the report overview for additional mitigations that are not shown in the charts.
- Mitigations don't guarantee complete resilience. The provided mitigations reflect the best possible actions needed to improve resiliency.
- Devices are counted as "unavailable" if they have not transmitted data to the service.
- Antivirus-related statistics are based on Microsoft Defender Antivirus settings. Devices with third-party antivirus solutions can appear as "exposed".

## Related topics

- [Proactively find threats with advanced hunting](advanced-hunting-overview.md)
- [Understand the analyst report section](threat-analytics-analyst-reports.md)
- [Assess and resolve security weaknesses and exposures](next-gen-threat-and-vuln-mgt.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
