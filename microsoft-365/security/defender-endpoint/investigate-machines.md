---
title: Investigate devices in the Defender for Endpoint Devices list
description: Investigate affected devices by reviewing alerts, network connection information, adding device tags and groups, and checking the service health.
keywords: devices, tags, groups, endpoint, alerts queue, alerts, device name, domain, last seen, internal IP, active alerts, threat category, filter, sort, review alerts, network, connection, type, password stealer, ransomware, exploit, threat, low severity, service health
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: article
ms.technology: mde
---

# Investigate devices in the Microsoft Defender for Endpoint Devices list

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-investigatemachines-abovefoldlink)

Investigate the details of an alert raised on a specific device to identify other behaviors or events that might be related to the alert or the potential scope of the breach.

> [!NOTE]
> As part of the investigation or response process, you can collect an investigation package from a device. Here's how: [Collect investigation package from devices](/microsoft-365/security/defender-endpoint/respond-machine-alerts#collect-investigation-package-from-devices).

You can click on affected devices whenever you see them in the portal to open a detailed report about that device. Affected devices are identified in the following areas:

- [Devices list](investigate-machines.md)
- [Alerts queue](alerts-queue.md)
- [Security operations dashboard](security-operations-dashboard.md)
- Any individual alert
- Any individual file details view
- Any IP address or domain details view

When you investigate a specific device, you'll see:

- Device details
- Response actions
- Tabs (overview, alerts, timeline, security recommendations, software inventory, discovered vulnerabilities, missing KBs)
- Cards (active alerts, logged on users, security assessment)

![Image of device view.](images/specific-device.png)

> [!NOTE]
> Due to product constrains, the device profile does not consider all cyber evidence when determining the 'Last Seen' timeframe (as seen on the device page as well).
> For example, the 'Last seen' value in the Device page may show an older time frame even though more recent alerts or data is available in the machine's timeline.

## Device details

The device details section provides information such as the domain, OS, and health state of the device. If there's an investigation package available on the device, you'll see a link that allows you to download the package.

## Response actions

Response actions run along the top of a specific device page and include:

- Manage tags
- Isolate device
- Restrict app execution
- Run antivirus scan
- Collect investigation package
- Initiate Live Response Session
- Initiate automated investigation
- Consult a threat expert
- Action center

You can take response actions in the Action center, in a specific device page, or in a specific file page.

For more information on how to take action on a device, see [Take response action on a device](respond-machine-alerts.md).

For more information, see [Investigate user entities](investigate-user.md).

## Tabs

The tabs provide relevant security and threat prevention information related to the device. In each tab, you can customize the columns that are shown by selecting **Customize columns** from the bar above the column headers.

### Overview

