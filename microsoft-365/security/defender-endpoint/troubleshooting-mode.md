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

Description: 

User wants to install application … and they receive an error message... 

Machine is onboarded to MDATP (has Tamper protection on) and Microsoft Defender AV (RTP = on), ... 

Troubleshoot steps: 

On the machine with the problem request the SOC admin to turn on Troubleshoot mode 

Observe Troubleshoot mode start (Windows Sec app notification) 

Connect to the machine (using Terminal Services for example)as an IT help desk with Local Admin permissions  

Start procmon ??? (see steps from Yong public doc reference) 

Try installing the app .. as the  

Launch Windows Sec app and Turn off Tamper protection 

Windows security > Threat & virus protection > Manage settings > Tamper protection > off 

Launch Powershell cmd elevated 

Toggle RTP off  

check RTP status - Run get-mppreference 

Turn off RTP Run set –mppreference …. 

Try installing the app .. as the 

### Scenario 2: Windows Defender (MsMpEng.exe) causes high CPU

Description:  Randomly or during a scheduled scan, MsMpEng.exe will consume/spike the CPU. 

Troubleshooting steps: 

Confirm that MsMpEng.exe is spiking the CPU with Task Manager | Details tab. 

Check to see if a Scheduled Scan is currently running or not. 

Download/run/capture Process Monitor log during the CPU spike for ~5 minutes. 

Review Process Monitor log for clues as to what the MsMpEng.exe process is touching by filtering on the PATH column. 

Once RCA is determined (whether we are scanning a busy process or file) place machine in MDE Troubleshooting Mode. 

Log into the machine in question. 

Launch an elevated PowerShell command prompt. 

(Step 8 & 9 only needed if ‘DisableLocalAdminMerge’ is enabled on the device)  

Request SOC admin to turn on Troubleshoot mode for the machine 

Observe Troubleshoot mode start (Windows Sec app notification) 

Add process/file/folder/extension exclusions based on Process Monitor findings using one of the following commands: 

Set-mppreference -ExclusionPath C:\DB\DataFiles 

Set-mppreference –ExclusionExtension .dbx 

Set-mppreference –ExclusionProcess C:\DB\Bin\Convertdb.exe 

After adding the exclusion in question, check to see if the CPU usage has dropped. 

Reference  Set-MpPreference (Defender) | Microsoft Docs 

### Scenario 3: Application takes a long time to perform an action

Description: An application takes a long time to open/save/etc. When Real-time protection is enabled.  Need to turn off Real-time protection to troubleshoot issue. 

Troubleshooting steps: 

Request SOC admin to turn on Troubleshoot mode for the machine 

To disable RTP for this scenario, you must turn off Tamper Protection first. 

Please review this doc for more info:  Protect security settings with tamper protection | Microsoft Docs 

Once Tamper Protection is disabled, place machine in MDE Troubleshooting Mode. 

Now log into the machine in question. 

Launch an elevated PowerShell command prompt. 

Type in the following and hit enter: 

Set-mppreference -DisableRealtimeMonitoring $true 

After disabling RTP, check to see if the Application still exhibits the behavior in question. 

### 



