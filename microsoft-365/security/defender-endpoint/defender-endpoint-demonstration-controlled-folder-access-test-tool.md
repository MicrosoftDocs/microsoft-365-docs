---
title: Microsoft Defender for Endpoint Controlled folder access (CFA) demonstration test tool
description: See how malicious apps and threats are evaluated and countered by Microsoft Defender Antivirus.
keywords: Microsoft Defender for Endpoint, protected folder access blocked, detect suspicious files, detect suspicious apps, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
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
ms.subservice: mde
---

# Controlled folder access (CFA) demonstration test tool

Controlled Folder Access helps you protect valuable data from malicious apps and threats, such as ransomware. All apps (any executable file, including .exe, .scr, .dll files and others) are assessed by Microsoft Defender Antivirus, which then determines if the app is malicious or safe. If the app is determined to be malicious or suspicious, then it will not be allowed to make changes to any files in any protected folder.

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Microsoft Defender Antivirus

## PowerShell commands

```powershell
Set-MpPreference -ControlledFolderAccessProtectedFolders C:\demo\
```

States

- Enabled = Block mode (1)
- AuditMode = Audit Mode (2)
- Disabled = Off (0)

### Verify configuration

```powershell
Get-MpPreference
```

## Test file
[CFA ransomware test file](https://demo.wd.microsoft.com/Content/ransomware_testfile_unsigned.exe)

## Scenario

### Setup

Download and run this [setup script](https://demo.wd.microsoft.com/Content/CFA_SetupScript.zip). Before running the script set execution policy to Unrestricted using this PowerShell command: Set-ExecutionPolicy Unrestricted

You can perform these manual steps instead:
Create a folder under c: named demo, "c:\demo"
Save this [clean file](https://demo.wd.microsoft.com/Content/testfile_safe.txt) into c:\demo (we need something to encrypt)
Execute PowerShell commands above

## Scenario 1: CFA blocks ransomware test file
Turn on CFA using PowerShell command: Set-MpPreference -EnableControlledFolderAccess Enabled
Add the demo folder to protected folders list using PowerShell command: Set-MpPreference -ControlledFolderAccessProtectedFolders C:\demo\
Download the ransomware [test file](https://demo.wd.microsoft.com/Content/ransomware_testfile_unsigned.exe)
Execute the ransomware test file *this isn't ransomware, it simple tries to encrypt c:\demo

Expected results
5 seconds after executing the ransomware test file you should see a notification CFA blocked it

## Scenario 2: What would happen without CFA
Turn off CFA using this PowerShell command: Set-MpPreference -EnableControlledFolderAccess Disabled
Execute the ransomware [test file](https://demo.wd.microsoft.com/Content/ransomware_testfile_unsigned.exe)

Expected results
The files in c:\demo will be encrypted and you should get a warning message. 
Execute the ransomware test file again to decrypt the files

## Clean-up

Download and run this [cleanup script](https://demo.wd.microsoft.com/Content/ASR_CFA_CleanupScript.zip). You can perform these manual steps instead:

- Set-MpPreference -EnableControlledFolderAccess Disabled
- Cleanup c:\demo encryption run the encrypt/decrypt file

## See also

[Controlled folder access demonstration](defender-endpoint-demonstration-controlled-folder-access.md)

[Controlled folder access](/windows/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
