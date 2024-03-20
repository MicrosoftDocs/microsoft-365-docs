---
title: Device entity page in Microsoft Defender
description: View risk and exposure levels for a device in your organization. Analyze past and present threats, and protect the device with the latest updates.
keywords: security, malware, Microsoft 365, M365, Microsoft Defender XDR, Microsoft Sentinel, security center, Microsoft Defender for Endpoint, Microsoft Defender for Office 365, Microsoft Defender for Identity, device page, device profile,  machine page, machine profile
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
search.appverid: met150
ms.date: 03/20/2024
appliesto: Microsoft Defender XDR and Microsoft Sentinel in the Microsoft Defender portal
---

<!-- redirected from device-profile.md -->

# Device entity page in Microsoft Defender

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

The device entity page in the Microsoft Defender portal helps you in your investigation of device entities. The page contains all the important information about a given device entity. If an alert or incident indicates that a device is behaving suspiciously or might be compromised, investigate the details of the device to identify other behaviors or events that might be related to the alert or incident, and discover the potential scope of the breach. You can also use the device entity page to perform some common security tasks, as well as some response actions to mitigate or remediate security threats.

> [!IMPORTANT]
> The content set displayed on the device entity page may differ slightly, depending on the device's enrollment in Microsoft Defender for Endpoint and Microsoft Defender for Identity.
>
> If your organization onboarded Microsoft Sentinel to the Defender portal, additional information will appear.
> 
> In Microsoft Sentinel, device entities are also known as **host** entities. [Learn more](/azure/sentinel/entities-reference).

Device entities can be found in the following areas:

- Devices list, under **Assets**
- Alerts queue
- Any individual alert/incident
- Any individual user entity page
- Any individual file details view
- Any IP address or domain details view
- Activity log
- Advanced hunting queries
- Action center

You can select devices whenever you see them in the portal to open the device's entity page, which displays more details about the device. For example, you can see the details of devices listed in the alerts of an incident in the Microsoft Defender portal at **Incidents & alerts > Incidents > *incident* > Assets > Devices**.

:::image type="content" source="../../media/entity-page-device/device-incident-assets.png" alt-text="The Users page for an incident in the Microsoft Defender portal.":::

The device entity page presents its information in a tabbed format. This article lays out the types of information available in each tab, and also the actions you can take on a given device.

The following tabs are displayed on the device entity page:

