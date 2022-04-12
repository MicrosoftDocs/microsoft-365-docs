---
title: Microsoft Defender Advanced Threat Protection Controlled folder access (CFA) demonstrations
description: 
keywords: Microsoft Defender Advanced Threat Protection, Microsoft Defender ATP, Controlled folder access protection, 
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

# Controlled folder access (CFA) demonstrations

Controlled Folder Access helps you protect valuable data from malicious apps and threats, such as ransomware. All apps (any executable file, including .exe, .scr, .dll files and others) are assessed by Microsoft Defender Antivirus, which then determines if the app is malicious or safe. If the app is determined to be malicious or suspicious, then it will not be allowed to make changes to any files in any protected folder.

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Microsoft Defender AV

## PowerShell commands

- Set-MpPreference -EnableControlledFolderAccess Enabled
- Set-MpPreference -ControlledFolderAccessProtectedFolders C:\demo\
- Enabled = Block mode (1)
- AuditMode = Audit Mode (2)
- Disabled = Off (0)

## Verify configuration
Get-MpPreference
Test file
CFA ransomware test file

## Scenarios

### Setup
Download and run this setup script. Before running the script set execution policy to Unrestricted using this PowerShell command: Set-ExecutionPolicy Unrestricted

You can perform these manual steps instead:
1. Create a folder under c: named demo, "c:\demo"
2. Save this clean file into c:\demo (we need something to encrypt)
3. Execute PowerShell commands above

### Scenario 1: CFA blocks ransomware test file

1. Turn on CFA using powershell command: Set-MpPreference -EnableControlledFolderAccess Enabled
2. Add the demo folder to protected folders list using PowerShell command: Set-MpPreference -ControlledFolderAccessProtectedFolders C:\demo\
3. Download the ransomware test file
4. Execute the ransomware test file *this is not ransomware, it simple tries to encrypt c:\demo

#### Expected results

5 seconds after executing the ransomware test file you should see a notification CFA blocked it

### Scenario 2: What would happen without CFA

1. Turn off CFA using this powershell command: Set-MpPreference -EnableControlledFolderAccess Disabled
2. Execute the ransomware test file

#### Expected results

- The files in c:\demo will be encrypted and you should get a warning message
- Execute the ransomware test file again to decrypt the files

## Clean-up

Download and run this cleanup script. You can perform these manual steps instead:

- Set-MpPreference -EnableControlledFolderAccess Disabled
- Cleanup c:\demo encryption run the encrypt/decrypt file

## Learn more

Controlled Folder Access
