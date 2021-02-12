---
title: Device profile in Microsoft 365 security portal
description: View risk and exposure levels for a device in your organization. Analyze past and present threats, and protect the device with the latest updates.
keywords: security, malware, Microsoft 365, M365, Microsoft Threat Protection, MTP, security center, Microsoft Defender ATP, Office 365 ATP, Azure ATP, device page, device profile,  machine page, machine profile
ms.prod: m365-security
ms.mktglfcycl: deploy
localization_priority: Normal
ms.author: v-maave
author: martyav
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
search.appverid: met150
ms.technology: m365d
---

# Device profile page

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


The Microsoft 365 security portal provides you with device profile pages, so you can quickly assess the health and status of devices on your network.

> [!IMPORTANT]
> The device profile page may appear slightly different, depending on whether the device is enrolled in Microsoft Defender for Endpoint, Microsoft Defender for Identity, or both.

If the device is enrolled in Microsoft Defender for Endpoint, you can also use the device profile page to perform some common security tasks.

## Navigating the device profile page

The profile page is broken up into several broad sections.

![Image of device profile page with (1) Tab area (2) Sidebar and (3) Actions highlighted in red](../../media/mtp-device-profile/hybrid-device-overall.png)

The sidebar (1) lists basic details about the device.

The main content area (2) contains tabs that you can toggle through to view different kinds of information about the device.

If the device is enrolled in Microsoft Defender for Endpoint, you will also see a list of response actions (3). Response actions allow you to perform common security-related tasks.

## Sidebar

Beside the main content area of the device profile page is the sidebar.

![Image of sidebar tab for device profile](../../media/mtp-device-profile/azure-atp-only-device-sidebar.png)

The sidebar lists the device's full name and exposure level. It also provides some important basic information in small subsections which can be toggled open or closed, such as:

* **Tags** - Any Microsoft Defender for Endpoint, Microsoft Defender for Identity, or custom tags associated with the device. Tags from Microsoft Defender for Identity are not editable.
* **Security info** - Open incidents and active alerts. Devices enrolled in Microsoft Defender for Endpoint will also display exposure level and risk level.

> [!TIP]
> Exposure level relates to how much the device is complying with security recommendations, while risk level is calculated based on a number of factors, including the types and severity of active alerts.

