---
title: "Anti-malware Scan Interface (AMSI) integration with Microsoft Defender Antivirus"  
description: Describes fileless malware and how Microsoft Defender Antivirus uses AMSI to protect against hidden threats.
author:  dansimp
ms.author: dansimp  
manager:  dansimp
ms.date: 02/27/2024  
ms.topic: conceptual
ms.service: defender-endpoint
ms.subservice: ngp
ms.localizationpriority:  
ms.collection:  
ms.custom: QuickDraft  
ms.reviewer: dansimp  
search.appverid: MET150  
f1.keywords:  
audience:  
ai-usage:  
- ai-assisted  
---

# Anti-malware Scan Interface (AMSI) integration with Microsoft Defender Antivirus

__Applies to:__

- Microsoft Defender XDR
- Microsoft Defender Antivirus
- Microsoft Defender for Endpoint P1 & P2
- Microsoft Defender for Business
- Microsoft Defender for Individuals


__Platforms__
- Windows 10 and newer
- Windows Server 2016 and newer


Microsoft Defender for Endpoint utilizes the anti-malware Scan Interface (AMSI) to enhance protection against fileless malware, dynamic script-based attacks, and other nontraditional cyber threats. This article describes the benefits of AMSI integration, the types of scripting languages it supports, and how to enable AMSI for improved security.

## What is Filless malware?
Fileless malware plays a critical role in modern cyberattacks, using stealthy techniques to avoid detection. Several major ransomware outbreaks used fileless methods as part of their kill chains.

Fileless malware uses existing tools that are already present on a compromised device, such as PowerShell.exe or wmic.exe. Malware can infiltrate a process, executing code within its memory space, and invoking these built-in tools. Attackers significantly reduce their footprint and evade traditional detection mechanisms.
 
Because memory is volatile, and fileless malware doesn't place files on disk, establishing persistence by using fileless malware can be tricky. One example of how fileless malware achieved persistence was to create a registry run key that launches a “one-liner” PowerShell cmdlet. This command launched an obfuscated PowerShell script that was stored in the registry BLOB. The obfuscated PowerShell script contained a reflective portable executable (PE) loader that loaded a Base64-encoded PE from the registry. The script stored in the registry ensured the malware persisted. 

Attackers use several fileless techniques that can make malware implants stealthy and evasive. These techniques include: 

- **Reflective DLL injection** Reflective DLL injection involves the manual loading of malicious DLLs into a process’ memory without the need for said DLLs to be on disk. The malicious DLL can be hosted on a remote attacker-controlled machine and delivered through a staged network channel (for example, Transport Layer Security (TLS) protocol), or embedded in obfuscated form inside infection vectors like macros and scripts. This results in the evasion of the OS mechanism that monitors and keeps track of loading executable modules. An example of malware that uses Reflective DLL injection is HackTool:Win32/Mikatz!dha. 

- **Memory exploits** Adversaries use fileless memory exploits to run arbitrary code remotely on victim machines. For example, the UIWIX threat uses the EternalBlue exploit, which was used by both Petya and WannaCry, to install the DoublePulsar backdoor, which lives entirely in the kernel’s memory (SMB Dispatch Table). Unlike Petya and Wannacry, UIWIX doesn't drop any files on disk. 

- **Script-based techniques** Scripting languages provide powerful means for delivering memory-only executable payloads. Script files can embed encoded shell codes or binaries that they can decrypt on the fly at run time and execute via .NET objects or directly with APIs without requiring them to be written to disk. The scripts themselves can be hidden in the registry, read from network streams, or run manually in the command-line by an attacker, without ever touching the disk. 

> [!NOTE]
> Do not disable PowerShell as a means to block fileless malware. PowerShell is a powerful and secure management tool and is important for many system and IT functions. Attackers use malicious PowerShell scripts as post-exploitation technique that can only take place after an initial compromise has already occurred. Its misuse is a symptom of an attack that begins with other malicious actions like software exploitation, social engineering, or credential theft. The key is to prevent an attacker from getting into the position where they can misuse PowerShell.

- **WMI persistence** Some attackers use the Windows Management Instrumentation (WMI) repository to store malicious scripts that are then invoked periodically using WMI bindings.

Microsoft Defender Antivirus blocks most malware using generic, heuristic, and behavior-based detections, as well as local and cloud-based machine learning models. Microsoft Defender Antivirus protects against fileless malware through these capabilities: 

- Detecting script-based techniques by using AMSI, which provides the capability to inspect PowerShell and other script types, even with multiple layers of obfuscation 
- Detecting and remediating WMI persistence techniques by scanning the WMI repository, both periodically and whenever anomalous behavior is observed 
- Detecting reflective DLL injection through enhanced memory scanning techniques and behavioral monitoring 

## Why AMSI?

AMSI provides a deeper level of inspection for malicious software that employs obfuscation and evasion techniques on Windows' built-in scripting hosts. By integrating AMSI, Microsoft Defender for Endpoint offers extra layers of protection against advanced threats.


### Supported Scripting Languages
- PowerShell
- Jscript
- VBScript
- Windows Script Host (wscript.exe and cscript.exe)
- .NET Framework 4.8 or newer (scanning of all assemblies)
- Windows Management Instrumentation (WMI)

If you use Microsoft Office 365, AMSI also supports JavaScript, VBA, and XLM.

AMSI doesn't currently support Python or Perl.

### Enabling AMSI
To enable AMSI, you need to enable Script scanning. See [Configure scanning options for Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)

Also see [Defender Policy CSP - Windows Client Management](/windows/client-management/mdm/policy-csp-defender)

### AMSI resources
[Anti-malware Scan Interface (AMSI) APIs](/windows/win32/amsi/antimalware-scan-interface-portal) are available for developers and antivirus vendors to implement.

Other Microsoft products such as [Exchange](https://techcommunity.microsoft.com/t5/exchange-team-blog/more-about-amsi-integration-with-exchange-server/ba-p/2572371) and [Sharepoint](https://techcommunity.microsoft.com/t5/microsoft-sharepoint-blog/cyberattack-protection-by-default-and-other-enhancements-to/ba-p/3925641) also use AMSI
integration. 

## More Resources to protect against fileless attacks

- [Windows Defender Application Control and AppLocker](/windows/security/application-security/application-control/windows-defender-application-control/wdac-and-applocker-overview). Enforces strong code Integrity policies and to allow only trusted applications to run. In the context of fileless malware, WDAC locks down PowerShell to Constrained Language Mode, which limits the extended language features that can lead to unverifiable code execution, such as direct .NET scripting, invocation of Win32 APIs via the Add-Type cmdlet, and interaction with COM objects. This essentially mitigates PowerShell-based reflective DLL injection attacks. 

- [Attack surface reduction](overview-attack-surface-reduction.md) helps admins protect against common attack vectors.

- [Enable virtualization-based protection of code integrity](/windows/security/hardware-security/enable-virtualization-based-protection-of-code-integrity). Mitigates kernel-memory exploits  through Hypervisor Code Integrity (HVCI), which makes it difficult to inject malicious code using kernel-mode software vulnerabilities. 