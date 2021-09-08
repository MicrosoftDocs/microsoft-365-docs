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


Microsoft Defender for Endpoint troubleshooting mode allows you to troubleshoot various Microsoft Defender antivirus features by enabling them from the device and testing their scenarios, even if they are controlled by the organization policy. The troubleshooting mode is disabled by default and requires you to turn it on for a device (and/or group of devices) for a limited time.  

## What do you need to know before you begin?

- Requirements:

    - For troubleshooting mode to be applied, Microsoft Defender Endpoint must be tenant-enrolled and active on the device.

    - The device must be actively running Microsoft Defender Antivirus.

- Use troubleshooting mode to disable/change the tamper protection setting to perform:

    - Microsoft Defender Antivirus functional troubleshooting /application compatibility (false positive application blocks).  

    - Microsoft Defender Antivirus performance troubleshooting by using the troubleshooting mode and manipulating tamper protection and other antivirus settings.

- Local admins, with appropriate permissions, will be able to change configurations on individual endpoints that are normally locked by policy. Having a device in troubleshooting mode can be helpful when diagnosing Microsoft Defender Antivirus performance and compatibility issues.

    - Local admins will not be able to turn off Microsoft Defender Antivirus, or uninstall it.

    - Local admins will be able to configure all other security settings in the Microsoft Defender Antivirus suite (for example, cloud protection, tamper protection).

- Admins with “Manage Security settings” permissions will have access to turn troubleshooting mode on.

- Microsoft Defender for Endpoint collects logs and investigation data throughout the troubleshooting process.

    - Snapshot of `MpPreference` will be taken before troubleshooting mode begins.

    - Second snapshot will be taken just before troubleshooting mode expires.

    - Operational logs from during troubleshooting mode will also be collected.

    - All the above logs and snapshots will be collected and will be available to collect using the **Collect investigation package** feature on the device page.

- Troubleshooting mode automatically turns off after reaching the expiration time (it lasts for 3 hours). After expiration, all policy-managed configurations will become read-only again and will revert back to how it was before setting the troubleshooting mode on.

- It could take up to 15 minutes from the time the command is sent from Microsoft 365 Defender to when it becomes active on the device.

- Customers will be informed when the troubleshooting mode begins, a warning that it will end soon, and when the troubleshooting mode ends by a notification.

- The beginning and ending of troubleshooting mode will be identified in the **Device Timeline** on the device page.

- You can query all troubleshooting mode events in Advanced Hunting.

- Devices will have a troubleshooting mode active tag in Device Inventory.


## Enable the troubleshooting mode

