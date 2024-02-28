---
title: Behavior monitoring in Microsoft Defender Antivirus
description: Learn about Behavior monitoring in Microsoft Defender Antivirus and Defender for Endpoint.
author: dansimp
ms.author: dansimp
manager: deniseb
ms.reviewer: 
audience: ITPro
ms.topic: conceptual
ms.service: defender-endpoint
ms.subservice: ngp
ms.localizationpriority: medium
ms.date: 02/29/2024
search.appverid: met150
---

# Behavior monitoring in Microsoft Defender Antivirus

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/en-us/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Individuals](https://www.microsoft.com/en-us/microsoft-365/microsoft-defender-for-individuals)
- Microsoft Defender Antivirus

Behavior monitoring is a critical detection and protection functionality of Microsoft Defender Antivirus.

Monitors process behavior to detect and analyze potential threats based on the behavior of applications, services, and files. Rather than relying solely on signature-based detection (which identifies known malware patterns), behavior monitoring focuses on observing how software behaves in real-time. Here’s what it entails: 

1. Real-Time Threat Detection: 

- Continuously observe processes, file system activities, and interactions within the system. 
- Defender Antivirus can identify patterns associated with malware or other threats. For example, it looks for processes making unusual changes to existing files, modifying or creating automatic startup registry (ASEP) keys, and other alterations to the file system or structure. 

2. Dynamic Approach: 

- Unlike static, signature-based detection, behavior monitoring adapts to new and evolving threats. 

- Microsoft Defender Antivirus uses predefined patterns, and observes how software behaves during execution.  For malware that doesn’t fit any predefined pattern, Microsoft Defender Antivirus uses anomaly detection. 

- If a program shows suspicious behavior (for example, attempting to modify critical system files), Microsoft Defender Antivirus can take action to prevent further harm, and revert some previous malware actions. 

Behavior monitoring enhances Defender Antivirus’s ability to proactively detect emerging threats by focusing on real-time actions and behaviors rather than relying solely on known signatures. 

The following features depend on behavior monitoring. 

**Anti-malware**

- Indicators, File hash, allow/block 

**Network Protection**

- Indicators, IP address/URL, allow/block 
- Web Content Filtering, allow/block

> [!NOTE] 
> Behavior monitoring is protected by tamper protection. 

To temporarily disable behavior monitoring in order to remove it out of the picture, you want to first enable Troubleshooting mode, disable Tamper Protection, and then disable behavior monitoring.

## Change the behavior monitoring policy
The following table shows the different ways to configure behavior monitoring.

| Management tool | Name | Links |
|:---|:---|:---|
| Security Settings Management | Allow behavior monitoring | This article |
| Intune |  Allow behavior monitoring | [Windows Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-windows#real-time-protection) |
| CSP | AllowBehaviorMonitoring | [Defender Policy CSP](/mem/intune/protect/antivirus-microsoft-defender-settings-windows#real-time-protection)   |
| Configuration Manager Tenant Attach | Turn on behavior monitoring | [Windows Antivirus policy settings from Microsoft Defender Antivirus for tenant attached devices](/mem/intune/protect/antivirus-microsoft-defender-settings-windows-tenant-attach#real-time-protection) |
| Group Policy | Turn on behavior monitoring | [Download Group Policy Settings Reference Spreadsheet for Windows 11 2023 Update (23H2)](https://www.microsoft.com/download/details.aspx?id=105668)   |
| PowerShell | Set-Preference -DisableBehaviorMonitoring | [Set-MpPreference](/powershell/module/defender/set-mppreference#-disablebehaviormonitoring) |
| WMI | boolean  DisableBehaviorMonitoring;  | [MSFT\_MpPreference class](/previous-versions/windows/desktop/defender/msft-mppreference) |

If you use Microsoft Defender for Business, see [Review or edit your next-generation protection policies in Microsoft Defender for Business](/microsoft-365/security/defender-business/mdb-next-generation-protection).

## Modify the behavior monitoring settings by using PowerShell
Use the following command to modify the behavior monitoring settings:

`Set-MpPreference -DisableBehaviorMonitoring  [true|false]`

- `True` disables Behavior monitoring. 
- `False` enables Behavior monitoring.

For more information, see [Set-MpPreference](/powershell/module/defender/set-mppreference#-disablebehaviormonitoring). 

## Query the bBehavior monitoring status from PowerShell

`Get-MpComputerStatus | ft BehaviorMonitorEnabled`   

If the value returned is `true`, behavior monitoring is enabled. 

## Query the behavior monitoring status by using Advanced Hunting
You can use Advanced Hunting (AH) to query the status of behavior monitoring.

Requires Microsoft Defender XDR, Microsoft Defender for Endpoint Plan 2, or Microsoft Defender for Business.

```
let EvalTable = DeviceTvmSecureConfigurationAssessment 
| where ConfigurationId in ("scid-91") 
| summarize arg_max(Timestamp,IsCompliant, IsApplicable) by DeviceId, ConfigurationId,tostring(Context) 
| extend Test = case( 
ConfigurationId == "scid-91" , "BehaviorMonitoring", 
"N/A"), 
Result = case(IsApplicable == 0,"N/A",IsCompliant == 1 , "Enabled", "Disabled") 
| extend packed = pack(Test,Result) 
| summarize Tests = make_bag(packed) by DeviceId 
| evaluate bag_unpack(Tests); 
let DefUpdate = DeviceTvmSecureConfigurationAssessment 
| where ConfigurationId == "scid-2011" 
// | where isnotnull(Context) 
| extend Definition = parse_json(Context[0][0]) 
| extend LastUpdated = parse_json(Context[0][2]) 
| project DeviceId,Definition,LastUpdated; 
let DeviceInformation = DeviceInfo 
| where isnotempty(OSPlatform) 
| summarize arg_max(Timestamp,*) by DeviceId, DeviceName 
| project DeviceId, DeviceName, MachineGroup; 
let withNames = EvalTable 
| join kind = inner DeviceInformation on DeviceId 
| project-away DeviceId1 
| project-reorder DeviceName, MachineGroup; 
withNames | join kind = fullouter DefUpdate on DeviceId  
| project-away DeviceId1 
| sort by BehaviorMonitoring asc
```

## Troubleshooting high CPU usage
Detections related to behavior monitoring start with "[Behavior](/microsoft-365/security/defender/malware-naming#type)".

When investigating high CPU usage in `MsMpEng.exe`, you can temporarily disable behavior monitoring to see if the issues continue.

You can use Performance analyzer for Microsoft Defender Antivirus to find **\path\process**, **process** and/or **file extensions** that are contributing to the high cpu utilization. You can then add these items to [Contextual Exclusion](configure-contextual-file-folder-exclusions-microsoft-defender-antivirus.md).

For more information, see [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md). 

If you're seeing high CPU usage caused by behavior monitoring, continue troubleshooting the issue by reverting each of the following items in order. Re-enable behavior monitoring after reverting each item to identify where the problem might be.

1. **platform update**
2. **engine update**
3. **security intelligence update**.

If you're still encountering high CPU usage issues, contact Microsoft support and have your Client Analyzer data ready.
 
If behavior monitoring isn't causing the issue, use [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md) to collect log information. Collect two different logs using `a -c` and `a -a`. Have this information ready when you contact Microsoft support.

For more information, see [Data collection for advanced troubleshooting on Windows](data-collection-analyzer.md).