The **Overview** tab displays the [cards](#cards) for active alerts, logged on users, and security assessment.

![Image of overview tab on the device page.](images/overview-device.png)

### Alerts

The **Alerts** tab provides a list of alerts that are associated with the device. This list is a filtered version of the [Alerts queue](alerts-queue.md), and shows a short description of the alert, severity (high, medium, low, informational), status in the queue (new, in progress, resolved), classification (not set, false alert, true alert), investigation state, category of alert, who is addressing the alert, and last activity. You can also filter the alerts.

![Image of alerts related to the device.](images/alerts-device.png)

When the circle icon to the left of an alert is selected, a fly-out appears. From this panel you can manage the alert and view more details such as incident number and related devices. Multiple alerts can be selected at a time.

To see a full page view of an alert including incident graph and process tree, select the title of the alert.

### Timeline

The **Timeline** tab provides a chronological view of the events and associated alerts that have been observed on the device. This can help you correlate any events, files, and IP addresses in relation to the device.

The timeline also enables you to selectively drill down into events that occurred within a given time period. You can view the temporal sequence of events that occurred on a device over a selected time period. To further control your view, you can filter by event groups or customize the columns.

> [!NOTE]
> For firewall events to be displayed, you'll need to enable the audit policy, see [Audit Filtering Platform connection](/windows/security/threat-protection/auditing/audit-filtering-platform-connection).
>
> Firewall covers the following events:
>
> - [5025](/windows/security/threat-protection/auditing/event-5025) - firewall service stopped
> - [5031](/windows/security/threat-protection/auditing/event-5031) - application blocked from accepting incoming connections on the network
> - [5157](/windows/security/threat-protection/auditing/event-5157) - blocked connection

![Image of device timeline with events.](images/timeline-device.png)

Some of the functionality includes:

- Search for specific events
  - Use the search bar to look for specific timeline events.
- Filter events from a specific date
  - Select the calendar icon in the upper left of the table to display events in the past day, week, 30 days, or custom range. By default, the device timeline is set to display the events from the past 30 days.
  - Use the timeline to jump to a specific moment in time by highlighting the section. The arrows on the timeline pinpoint automated investigations
- Export detailed device timeline events
  - Export the device timeline for the current date or a specified date range up to seven days.

More details about certain events are provided in the **Additional information** section. These details vary depending on the type of event, for example:

- Contained by Application Guard - the web browser event was restricted by an isolated container
- Active threat detected - the threat detection occurred while the threat was running
- Remediation unsuccessful - an attempt to remediate the detected threat was invoked but failed
- Remediation successful - the detected threat was stopped and cleaned
- Warning bypassed by user - the Windows Defender SmartScreen warning was dismissed and overridden by a user
- Suspicious script detected - a potentially malicious script was found running
- The alert category - if the event led to the generation of an alert, the alert category  ("Lateral Movement", for example) is provided

#### Event details

Select an event to view relevant details about that event. A panel displays to show general event information. When applicable and data is available, a graph showing related entities and their relationships are also shown.

To further inspect the event and related events, you can quickly run an [advanced hunting](advanced-hunting-overview.md) query by selecting **Hunt for related events**. The query will return the selected event and the list of other events that occurred around the same time on the same endpoint.

![Image of the event details panel.](images/event-details.png)

### Security recommendations

**Security recommendations** are generated from Microsoft Defender for Endpoint's [Threat & Vulnerability Management](tvm-dashboard-insights.md) capability. Selecting a recommendation will show a panel where you can view relevant details such as description of the recommendation and the potential risks associated with not enacting it. See [Security recommendation](tvm-security-recommendation.md) for details.

![Image of security recommendations tab.](images/security-recommendations-device.png)

### Software inventory

The **Software inventory** tab lets you view software on the device, along with any weaknesses or threats. Selecting the name of the software will take you to the software details page where you can view security recommendations, discovered vulnerabilities, installed devices, and version distribution. See [Software inventory](tvm-software-inventory.md) for details

![Image of software inventory tab.](images/software-inventory-device.png)

### Discovered vulnerabilities

The **Discovered vulnerabilities** tab shows the name, severity, and threat insights of discovered vulnerabilities on the device. Selecting specific vulnerabilities will show a description and details.

![Image of discovered vulnerabilities tab.](images/discovered-vulnerabilities-device.png)

### Missing KBs
The **Missing KBs** tab lists the missing security updates for the device.

![Image of missing kbs tab.](images/missing-kbs-device.png)

## Cards

### Active alerts

The **Azure Advanced Threat Protection** card will display a high-level overview of alerts related to the device and their risk level, if you have enabled the Microsoft Defender for Identity feature, and there are any active alerts. More information is available in the "Alerts" drill down.

![Image of active alerts card.](images/risk-level-small.png)

> [!NOTE]
> You'll need to enable the integration on both Microsoft Defender for Identity and Defender for Endpoint to use this feature. In Defender for Endpoint, you can enable this feature in advanced features. For more information on how to enable advanced features, see [Turn on advanced features](advanced-features.md).

### Logged on users

The **Logged on users** card shows how many users have logged on in the past 30 days, along with the most and least frequent users. Selecting the "See all users" link opens the details pane, which displays information such as user type, log on type, and when the user was first and last seen. For more information, see [Investigate user entities](investigate-user.md).

![Image of user details pane.](images/logged-on-users.png)

> [!NOTE]
> The 'Most frequent' user value is calculated only based on evidence of users who successfully logged on interactively.
> However, the "All users" side-pane calculates all sorts of user logons so it is expected to see more frequent users in the side-pane, given that those users may not be interactive.

### Security assessments

The **Security assessments** card shows the overall exposure level, security recommendations, installed software, and discovered vulnerabilities. A device's exposure level is determined by the cumulative impact of its pending security recommendations.

![Image of security assessments card.](images/security-assessments.png)

## Related topics

- [View and organize the Microsoft Defender for Endpoint Alerts queue](alerts-queue.md)
- [Manage Microsoft Defender for Endpoint alerts](manage-alerts.md)
- [Investigate Microsoft Defender for Endpoint alerts](investigate-alerts.md)
- [Investigate a file associated with a Defender for Endpoint alert](investigate-files.md)
- [Investigate an IP address associated with a Defender for Endpoint alert](investigate-ip.md)
- [Investigate a domain associated with a Defender for Endpoint alert](investigate-domain.md)
- [Investigate a user account in Defender for Endpoint](investigate-user.md)
- [Security recommendation](tvm-security-recommendation.md)
- [Software inventory](tvm-software-inventory.md)
