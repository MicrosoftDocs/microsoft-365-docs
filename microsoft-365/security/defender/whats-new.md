---
title: What's new in Microsoft 365 Defender
description: Lists the new features and functionality in Microsoft 365 Defender
keywords: what's new in Microsoft 365 Defender, ga, generally available, capabilities, available, new
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: secure
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
ms.technology: m365d
---

# What's new in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](m365d-evaluation.md?ocid=cx-docs-MTPtriallab) or [run your pilot project in production](m365d-pilot.md?ocid=cx-evalpilot).
>

The following features are generally available (GA) in the latest release of Microsoft 365 Defender.

RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:
```http
/api/search/rss?search=%22Lists+the+new+features+and+functionality+in+Microsoft+365+defender%22&locale=en-us
```

## July 2021
- [Professional services catalog](https://sip.security.microsoft.com/interoperability/professional_services)<br>Enhance the detection, investigation, and threat intelligence capabilities of the platform with supported partner connections.
    

## May 2021

- [New alert page in the Microsoft 365 Defender portal](https://techcommunity.microsoft.com/t5/microsoft-365-defender/easily-find-anomalies-in-incidents-and-alerts/ba-p/2339243) <br> Provides enhanced information for the context into an attack. You can see which other triggered alert caused the current alert and all the affected entities and activities involved in the attack, including files, users and mailboxes. See [Investigate alerts](/microsoft-365/security/defender/investigate-alerts) for more information.
- [Trend graph for incidents and alerts in the Microsoft 365 Defender portal](https://techcommunity.microsoft.com/t5/microsoft-365-defender/new-alert-page-for-microsoft-365-defender-incident-detections/ba-p/2350425) <br> Determine if there are several alerts for a single incident or that your organization is under attack with several different incidents. See [Prioritize incidents](/microsoft-365/security/defender/incident-queue) for more information.


## April 2021
- Microsoft 365 Defender<br> The improved [Microsoft 365 Defender](https://security.microsoft.com) portal is now available. This new experience brings together Defender for Endpoint, Defender for Office 365, Defender for Identity, and more into a single portal. This is the new home to manage your security controls. [Learn what's new](./overview-security-center.md).

- [Microsoft 365 Defender threat analytics report](threat-analytics.md)<br>
 Threat analytics helps you respond to and minimize the impact of active attacks. You can also learn about attack attempts blocked by Microsoft 365 Defender solutions and take preventive actions that mitigate the risk of further exposure and increase resiliency. As part of the unified security experience, threat analytics is now available for Microsoft Defender for Endpoint and Microsoft Defender for Office E5 license holders.

## March 2021
- [CloudAppEvents table](advanced-hunting-cloudappevents-table.md) <br>Find information about events in various cloud apps and services covered by Microsoft Cloud App Security. This table also includes information previously available in `AppFileEvents`.
## February 2021
- (Preview) The enhanced [Microsoft 365 security center (https://security.microsoft.com)](https://security.microsoft.com) is now available in public preview. This new experience brings Defender for Endpoint and Defender for Office 365 to the center. [Learn more about what's changed](./overview-security-center.md).

## September 2020
- [IdentityDirectoryEvents table](advanced-hunting-identitydirectoryevents-table.md) <br> Find events involving an on-premises domain controller running Active Directory (AD). This [advanced hunting](advanced-hunting-overview.md) schema table covers a range of identity-related events and system events on the domain controller.
- [AssignedIPAddresses() function](advanced-hunting-assignedipaddresses-function.md) <br> Use this function in your advanced hunting queries to quickly obtain the latest IP addresses assigned to a device or the most recent IP addresses from a specific time.

## July 2020
- [FileProfile() function](advanced-hunting-fileprofile-function.md) <br> Use this function in your advanced hunting queries to enrich results with comprehensive file information.
- [Identity and app tables](advanced-hunting-schema-tables.md)<br> Get visibility into authentication events, Active Directory queries, and app-related activity with the [IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md), [IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md), and [AppFileEvents](advanced-hunting-appfileevents-table.md) tables in the advanced hunting schema.
- [Go hunt](advanced-hunting-go-hunt.md)<br> Quickly pivot from investigating an incident to inspecting a specific event, a user, a device, or other entity types on advanced hunting.

## June 2020
- Twitter feed <br> Get the latest security research, threat intelligence, product news, and more - right inside the dashboard.
- [EmailPostDeliveryEvents schema table](advanced-hunting-emailpostdeliveryevents-table.md) <br> Incorporate information about post-delivery actions taken on email messages in your advanced hunting queries.
- [Inspect records in advanced hunting](advanced-hunting-query-results.md#drill-down-from-query-results) <br> Quickly inspect records in your query results with the new details panel.

## May 2020
- [Custom detections](custom-detections-overview.md) <br> Use advanced hunting queries to create custom detection rules that automatically monitor for and respond to security events and system states.

## February 2020
- [Incidents](incidents-overview.md) <br> Know exactly where an attack started and other details to help you see the extent of the attack.
- [Automated investigation and response](m365d-autoir.md) <br> AIR enables your security operations team to dramatically increase your organization's capacity to deal with security alerts and incidents.
- [Advanced hunting enhancements](advanced-hunting-overview.md) <br> Proactively hunt for threats across the modern workspace with Kusto Query Language and a security-optimized schema.

## March 2019
- Advanced hunting <br> Landing page to various hunting capabilities that let you proactively find threats affecting email and data, devices, and identities.
- [Microsoft Secure Score](microsoft-secure-score.md) <br> Measurement of an organization's security posture, with a higher number indicating more improvement actions taken. Following the Security Score recommendations can protect your organization from threats. 
- [Reports](overview-security-center.md) <br>  Features a host of cards covering a variety of areas that security analysts and administrators track as part of their day-to-day operations.
