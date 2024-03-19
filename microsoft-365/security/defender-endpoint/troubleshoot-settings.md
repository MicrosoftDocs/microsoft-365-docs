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

Microsoft Defender Antivirus provides numerous ways to manage the product, which provides small and medium-sized businesses as well as enterprise organizations with flexibility by working with the management tools that they already have.

- Microsoft Defender for Endpoint security settings management
- Microsoft Intune (MDM)
- Microsoft Configuration Manager with Tenant Attach
- Microsoft Configuration Manager Co-Management
- Microsoft Configuration Manager (standalone)
- Group Policy (GPO)
- PowerShell
- Windows Management Instrumentation (WMI)
- Registry

> [!TIP]
> As a best practice, try sticking to one method of managing Microsoft Defender for Antivirus. 

## Example: You're migrating from a non-Microsoft antivirus product and when you try enabling Microsoft Defender Antivirus, it won't start.

You can narrow down the issue with this registry key: `DisableAntispyware` (dword) 1 (hex) is set.

Our current recommendation is as follows:

1. (**Preferred**) Remove conflicting policies in GPO, Configuration Manager, your MDM tools, and/or non-Microsoft management solutions when moving to Defender for Endpoint security settings management or Intune for policy management.

   When policies and settings are configure in multiple tools, in general, here's the order in which they're applied:

   1. Group Policy (GPO)
   2. Microsoft Configuration Manager Co-Management
   3. Microsoft Configuration Manager (standalone)
   4. Microsoft Intune (MDM)
   5. Microsoft Configuration Manager with Tenant Attach
   6. PowerShell ([Set-MpPreference](/powershell/module/defender/set-mppreference)), [MpCmdRun.exe](command-line-arguments-microsoft-defender-antivirus.md), or [Windows Management Instrumentation](use-wmi-microsoft-defender-antivirus.md) (WMI).

   > [!WARNING]
   > [MDMWinsOverGP](/windows/client-management/mdm/policy-csp-controlpolicyconflict) which is a Policy (CSP) does not apply for all settings such as Attack Surface Reduction rules (ASR rules) in Windows 10.
 

Step 2) Find if it's coming through a Policy or MDM or a local setting.

||Microsoft Defender Antivirus setting registry location | What tools?|
| -------- | -------- | -------- |
|Policy| HKEY_LOCAL_MACHINE\SOFTWARE\_**Policies**_\Microsoft\Windows Defender|· Microsoft Configuration Manager Co-Management ·Microsoft Configuration Manager ·Group Policy (GPO)|
|MDM|HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\***Policy Manager*** |·Microsoft Intune (MDM) ·Microsoft Configuration Manager with Tenant Attach|
|Local setting|HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\***Windows Defender***|· MpCmdRun.exe ·Powershell (Set-MpPreference) ·Windows Management Instrumentation (WMI)|

 

Now that you know it's set either Policy and/or MDM and/or Local setting.

Step 3) Find what the policy name is

|Method of the setting being applied |Command to run|
| -------- | -------- |
|Policy| GPO: Start, CMD, Run as admin GpResult.exe /h C:\temp\GpResult_output.html , or a direct modification to the registry. Microsoft Configuration Manager Co-Management and Microsoft Configuration Manager (standalone): C:\Windows\CCM\Logs.|
|MDM |Intune: Start, CMD, Run as admin, mdmdiagnosticstool.exe -zip "c:\temp\MDMDiagReport.zip"  Reference: [Collect MDM logs - Windows Client Management](/windows/client-management/mdm-collect-logs), or a direct modification to the registry.|
|Local setting |It could have been during the imaging (sysprep), via Powershell (e.g. Set-MpPreference), Windows Management Instrumentation (WMI), or a direct modification to the registry.|

Step 4) Once you have the conflicting policy, working with the Administrators of the management tools to remove the targeting to the devices that need to get the correct Microsoft Defender Antivirus setting.
