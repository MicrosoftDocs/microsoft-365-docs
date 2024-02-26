---
# Required metadata
# For more information, see https://review.learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata?branch=main
# For valid values of ms.service, ms.prod, and ms.topic, see https://review.learn.microsoft.com/en-us/help/platform/metadata-taxonomies?branch=main

title: 'Early Launch Antimalware (ELAM) and Microsoft Defender Antivirus  '
description: How Microsoft Defender Antivirus has incorporated Early Launch Antimalware (ELAM) for preventing rootkit and drivers with malware from loading before the antivirus service and drivers are loaded.
author:      YongRhee-MSFT # GitHub alias
ms.author:   yongrhee # Microsoft alias
ms.service: defender-endpoint
ms.topic: overview
ms.date:     02/26/2024
ms.subservice: ngp
contributors_to_exclude:
- yongrhee-msft
---

# Early Launch Antimalware (ELAM) and Microsoft Defender Antivirus

**Applies to:** 

[Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804) 
[Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037) 
Microsoft Defender for Business 
[Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037) 
Microsoft Defender for Individual 

 
This information applies to the following operating systems: 
- Windows 11, Windows 10, Windows 8.1, Windows 8 
- Windows Server 2019, Windows Server 2016, Windows Server 2012 R2, Windows Server 2012 

Detecting malware that starts early in the boot cycle was a challenge before Windows 8.  In order to combat early boot threats such as rootkits or malicious drivers that can hide from detection.  As of August 1st, 2012 Microsoft Defender Antivirus (MDAV) and Windows 8 and newer or Windows Server 2012 and newer, there is a new feature called [Early Launch Antimalware (ELAM)](/windows/compatibility/early-launch-antimalware) driver, Microsoft Defender Antivirus uses Wdboot.sys driver that starts before other boot-start drivers and enables the evaluation of those drivers and helps the Windows kernel decide whether they should be initialized. 

 
Q: Where are the ELAM detection(s) logged? 
A: The same location as the other Microsoft Defender Antivirus threats.  Such as [Event ID 1006](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus). 
 
Q: How do I keep the MDAV ELAM driver up to date? 
A: The MDAV ELAM driver ships with the monthly “[Platform update](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-updates)”. 
 
Q: Can the Early Launch Antimalware (ELAM) policy be modified? 
A: ELAM can be modified here: 
Computer Configuration > Administrative Templates > System > Early Launch Antimalware 
 
Q: How can I check that the MDAV ELAM driver is loaded? 
A: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\EarlyLaunch 
BackupPath (string) C:\Windows[ELAMBKUP](/windows-hardware/drivers/install/elam-driver-requirements)\WdBoot.sys (value)
Q: How do I revert the MDAV ELAM driver to a previous version?

A: C:\ProgramData\Microsoft\Windows Defender\Platform\<antimalware platform version>\MpCmdRun.exe -[RevertPlatform](/microsoft-365/security/defender-endpoint/command-line-arguments-microsoft-defender-antivirus)

For example:

C:\ProgramData\Microsoft\Windows Defender\Platform\4.18.24010.12-0\MpCmdRun.exe -RevertPlatform

