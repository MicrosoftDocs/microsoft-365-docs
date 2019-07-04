---
title: Data tables in the Microsoft 365 security center advanced hunting schema
description: Learn about the tables in the Microsoft 365 advanced hunting schema
keywords: advanced hunting, atp query, query atp data, intellisense, atp telemetry, events, events telemetry, azure log analytics
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Understand the data tables in the advanced hunting schema

**Applies to**:
- Microsoft 365 security center

The advanced hunting schema comprise multiple tables that provide either event information or information about certain entities.

The following tables comprise the data schema in advanced hunting:

| Table | Description |
|-------------------------------|---|
| **AlertEvents** | Alerts on Microsoft Defender Security Center |
| **MachineInfo** | Machine information, including OS information | 
| **MachineNetworkInfo** | Network properties of machines, including adapters, IP and MAC addresses, as well as connected networks and domains |
| **ProcessCreationEvents** | Process creation and related events |
| **NetworkCommunicationEvents** | Network connection and related events |
| **FileCreationEvents** | File creation, modification, and other file system events |
| **RegistryEvents** | Creation and modification of registry entries | 
| **LogonEvents** | Login and other authentication events | 
| **ImageLoadEvents** | DLL loading events |  
| **MiscEvents** | Multiple event types, including events triggered by security controls such as Windows Defender Antivirus and exploit protection |
| **Office365EmailEvents** | Office 365 email events, including email delivery and blocking events |
| **Office365AttachmentsInfo** | Information about file attached to Office 365 emails |
| **Office365UrlInfo** | Information about URLs in embedded links on Office 365 emails |

**[[DRAFT NOTES expand information including special columns in each table]]**

## Related topics
- [Proactively hunt for threats](advanced-hunting.md)
- [Learn the query language](advanced-hunting-language-overview.md)
- [Use shared queries](advanced-hunting-shared-queries.md)
- [Understand the data columns](advanced-hunting-column-reference.md)
- [Find miscellaneous events](advanced-hunting-misc-events.md)
- [Apply query best practices](advanced-hunting-best-practices.md)



