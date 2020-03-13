---
title: Machine profile in Microsoft 365 security portal
description: View risk and exposure levels for a device in your organization. Analyze past and present threats, and protect the machine with the latest updates.
keywords: security, malware, Microsoft 365, M365, Microsoft Threat Protection, MTP, security center, Microsoft Defender ATP, Office 365 ATP, Azure ATP, machine page, machine list, machine profile
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: lomayor
author: lomayor
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance  
ms.topic: article
search.appverid: met150
---

# Machine profile page

The Microsoft 365 security portal provides you with Machine profile pages, so you can assess the health and status of devices on your network. Each Machine profile page contains a wealth of information about the device.

You can find in-depth information about what software it is running, any past and present security events or alerts, and find links to relevant software patches. You can also use the Machine profile to perform common security-related tasks, and quickly review basic details about the device.

## Navigating the Machine profile page

The Machine profile page can be accessed by directly selecting a device name on the Machines list or by choosing **Open Machine page** on the Machines list flyout.

Once you have the page open, you'll find that it is broken up into two sections.

The sidebar lists basic details about the device.

The main content area contains seven tabs that you can toggle through to view different kinds of information about the machine. There are also action links in this area, for common administrative tasks.

## Tabs

The Machine profile tabs allow you to toggle through an overview of security details about the machine, and tables containing a list of alerts, a timeline, a list of security recommendations, a software inventory, a list of discovered vulnerabilities, and missing KBs (security updates).

### Overview tab

The default tab in the main area of the page presents an overview of the most important security information about that device.

Here, you can find cards a chart of the device's risk level and active alerts, any currently logged on users, a brief list of most and least frequent users, and security assessments that detail the device's exposure level, security recommendations, affected software, and discovered vulnerabilities.

### Alerts tab

The **Alerts** tab contains a list of alerts that have been reported on that device.

You can customize the number of items displayed, as well as which columns are displayed for each item. The default behavior is to list 30 items per page, and have 11 columns toggled on to display.

The columns in this tab include information on the severity of the threat that triggered the alert, as well as status, investigation state, and who if anyone the alert has been assigned to.

Selecting an item from this list will open a link to the selected alert.

This list can be filtered by severity, status, or assignee.

### Timeline tab

The **Timeline** includes a interactive, chronological chart of events raised on the device. By moving the highlighted area of the chart, you can view events over different ranges of time. You can also type in a custom range of dates.

Below the chart is a list of events for that range of time.

The number of items displayed and the columns on the list can both be customized. The default columns list the event time, active user, action type, entities, and additional information about the event.

Selecting an item from the list will open a flyout displaying an Event entities graph, showing the parent and child processes that triggered the event to fire.

This list can be filtered by the specific kind of event; for example, Registry events or Smart Screen Events.

### Security recommendations tab

The **Security recommendations** tab lists actions you can take to protect the device. Selecting an item on this list will open a flyout where you can get instructions on how to apply the recommendation.

As with the previous tabs, the number of items displayed per page and which columns are visible can be customized.

The default view includes columns that detail the security weaknesses addressed, the associated threat, the related component or software affected by the threat, and more. Items can be filtered by the recommendation's status.

### Software inventory

The **Software inventory** tab lists software installed on the device.

The default view displays the software vendor, installed version number, number of known software weaknesses, threat insights, product code, and tags. The number of items displayed and which columns are displayed can both be customized.

Selecting an item from this list opens a flyout containing more details about the selected software, as well as the path and timestamp for the last time the software was found.

This list can be filtered by product code.

### Discovered vulnerabilities tab

The **Discovered vulnerabilities** tab lists any Common Vulnerabilities and Exploits (CVEs) that may affect the device.

The default view lists the severity of the CVE, the Common Vulnerability Score (CVS), the software related to the CVE, when the CVE was published, when the CVE was last updated, and threats associated with the CVE.

As with the previous tabs, the number of items displayed and which columns are visible can be customized.

Selecting an item from this list will open a flyout that describes the CVE.

### Missing KBs

The **Missing KBs** tab lists any Microsoft Updates that have yet to be applied to the machine. The "KBs" in question are [Knowledge Base articles](https://support.microsoft.com/help/242450/how-to-query-the-microsoft-knowledge-base-by-using-keywords-and-query) which describe these updates; for example, [KB4551762](https://support.microsoft.com/en-us/help/4551762/windows-10-update-kb4551762).

The default view lists the bulletin containing the updates, OS version, products affected, CVEs addressed, the KB number, and tags.

The number of items displayed per page and which columns are displayed can be customized.

Selecting an item will open a flyout that links to the update.

## Sidebar

Beside the main content area of the Machine profile page is the sidebar. The sidebar provides some important basic information:

* Name and exposure level of the device, and an icon to indicate if it is currently active
* Any tags associated with the device
* **Security info** - Open incidents, active alerts, exposure level and risk level
* **Device details** - Domain, OS, Asset group, health state, data sensitivity, and IP addresses
* **Network activity** - Timestamps for the first time and last time the device was seen on the network

## Response actions

The actions available to you on the profile page include:

* Manage tags - Updates custom tags you have applied to this device.
* Isolate machine - Isolates the machine from your organization's network while keeping it connected to Microsoft Defender Advanced Threat Protection. You can choose to allow Outlook, Teams, and Skype for Business to run while the machine is isolated, for communication purposes.
* Restrict app execution - Prevents applications that are not signed by Microsoft from running
* Run antivirus scan - Updates Windows Defender Antivirus definitions and immediately runs an antivirus scan. Choose between Quick scan or Full scan.
* Collect investigation package - Gathers information about the machine. When the investigation is completed, you can download it.
* Initiate Live Response session - Loads a remote shell on the machine for [in-depth security investigations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response).
* Initiate automated investigation - Automatically [investigates and remediates threats](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air). You can also set up automated investigations to trigger for certain alerts.

## Related topics

* [Microsoft Threat Protection overview](microsoft-threat-protection.md)
* [Turn on Microsoft Threat Protection](mtp-enable.md)
* [Investigate entities on machines using live response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response)
* [Automated investigation and response (AIR) in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)
