---
title: IP address entity page in Microsoft Defender
description: The IP address entity page in the Microsoft Defender portal helps you in your investigation of IP address entities that appear in incidents and alerts. The page has all the important information about each entity. If an alert or incident indicates that an IP address is the source or target of suspicious behavior, check and investigate the IP address.
ms.service: defender-xdr
ms.author: yelevin
author: yelevin
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier2
- usx-security
ms.topic: conceptual
ms.date: 03/27/2024
search.appverid: met150
appliesto: Microsoft Defender XDR and Microsoft Sentinel in the Microsoft Defender portal
---

# IP address entity page in Microsoft Defender

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

The IP address entity page in the Microsoft Defender portal helps you examine possible communication between your devices and external internet protocol (IP) addresses.

Identifying all devices in the organization that communicated with a suspected or known malicious IP address, such as Command and Control (C2) servers, helps determine the potential scope of breach, associated files, and infected devices.

You can find information from the following sections in the IP address entity page:

- [Overview](#overview)
- [Incidents and alerts](#incidents-and-alerts)
- [Observed in organization](#observed-in-organization)
- [Sentinel events](#sentinel-events)


[!INCLUDE [unified-soc-preview](../../includes/unified-soc-preview.md)]

## Overview

In the left pane, the **Overview** page provides a summary of IP details (if available).

| Section | Details |
| ------- | ------- |
| Security info | <li>Open incidents<li>Active alerts |
| IP details | <li>Organization (ISP)<li>ASN<li>Country/Region, State, City<li>Carrier<li>Latitude and longitude<li>Postal code |

The left side also has a panel showing Log activity (time first seen/last seen, data source) collected from several log sources, and another panel showing a list of logged hosts collected from Azure Monitoring Agent heartbeat tables.

The main body of the **Overview** page contains dashboard cards showing a count of incidents and alerts (grouped by severity) containing the IP address, and a chart of the prevalence of the IP address in the organization over the indicated time period.

## Incidents and alerts

The **Incidents and alerts** page shows a list of incidents and alerts that include the IP address as part of their story. These incidents and alerts come from any of a number of Microsoft Defender detection sources, including, if onboarded, Microsoft Sentinel. This list is a filtered version of the [incidents queue](incidents-overview.md), and shows a short description of the incident or alert, its severity (high, medium, low, informational), its status in the queue (new, in progress, resolved), its classification (not set, false alert, true alert), investigation state, category, who is assigned to address it, and last activity observed.

You can customize which columns are displayed for each item. You can also filter the alerts by severity, status, or any other column in the display.

The *impacted assets* column refers to all the user, application, and other entities referenced in the incident or alert.

When an incident or alert is selected, a fly-out appears. From this panel you can manage the incident or alert and view more details such as incident/alert number and related devices. Multiple alerts can be selected at a time.

To see a full page view of an incident or alert, select its title.

## Observed in organization

The **Observed in organization** section provides a list of devices that have a connection with this IP and the last event details for each device (the list is limited to 100 devices).

## Sentinel events

If your organization onboarded Microsoft Sentinel to the Defender portal, this additional tab is on the IP address entity page. This tab imports the [IP entity page from Microsoft Sentinel](/azure/sentinel/entity-pages).

### Sentinel timeline

This timeline shows alerts associated with the IP address entity. These alerts include those seen on the **Incidents and alerts** tab and those created by Microsoft Sentinel from third-party, non-Microsoft data sources.

This timeline also shows [bookmarked hunts](/azure/sentinel/bookmarks) from other investigations that reference this IP entity, IP activity events from external data sources, and unusual behaviors detected by Microsoft Sentinel's [anomaly rules](/azure/sentinel/soc-ml-anomalies).

### Insights

Entity insights are queries defined by Microsoft security researchers to help you investigate more efficiently and effectively. These insights automatically ask the big questions about your IP entity, providing valuable security information in the form of tabular data and charts. The insights include data from various IP threat intelligence sources, network traffic inspection, and more, and include advanced machine learning algorithms to detect anomalous behavior.

The following are some of the insights shown:

- Microsoft Defender Threat Intelligence reputation.
- Virus Total IP Address.
- Recorded Future IP Address.
- Anomali IP Address
- AbuseIPDB.
- Anomalies count by IP address.
- Network traffic inspection.
- IP address remote connections with TI match.
- IP address remote connections.
- This IP has a TI match.
- Watchlist insights (Preview).

The insights are based on the following data sources:

- Syslog (Linux)
- SecurityEvent (Windows)
- AuditLogs (Microsoft Entra ID)
- SigninLogs (Microsoft Entra ID)
- OfficeActivity (Office 365)
- BehaviorAnalytics (Microsoft Sentinel UEBA)
- Heartbeat (Azure Monitor Agent)
- CommonSecurityLog (Microsoft Sentinel)

If you want to further explore any of the insights in this panel, select the link accompanying the insight. The link takes you to the **Advanced hunting** page, where it displays the query underlying the insight, along with its raw results. You can modify the query or drill down into the results to expand your investigation or just satisfy your curiosity.

## Response actions

Response actions offer shortcuts to analyze, investigate, and defend against threats.

Response actions run along the top of a specific IP entity page and include:

| Action | Description |
| ------ | ----------- |
| **Add indicator** | Opens a wizard for you to add this IP address as an Indicator of Compromise (IoC) to your Threat Intelligence knowledgebase. |
| **Open cloud app IP settings** | Opens the IP address ranges configuration screen for you to add the IP address to it. |
| **Investigate in Activity log** | Opens the Microsoft 365 Activity log screen for you to look for the IP address in other logs. |
| **Go hunt** | Opens the **Advanced hunting** page, with a built-in hunting query to find instances of this IP address. |

## Related topics

- [Microsoft Defender XDR overview](microsoft-365-defender.md)
- [Turn on Microsoft Defender XDR](m365d-enable.md)
- [Device entity page in Microsoft Defender](entity-page-device.md)
- [User entity page in Microsoft Defender](investigate-users.md)
- [Microsoft Defender XDR integration with Microsoft Sentinel](microsoft-365-defender-integration-with-azure-sentinel.md)
- [Connect Microsoft Sentinel to Microsoft Defender XDR (preview)](microsoft-sentinel-onboard.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
