---
title: Microsoft Defender for Endpoint Controlled folder access (CFA) demonstrations
description: Demonstrates how Controlled Folder Access protects valuable data from malicious apps and threats, such as ransomware.
keywords: Microsoft Defender for Endpoint, Controlled folder access protection, Controlled folder access demonstration
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: evaluation
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
- demo
ms.topic: article
ms.subservice: mde
ms.date: 10/21/2022
---

# Controlled folder access (CFA) demonstrations (block ransomware)

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Controlled Folder Access helps you protect valuable data from malicious apps and threats, such as ransomware. All apps (any executable file, including .exe, .scr, .dll files and others) are assessed by Microsoft Defender Antivirus, which then determines if the app is malicious or safe. If the app is determined to be malicious or suspicious, then it will not be allowed to make changes to any files in any protected folder.

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Microsoft Defender Antivirus (active mode)

## PowerShell commands

```powershell
Set-MpPreference -EnableControlledFolderAccess (State)
```

```powershell
Set-MpPreference -ControlledFolderAccessProtectedFolders C:\demo\
```

## Rule states

|State | Mode| Numeric value |
|:---|:---|:---|
| Disabled | = Off | 0 |
| Enabled | = Block mode | 1 |
| Audit | = Audit mode | 2 |

## Verify configuration

```powershell
Get-MpPreference
```

## Test file

[CFA ransomware test file](https://demo.wd.microsoft.com/Content/ransomware_testfile_unsigned.exe)

## Scenarios

### Setup

Download and run this [setup script](https://demo.wd.microsoft.com/Content/CFA_SetupScript.zip). Before running the script set execution policy to Unrestricted using this PowerShell command: 

```powershell
Set-ExecutionPolicy Unrestricted
```

You can perform these manual steps instead:

1. Create a folder under c: named demo, "c:\demo"
2. Save this [clean file](https://demo.wd.microsoft.com/Content/testfile_safe.txt) into c:\demo (we need something to encrypt)
3. Execute PowerShell commands above

### Scenario 1: CFA blocks ransomware test file

1. Turn on CFA using PowerShell command:
  
```powershell
Set-MpPreference -EnableControlledFolderAccess Enabled
```

2. Add the demo folder to protected folders list using PowerShell command:

```powershell
Set-MpPreference -ControlledFolderAccessProtectedFolders C:\demo\
```

3. Download the ransomware [test file](https://demo.wd.microsoft.com/Content/ransomware_testfile_unsigned.exe)
4. Execute the ransomware test file *this isn't ransomware, it simple tries to encrypt c:\demo

#### Scenario 1 expected results

5 seconds after executing the ransomware test file you should see a notification CFA blocked the encryption attempt.

### Scenario 2: What would happen without CFA

1. Turn off CFA using this PowerShell command:

```powershell
Set-MpPreference -EnableControlledFolderAccess Disabled
```

2. Execute the ransomware [test file](https://demo.wd.microsoft.com/Content/ransomware_testfile_unsigned.exe)

#### Scenario 2 expected results

- The files in c:\demo will be encrypted and you should get a warning message
- Execute the ransomware test file again to decrypt the files

## Clean-up

Download and run this [cleanup script](https://demo.wd.microsoft.com/Content/ASR_CFA_CleanupScript.zip). You can perform these manual steps instead:

```powershell
Set-MpPreference -EnableControlledFolderAccess Disabled
```

Cleanup c:\demo encryption run the [encrypt/decrypt file](https://demo.wd.microsoft.com/Content/ransomware_cleanup_encrypt_decrypt.exe)

## See also
[Controlled folder access](/windows/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard?ocid=wd-av-demo-cfa-bottom)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
