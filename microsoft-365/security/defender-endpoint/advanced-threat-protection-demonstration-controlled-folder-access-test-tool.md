---
title: Microsoft Defender Advanced Threat Protection Controlled folder access (CFA) demonstration test tool
description: See how malicious apps and threats are evaluated and countered by Microsoft Defender Antivirus.
keywords: Microsoft Defender Advanced Threat Protection, Microsoft Defender ATP, protected folder access blocked, detect suspicious files, detect suspicious apps, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: v-jweston
author: jweston-1
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Controlled folder access (CFA) demonstration test tool

Controlled Folder Access helps you protect valuable data from malicious apps and threats, such as ransomware. All apps (any executable file, including .exe, .scr, .dll files and others) are assessed by Microsoft Defender Antivirus, which then determines if the app is malicious or safe. If the app is determined to be malicious or suspicious, then it will not be allowed to make changes to any files in any protected folder.

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Microsoft Defender AV

## PowerShell commands

- Set-MpPreference -EnableControlledFolderAccess Enabled
- Enabled = Block mode (1)
- AuditMode = Audit Mode (2)
- Disabled = Off (0)

### Verify configuration

- Get-MpPreference

## Scenario

### Setup

Download and run this setup script. Before running the script set execution policy to Unrestricted using this PowerShell command: Set-ExecutionPolicy Unrestricted
Downloaded CFA tool will be in the c:/demo/CFATestFiles folder.

You can perform these manual steps instead:

1. Turn on CFA using powershell command: Set-MpPreference -EnableControlledFolderAccess Enabled
2. Download the CFA test tool
3. Execute PowerShell commands above

### Scenario 1: Use the CFA test tool to simulate an untrusted process writing to a protected folder

1. Launch CFA test tool
2. Select the desired folder and create file
3. You can find more information here

## Clean-up

Download and run this [cleanup script](@@). You can perform these manual steps instead:

- Set-MpPreference -EnableControlledFolderAccess Disabled

## See also

[Controlled folder access demonstration](advanced-threat-protection-demonstration-controlled-folder-access.md)

[Controlled folder access](/windows/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard?ocid=wd-av-demo-cfa-bottom)

[Microsoft Defender Advanced Threat Protection (ATP) - demonstration scenarios](advanced-threat-protection-demonstrations.md)
