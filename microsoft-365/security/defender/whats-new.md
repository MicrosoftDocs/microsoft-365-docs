---
title: What's new in Microsoft 365 Defender
description: Lists the new features and functionality in Microsoft 365 Defender
keywords: what's new in microsoft threat protection, ga, generally available, capabilities, available, new
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

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](https://aka.ms/mtp-trial-lab) or [run your pilot project in production](https://aka.ms/m365d-pilotplaybook).
>

The following features are generally available (GA) in the latest release of Microsoft 365 Defender.

RSS feed: Get notified when this page is updated by copying and pasting the following URL into your feed reader:
```http
https://docs.microsoft.com/api/search/rss?search=%22Lists+the+new+features+and+functionality+in+Microsoft+365+defender%22&locale=en-us
```

## March 2021
- [CloudAppEvents table](advanced-hunting-cloudappevents-table.md) <br>Find information about events in various cloud apps and services covered by Microsoft Cloud App Security. This table also includes information previously available in `AppFileEvents`.
## February 2021
- (Preview) The enhanced [Microsoft 365 security center (https://security.microsoft.com)](https://security.microsoft.com) is now available in public preview. This new experience brings Defender for Endpoint and Defender for Office 365 to the center. [Learn more about what's changed](https://docs.microsoft.com/microsoft-365/security/defender/overview-security-center).

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
