---
title: Troubleshooting mode scenarios in Microsoft Defender for Endpoint 
description: Use the Microsoft Defender for Endpoint troubleshooting mode to address various antivirus issues.
keywords: antivirus, troubleshoot, troubleshooting mode, tamper protection, compatibility
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
ms.date: 05/04/2022
---

# Troubleshooting mode scenarios in Microsoft Defender for Endpoint 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)

Microsoft Defender for Endpoint troubleshooting mode allows you to troubleshoot various Microsoft Defender Antivirus features by enabling them from the device and testing different scenarios, even if they're controlled by the organization policy. The troubleshooting mode is disabled by default and requires you to turn it on for a device (and/or group of devices) for a limited time. Note that this is exclusively an enterprise-only feature, and requires Microsoft 365 Defender access.

For troubleshooting performance-specific issues related to Microsoft Defender Antivirus, see: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).

## Scenario 1: Unable to install application

If you want to install an application but receive an error message that Microsoft Defender Antivirus and tamper protection is on, follow the steps below to troubleshoot the issue.

1. Request the security admin to turn on troubleshooting mode. You'll get a Windows Security notification once the troubleshooting mode starts.  

2. Connect to the device (using Terminal Services for example) with local admin permissions.  

3. Start Process Monitor (ProcMon). See the steps described in [Troubleshoot performance issues related to real-time protection](troubleshoot-performance-issues.md).  

4. Go to **Windows security** > **Threat & virus protection** > **Manage settings** > **Tamper protection** > **Off**.  

5. Launch an elevated PowerShell command prompt, and toggle off RTP. 

    - Run `Get-MpComputerStatus` to check the RealTimeProtection status.
    - Run `Set-mppreference -DisableRealtimeMonitoring $true` to turn off RTP.
    - Run `Get-MpComputerStatus` again to verify to RealTimeProtection status.

6. Try installing the application.

## Scenario 2: High CPU usage due to Windows Defender (MsMpEng.exe)

Sometimes during a scheduled scan, MsMpEng.exe can consume high CPU.

1. Go to **Task Manager** > **Details** tab to confirm that MsMpEng.exe is the reason behind the high CPU usage. Also check to see if a scheduled scan is currently underway.

2. Run ProcMon during the CPU spike for around 5 minutes, and then review the ProcMon log for clues. 

3. Once root cause is determined, turn on troubleshooting mode. 

4. Log in to the machine and launch an elevated PowerShell command prompt. 

5. Add process/file/folder/extension exclusions based on ProcMon findings using one of the following commands (the path, extension, and process exclusions mentioned below are examples only): 

    - `Set-mppreference -ExclusionPath` (for example, C:\DB\DataFiles) 
    
    - `Set-mppreference –ExclusionExtension` (for example, .dbx) 
    
    - `Set-mppreference –ExclusionProcess` (for example, C:\DB\Bin\Convertdb.exe) 

6. After adding the exclusion, check to see if the CPU usage has dropped. 

For more information on Set-MpPreference cmdlet configuration preferences for Windows Defender scans and updates, see [Set-MpPreference](/powershell/module/defender/set-mppreference). 

## Scenario 3: Application taking longer to perform an action

When Microsoft Defender Antivirus real-time protection is turned on, application takes a long time to perform basic tasks. To turn off real-time protection and troubleshoot the issue, follow the steps below. 

1. Request security admin to turn on troubleshooting mode on the device. 

2. To disable RTP for this scenario, first turn off tamper protection. For more information, see [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md). 

3. Once tamper protection is disabled, log in to the device. 

4. Launch an elevated PowerShell command prompt. 

    - `Set-mppreference -DisableRealtimeMonitoring $true` 

5. After disabling RTP, check to see if the application is slow. 

## Scenario 4: Microsoft Office plugin blocked by Attack Surface Reduction

Attack Surface Reduction (ASR) is not allowing Microsoft Office plugin to work properly because **Block all Office applications from creating child processes** is set to block mode. 

1. Turn on troubleshooting mode, and log in to the device. 

2. Launch an elevated PowerShell command prompt. 

    - `Set-MpPreference -AttackSurfaceReductionRules_Ids D4F940AB-401B-4EFC-AADC-AD5F3C50688A -AttackSurfaceReductionRules_Actions Disabled` 

3. After disabling the ASR Rule, confirm that the Microsoft Office plugin now works.

For more information, see [Overview of attack surface reduction](overview-attack-surface-reduction.md). 

## Scenario 5: Domain blocked by Network Protection

Network Protection is blocking Microsoft domain, preventing users from accessing it. 

1. Turn on troubleshooting mode, and log in to the device. 

2. Launch an elevated PowerShell command prompt. 

    - `Set-MpPreference -EnableNetworkProtection Disabled` 

3. After disabling Network Protection, check to see if the domain is now allowed. 

For more information, see [Use network protection to help prevent connections to bad sites](network-protection.md). 

## Related topics

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are:
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
>

- [Enable troubleshooting mode](enable-troubleshooting-mode.md)
- [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
- [Set-MpPreference](/powershell/module/defender/set-mppreference)
- [Protect your network](network-protection.md)
- [Overview of attack surface reduction](overview-attack-surface-reduction.md)
- [Detect and block potentially unwanted applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md)
- [Get an overview of Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- [Better together: Microsoft Defender Antivirus and Microsoft Defender for Endpoint](why-use-microsoft-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
