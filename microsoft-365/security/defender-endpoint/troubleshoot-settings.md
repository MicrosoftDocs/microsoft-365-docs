---
# Required metadata
# For more information, see https://review.learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata?branch=main
# For valid values of ms.service, ms.prod, and ms.topic, see https://review.learn.microsoft.com/en-us/help/platform/metadata-taxonomies?branch=main

title:       # Add a title for the browser tab
description: # Add a meaningful description for search results
author:      YongRhee-MSFT # GitHub alias
ms.author:   yongrhee # Microsoft alias
ms.service:  # Add the ms.service or ms.prod value
# ms.prod:   # To use ms.prod, uncomment it and delete ms.service
ms.topic:    # Add the ms.topic value
ms.date:     03/06/2024
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
 

Our current recommendation is:

1. [Preferred] Remove conflicting policies in GPO and/or Configuration Manager and/or 3<sup>rd</sup> party MDM and/or 3<sup>rd</sup> party management solutions when moving to MDE Security settings management or Intune for policy management.

> [!NOTE]
> MDMWinsOverGP which is a Policy (CSP)  does not apply for all settings such as Attack Surface Reduction rules (ASR rules) in Windows 10.
> 
Example 1) You are migrating from a third-party antivirus product and when you try enabling Microsoft Defender Antivirus, it won’t start.

   You narrow it down to this registry key:

   DisableAntispyware (dword) 1 (hex) is set

 

Step 1) Find if it’s coming through a Policy or MDM or a local setting.

 

||Microsoft  
Defender Antivirus setting registry location|What tools?|
| -------- | -------- | -------- |
| |Microsoft Defender Antivirus setting registry location|What tools?|
|Policy|HKEY_LOCAL_MACHINE\SOFTWARE\__Policies__\Microsoft\Windows Defender|·       Microsoft Configuration Manager Co-Management ·       Microsoft Configuration Manager ·       Group Policy (GPO)|
|MDM|HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\__Policy Manager__|·       Microsoft Intune (MDM) ·       Microsoft Configuration Manager with Tenant Attach|
|Local setting|HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\|·       MpCmdRun.exe ·       Powershell (Set-MpPreference) ·       Windows Management Instrumentation (WMI)|

 

Now that you know it’s set either Policy and/or MDM and/or Local setting.

 

Step 2) Find what the policy name is

 

|Method of the  
setting being applied||
| -------- | -------- |
|Method of the setting being applied| |
|Policy|GPO: Start, CMD, Run as admin GpResult.exe /h C:\temp\GpResult_output.html , or a direct modification to the registry.   Microsoft Configuration Manager Co-Management and Microsoft Configuration Manager (standalone): C:\Windows\CCM\Logs|
|MDM|·       Intune: Start, CMD, Run as admin mdmdiagnosticstool.exe -zip "c:\temp\MDMDiagReport.zip" [Collect MDM logs - Windows Client Management](/windows/client-management/mdm-collect-logs) , or a direct modification to the registry|
|Local setting|·       It could have been during the imaging (sysprep), via Powershell (Set-MpPreference), Windows Management Instrumentation (WMI), or a direct modification to the registry|

 

Step 3) Once you have the conflicting policy, working with the Administrators of the management tools to remove the targeting to the devices that need to get the correct setting.
