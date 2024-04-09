---
# Required metadata
# For more information, see https://review.learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata?branch=main
# For valid values of ms.service, ms.prod, and ms.topic, see https://review.learn.microsoft.com/en-us/help/platform/metadata-taxonomies?branch=main

title:       # Add a title for the browser tab
description: # Add a meaningful description for search results
author:      YongRhee-MSFT # GitHub alias
ms.author:   yongrhee # Microsoft alias
ms.service:  # Add the ms.service or ms.prod value
# ms.prod:   # To use ms.prod, uncomment it and delete ms.service
ms.topic:    # Add the ms.topic value
ms.date:     04/09/2024
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
    
- If you're using [Application Control for Windows](/windows/security/application-security/application-control/windows-defender-application-control/wdac), or you're running non-Microsoft antivirus or endpoint detection and response software, make sure to add the processes mentioned earlier to your allow list. 

- Consumers need not take any actions to prepare. 

Microsoft Defender Antivirus processes and services

The following table summarizes Microsoft Defender Antivirus processes and services. You can view them in Task Manager in Windows.

| Process or service | Where to view its status |
|--|--|
| **Microsoft Defender Antivirus Core service** 
(`MdCoreSvc`) | - **Processes** tab: `Antimalware Core Service` 
- **Details** tab: `MpDefenderCoreService.exe` 
- **Services** tab: `Microsoft Defender Core Service` | 
| **Microsoft Defender Antivirus service** 
(`WinDefend`) | - **Processes** tab: `Antimalware Service Executable` 
- **Details** tab: `MsMpEng.exe` 
- **Services** tab: `Microsoft Defender Antivirus` | 
| **Microsoft Defender Antivirus Network Realtime Inspection service** 
(`WdNisSvc`) |  - **Processes** tab: `Microsoft Network Realtime Inspection Service` 
- **Details** tab: `NisSrv.exe` 
- **Services** tab: `Microsoft Defender Antivirus Network Inspection Service` | 
| **Microsoft Defender Antivirus command-line utility** | - **Processes** tab: N/A 
- **Details** tab: `MpCmdRun.exe` 
- **Services** tab: N/A  | 
| **Microsoft Security Client Policy Configuration Tool** | - **Processes** tab: N/A 
- **Details** tab: `ConfigSecurityPolicy.exe` 
- **Services** tab: N/A | 

To learn more about the Microsoft Defender Core service configurations and experimentation (ECS) visit [here](/microsoft-365/security/defender-endpoint/microsoft-defender-core-service-configurations-and-experimentation).

