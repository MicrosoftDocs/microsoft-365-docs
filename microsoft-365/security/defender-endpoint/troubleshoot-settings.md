---
title: Troubleshoot Microsoft Defender Antivirus settings
description: Find out where settings for Microsoft Defender Antivirus are coming from.
author: siosulli
ms.author: siosulli
manager: deniseb
ms.reviewer: yongrhee
ms.service: defender-endpoint
ms.topic: troubleshooting-general
ms.date: 03/19/2024
ms.subservice: ngp
ms.localizationpriority: medium 
ms.collection: # Useful for querying on a set of strategic or high-priority content.
ms.custom: partner-contribution
search.appverid: MET150
f1.keywords: NOCSH
audience: ITPro
---

# Troubleshoot Microsoft Defender Antivirus settings

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

Microsoft Defender Antivirus provides numerous ways to manage the product, which provides small and medium-sized businesses and enterprise organizations with flexibility by working with the management tools that they already have.

- Microsoft Defender for Endpoint security settings management
- Microsoft Intune (MDM)
- Microsoft Configuration Manager with Tenant Attach
- Microsoft Configuration Manager co-management
- Microsoft Configuration Manager (standalone)
- Group Policy (GPO)
- PowerShell
- Windows Management Instrumentation (WMI)
- Registry

> [!TIP]
> As a best practice, try sticking to one method of managing Microsoft Defender for Antivirus. 

Suppose that migrating from a non-Microsoft antivirus product, and when you try enabling Microsoft Defender Antivirus, it won't start. Most likely, you're experiencing a policy conflict. You can narrow down the issue by checking this registry key: `DisableAntispyware` (dword) 1 (hex) is set. 

To remove policy conflicts, here's our current, recommended process:

1. Understand the order of precedence.
2. Determine where Microsoft Defender Antivirus settings are coming from.
3. Identify policies and settings.
4. Work with your security team to remove or revise policies and settings.

## Step 1: Understand the order of precedence

When policies and settings are configured in multiple tools, in general, here's the order of precedence:

1. Group Policy (GPO)
2. Microsoft Configuration Manager co-management
3. Microsoft Configuration Manager (standalone)
4. Microsoft Intune (MDM)
5. Microsoft Configuration Manager with Tenant Attach
6. PowerShell ([Set-MpPreference](/powershell/module/defender/set-mppreference)), [MpCmdRun.exe](command-line-arguments-microsoft-defender-antivirus.md), or [Windows Management Instrumentation](use-wmi-microsoft-defender-antivirus.md) (WMI).

> [!WARNING]
> [MDMWinsOverGP](/windows/client-management/mdm/policy-csp-controlpolicyconflict) which is a Policy (CSP) does not apply for all settings such as Attack Surface Reduction rules (ASR rules) in Windows 10.
 
## Step 2: Determine where Microsoft Defender Antivirus settings are configured

Find out whether Microsoft Defender Antivirus settings are coming through a policy, MDM, or a local setting. The following table describes policies, settings, and relevant tools.

|Policy or setting| Registry location | Tools|
| -------- | -------- | -------- |
|Policy| `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender`|- Microsoft Configuration Manager co-management<br/>- Microsoft Configuration Manager<br/>- GPO|
|MDM|`HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Policy Manager` |- Microsoft Intune (MDM)<br/>- Microsoft Configuration Manager with Tenant Attach|
|Local setting|`HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender`|- MpCmdRun.exe<br/>- PowerShell (Set-MpPreference)<br/>- Windows Management Instrumentation (WMI)|

## Step 3: Identify policies or settings

The following table describes how to identify policies and settings.

|Method used | What to check |
| -------- | -------- |
|Policy| - If you're using GPO: Select **Start**, open Command Prompt as an administrator, and then run the command `GpResult.exe /h C:\temp\GpResult_output.html`. <br/>- If you're using Microsoft Configuration Manager co-management or Microsoft Configuration Manager (standalone), go to `C:\Windows\CCM\Logs`.|
|MDM | If you're using Intune, on your device, select Start, open Command Prompt as an admin, and then run the command `mdmdiagnosticstool.exe -zip "c:\temp\MDMDiagReport.zip"`. See [Collect MDM logs - Windows Client Management](/windows/client-management/mdm-collect-logs). |
|Local setting | Determine whether the policy or setting was deployed during the imaging (sysprep), via PowerShell (for example, Set-MpPreference), Windows Management Instrumentation (WMI), or through a direct modification to the registry.|

## Step 4: Remove or revise conflicting policies

Once you have identified the conflicting policy, work with your security administrators to change device targeting so that devices receive the correct Microsoft Defender Antivirus settings.


