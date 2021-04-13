---
title: Migrating from a third-party HIPS to ASR rules
description: Describes how to approach a migration from a third-party Host Intrusion Prevention System (HIPS) solution into ASR rules.
keywords: Attack surface reduction rules, asr, asr rules, hips, host intrusion prevention system, protection rules, anti-exploit, antiexploit, exploit, infection prevention, Microsoft Defender for Endpoint, Microsoft Defender ATP
search.product: eADQiWindows 10XVcnh
ms.topic: article
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: lovina-saldanha
ms.author: v-lsaldanha
manager: dansimp
ms.custom: asr
ms.technology: mde
---

# Migrating from a third-party HIPS to ASR rules

This article helps you to map common rules to Microsoft Defender for Endpoint.

## Scenarios when migrating from a third-party HIPS product to ASR rules

### Block creation of specific files and registry keys

- **Applies to**- All processes
- **Operation**- File Creation
- **Examples of Files/Folders, Registry Keys/Values, Processes, Services**- *.zepto, *.odin, *.locky, *.jaff, *.lukitus, *.wnry, *.krab
- **Attack Surface Reduction rules**- ASR rules block the attack techniques and not the Indicators of Compromise (IOC). Blocking a specific file extension is not always useful, as it does not prevent a device from compromise. It only partially thwarts an attack until attackers create a new type of extension for the payload.
- **Other recommended features**- Having Microsoft Defender AV enabled, along with Cloud Protection and Behavior Analysis is highly recommended. We recommend that you use other prevention, such as the ASR rule "Use advanced protection against ransomware". This provides a greater level of protection against ransomware attacks. Furthermore, many of these registry keys are monitored by Microsoft Defender for Endpoint, such as ASEP techniques, which will trigger specific alerts. The registry keys used require a minimum of Local Admin or Trusted Installer privileges to be able to be modified. Using a locked down environment, with minimum administrative accounts or rights, is recommended. Other system configurations can be enabled, including "Disable SeDebug for non-required roles" that are part of our wider security recommendations.

### Block creation of specific files and registry keys

- **Applies to**- All Processes
- **Processes**- N/A
- **Operation**- Registry Modifications
- **Examples of Files/Folders, Registry Keys/Values, Processes,Services**- *\Software*,HKCU\Environment\UserInitMprLogonScript,HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Accessibility\ATs*\StartExe, HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options*\Debugger,HKEY_CURRENT_USER\Software\Microsoft\HtmlHelp Author\location,HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit*\MonitorProcess
- **Attack Surface Reduction rules**- ASR rules block the attack techniques and not the Indicators of Compromise (IOC). Blocking a specific file extension is not always useful, because it does not prevent a device from compromise. It only partially thwarts an attack until attackers create a new type of extension for the payload.
- **Other recommended features**- Having Microsoft Defender AV enabled, along with Cloud Protection and Behavior Analysis is highly recommended. We recommend you use additional prevention, such as the ASR rule "Use advanced protection against ransomware". This provides a greater level of protection against ransomware attacks. Furthermore, several of these registry keys are monitored by Microsoft Defender for Endpoint, such as ASEP techniques, which will trigger specific alerts. Additionally, the registry keys used require a minimum of Local Admin or Trusted Installer privileges to be able to be modified. Using a locked down environment, with minimum administrative accounts or rights, is recommended. Other system configurations can be enabled, including "Disable SeDebug for non-required roles" that are part of our wider security recommendations.

### Block untrusted programs from running from removable drives

- **Applies to**- Untrusted Programs from USB
- **Processes**- *
- **Operation**- Process Execution
- **Examples of Files/Folders, Registry Keys/Values, Processes,Services:-*
- **Attack Surface Reduction rules**- ASR rules have a built-in rule to prevent the launch of untrusted and unsigned programs from removable drives: "Block untrusted and unsigned processes that run from USB", GUID "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4".
- **Other recommended features**- Please explore additional controls for USB devices and other removable media using Microsoft Defender for Endpoint:[How to control USB devices and other removable media using Microsoft Defender for Endpoint](/windows/security/threat-protection/device-control/control-usb-devices-using-intune).

### Block Mshta from launching certain child processes

- **Applies to**- Mshta
- **Processes**- mshta.exe
- **Operation**- Process Execution
- **Examples of Files/Folders, Registry Keys/Values, Processes,Services**- powershell.exe, cmd.exe, regsvr32.exe
- **Attack Surface Reduction rules**- ASR rules don't contain any specific rule to prevent child processes from "mshta.exe". This control is within the remit of Exploit Protection or Windows Defender Application Control.
- **Other recommended features**- Enable Windows Defender Application Control to prevent mshta.exe from being executed altogether. If your organization requires "mshta.exe" for line of business apps, configure a specific Windows Defender Exploit Protection rule, to prevent mshta.exe from launching child processes.

### Block Outlook from launching child processes

- **Applies to**- Outlook
- **Processes**- outlook.exe
- **Operation**- Process Execution
- **Examples of Files/Folders, Registry Keys/Values, Processes,Services**- powershell.exe
- **Attack Surface Reduction rules**- ASR rules have a built-in rule to prevent Office communication apps (Outlook, Skype and Teams) from launching child processes: "Block Office communication application from creating child processes", GUID "26190899-1602-49e8-8b27-eb1d0a1ce869".
- **Other recommended features**- We recommend enabling PowerShell constrained language mode to minimize the attack surface from PowerShell.


### Block Office Apps from launching child processes and from creating executable content

