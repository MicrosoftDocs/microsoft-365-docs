---
title: Turn on troubleshooting mode for Microsoft Defender for Endpoint
description: Turn on the Microsoft Defender for Endpoint troubleshooting mode to address various antivirus issues.
keywords: antivirus, troubleshoot, troubleshooting mode, tamper protection, compatibility
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: article
ms.technology: mde
---

# Turn on troubleshooting mode

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configureendpointsscript-abovefoldlink)


Microsoft Defender for Endpoint troubleshooting mode allows you to troubleshoot various Microsoft Defender antivirus features by enabling them from the device and testing different scenarios, even if they're controlled by the organization policy. The troubleshooting mode is disabled by default and requires you to turn it on for a device (and/or group of devices) for a limited time. Note that this is exclusively an Enterprise-only feature, and requires Microsoft 365 Defender access.

## What do you need to know before you begin?

- Requirements:

    - For troubleshooting mode to be applied, Microsoft Defender Endpoint must be tenant-enrolled and active on the device.

    - The device must be actively running Microsoft Defender Antivirus.

- Use troubleshooting mode to disable/change the tamper protection setting to perform:

    - Microsoft Defender Antivirus functional troubleshooting /application compatibility (false positive application blocks).  

    - Microsoft Defender Antivirus performance troubleshooting by using the troubleshooting mode and manipulating tamper protection and other antivirus settings.

- Local admins, with appropriate permissions, can change configurations on individual endpoints that are normally locked by policy. Having a device in troubleshooting mode can be helpful when diagnosing Microsoft Defender Antivirus performance and compatibility scenarios.

    - Local admins won't be able to turn off Microsoft Defender Antivirus, or uninstall it.

    - Local admins will be able to configure all other security settings in the Microsoft Defender Antivirus suite (for example, cloud protection, tamper protection).

- Admins with “Manage Security settings” permissions will have access to turn on troubleshooting mode.

