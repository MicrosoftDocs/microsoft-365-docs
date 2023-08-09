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

# Controlled folder access (CFA) demonstration test tool (block script)

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Controlled Folder Access helps you protect valuable data from malicious apps and threats, such as ransomware. All apps (any executable file, including .exe, .scr, .dll files and others) are assessed by Microsoft Defender Antivirus, which then determines if the app is malicious or safe. If the app is determined to be malicious or suspicious, then it will not be allowed to make changes to any files in any protected folder.

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Microsoft Defender Antivirus (active mode)

## PowerShell commands

```powershell
Set-MpPreference -EnableControlledFolderAccess <State>
```

## Rule states

|State | Mode| Numeric value |
|:---|:---|:---|
| Disabled | = Off | 0 |
| Enabled | = Block mode | 1 |
| Audit | = Audit mode | 2 |

### Verify configuration

```powershell
Get-MpPreference
```

## Scenario

### Setup

Download and run this [setup script](https://demo.wd.microsoft.com/Content/CFA_SetupScript.zip). Before running the script set execution policy to Unrestricted using this PowerShell command:

```powershell
Set-ExecutionPolicy Unrestricted
```

You can perform these manual steps instead:

1. Turn on CFA using PowerShell command:

  ```powershell
  Set-MpPreference -EnableControlledFolderAccess Enabled
  ```

2. Download the CFA [test tool](https://demo.wd.microsoft.com/Content/CFAtool.exe)
3. Execute the PowerShell commands above

## Scenario: Use the CFA test tool to simulate an untrusted process writing to a protected folder

1. Launch CFA test tool
2. Select the desired folder and create file
- You can find more information [here](/microsoft-365/security/defender-endpoint/evaluate-controlled-folder-access).

## Clean-up

Download and run this [cleanup script](https://demo.wd.microsoft.com/Content/ASR_CFA_CleanupScript.zip). You can perform these manual steps instead:

```powershell
Set-MpPreference -EnableControlledFolderAccess Disabled
```

## See also
[Controlled folder access](/windows/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