- **Applies to**- Office  
- **Processes**- winword.exe, powerpnt.exe, excel.exe
- **Operation**- Process Execution
- **Examples of Files/Folders, Registry Keys/Values, Processes,Services**- powershell.exe, cmd.exe, wscript.exe, mshta.exe, EQNEDT32.EXE, regsrv32.exe
- **Attack Surface Reduction rules**- ASR rules have a built-in rule to prevent Office apps from launching child processes: "Block all Office applications from creating child processes", GUID "D4F940AB-401B-4EFC-AADC-AD5F3C50688A".
- **Other recommended features**- N/A
    
### Block Office Apps from launching child processes and from creating executable content

- **Applies to**- Office
- **Processes**- winword.exe, powerpnt.exe, excel.exe
- **Operation**- File Creation
- **Examples of Files/Folders, Registry Keys/Values, Processes,Services**- C:\Users*\AppData**.exe, C:\ProgramData**.exe, C:\ProgramData**.com, C:\Users*AppData\Local\Temp**.com, C:\Users*\Downloads**.exe, C:\Users*\AppData**.scf, C:\ProgramData**.scf, C:\Users\Public*.exe, C:\Users*\Desktop***.exe
- **Attack Surface Reduction rules**- N/A.

### Block Wscript from reading certain types of files

- **Applies to**- Wscript
- **Processes**- wscript.exe
- **Operation**- File Read
- **Examples of Files/Folders, Registry Keys/Values, Processes, Services**- C:\Users*\AppData**.js, C:\Users*\Downloads**.js
- **Attack Surface Reduction rules**- Due to reliability and performance issues, ASR rules do not have the capability to prevent a specific process from reading a certain script file type. We do have a rule to prevent attack vectors that might originate from these scenarios. The rule name is "Block JavaScript or VBScript from launching downloaded executable content" (GUID "D3E037E1-3EB8-44C8-A917-57927947596D") and the "Block execution of potentially obfuscated scripts" (GUID " 5BEB7EFE-FD9A-4556-801D-275E5FFC04CC").
- **Other recommended features**- Though there are specific ASR rules that mitigate certain attack vectors within these scenarios, it's important to mention that AV is able by default to inspect scripts (PowerShell, Windows Script Host, JavaScript, VBScript, and more) in real time, through the Antimalware Scan Interface (AMSI). More info is available here: [Antimalware Scan Interface (AMSI)](/windows/win32/amsi/antimalware-scan-interface-portal).

### Block launch of child processes

- **Applies to**- Adobe Acrobat
- **Processes**- AcroRd32.exe, Acrobat.exe
- **Operation**- Process Execution
- **Examples of Files/Folders, Registry Keys/Values, Processes, Services**- cmd.exe, powershell.exe, wscript.exe
- **Attack Surface Reduction rules**- ASR rules allow blocking Adobe Reader from launching child processes. The rule name is "Block Adobe Reader from creating child processes", GUID "7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c".
- **Other recommended features**- N/A


### Block download or creation of executable content

- **Applies to**- CertUtil: Block download or creation of executable 
- **Processes**- certutil.exe
- **Operation**- File Creation
- **Examples of Files/Folders, Registry Keys/Values, Processes, Services**- *.exe
- **Attack Surface Reduction rules**- ASR rules don't support these scenarios because they are a part of Microsoft Defender Antivirus protection.
- **Other recommended features**- Microsoft Defender AV prevents CertUtil from creating or downloading executable content.


### Block processes from stopping critical System components

- **Applies to**- All Processes
- **Processes**- *
- **Operation**- Process Termination
- **Examples of Files/Folders, Registry Keys/Values, Processes, Services**- MsSense.exe, MsMpEng.exe, NisSrv.exe, svchost.exe*, services.exe, csrss.exe, smss.exe, wininit.exe, and more.
- **Attack Surface Reduction rules**- ASR rules don't support these scenarios because they are protected with Windows 10 built-in security protections.
- **Other recommended features**- ELAM (Early Launch AntiMalware), PPL (Protection Process Light), PPL AntiMalware Light, and System Guard.

### Block specific launch Process Attempt

- **Applies to**- Specific Processes
- **Processes**- "Name your Process"
- **Operation**- Process Execution
- **Examples of Files/Folders, Registry Keys/Values, Processes, Services**- tor.exe, bittorrent.exe, cmd.exe, powershell.exe, and more
- **Attack Surface Reduction rules**- Overall, ASR rules aren't designed to function as an Application manager.
- **Other recommended features**- To prevent users from launching specific processes or programs, it is recommended to use Windows Defender Application Control. Microsoft Defender for Endpoint File and Cert indicators, can be used in an Incident Response scenario (should not be seen as an application control mechanism).
    
### Block unauthorized changes to MDATP AV configurations

- **Applies to**- All Processes
- **Processes**- *
- **Operation**- Registry Modifications
- **Examples of Files/Folders, Registry Keys/Values, Processes, Services**- HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\DisableAntiSpyware, HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Policy Manager\AllowRealTimeMonitoring, etc.
- **Attack Surface Reduction rules**- ASR rules don't cover these scenarios because they are part of the Microsoft Defender for Endpoint built-in protection.
- **Other recommended features**- Tamper Protection (opt-in, managed from Intune) prevents unauthorized changes to DisableAntiVirus, DisableAntiSpyware, DisableRealtimeMonitoring, DisableOnAccessProtection, DisableBehaviorMonitoring and DisableIOAVProtection registry keys (and more).

See also

- [Attack surface reduction FAQ](attack-surface-reduction-faq.md)
- [Enable attack surface reduction rules](enable-attack-surface-reduction.md)
- [Evaluate attack surface reduction rules](evaluate-attack-surface-reduction.md)
