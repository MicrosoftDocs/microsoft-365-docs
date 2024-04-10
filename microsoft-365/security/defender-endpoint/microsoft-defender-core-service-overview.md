---
title: Microsoft Defender Core service overview
description: Get an overview of Microsoft Defender Core service.
author: siosulli
ms.author: siosulli
ms.reviewer: yongrhee
manager: deniseb
ms.service: defender-endpoint
ms.subservice: ngp
ms.topic: overview
ms.date: 04/10/2024
search.appverid: met150
ms.localizationpriority: medium
audience: ITPro
ms.collection: 
- m365-security
- tier2
---

# Microsoft Defender Core service overview

Microsoft Defender Core service

To enhance your endpoint security experience, Microsoft is releasing the Microsoft Defender Core service to help with the stability and performance of Microsoft Defender Antivirus. 

The Microsoft Defender Core service is releasing with [Microsoft Defender Antivirus platform version 4.18.23110.2009](./msda-updates-previous-versions-technical-upgrade-support.md#october-2023-platform-418231002009--engine-11231002009).

- Rollout begins in:

  - November 2023 to prerelease customers,
    
  - Mid April 2024 to Enterprise customers running Windows clients.
    
  - Mid May 2024 to Enterprise customers running Windows Servers.
    
  - Mid June 2024 to U.S. Government customers running Windows clients and Windows Servers.
    
- Enterprise customers should allow the following URLs:

  - `*.events.data.microsoft.com`
    
  - `*.endpoint.security.microsoft.com`
    
  - `*.ecs.office.com` 
    
- Enterprise U.S. Government customers should allow the following URLs:

  - `*.events.data.microsoft.com`
    
  - `*.endpoint.security.microsoft.us (GCC-H & DoD)`
    
  - `*.gccmod.ecs.office.com (GCC-M)`
    
  - `*.config.ecs.gov.teams.microsoft.us (GCC-H)`
    
  - `*.config.ecs.dod.teams.microsoft.us (DoD)`
    
- If you're using [Application Control for Windows](/windows/security/application-security/application-control/windows-defender-application-control/wdac), or you're running non-Microsoft antivirus or endpoint detection and response software, make sure to add the processes mentioned earlier to your allowlist. 

- Consumers don't need to take any actions to prepare. 

## Microsoft Defender Antivirus processes and services

The following table summarizes where you can view Microsoft Defender Antivirus processes and services (`MdCoreSvc`) using Task Manager on Windows devices.

| Process or service | Where to view its status |
|--|--|
| `Antimalware Core Service` | **Processes** tab |
| `MpDefenderCoreService.exe` | **Details** tab | 
| `Microsoft Defender Core Service` | **Services** tab |

To learn more about the Microsoft Defender Core service configurations and experimentation (ECS), see [Microsoft Defender Core service configurations and experimentation](microsoft-defender-core-service-configurations-and-experimentation.md) 