- Microsoft Defender for Endpoint collects logs and investigation data throughout the troubleshooting process.

    - Snapshot of `MpPreference` will be taken before troubleshooting mode begins.

    - Second snapshot will be taken just before troubleshooting mode expires.

    - Operational logs from during troubleshooting mode will also be collected.

    - All the above logs and snapshots will be collected and will be available for an admin to collect using the [Collect investigation package](respond-machine-alerts.md#collect-investigation-package-from-devices) feature on the device page. Note that Microsoft won't remove this data from the device until an admin collects them. 

- Troubleshooting mode automatically turns off after reaching the expiration time (it lasts for 3 hours). After expiration, all policy-managed configurations will become read-only again and will revert back to how it was before setting the troubleshooting mode on.

- It could take up to 15 minutes from the time the command is sent from Microsoft 365 Defender to when it becomes active on the device.

- Notification will be sent to the end user when the troubleshooting mode begins and when the troubleshooting mode ends. A warning will also be sent notifying that it will end soon.

- The beginning and ending of troubleshooting mode will be identified in the **Device Timeline** on the device page.

- You can query all troubleshooting mode events in Advanced Hunting.

- Devices will have a troubleshooting mode active tag in Device Inventory.


## Enable the troubleshooting mode

1. In Microsoft 365 Defender, go to the device you would like to turn on troubleshooting mode. Select **Turn on troubleshooting mode**.

[Need updated screenshot]

2. Confirm you want to turn on troubleshooting mode for the device. 

[Need updated screenshot]
 
3. The device page shows the device is now in troubleshooting mode.  

[Need updated screenshot]

## Use the troubleshooting mode

### Scenario 1: Unable to install application

If you want to install an application but receive an error message that Microsoft Defender Antivirus and tamper protection is on, follow the steps below to troubleshoot the issue.

1. Request the SOC admin to turn on troubleshooting mode. You'll get a Windows Security notification once the troubleshooting mode starts.  

2. Connect to the device (using Terminal Services for example) with local admin permissions.  

3. Start Process Monitor (ProcMon). See the steps [here](troubleshoot-performance-issues.md).  

4. Go to **Windows security** > **Threat & virus protection** > **Manage settings** > **Tamper protection** > **Off**.  

5. Launch an elevated PowerShell command prompt, and toggle off RTP. 

    - Run `get-mppreference` to check RTP status.
    - Run `set–mppreference` to turn off RTP Run. 

7. Try installing the application.

### Scenario 2: High CPU usage due to Windows Defender (MsMpEng.exe)

Sometimes during a scheduled scan, MsMpEng.exe can consume high CPU.

1. Go to **Task Manager** > **Details** tab to confirm that MsMpEng.exe is the reason behind the high CPU usage. Also check to see if a scheduled scan is currently underway.

2. Run ProcMon during the CPU spike for around 5 minutes, and then review the ProcMon log for clues. 

3. Once root cause is determined, turn on troubleshooting mode. 

4. Log in to the machine and launch an elevated PowerShell command prompt. 

5. Add process/file/folder/extension exclusions based on ProcMon findings using one of the following commands (the path, extension, and process exclusions mentioned below are examples only): 

    - Set-mppreference -ExclusionPath (for example, C:\DB\DataFiles) 
    
    - Set-mppreference –ExclusionExtension (for example, .dbx) 
    
    - Set-mppreference –ExclusionProcess (for example, C:\DB\Bin\Convertdb.exe) 

6. After adding the exclusion, check to see if the CPU usage has dropped. 

For more information on Set-MpPreference cmdlet configuration preferences for Windows Defender scans and updates, see [here](https://docs.microsoft.com/powershell/module/defender/set-mppreference). 

### Scenario 3: Application taking longer to perform an action

When Microsoft Defender Antivirus real-time protection is turned on, application takes a long time to perform basic tasks. To turn off real-time protection and troubleshoot the issue, follow the steps below. 

1. Request SOC admin to turn on troubleshooting mode on the device. 

2. To disable RTP for this scenario, first turn off tamper protection. For more information, see [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md). 

3. Once tamper protection is disabled, log in to the device. 

4. Launch an elevated PowerShell command prompt. 

    - Set-mppreference -DisableRealtimeMonitoring $true 

5. After disabling RTP, check to see if the application is slow. 

### Scenario 4: Potentially unwanted app (PUA) is blocked by Windows Defender

When a legitimate third-party application (for example, FileZilla) is detected as a potentially unwanted app, and blocked from running, turn off PUA blocks so that the application can run properly. 

1. Request SOC admin to turn on troubleshooting mode for the device. 

2. To turn off PUA detections, first turn off tamper protection. For more information, see [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md).

3. Once tamper protection is disabled, log in to the device.

4. Launch an elevated PowerShell command prompt.  

    - Set-mppreference -PUAProtection Disabled 

5. After disabling PUA, check to see if the application is now able to run properly. 

For more information, see [Block potentially unwanted applications with Microsoft Defender Antivirus](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md).

### Scenario 5: Microsoft Office plugin blocked by Attack Surface Reduction

Attack Surface Reduction (ASR) is not allowing Microsoft Office plugin to work properly because **Block all Office applications from creating child processes** is set to block mode. 

1. Turn on troubleshooting mode, and log in to the device. 

2. Launch an elevated PowerShell command prompt. 

    - Set-MpPreference -AttackSurfaceReductionRules_Ids D4F940AB-401B-4EFC-AADC-AD5F3C50688A -AttackSurfaceReductionRules_Actions Disabled 

3. After disabling the ASR Rule, confirm that the Microsoft Office plugin now works.

For more information, see [Overview of attack surface reduction](overview-attack-surface-reduction.md). 

### Scenario 6: Domain blocked by Network Protection

Network Protection is blocking Microsoft domain, preventing users from accessing it. 

1. Turn on troubleshooting mode, and log in to the device. 

2. Launch an elevated PowerShell command prompt. 

    - Set-MpPreference -EnableNetworkProtection Disabled 

3. After disabling Network Protection, check to see if the domain is now allowed. 

For more information, see [Use network protection to help prevent connections to bad sites](network-protection.md). 

