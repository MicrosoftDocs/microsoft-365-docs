---
title: Microsoft Defender for Endpoint attack surface reduction rules demonstrations
description: See how attack surface reduction rules block various known threat types.
keywords: Microsoft Defender for Endpoint demonstration, attack surface reduction rules demonstration, ASR rules, demonstration
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

# Attack surface reduction rules demonstrations

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Attack Surface Reduction (ASR) rules target specific behaviors that are typically used by malware and malicious apps to infect machines, such as:

- Executable files and scripts used in Office apps or web mail that attempt to download or run files
- Scripts that are obfuscated or otherwise suspicious
- Behaviors that apps undertake that aren't initiated during normal day-to-day work

## Scenario requirements and setup

- Windows 10 1709 build 16273
- Windows 10 1803 build (1803 rules)
- Microsoft Defender AV
- Microsoft Office (required for Office rules and sample)
- [Download ASR PowerShell scripts](https://demo.wd.microsoft.com/Content/WindowsDefender_ASR_scripts.zip)

## PowerShell commands

```powershell
Add-MpPreference -AttackSurfaceReductionRules_Ids BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550 -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids D4F940AB-401B-4EfC-AADC-AD5F3C50688A -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 3B576869-A4EC-4529-8536-B80A7769E899 -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84 -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids D3E037E1-3EB8-44C8-A917-57927947596D -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 5BEB7EFE-FD9A-4556-801D-275E5FFC04CC -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids D1E49AAC-8F56-4280-B9BA-993A6D77406C -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids B2B3F03D-6A65-4F7B-A9C7-1C7EF74A9BA4 -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids C1DB55AB-C21A-4637-BB3F-A12568109D35 -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 01443614-CD74-433A-B99E-2ECDC07BFC25 -AttackSurfaceReductionRules_Actions Enabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 26190899-1602-49E8-8B27-EB1D0A1CE869 -AttackSurfaceReductionRules_Actions AuditMode
Add-MpPreference -AttackSurfaceReductionRules_Ids 7674BA52-37EB-4A4F-A9A1-F0F9A1619A2C -AttackSurfaceReductionRules_Actions AuditMode
```

### Rule states

|State | Mode| Numeric value |
|:---|:---|:---|
| Disabled | = Off | 0 |
| Enabled | = Block mode | 1 |
| Audit | = Audit mode | 2 |

### Verify configuration

```powershell

Get-MpPreference
```

## Test files

Note - some test files have multiple exploits embedded and will trigger multiple rules

| Rule name | Rule GUID | Windows version |
|:---|:---|:---|
| Block executable content from email client and webmail | BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550 | 1709 |
| [Block Office applications from creating child processes](https://demo.wd.microsoft.com/Content/TestFile_OfficeChildProcess_D4F940AB-401B-4EFC-AADC-AD5F3C50688A.docm) | D4F940AB-401B-4EFC-AADC-AD5F3C50688A | 1709 |
| [Block Office applications from creating executable content](https://demo.wd.microsoft.com/Content/TestFile_Block_Office_applications_from_creating_executable_content_3B576869-A4EC-4529-8536-B80A7769E899.docm) | 3B576869-A4EC-4529-8536-B80A7769E899 | 1709 |
| Block Office applications from injecting into other processes | 75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84 | 1709 |
| [Impede JavaScript and VBScript to launch executables](https://demo.wd.microsoft.com/Content/TestFile_Impede_JavaScript_and_VBScript_to_launch_executables_D3E037E1-3EB8-44C8-A917-57927947596D.js) | D3E037E1-3EB8-44C8-A917-57927947596D | 1709 |
| Block execution of potentially obfuscated scripts | 5BEB7EFE-FD9A-4556-801D-275E5FFC04CC | 1709 |
| [Block Win32 imports from Macro code in Office](https://demo.wd.microsoft.com/Content/Block_Win32_imports_from_Macro_code_in_Office_92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B.docm) | 92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B | 1709 |
|[{Block Process Creations originating from PSExec & WMI commands](https://demo.wd.microsoft.com/Content/TestFile_PsexecAndWMICreateProcess_D1E49AAC-8F56-4280-B9BA-993A6D77406C.vbs) | D1E49AAC-8F56-4280-B9BA-993A6D77406C | 1803 |
| [Block Execution of untrusted or unsigned executables inside removable USB media](https://demo.wd.microsoft.com/Content/UNSIGNED_ransomware_test_exe.exe) | B2B3F03D-6A65-4F7B-A9C7-1C7EF74A9BA4 | 1803 |
| Aggressive Ransomware Prevention | C1DB55AB-C21A-4637-BB3F-A12568109D35 | 1803 |
| Block executable files from running unless they meet a prevalence, age, or trusted list criteria | 01443614-CD74-433A-B99E-2ECDC07BFC25 | 1803 |
| Block Adobe Reader from creating child processes | 7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c | 1803 |

## Scenarios

### Setup

Download and run this [setup script](https://demo.wd.microsoft.com/Content/ASR_SetupScript.zip). Before running the script set execution policy to Unrestricted using this PowerShell command:

```powershell
Set-ExecutionPolicy Unrestricted

```

You can perform these manual steps instead:

1. Create a folder under c: named demo, "c:\demo"
2. Save this [clean file](https://demo.wd.microsoft.com/Content/testfile_safe.txt) into c:\demo.
3. Enable all rules using the powershell commands above.

### Scenario 1: ASR blocks a test file with multiple vulnerabilities

1. Enable all rules in block mode using the PowerShell commands above (you can copy paste all)
2. Download and open any of the test file/documents linked above, enable editing and content if prompted.

#### Scenario 1 expected results

You should immediately see an "Action blocked" notification.

### Scenario 2: ASR rule blocks the test file with the corresponding vulnerability

1. Configure the rule you want to test using the PowerShell command from above.
2. Example: `Add-MpPreference -AttackSurfaceReductionRules_Ids D4F940AB-401B-4EfC-AADC-AD5F3C50688A -AttackSurfaceReductionRules_Actions Enabled`
3. Download and open the test file/document for the rule you want to test linked above, enable editing and content if prompted
4. Example: [Block Office applications from creating child processes](https://demo.wd.microsoft.com/Content/ransomware_testfile_doc.docm) D4F940AB-401B-4EFC-AADC-AD5F3C50688A

#### Scenario 2 expected results

You should immediately see an "Action blocked" notification.

### Scenario 3 (1803): ASR rule blocks unsigned USB content from executing

1. Configure the rule for USB protection (B2B3F03D-6A65-4F7B-A9C7-1C7EF74A9BA4).

```powershell
Add-MpPreference -AttackSurfaceReductionRules_Ids B2B3F03D-6A65-4F7B-A9C7-1C7EF74A9BA4 -AttackSurfaceReductionRules_Actions Enabled
```

3. Download the file and put it on a USB stick and execute it [Block Execution of untrusted or unsigned executables inside removable USB media](https://demo.wd.microsoft.com/Content/UNSIGNED_ransomware_test_exe.exe)

#### Scenario 3 expected results

You should immediately see an "Action blocked" notification.

### Scenario 4: What would happen without ASR

1. Turn off all ASR rules using PowerShell commands below in the cleanup section
2. Download any test file/document linked above, enable editing and content if prompted

#### Scenario 4 expected results

- The files in c:\demo will be encrypted and you should get a warning message
- Execute the test file again to decrypt the files

## Clean-up

Download and run this [clean-up script](https://demo.wd.microsoft.com/Content/ASR_CFA_CleanupScript.zip)

Alternately, you can perform these manual steps:

```powershell
Add-MpPreference -AttackSurfaceReductionRules_Ids BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550 -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids D4F940AB-401B-4EfC-AADC-AD5F3C50688A -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 3B576869-A4EC-4529-8536-B80A7769E899 -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84 -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids D3E037E1-3EB8-44C8-A917-57927947596D -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 5BEB7EFE-FD9A-4556-801D-275E5FFC04CC -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids D1E49AAC-8F56-4280-B9BA-993A6D77406C -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids B2B3F03D-6A65-4F7B-A9C7-1C7EF74A9BA4 -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids C1DB55AB-C21A-4637-BB3F-A12568109D35 -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 01443614-CD74-433A-B99E-2ECDC07BFC25 -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 26190899-1602-49E8-8B27-EB1D0A1CE869 -AttackSurfaceReductionRules_Actions Disabled
Add-MpPreference -AttackSurfaceReductionRules_Ids 7674BA52-37EB-4A4F-A9A1-F0F9A1619A2C -AttackSurfaceReductionRules_Actions Disabled
```

Cleanup c:\demo encryption run the [encrypt/decrypt file](https://demo.wd.microsoft.com/Content/ransomware_cleanup_encrypt_decrypt.exe)

## See also

[Attack surface reduction rules deployment guide](attack-surface-reduction-rules-deployment.md)

[Attack surface reduction rules reference](attack-surface-reduction-rules-reference.md)

[Microsoft Defender for Endpoint - demonstration scenarios](defender-endpoint-demonstrations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