- [Overview](#overview-tab)
- [Incidents and alerts](#incidents-and-alerts-tab)
- [Timeline](#timeline-tab)
- [Security recommendations](#security-recommendations-tab)
- [Inventories](#inventories-tab)
- [Discovered vulnerabilities](#discovered-vulnerabilities-tab)
- [Missing KBs](#missing-kbs)
- [Security baselines](#security-baselines-tab)
- [Security policies](#security-policies-tab)
- [Sentinel events](#sentinel-events-tab)

## Entity page header

The topmost section of the entity page includes the following details:

- **Entity name**
- **Risk severity**, **criticality**, and **device value** indicators
- **Tags** by which the device can be classified. Can be added by Defender for Endpoint, Defender for Identity, or by users. Tags from Microsoft Defender for Identity aren't editable.
- **[Response actions](#response-actions)** are also located here. Read more about them below.

## *Overview* tab

The default tab is **Overview**. It provides a quick look at the most important security facts about the device.
The **Overview** tab contains the [device details](#device-details) sidebar and a [dashboard](#dashboard) with some cards displaying high-level information.

### Device details

The sidebar lists the device's full name and exposure level. It also provides some important basic information in small subsections, which can be expanded or collapsed, such as:

| Section | Included information |
| ------- | -------------------- |
| **VM details** | Machine and domain names and IDs, health and onboarding statuses, timestamps for first and last seen, IP addresses, and more |
| **DLP policy sync details** | If relevant |
| **Configuration status** | Details regarding Microsoft Defender for Endpoint configuration |
| **Cloud resource details** | Cloud platform, resource ID, subscription information, and more |
| **Hardware and firmware** | VM, processor, and BIOS information, and more |
| **Device management** | Microsoft Defender for Endpoint enrollment status and management info |
| **Directory data** |  [UAC](/windows/security/identity-protection/user-account-control/user-account-control-overview) flags, [SPNs](/windows/win32/ad/service-principal-names), and group memberships. |

### Dashboard

The main part of the **Overview** tab shows several dashboard-type display cards:

- **Active alerts** and risk level involving the device over the last six months, grouped by severity
- **Security assessments** and exposure level of the device
- **Logged on users** on the device over the last 30 days
- **Device health status** and other information on the most recent scans of the device.

 > [!TIP]
 > Exposure level relates to how much the device is complying with security recommendations, while risk level is calculated based on a number of factors, including the types and severity of active alerts.

:::image type="content" source="../../media/entity-page-device/entity-device-overview-tab.png" alt-text="The Overview tab for the device entity page in the Microsoft Defender portal." lightbox="../../media/entity-page-device/entity-device-overview-tab.png":::

## *Incidents and alerts* tab

The **Incidents and alerts** tab contains a list of incidents that contain alerts that have been raised on the device, from both Microsoft Defender for Identity and Microsoft Defender for Endpoint, and, if onboarded, from Microsoft Sentinel. This list is a filtered version of the [incidents queue](incidents-overview.md), and shows a short description of the incident or alert, its severity (high, medium, low, informational), its status in the queue (new, in progress, resolved), its classification (not set, false alert, true alert), investigation state, category, who is assigned to address it, and last activity observed.

You can customize the number of items displayed and which columns are displayed for each item. The default behavior is to list 30 items per page. You can also filter the alerts by severity, status, or any other column in the display.

The *impacted entities* column refers to all the device and user entities referenced in the incident or alert.

When an incident or alert is selected, a fly-out appears. From this panel you can manage the incident or alert and view more details such as incident/alert number and related devices. Multiple alerts can be selected at a time.

To see a full page view of an incident or alert, select its title.

:::image type="content" source="../../media/entity-page-device/entity-device-incidents-tab.png" alt-text="The Incidents and alerts tab for the device entity page in the Microsoft Defender portal." lightbox="../../media/entity-page-device/entity-device-incidents-tab.png":::

## *Timeline* tab

The **Timeline** tab includes an interactive, chronological chart of all events raised on the device. By moving the highlighted area of the chart left or right, you can view events over different periods of time. You can also choose a custom range of dates from the dropdown menu in between the interactive chart and the list of events.

Below the chart is a list of events for the selected range of dates.

:::image type="content" source="../../media/entity-page-device/entity-device-timeline-tab.png" alt-text="The Timeline tab for the device entity page in the Microsoft Defender portal." lightbox="../../media/entity-page-device/entity-device-timeline-tab.png":::

The number of items displayed and the columns on the list can both be customized. The default columns list the event time, active user, action type, entities (processes), and additional information about the event.

Selecting an item from this list opens a flyout displaying an Event entities graph, showing the parent and child processes involved in the event.

The list can be filtered by the specific event; for example, Registry events or Smart Screen Events.

The list can also be exported to a CSV file, for download. Although the file isn't limited by number of events, the maximum time range you can choose to export is seven days.

### Security recommendations tab

The **Security recommendations** tab lists actions you can take to protect the device. Selecting an item on this list opens a flyout where you can get instructions on how to apply the recommendation.

:::image type="content" source="../../media/mtp-device-profile/hybrid-device-tab-security-recs.png" alt-text="The Security recommendations tab for device profile in the Microsoft Defender portal" lightbox="../../media/mtp-device-profile/hybrid-device-tab-security-recs.png":::

As with the previous tabs, the number of items displayed per page and which columns are visible, can be customized.

The default view includes columns that detail the security weaknesses addressed, the associated threat, the related component or software affected by the threat, and more. Items can be filtered by the recommendation's status.

### Software inventory

The **Software inventory** tab lists software installed on the device.

:::image type="content" source="../../media/mtp-device-profile/hybrid-device-tab-software-inventory.png" alt-text="The Software inventory tab for device profile in the Microsoft Defender portal" lightbox="../../media/mtp-device-profile/hybrid-device-tab-software-inventory.png":::

The default view displays the software vendor, installed version number, number of known software weaknesses, threat insights, product code, and tags. The number of items displayed and which columns are displayed can both be customized.

Selecting an item from this list opens a flyout containing more details about the selected software, and the path and timestamp for the last time the software was found.

This list can be filtered by product code.

### Discovered vulnerabilities tab

The **Discovered vulnerabilities** tab lists any Common Vulnerabilities and Exploits (CVEs) that may affect the device.

:::image type="content" source="../../media/mtp-device-profile/hybrid-device-tab-discovered-vulnerabilities.png" alt-text="The Discovered vulnerabilities tab for device profile in the Microsoft Defender portal" lightbox="../../media/mtp-device-profile/hybrid-device-tab-discovered-vulnerabilities.png":::

The default view lists the severity of the CVE, the Common Vulnerability Score (CVS), the software related to the CVE, when the CVE was published, when the CVE was last updated, and threats associated with the CVE.

As with the previous tabs, the number of items displayed and which columns are visible can be customized.

Selecting an item from this list opens a flyout that describes the CVE.

### Missing KBs

The **Missing KBs** tab lists any Microsoft Updates that have yet to be applied to the device. The "KBs" in question are [Knowledge Base articles](https://support.microsoft.com/help/242450/how-to-query-the-microsoft-knowledge-base-by-using-keywords-and-query), which describe these updates; for example, [KB4551762](https://support.microsoft.com/help/4551762/windows-10-update-kb4551762).

:::image type="content" source="../../media/mtp-device-profile/hybrid-device-tab-missing-kbs.PNG" alt-text="The Missing KBs tab for device profile in the Microsoft Defender portal" lightbox="../../media/mtp-device-profile/hybrid-device-tab-missing-kbs.PNG":::

The default view lists the bulletin containing the updates, OS version, products affected, CVEs addressed, the KB number, and tags.

The number of items displayed per page and which columns are displayed can be customized.

Selecting an item opens a flyout that links to the update.

## Response actions

Response actions offer shortcuts to analyze, investigate, and defend against threats.

:::image type="content" source="../../media/mtp-device-profile/hybrid-device-long-action-bar.png" alt-text="The Action bar for device profile in the Microsoft Defender portal" lightbox="../../media/mtp-device-profile/hybrid-device-long-action-bar.png":::

> [!IMPORTANT]
> - [Response actions](/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts) are only available if the device is enrolled in Microsoft Defender for Endpoint.
> - Devices that are enrolled in Microsoft Defender for Endpoint may display different numbers of response actions, based on the device's OS and version number.

Response actions run along the top of a specific device page and include:

| Action | Description |
| ------ | ----------- |
| **Device value** |  |
| **Set criticality** |  |
| **Manage tags** | Updates custom tags you've applied to this device. |
| **Report device inaccuracy** |  |
| **Run Antivirus Scan** | Updates Microsoft Defender Antivirus definitions and immediately runs an antivirus scan. Choose between Quick scan or Full scan. |
| **Collect Investigation Package** | Gathers information about the device. When the investigation is completed, you can download it. |
| **Restrict app execution** | Prevents applications that aren't signed by Microsoft from running. |
| **Initiate automated investigation** | Automatically [investigates and remediates threats](../office-365-security/air-about.md). Although you can manually trigger automated investigations to run from this page, [certain alert policies](../../compliance/alert-policies.md#default-alert-policies) trigger automatic investigations on their own. |
| **Initiate Live Response Session** | Loads a remote shell on the device for [in-depth security investigations](/microsoft-365/security/defender-endpoint/live-response). |
| **Isolate device** | Isolates the device from your organization's network while keeping it connected to Microsoft Defender. You can choose to allow Outlook, Teams, and Skype for Business to run while the device is isolated, for communication purposes. |
| **Ask Defender Experts** |  |
| **Action Center** | Displays information about any response actions that are currently running. Only available if another action has already been selected. |
| **Download force release from isolation script** |  |
| **Exclude** |  |
| **Go hunt** |  |
| **Turn on troubleshooting mode** |  |
| **Policy sync** |  |

## Related topics

- [Microsoft Defender XDR overview](microsoft-365-defender.md)
- [Turn on Microsoft Defender XDR](m365d-enable.md)
- [Investigate entities on devices, using live response](../defender-endpoint/live-response.md)
- [Automated investigation and response (AIR) in Office 365](../office-365-security/air-about.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
