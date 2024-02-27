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
ms.date:     02/27/2024
---

# Antimalware Scan Interface (AMSI) and MDAV integration

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
