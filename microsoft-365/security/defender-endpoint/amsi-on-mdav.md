---
title: "Antimalware Scan Interface (AMSI) integration with Microsoft Defender Antivirus"  
description: describes fileless malware and how Microsoft Defender Antivirus uses AMSI to protect against hidden threats
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

# Antimalware Scan Interface (AMSI) integration with Microsoft Defender Antivirus

__Applies to:__

- Microsoft Defender XDR
- Microsoft Defender for Endpoint P2
- Microsoft Defender for Business
- Microsoft Defender for Endpoint P1
- Microsoft Defender Antivirus
- Microsoft Defender for Individuals
 
__Platforms__
- Windows 10 and newer
- Windows Server 2016 and newer


Microsoft Defender for Endpoint utilizes the Antimalware Scan Interface (AMSI) to enhance protection against fileless malware, dynamic
script-based attacks, and other non-traditional cyber threats. This article will discuss the benefits of AMSI integration, the types of
scripting languages it supports, and how to enable AMSI for improved security.

## What is Filless malware?
Fileless malware plays a critical role in modern cyberattacks, using stealthy techniques to avoid detection. Several major ransomware outbreaks have incorporated fileless methods as part of their kill chains.

Fileless malware uses existing tools that are already present on a compromised device, such as PowerShell.exe or wmic.exe. By infiltrating a process, executing code within its memory space, and invoking these built-in tools, attackers significantly reduce their footprint and evade traditional detection mechanisms. 
Because memory is volatile, and fileless malware doesn't place files on disk, establishing persistence by using fileless malware can be tricky. One example of how fileless malware achieved persistance was to create a registry run key that launches a “one-liner” PowerShell cmdlet. This command launched an obfuscated PowerShell script that was stored in the registry BLOB. The obfuscated PowerShell script contained a reflective portable executable (PE) loader that loaded a Base64-encoded PE from the registry. The script stored in the registry ensured the malware persisted. 

Attackers use several fileless techniques that can make malware implants stealthy and evasive. These techniques include: 

- **Reflective DLL injection** Reflective DLL injection involves the manual loading of malicious DLLs into a process’ memory without the need for said DLLs to be on disk. The malicious DLL can be hosted on a remote attacker-controlled machine and delivered through a staged network channel (for example, Transport Layer Security (TLS) protocol), or embedded in obfuscated form inside infection vectors like macros and scripts. This results in the evasion of the OS mechanism that monitors and keeps track of loading executable modules. An example of malware that uses Reflective DLL injection is HackTool:Win32/Mikatz!dha. 

- **Memory exploits** Adversaries use fileless memory exploits to run arbitrary code remotely on victim machines. For example, the UIWIX threat uses the EternalBlue exploit, which was used by both Petya and WannaCry, and has been observed to install the DoublePulsar backdoor, which lives entirely in the kernel’s memory (SMB Dispatch Table). Unlike Petya and Wannacry, UIWIX does not drop any files on disk. 

- **Script-based techniques** Scripting languages provide powerful means for delivering memory-only executable payloads. Script files can embed encoded shellcodes or binaries that they can decrypt on the fly at run time and execute via .NET objects or directly with APIs without requiring them to be written to disk. The scripts themselves can be hidden in the registry, read from network streams, or simply run manually in the command-line by an attacker, without ever touching the disk. 

> [!NOTE]
> Do not disable PowerShell as a means to block fileless malware. PowerShell is a powerful and secure management tool and is important for many system and IT functions. Attackers use malicious PowerShell scripts as post-exploitation technique that can only take place after an initial compromise has already occurred. Its misuse is a symptom of an attack that begins with other malicious actions like software exploitation, social engineering, or credential theft. The key is to prevent an attacker from getting into the position where they can misuse PowerShell.

- **WMI persistence** Some attackers use the Windows Management Instrumentation (WMI) repository to store malicious scripts that are then invoked periodically using WMI bindings.

Microsoft Defender Antivirus blocks the vast majority of malware using generic, heuristic, and behavior-based detections, as well as local and cloud-based machine learning models. Microsoft Defender Antivirus protects against fileless malware through these capabilities: 

- Detecting script-based techniques by leveraging AMSI, which provides the capability to inspect PowerShell and other script types, even with multiple layers of obfuscation 
- Detecting and remediating WMI persistence techniques by scanning the WMI repository, both periodically and whenever anomalous behavior is observed 
- Detecting reflective DLL injection through enhanced memory scanning techniques and behavioral monitoring 

## Why AMSI?

AMSI provides a deeper level of inspection for malicious software that employs obfuscation and evasion techniques on Windows' built-in scripting hosts. By integrating AMSI, Microsoft Defender for Endpoint offers additional layers of protection against advanced threats.


### Supported Scripting Languages
- PowerShell
- Jscript
- VBScript
- Windows Script Host (wscript.exe and cscript.exe)
- .NET Framework 4.8 or newer (scanning of all assemblies)
- Windows Management Instrumentation (WMI)

If you use Microsoft Office 365, AMSI also supports JavaScript, VBA,
and XLM.

Note that AMSI does not currently support Python or Perl.

### Enabling AMSI
To enable AMSI, follow these steps:

1.  Enable "Turn on script scanning"

For more information on configuring scanning options, refer to the
following resources:

