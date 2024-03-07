---
title: Troubleshoot Microsoft Defender Antivirus settings
description: Find out where settings for Microsoft Defender Antivirus are coming fromp
author: siosulli
ms.author: siosulli
manager: deniseb
ms.reviewer: yongrhee
ms.service: defender-endpoint
ms.topic: troubleshooting-general
ms.date: 03/07/2024
ms.subservice: ngp
ms.localizationpriority: medium 
ms.collection: # Useful for querying on a set of strategic or high-priority content.
ms.custom: partner-contribution
search.appverid: MET150
f1.keywords: NOCSH
audience: ITPro
---

# Troubleshooting where the Microsoft Defender Antivirus setting is coming from?

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business)

- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals)

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)

- Microsoft Defender Antivirus

Microsoft Defender Antivirus provides numerous ways to manage the product, which provides SMB and Enterprises with flexibility of meeting the management tools that they already have.

 

- Microsoft Defender for Endpoint Security settings management

- Microsoft Intune (MDM)

- Microsoft Configuration Manager with Tenant Attach

- Microsoft Configuration Manager Co-Management

- Microsoft Configuration Manager (standalone)

- Group Policy (GPO)

- Powershell

- Windows Management Instrumentation (WMI)

- Registry

> [!TIP]
> Best practices
> Try sticking to one method of managing Microsoft Defender for Antivirus.
Example 1) You are migrating from a third-party antivirus product and when you try enabling Microsoft Defender Antivirus, it won't start.

   You narrow it down to this registry key:

   DisableAntispyware (dword) 1 (hex) is set

 

Our current recommendation is:

1. [Preferred] Remove conflicting policies in GPO and/or Configuration Manager and/or third-party MDM and/or third-party management solutions when moving to MDE Security settings management or Intune for policy management.

Step 1) What setting wins?

Group Policy (GPO) > Microsoft Configuration Manager Co-Management > Microsoft Configuration Manager (standalone) > Microsoft Intune (MDM) > Microsoft Configuration Manager with Tenant Attach > Powershell (Set-MpPreference) or MpCmdRun.exe or Windows Management Instrumentation (WMI).

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