* **Device details** - Domain, OS, timestamp for when the device was first seen, IP addresses, resources. Devices enrolled in Microsoft Defender for Endpoint also display health state. Devices enrolled in Microsoft Defender for Identity will display SAM name and a timestamp for when the device was first created.
* **Network activity** - Timestamps for the first time and last time the device was seen on the network.
* **Directory data** (*only for devices enrolled in Microsoft Defender for Identity*) - [UAC](https://docs.microsoft.com/windows/security/identity-protection/user-account-control/user-account-control-overview) flags, [SPNs](https://docs.microsoft.com/windows/win32/ad/service-principal-names), and group memberships.

## Response actions

Response actions offer a quick way to defend against and analyze threats.

![Image of action bar for device profile](../../media/mtp-device-profile/hybrid-device-long-action-bar.png)

> [!IMPORTANT]
> * [Response actions](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts) are only available if the device is enrolled in Microsoft Defender for Endpoint.
> * Devices that are enrolled in Microsoft Defender for Endpoint may display different numbers of response actions, based on the device's OS and version number.

Actions available on the device profile page include:

* **Manage tags** - Updates custom tags you have applied to this device.
* **Isolate device** - Isolates the device from your organization's network while keeping it connected to Microsoft Defender for Endpoint. You can choose to allow Outlook, Teams, and Skype for Business to run while the device is isolated, for communication purposes.
* **Action center** - View the status of submitted actions. Only available if another action has already been selected.
* **Restrict app execution** - Prevents applications that are not signed by Microsoft from running.
* **Run antivirus scan** - Updates Windows Defender Antivirus definitions and immediately runs an antivirus scan. Choose between Quick scan or Full scan.
* **Collect investigation package** - Gathers information about the device. When the investigation is completed, you can download it.
* **Initiate Live Response Session** - Loads a remote shell on the device for [in-depth security investigations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response).
* **Initiate automated investigation** - Automatically [investigates and remediates threats](https://docs.microsoft.com/microsoft-365/security/defender-365-security/office-365-air). Although you can manually trigger automated investigations to run from this page, [certain alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies?view=o365-worldwide#default-alert-policies) trigger automatic investigations on their own.
* **Action center** - Displays information about any response actions that are currently running.

## Tabs section

The device profile tabs allow you to toggle through an overview of security details about the device, and tables containing a list of alerts.

Devices enrolled in Microsoft Defender for Endpoint will also display tabs that feature a timeline, a list of security recommendations, a software inventory, a list of discovered vulnerabilities, and missing KBs (security updates).

### Overview tab

The default tab is **Overview**. It provides a quick look at the most important security fact about the device.

![Image of overview tab for device profile](../../media/mtp-device-profile/hybrid-device-tab-overview.png)

Here, you can get a quick look at the device's active alerts, and any currently logged on users.

If the device is enrolled in Microsoft Defender for Endpoint, you will also see the device's risk level and any available data on security assessments. The security assessments describe the device's exposure level, provide security recommendations, and list affected software and discovered vulnerabilities.

### Alerts tab

The **Alerts** tab contains a list of alerts that have been raised on the device, from both Microsoft Defender for Identity and Microsoft Defender for Endpoint.

![Image of alerts tab for device profile](../../media/mtp-device-profile/hybrid-device-tab-alerts.png)

You can customize the number of items displayed, as well as which columns are displayed for each item. The default behavior is to list thirty items per page.

The columns in this tab include information on the severity of the threat that triggered the alert, as well as status, investigation state, and who the alert has been assigned to.

The *impacted entities* column refers to the device (entity) whose profile you are currently viewing, plus any other devices in your network that are affected.

Selecting an item from this list will open a flyout containing even more information about the selected alert.

This list can be filtered by severity, status, or who the alert has been assigned to.

### Timeline tab

The **Timeline** tab includes an interactive, chronological chart of all events raised on the device. By moving the highlighted area of the chart left or right, you can view events over different periods of time. You can also choose a custom range of dates from the dropdown menu in between the interactive chart and the list of events.

Below the chart is a list of events for the selected range of dates.

![Image of timeline tab for device profile](../../media/mtp-device-profile/hybrid-device-tab-timeline.png)

The number of items displayed and the columns on the list can both be customized. The default columns list the event time, active user, action type, entities (processes), and additional information about the event.

Selecting an item from this list will open a flyout displaying an Event entities graph, showing the parent and child processes involved in the event.

The list can be filtered by the specific kind of event; for example, Registry events or Smart Screen Events.

The list can also be exported to a CSV file, for download. Although the file is not limited by number of events, the maximum time range you can choose to export is seven days.

### Security recommendations tab

The **Security recommendations** tab lists actions you can take to protect the device. Selecting an item on this list will open a flyout where you can get instructions on how to apply the recommendation.

![Image of security recommendations tab for device profile](../../media/mtp-device-profile/hybrid-device-tab-security-recs.png)

As with the previous tabs, the number of items displayed per page, as well as which columns are visible, can be customized.

The default view includes columns that detail the security weaknesses addressed, the associated threat, the related component or software affected by the threat, and more. Items can be filtered by the recommendation's status.

### Software inventory

The **Software inventory** tab lists software installed on the device.

![Image of software inventory tab for device profile](../../media/mtp-device-profile/hybrid-device-tab-software-inventory.png)

The default view displays the software vendor, installed version number, number of known software weaknesses, threat insights, product code, and tags. The number of items displayed and which columns are displayed can both be customized.

Selecting an item from this list opens a flyout containing more details about the selected software, as well as the path and timestamp for the last time the software was found.

This list can be filtered by product code.

### Discovered vulnerabilities tab

The **Discovered vulnerabilities** tab lists any Common Vulnerabilities and Exploits (CVEs) that may affect the device.

![Image of discovered vulnerabilities tab for device profile](../../media/mtp-device-profile/hybrid-device-tab-discovered-vulnerabilities.png)

The default view lists the severity of the CVE, the Common Vulnerability Score (CVS), the software related to the CVE, when the CVE was published, when the CVE was last updated, and threats associated with the CVE.

As with the previous tabs, the number of items displayed and which columns are visible can be customized.

Selecting an item from this list will open a flyout that describes the CVE.

### Missing KBs

The **Missing KBs** tab lists any Microsoft Updates that have yet to be applied to the device. The "KBs" in question are [Knowledge Base articles](https://support.microsoft.com/help/242450/how-to-query-the-microsoft-knowledge-base-by-using-keywords-and-query) which describe these updates; for example, [KB4551762](https://support.microsoft.com/help/4551762/windows-10-update-kb4551762).

![Image of missing kbs tab for device profile](../../media/mtp-device-profile/hybrid-device-tab-missing-kbs.PNG)

The default view lists the bulletin containing the updates, OS version, products affected, CVEs addressed, the KB number, and tags.

The number of items displayed per page and which columns are displayed can be customized.

Selecting an item will open a flyout that links to the update.

## Related topics

* [Microsoft 365 Defender overview](microsoft-threat-protection.md)
* [Turn on Microsoft 365 Defender](mtp-enable.md)
* [Investigate entities on devices, using live response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response)
* [Automated investigation and response (AIR) in Office 365](https://docs.microsoft.com/microsoft-365/security/defender-365-security/office-365-air)
