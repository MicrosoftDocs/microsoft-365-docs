---
title: Machine profile in Microsoft 365 security portal
description: View risk and exposure levels for a device in your organization. Analyze past and present threats, and protect the device with the latest updates.
keywords: security, malware, Microsoft 365, M365, Microsoft Threat Protection, MTP, security center, Microsoft Defender ATP, Office 365 ATP, Azure ATP, machine page, machine profile
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: v-maave
author: martyav
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance  
ms.topic: article
search.appverid: met150
---

# Machine profile page

The Microsoft 365 security portal provides you with Machine profile pages, so you can quickly assess the health and status of devices on your network.

The page displays a wealth of information, gathered from [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) (Microsoft Defender ATP), and from the cloud-based [Azure Advanced Threat Protection](https://docs.microsoft.com/azure-advanced-threat-protection/what-is-atp) (Azure ATP) platform.

> [!IMPORTANT]
> The machine profile page may appear slightly different, depending on whether the device is enrolled in Microsoft Defender ATP, Azure ATP, or both.

On the Machine profile, you can view security alerts, as well as many details about the device, such as which operating system it is running or which users have logged in to use it.

If the device is enrolled in Microsoft Defender ATP, you can also use the Machine profile page to perform some common security tasks, such as patching the device against vulnerabilities.

## Navigating the Machine profile page

You can access the Machine profile page for any device, by selecting the device name from the Incidents list, Incidents overview page, or the Incidents list flyout.

The profile page is broken up into several broad sections.

![Image of machine profile page with (1) Tab area (2) Sidebar and (3) Actions highlighted in red](../../media/mtp-machine-profile/hybrid-device-overall.PNG)

The sidebar (1) lists basic details about the device.

The main content area (2) contains tabs that you can toggle through to view different kinds of information about the device.

If the device is enrolled in Microsoft Defender ATP, you will also see a list of response actions (3). Response actions allow you to perform common security-related tasks.

## Sidebar

Beside the main content area of the Machine profile page is the sidebar.

![Image of sidebar tab for Machine profile](../../media/mtp-machine-profile/azure-atp-only-device-sidebar.PNG)

The sidebar provides some important basic information in small subsections which can be toggled open or closed, such as:

* **Tags** - Any Microsoft Defender ATP, Azure ATP, or user-defined tags associated with the device.
* **Security info** - Open incidents and active alerts. Devices enrolled in Microsoft Defender ATP will also display exposure level and risk level.
* **Device details** - Domain, OS, timestamp for when the device was first seen, IP addresses, resources. Devices enrolled in Microsoft Defender ATP also display health state. Devices enrolled in Azure ATP will display SAM name and a timestamp for when the device was first created.
* **Network activity** - Timestamps for the first time and last time the device was seen on the network.
* **Directory data** (*only for devices enrolled in Azure ATP*) - [UAC](https://docs.microsoft.com/windows/security/identity-protection/user-account-control/user-account-control-overview) flags, [SPNs](https://docs.microsoft.com/windows/win32/ad/service-principal-names), and group memberships.

## Response actions

Response actions offer a quick way to defend against and analyze threats. These actions are only available if the device is enrolled in Microsoft Defender ATP.

![Image of action bar for Machine profile](../../media/mtp-machine-profile/hybrid-device-action-bar.PNG)

> [!IMPORTANT]
> Devices that aren't enrolled in Microsoft Defender ATP won't have any response actions listed in their Machine profiles.

Devices that are enrolled in Microsoft Defender ATP will display the following response actions:

* **Manage tags** - Updates custom tags you have applied to this device.
* **Isolate machine** - Isolates the device from your organization's network while keeping it connected to Microsoft Defender Advanced Threat Protection. You can choose to allow Outlook, Teams, and Skype for Business to run while the machine is isolated, for communication purposes.
* **Action center** - View the status of submitted actions. Only available if another action has already been selected.
* **Restrict app execution** - Prevents applications that are not signed by Microsoft from running
* **Run antivirus scan** - Updates Windows Defender Antivirus definitions and immediately runs an antivirus scan. Choose between Quick scan or Full scan.
* **Collect investigation package** - Gathers information about the device. When the investigation is completed, you can download it.
* **Initiate Live Response Session** - Loads a remote shell on the device for [in-depth security investigations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response).
* **Initiate automated investigation** - Automatically [investigates and remediates threats](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air). Although you can manually trigger automated investigations to run from this page, [certain alert policies](https://docs.microsoft.com/microsoft-365/compliance/alert-policies?view=o365-worldwide#default-alert-policies) trigger automatic investigations on their own.
* **Action center** - Displays information about any response actions that are currently running.

## Tabs section

The Machine profile tabs allow you to toggle through an overview of security details about the device, and tables containing a list of alerts.

Devices enrolled in Microsoft Defender ATP will also display tabs that feature a timeline, a list of security recommendations, a software inventory, a list of discovered vulnerabilities, and missing KBs (security updates).

### Overview tab

The default tab is **Overview**. It provides a quick look at the most important security fact about the device.

![Image of overview tab for Machine profile](../../media/mtp-machine-profile/hybrid-device-tab-overview.png)

Here, you can get a quick look at the device's active alerts, and any currently logged on users.

If the device is enrolled in Microsoft Defender ATP, you will also see the device's risk level and any available data on security assessments. The security assessments describe the device's exposure level, provide security recommendations, and list affected software and discovered vulnerabilities.

### Alerts tab

The **Alerts** tab contains a list of alerts that have been raised on the device.

![Image of alerts tab for Machine profile](../../media/mtp-machine-profile/hybrid-device-tab-alerts.png)

You can customize the number of items displayed, as well as which columns are displayed for each item. The default behavior is to list thirty items per page.

The columns in this tab include information on the severity of the threat that triggered the alert, as well as status, investigation state, and who the alert has been assigned to.

The *impacted entities* column refers to the device (entity) whose profile you are currently viewing, plus any other devices in your network that are affected.

Selecting an item from this list will open a flyout containing even more information about the selected alert.

This list can be filtered by severity, status, or who the alert has been assigned to.

### Timeline tab

The **Timeline** tab includes an interactive, chronological chart of all events raised on the device. By moving the highlighted area of the chart left or right, you can view events over different periods of time. You can also choose a custom range of dates from the dropdown menu in between the interactive chart and the list of events.

Below the chart is a list of events for the selected range of dates.

![Image of timeline tab for Machine profile](../../media/mtp-machine-profile/hybrid-device-tab-timeline.png)

The number of items displayed and the columns on the list can both be customized. The default columns list the event time, active user, action type, entities (processes), and additional information about the event.

Selecting an item from this list will open a flyout displaying an Event entities graph, showing the parent and child processes involved in the event.

The list can be filtered by the specific kind of event; for example, Registry events or Smart Screen Events.

The list can also be exported to a CSV file, for download. Although the file is not limited by number of events, the maximum time range you can choose to export is seven days.

### Security recommendations tab

The **Security recommendations** tab lists actions you can take to protect the device. Selecting an item on this list will open a flyout where you can get instructions on how to apply the recommendation.

![Image of security recommendations tab for Machine profile](../../media/mtp-machine-profile/hybrid-device-tab-security-recs.png)

As with the previous tabs, the number of items displayed per page, as well as which columns are visible, can be customized.

The default view includes columns that detail the security weaknesses addressed, the associated threat, the related component or software affected by the threat, and more. Items can be filtered by the recommendation's status.

### Software inventory

The **Software inventory** tab lists software installed on the device.

![Image of software inventory tab for Machine profile](../../media/mtp-machine-profile/hybrid-device-tab-software-inventory.png)

The default view displays the software vendor, installed version number, number of known software weaknesses, threat insights, product code, and tags. The number of items displayed and which columns are displayed can both be customized.

Selecting an item from this list opens a flyout containing more details about the selected software, as well as the path and timestamp for the last time the software was found.

This list can be filtered by product code.

### Discovered vulnerabilities tab

The **Discovered vulnerabilities** tab lists any Common Vulnerabilities and Exploits (CVEs) that may affect the device.

![Image of discovered vulnerabilities tab for Machine profile](../../media/mtp-machine-profile/hybrid-device-tab-discovered-vulnerabilities.png)

The default view lists the severity of the CVE, the Common Vulnerability Score (CVS), the software related to the CVE, when the CVE was published, when the CVE was last updated, and threats associated with the CVE.

As with the previous tabs, the number of items displayed and which columns are visible can be customized.

Selecting an item from this list will open a flyout that describes the CVE.

### Missing KBs

The **Missing KBs** tab lists any Microsoft Updates that have yet to be applied to the device. The "KBs" in question are [Knowledge Base articles](https://support.microsoft.com/help/242450/how-to-query-the-microsoft-knowledge-base-by-using-keywords-and-query) which describe these updates; for example, [KB4551762](https://support.microsoft.com/help/4551762/windows-10-update-kb4551762).

![Image of missing kbs tab for Machine profile](../../media/mtp-machine-profile/hybrid-device-tab-missing-kbs.PNG)

The default view lists the bulletin containing the updates, OS version, products affected, CVEs addressed, the KB number, and tags.

The number of items displayed per page and which columns are displayed can be customized.

Selecting an item will open a flyout that links to the update.

## Related topics

* [Microsoft Threat Protection overview](microsoft-threat-protection.md)
* [Turn on Microsoft Threat Protection](mtp-enable.md)
* [Investigate entities on devices, using live response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response)
* [Automated investigation and response (AIR) in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)
