---
title: Microsoft Defender for Endpoint portal overview
description: Microsoft 365 Defender can monitor your enterprise network and assist in responding to potential advanced persistent threats (APT) or data breaches.
keywords: Microsoft 365 Defender, portal, cybersecurity threat intelligence, dashboard, alerts queue, devices list, settings, device management, advanced attacks
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.technology: mde
---

# Microsoft 365 Defender portal overview

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-portaloverview-abovefoldlink)

Enterprise security teams can use Microsoft 365 Defender to monitor and assist in responding to alerts of potential advanced persistent threat activity or data breaches.

You can use <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> to:

- View, sort, and triage alerts from your endpoints
- Search for more information on observed indicators such as files and IP Addresses
- Change Microsoft Defender for Endpoint settings, including time zone and review licensing information

## Microsoft 365 Defender

When you open the portal, you'll see:

- (1) Navigation pane (select the horizontal lines at the top of the navigation pane to show or hide it)
- (2) Search, Community center, Localization, Help and support, Feedback

 ![Microsoft Defender for Endpoint portal.](images/mdatp-portal-overview.png)

> [!NOTE]
> Malware related detections will only appear if your devices are using Microsoft Defender Antivirus as the default real-time protection antimalware product.

You can navigate through the portal using the menu options available in all sections. Refer to the following table for a description of each section.

Area|Description
:---|:---
**(1) Navigation pane** | Use the navigation pane to move between **Dashboards**, **Incidents**, **Devices list**, **Alerts queue**, **Automated investigations**, **Advanced hunting**, **Reports**, **Partners & APIs**, **Threat & Vulnerability Management**, **Evaluation and tutorials**, **Service health**, **Configuration management**, and **Settings**. Select the horizontal lines at the top of the navigation pane to show or hide it.
**Dashboards** | Access the active automated investigations, active alerts, automated investigations statistics, devices at risk, users at risk, devices with sensor issues, service health, detection sources, and daily devices reporting dashboards.
**Incidents** | View alerts that have been aggregated as incidents.
**Devices list** | Displays the list of devices that are onboarded to Defender for Endpoint, some information about them, and their exposure and risk levels.
**Alerts queue** | View alerts generated from devices in your organizations.
**Automated investigations** | Displays automated investigations that have been conducted in the network, triggering alert, the status of each investigation and other details such as when the investigation started and the duration of the investigation.
**Advanced hunting** | Advanced hunting allows you to proactively hunt and investigate across your organization using a powerful search and query tool.
**Reports** | View graphs detailing threat protection, device health and compliance, web protection, and vulnerability.
**Partners & APIs** | View supported partner connections, which enhance the detection, investigation, and threat intelligence capabilities of the platform. You can also view connected applications, the API explorer, API usage overview, and data export settings.
**Threat & Vulnerability management** | View your Microsoft Secure Score for Devices, exposure score, exposed devices, vulnerable software, and take action on top security recommendations.
**Evaluation and tutorials** | Manage test devices, attack simulations, and reports. Learn and experience the Defender for Endpoint capabilities through a guided walk-through in a trial environment.
**Service health** | Provides information on the current status of the Defender for Endpoint service. You'll be able to verify that the service health is healthy or if there are current issues.
**Configuration management** | Displays on-boarded devices, your organizations' security baseline, predictive analysis, web protection coverage, and allows you to perform attack surface management on your devices.
**Settings** | Shows the settings you selected during onboarding and lets you update your industry preferences and retention policy period. You can also set other configuration settings such as permissions, APIs, rules, device management, IT service management, and network assessments.
**(2) Search, Community center, Localization, Help and support, Feedback** |  Search by device, file, user, URL, IP, vulnerability, software, and recommendation. Search supports the use of SHA1 and SHA256 cryptographic hash formats. <p> **Community center** - Access the Community center to learn, collaborate, and share experiences about the product. <p> **Localization** - Set time zones. <p> **Help and support** - Access the Defender for Endpoint guide, Microsoft and Microsoft Premier support, license information, simulations & tutorials, Defender for Endpoint evaluation lab, consult a threat expert. <p> **Feedback** - Provide comments about what you like or what we can do better.