[Need updated steps. Couldn't figure out the details from the small images.]

1. In Microsoft 365 Defender, go to the device you would like to turn on troubleshooting mode. Select **Turn on troubleshooting mode**.

[Need updated screenshot]

2. Confirm you want to turn on troubleshooting mode for the device. 

[Need updated screenshot]
 
3. The device page shows the device is now in troubleshooting mode.  

[Need updated screenshot]

## Use the troubleshooting mode

### Scenario 1: Unable to install application

If you want to install an application but receive an error message saying that Microsoft Defender Antivirus and tamper protection is on, follow the steps below to troubleshoot the issue.

1. Request the SOC admin to turn on troubleshooting mode. You'll get a Windows Sec app notification once the troubleshooting mode starts.  

2. Connect to the machine (using Terminal Services for example) as an IT help desk with local admin permissions.  

3. Start Process Monitor (ProcMon). See the steps [here](troubleshoot-performance-issues.md).  

4. Go to **Windows security** > **Threat & virus protection** > **Manage settings** > **Tamper protection** > **Off**.  

5. Launch Powershell cmd elevated. 

6. Toggle RTP off.  

    - Run `get-mppreference` to check RTP status.
    - Run `set–mppreference` to turn off RTP Run. 

7. Try installing the app.

### Scenario 2: Windows Defender (MsMpEng.exe) causing high CPU

Sometimes during a scheduled scan, MsMpEng.exe can consume high CPU usage.

1. Go to **Task Manager** > **Details** tab to confirm that MsMpEng.exe is the reason behind the high CPU usage. Also check to see if a scheduled scan is currently underway.

2. Run ProcMon during the CPU spike for around 5 minutes, and then review the ProcMon log for clues. 

3. Once RCA is determined, turn the troubleshooting mode on. 

4. Log into the machine and launch an elevated PowerShell command prompt. 

5. If `DisableLocalAdminMerge` is enabled on the device:  

- Request SOC admin to turn on troubleshooting mode for the device.

- You'll get a Windows Sec app notification once the troubleshooting mode starts.

6. Add process/file/folder/extension exclusions based on ProcMon findings using one of the following commands: 

    - Set-mppreference -ExclusionPath C:\DB\DataFiles 
    
    - Set-mppreference –ExclusionExtension .dbx 
    
    - Set-mppreference –ExclusionProcess C:\DB\Bin\Convertdb.exe 

7. After adding the exclusion, check to see if the CPU usage has dropped. 

For more information on Set-MpPreference cmdlet configuration preferences for Windows Defender scans and updates, see [here](https://docs.microsoft.com/powershell/module/defender/set-mppreference?view=windowsserver2019-ps). 

### Scenario 3: Application taking longer to perform an action

When Microsoft Defender Antivirus real-time protection is turned on, application takes a long time to perform basic tasks. To turn off real-time protection and troubleshoot the issue, do the following: 

1. Request SOC admin to turn on troubleshooting mode on the device. 

2. To disable RTP for this scenario, you must turn off tamper protection first. For more information, see [Protect security settings with tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md). 

3. Once tamper protection is disabled, turn the troubleshooting mode on. Now log into the device. 

4. Launch an elevated PowerShell command prompt. 

    - Set-mppreference -DisableRealtimeMonitoring $true 

5. After disabling RTP, check to see if the application is slow. 

### Unwanted app is blocked by Windows Defender (PUA)

Description: Our legit 3rd party application (I.e. FileZilla) is being detected as a PUA and blocked from running.  Need to turn off PUA blocks so the application runs properly. 

Troubleshooting steps: 

Request SOC admin to turn on Troubleshoot mode for the machine 

To turn off PUA detections, you must turn off Tamper Protection first. 

Please review this doc for more info:  Protect security settings with tamper protection | Microsoft Docs 

Once Tamper Protection is disabled, place machine in MDE Troubleshooting Mode. 

Now log into the machine in question. 

Launch an elevated PowerShell command prompt.  

Type in the following and hit enter: 

Set-mppreference -PUAProtection Disabled 

After disabling PUA, check to see if the Application is now able to run properly. 

Reference  Block potentially unwanted applications with Microsoft Defender Antivirus | Microsoft Docs 

### Attack Surface Reduction blocking Office plugin

Description: Attack Surface Reduction (ASR) is not allowing our Office plugin to work when rule “Block all Office applications from creating child processes” is set to block mode 

Troubleshooting steps: 

Place machine in MDE Troubleshooting Mode. 

Now log into the machine in question. 

Launch an elevated PowerShell command prompt. 

Type in the following and hit enter: 

Set-MpPreference -AttackSurfaceReductionRules_Ids D4F940AB-401B-4EFC-AADC-AD5F3C50688A -AttackSurfaceReductionRules_Actions Disabled 

After disabling this ASR Rule, confirm that the Office plugin now works.

Reference  Overview of attack surface reduction | Microsoft Docs 

### Domain blocked by Network Protection

Description: Network Protection is blocking our domain, thus preventing users from accessing it. 

Troubleshooting steps: 

Place machine in MDE Troubleshooting Mode. 

Now log into the machine in question. 

Launch an elevated PowerShell command prompt. 

Type in the following and hit enter: 

Set-MpPreference -EnableNetworkProtection Disabled 

After disabling Network Protection, check to see if the domain is now allowed. 

Reference  Use network protection to help prevent connections to bad sites | Microsoft Docs 