- [Configure scanning options for Microsoft Defender Antivirus](configure-advanced-scan-types-microsoft-defender-antivirus.md)
- [Defender Policy CSP - Windows Client Management](/windows/client-management/mdm/policy-csp-defender)

### AMSI resources
[Antimalware Scan Interface (AMSI) APIs](/windows/win32/amsi/antimalware-scan-interface-portal) are also available for developers and antivirus
vendors to implement.

Note that other Microsoft products such as [Exchange](https://techcommunity.microsoft.com/t5/exchange-team-blog/more-about-amsi-integration-with-exchange-server/ba-p/2572371) and [Sharepoint](https://techcommunity.microsoft.com/t5/microsoft-sharepoint-blog/cyberattack-protection-by-default-and-other-enhancements-to/ba-p/3925641) also use AMSI
integration. 

## Additional Resources to protect against fileless malware
- [Windows Defender Application Control and AppLocker](/windows/security/application-security/application-control/windows-defender-application-control/wdac-and-applocker-overview). Enforces strong code Integrity policies and to allow only trusted applications to run. In the context of fileless malware, WDAC locks down PowerShell to Constrained Language Mode, which limits the extended language features that can lead to unverifiable code execution, such as direct .NET scripting, invocation of Win32 APIs via the Add-Type cmdlet, and interaction with COM objects. This essentially mitigates PowerShell-based reflective DLL injection attacks. 

- [Attack surface reduction](overview-attack-surface-reduction.md) helps admins protect against common attack vectors.

- [Enable virtualization-based protection of code integrity](/windows/security/hardware-security/enable-virtualization-based-protection-of-code-integrity). Mitigates kernel-memory exploits  through Hypervisor Code Integrity (HVCI), which makes it difficult to inject malicious code using kernel-mode software vulnerabilities. 

## END rewrite
 
Microsoft Defender Antivirus has [Antimalware Scan Interface (AMSI)](/windows/win32/amsi/antimalware-scan-interface-portal) integrated in order to expose and block fileless malware such as dynamic script-based malware and non-traditional avenues of cyberattack.
 
The idea behind fileless malware is simple: If tools already exist on a device (for example _PowerShell.exe_ or _wmic.exe_) to fulfill an attacker’s objectives, then why drop custom tools that could be flagged as malware? If an attacker can take over a process, run code in its memory space, and then use that code to call tools that are already on a device, the attack becomes more difficult to detect.
  
Q: Why AMSI?
A: Malicious software that uses obfuscation and evasion techniques on Windows’ built-in scripting hosts will automatically be inspected at a much deeper level than ever before, providing additional levels of protection.  For details [How the Antimalware Scan Interface (AMSI) helps you defend against malware](/windows/win32/amsi/how-amsi-helps)
 
Q: What type of scripting languages does AMSI support?
A: Powershell, Jscript, VBScript, Windows Script Host (wscript.exe and cscript.exe), [.Net Framework 4.8](/dotnet/framework/whats-new/) or newer introduced the scanning of all assemblies, Windows Management Instrumentation (WMI).  If you have Microsoft Office 365, it also supports JavaScript/[VBA](https://www.microsoft.com/en-us/security/blog/2018/09/12/office-vba-amsi-parting-the-veil-on-malicious-macros/)/[XLM](https://www.microsoft.com/en-us/security/blog/2021/03/03/xlm-amsi-new-runtime-defense-against-excel-4-0-macro-malware/).
 
Q: How about Python and/or Perl?
A: Not today.
 
Q: What type of attacks use scripts?
A: Blacksun ransomware, PSRansom, PowerWave, Vice Society Ransomware, etc…
 
Q: How to enable AMSI?
A: Enable “Turn on script scanning”
For more information:
[Configure scanning options for Microsoft Defender Antivirus | Microsoft Learn](/microsoft-365/security/defender-endpoint/configure-advanced-scan-types-microsoft-defender-antivirus)
[Defender Policy CSP - Windows Client Management | Microsoft Learn](/windows/client-management/mdm/policy-csp-defender)
 
Q:  Are you able to de-obfuscate (decode) the base-64 encoding?
A: Yes, in Microsoft Defender for Endpoint, we even show the decoded script.
 
Q: How to submit a False Positive (FP) or False Negative (FN)?
A: [Address false positives/negatives in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/defender-endpoint-false-positives-negatives)
 
Q: When did MDAV start supporting AMSI?
A: On day 1 (announced June 9<sup>th</sup>, 2015), since we (Microsoft Defender) created the solution in collaboration with our Powershell engineering team.
 
Q: Are there Microsoft products that have AMSI integration?
A:  Yes, products such as [Exchange](https://techcommunity.microsoft.com/t5/exchange-team-blog/more-about-amsi-integration-with-exchange-server/ba-p/2572371), [Sharepoint](https://techcommunity.microsoft.com/t5/microsoft-sharepoint-blog/cyberattack-protection-by-default-and-other-enhancements-to/ba-p/3925641) have AMSI integration.
 
Q: Are there any new AMSI features coming?
A: In this cat-and-mouse game, yes, we will continue iterating on improving AMSI.  Stay tuned.
 
Q: Is AMSI available for any developer and antivirus vendor?
A: Yes, we released AMSI as a part of Windows 10, and Windows Server 2016, and the [Antimalware Scan Interface (AMSI)](/windows/win32/amsi/antimalware-scan-interface-portal) API’s are available for developers and antivirus vendors to implement it.
