---
title: Track and respond to emerging threats with threat analytics
ms.reviewer: 
description: Learn about emerging threats and attack techniques and how to stop them. Assess their impact to your organization and evaluate your organizational resilience.
keywords: threat analytics, risk evaluation, Microsoft 365 Defender, M365D, mitigation status, secure configuration 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Track and respond to emerging threats with threat analytics 

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](https://aka.ms/mtp-trial-lab) or [run your pilot project in production](https://aka.ms/m365d-pilotplaybook).
>

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

Each report provides an analysis of a tracked threat and extensive guidance on how to defend against that threat. It also incorporates data from your network, indicating whether the threat is active and if you have applicable protections in place.

Watch this short video to learn more about how threat analytics can help you track the latest threats and stop them.
<p></p>

**DRAFT NOTES: Replace with MTP video when available**
> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4bw1f]

## View the threat analytics dashboard

The threat analytics dashboard ([security.microsoft.com/threatanalytics3](https://security.microsoft.com/threatanalytics3)) highlights the reports that are most relevant to your organization. It summarizes the threats in the following sections:

- **Latest threats**—lists the most recently published or updated threat reports, along with the number of devices with active and resolved alerts.
- **High-impact threats**—lists the threats that have had the highest impact to your organization. This section lists threats with the highest number of devices with active alerts first.
- **Threat summary**—provides the overall impact of all tracked threats by showing the number of threats with active and resolved alerts.

Select a threat from the dashboard to view the report for that threat.

![Image of a threat analytics dashboard](../../media/threat-analytics/ta-dashboard-mtp-small.png)

_Threat analytics dashboard_ 

## View a threat analytics report

Each threat analytics report provides information in several sections: 

- **Overview** 
- **Analyst report**
- **Related incidents**
- **Impacted assets**
- **Prevented email attempts** 
- **Mitigations**

### Overview: Quickly understand the threat, assess its impact, and review defenses

The **Overview** section provides a preview of the detailed analyst report. It also provides charts that highlight the impact of the threat to your organization and your exposure through misconfigured and unpatched devices.

![Image of the overview section of a threat analytics report](../../media/threat-analytics/ta-overview-mtp_small.png)

_Overview section of a threat analytics report_

#### Assess impact to your organization
Each report includes charts designed to provide information about the organizational impact of a threat:
- **Related incidents**—provides an overview of the impact of the tracked threat to your organization with the following data:
  - Number of active alerts and the number of active incidents they are associated with
  - Severity of active incidents
- **Alerts over time**—shows the number of related **Active** and **Resolved** alerts over time. The number of resolved alerts indicates how quickly your organization responds to alerts associated with a threat. Ideally, the chart should be showing alerts resolved within a few days.
- **Impacted assets**—shows the number of distinct devices and email accounts (mailboxes) that currently have at least one active alert associated with the tracked threat. Alerts are triggered for mailboxes that received threat emails. Review both org- and user-level policies for overrides that cause the delivery of threat emails.
- **Prevented email attempts**—shows the number of emails that were either blocked before delivery or delivered to the junk mail folder. These attacks are considered to have been stopped before they arrived.

#### Review security resilience and posture
Each report includes charts that provide an overview of how resilient your organization is against a given threat:
- **Secure configuration status**—shows the number of devices that have applied the recommended security settings that can help mitigate the threat. Devices are considered **Secure** if they have applied _all_ the tracked settings.
- **Vulnerability patching status**—shows the number of devices that have applied security updates or patches that address vulnerabilities exploited by the threat.

### Analyst report: Get expert insight from Microsoft security researchers
In the **Analyst report** section, read through the detailed expert write-up. Most reports provide detailed descriptions of attack chains, including tactics and techniques mapped to the MITRE ATT&CK framework, exhaustive lists of recommendations, and powerful [threat hunting](advanced-hunting-overview.md) guidance.

[Learn more about the analyst report](threat-analytics-analyst-reports.md)

### Related incidents: View and manage related incidents
The **Related incidents** tab provides the list of all incidents related to the tracked threat. You can assign incidents or manage alerts linked to each incident. 

### Impacted assets: Get list of impacted devices and mailboxes
An asset is considered impacted if it is affected by an active, unresolved alert. The **Impacted assets** tab lists the following types of impacted assets:
- **Impacted devices**—endpoints that have unresolved Microsoft Defender for Endpoint alerts. These alerts typically fire on sightings of known threat indicators and activities.
- **Impacted mailboxes**—mailboxes that have received email messages that have triggered Office 365 alerts. While most messages that trigger alerts are typically blocked, user- or org-level policies can override filters.

### Prevented email attempts: View blocked or junked threat emails
Office 365 typically blocks emails with known threat indicators, including malicious links or attachments. In some cases, proactive filtering mechanisms that check for suspicious content will instead send threat emails to the junk mail folder. In either case, the chances of the threat launching malware code on the device is reduced.

The **Prevented email attempts** tab lists all the emails that have either been blocked before delivery or sent to the junk mail folder by Office 365. 

### Mitigations: Review list of mitigations and the status of your devices
In the **Mitigations** section, review the list of specific actionable recommendations that can help you increase your organizational resilience against the threat. The list of tracked mitigations includes:

- **Security updates**—deployment of security updates for Microsoft vulnerabilities on onboarded devices
- **Microsoft Defender Antivirus settings**
  - Cloud-delivered protection  
  - Potentially unwanted application (PUA) protection
  - Real-time protection
 
Mitigation information in this section incorporates data from [threat and vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt), which also provides detailed drill-down information from various links in the report.

![Image of the mitigations section of a threat analytics report](../../media/threat-analytics/ta-mitigations-mtp.png)

_Mitigations section of a threat analytics report_

## Additional report details and limitations
When using the reports, keep these in mind: 

- Data is scoped based on your role-based access control (RBAC) scope. You'll see the status of devices in [groups that you can access](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine-groups).
- Charts reflect only mitigations that are tracked. Check the report overview for additional mitigations that are not shown in the charts.
- Mitigations don't guarantee complete resilience. The provided mitigations reflect the best possible actions needed to improve resiliency.
- Devices are counted as "unavailable" if they have not transmitted data to the service.
- Antivirus-related statistics are based on Microsoft Defender Antivirus settings. Devices with third-party antivirus solutions can appear as "exposed".

## Related topics
- [Proactively find threats with advanced hunting](advanced-hunting-overview.md) 
- [Understand the analyst report section](threat-analytics-analyst-reports.md)
- [Assess and resolve security weaknesses and exposures](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)