> [!NOTE]
>
> For devices with high resolution DPI scaling issues, please see [Windows scaling issues for high-DPI devices](https://support.microsoft.com/help/3025083/windows-scaling-issues-for-high-dpi-devices) for possible solutions.

## Microsoft Defender for Endpoint icons

The following table provides information on the icons used all throughout the portal:

Icon|Description
:---|:---
![ATP logo icon.](images/atp-logo-icon.png)|Microsoft Defender for Endpoint logo
![Alert icon.](images/alert-icon.png)|Alert: Indication of an activity correlated with advanced attacks.
![Detection icon.](images/detection-icon.png)|Detection: Indication of a malware threat detection.
![Active threat icon.](images/active-threat-icon.png)|Active threat: Threats actively executing at the time of detection.
![Remediated icon1.](images/remediated-icon.png)|Remediated: Threat removed from the device.
![Not remediated icon.](images/not-remediated-icon.png)|Not remediated: Threat not removed from the device.
![Thunderbolt icon.](images/atp-thunderbolt-icon.png)|Indicates events that triggered an alert in the **Alert process tree**.
![Device icon.](images/atp-machine-icon.png)|Device icon
![Microsoft Defender AV events icon.](images/atp-windows-defender-av-events-icon.png)|Microsoft Defender Antivirus events
![Application Guard events icon.](images/atp-Application-Guard-events-icon.png)|Windows Defender Application Guard events
![Device Guard events icon.](images/atp-Device-Guard-events-icon.png)|Windows Defender Device Guard events
![Exploit Guard events icon.](images/atp-Exploit-Guard-events-icon.png)|Windows Defender Exploit Guard events
![SmartScreen events icon.](images/atp-Smart-Screen-events-icon.png)|Windows Defender SmartScreen events
![Firewall events icon.](images/atp-Firewall-events-icon.png)|Windows Firewall events
![Response action icon.](images/atp-respond-action-icon.png)|Response action
![Process events icon.](images/atp-process-event-icon.png)|Process events
![Network communication events icon.](images/atp-network-communications-icon.png)|Network events
![File observed events icon.](images/atp-file-observed-icon.png)|File  events
![Registry events icon.](images/atp-registry-event-icon.png)|Registry events
![Module load DLL events icon.](images/atp-module-load-icon.png)|Load DLL events
![Other events icon.](images/atp-Other-events-icon.png)|Other events
![Access token modification icon.](images/atp-access-token-modification-icon.png)|Access token modification
![File creation icon.](images/atp-file-creation-icon.png)|File creation
![Signer icon.](images/atp-signer-icon.png)|Signer
![File path icon.](images/atp-File-path-icon.png)|File path
![Command line icon.](images/atp-command-line-icon.png)|Command line
![Unsigned file icon.](images/atp-unsigned-file-icon.png)|Unsigned file
![Process tree icon.](images/atp-process-tree.png)|Process tree
![Memory allocation icon.](images/atp-memory-allocation-icon.png)|Memory allocation
![Process injection icon.](images/atp-process-injection.png)|Process injection
![PowerShell command run icon.](images/atp-powershell-command-run-icon.png)|PowerShell command run
![Community center icon.](images/atp-community-center.png)|Community center
![Notifications icon.](images/atp-notifications.png)|Notifications
![No threats found.](images/no-threats-found.png)|Automated investigation - no threats found
![Failed icon.](images/failed.png)|Automated investigation - failed
![Partially remediated icon.](images/partially-investigated.png)|Automated investigation - partially investigated
![Terminated by system.](images/terminated-by-system.png)|Automated investigation - terminated by system
![Pending icon.](images/pending.png)|Automated investigation - pending
![Running icon.](images/running.png)|Automated investigation - running
![Remediated icon2.](images/remediated.png)|Automated investigation - remediated
![Partially investigated icon.](images/partially_remediated.png)|Automated investigation - partially remediated
![Threat insights icon.](images/tvm_bug_icon.png)|Threat & Vulnerability Management - threat insights
![Possible active alert icon.](images/tvm_alert_icon.png)|Threat & Vulnerability Management - possible active alert
![Recommendation insights icon.](images/tvm_insight_icon.png)|Threat & Vulnerability Management - recommendation insights

## Related topics

- [Overview of Microsoft 365 Defender](use.md)
- [View the Security operations dashboard](security-operations-dashboard.md)
- [View the Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)
- [View the Threat analytics dashboard and take recommended mitigation actions](threat-analytics.md)
