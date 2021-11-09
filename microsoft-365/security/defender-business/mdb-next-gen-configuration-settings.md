---
title: Understand next-generation protection configuration settings in Microsoft Defender for Business
description: Understand configuration settings for next-generation protection in Microsoft Defender for Business
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 11/09/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Understand next-generation configuration settings in Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

This article describes next-generation protection configuration settings for Microsoft Defender for Business. 

Your next-generation protection includes robust antivirus and antimalware protection. Your default policies are designed to protect your devices and users without hindering productivity; however, you can also customize your policies to suit your business needs. 

## Next-generation protection settings in Defender for Business

The following table lists your settings and options:<br/><br/>

| Setting | Description |
|:---|:---|
| **Real-time protection**  |  |
| **Turn on real-time protection** | Enabled by default, real-time protection locates and stops malware from running on devices. *We recommend keeping real-time protection turned on.*<br/><br/>When real-time protection is turned on, it configures the following settings:<br/>- Behavior monitoring is turned on ([AllowBehaviorMonitoring](/windows/client-management/mdm/policy-csp-defender))<br/>- All downloaded files and attachments are scanned ([AllowIOAVProtection](/windows/client-management/mdm/policy-csp-defender))<br/>- Scripts that are used in Microsoft browsers are scanned ([AllowScriptScanning](/windows/client-management/mdm/policy-csp-defender))   |
| **Block at first sight** | Enabled by default, block at first sight blocks malware within seconds of detection, increases the time (in seconds) allowed to submit sample files for analysis, and sets your detection level to High. *We recommend keeping block at first sight turned on.*<br/><br/>When block at first sight is turned on, it configures the following settings for Microsoft Defender Antivirus: <br/>- Blocking and scanning of suspicious files is set to the High blocking level ([CloudBlockLevel](/windows/client-management/mdm/policy-csp-defender))<br/>- The number of seconds for a file to be blocked and checked is set to 50 seconds ([CloudExtendedTimeout](/windows/client-management/mdm/policy-csp-defender)) <br/><br/>**IMPORTANT**: If block at first sight is turned off, make sure to configure `CloudBlockLevel` and `CloudExtendedTimeout` for Microsoft Defender Antivirus.  |
| **Turn on network protection** | When turned on, network protection helps protect against phishing scams, exploit-hosting sites, and malicious content on the Internet. It also prevents users from turning network protection off.<br/><br/>Network protection can be set to one of the following modes:<br/>- **Block mode** (this setting is the default), which prevents users from visiting sites that are considered unsafe. *We recommend keeping network protection set to Block mode.*<br/>- **Audit mode**, which allows users to visit sites that might be unsafe and tracks network activity to/from such sites <br/>- **Disabled mode**, which nether blocks users from visiting sites that might be unsafe nor tracks network activity to/from such sites |
| **Remediation**  |  |
| **Action to take on potentially unwanted apps (PUA)** | PUA can include advertising software, bundling software that offers to install other, unsigned software, and evasion software that attempts to evade security features. Although PUA is not necessarily a virus, malware, or other type of threats, PUA can affect device performance.<br/><br/>PUA protection blocks items that are detected as PUA. You can set PUA protection to one of the following settings: <br/>- **Enabled** (this setting is the default), which blocks items detected as PUA on devices. *We recommend keeping PUA protection enabled.*<br/>- **Audit mode**, which takes no action on items detected as PUA <br/>- **Disabled**, which does not detect or take action on items that might be PUA |
| **Scan**   |  |
| **Scheduled scan type** | Consider running a weekly antivirus scan on your devices. You can choose from the following scan type options: <br/>- **Quickscan** checks locations, such as registry keys and startup folders, where malware could be registered to start with a device. *We recommend using the quickscan option.* <br/>- **Fullscan** checks all files and folders on a device <br/>- **Disabled** means no scheduled scans will take place. Users can still run scans on their own devices. (In general, we do not recommend disabling your scheduled scans.) <br/><br/> [Learn more about scan types](../defender-endpoint/schedule-antivirus-scans.md). |
| **Day of week to run a scheduled scan** | Select a day for your regular, weekly antivirus scans to run. |
| **Time of day to run a scheduled scan** | Select a time to run your regularly scheduled antivirus scans to run. |
| **Use low performance** | This setting is turned off by default. *We recommend keeping this setting turned off.* However, you can turn this setting on to limit the device memory and resources that are used during scheduled scans. <br/><br/>**IMPORTANT** If you turn **Use low performance** on, it configures the following settings for Microsoft Defender Antivirus: <br/>- Archive files are not scanned ([AllowArchiveScanning](/windows/client-management/mdm/policy-csp-defender))<br/>- Scans are assigned a low CPU priority ([EnableLowCPUPriority](/windows/client-management/mdm/policy-csp-defender)) <br/>- If a full antivirus scan is missed, no catch-up scan will run ([DisableCatchupFullScan](/windows/client-management/mdm/policy-csp-defender)) <br/>- If a quick antivirus scan is missed, no catch-up scan will run ([DisableCatchupQuickScan](/windows/client-management/mdm/policy-csp-defender)) <br/>- Reduces the average CPU load factor during an antivirus scan from 50% to 20% ([AvgCPULoadFactor](/windows/client-management/mdm/policy-csp-defender)) |
| **User experience**   |  |
| **Allow users to access the Windows Security app** | Turn this on to enable users to open the Windows Security app on their devices. Users won’t be able to override settings that you configure in Microsoft Defender for Business, but they will be able to run a quick scan if need be, or view any detected threats. |
| **Antivirus exclusions** | Exclusions are processes, files, or folders that are skipped by Microsoft Defender Antivirus scans. *In general, you should not need to define exclusions.* <br/><br/>Microsoft Defender Antivirus includes many automatic exclusions that are based on known operating system behaviors and typical management files.<br/><br/>[Learn more about exclusions](../defender-endpoint/configure-exclusions-microsoft-defender-antivirus.md) |
| **Process exclusions** | Process exclusions prevent files that are opened by specific processes from being scanned by Microsoft Defender Antivirus. <br/><br/>[Learn more about process exclusions](../defender-endpoint/configure-process-opened-file-exclusions-microsoft-defender-antivirus.md) |
| **File extension exclusions** | File extension exclusions prevent files with specific extensions from being scanned by Microsoft Defender Antivirus.<br/><br/>[Learn more about file extension exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md) |
| **File and folder exclusions** | File and folder exclusions prevent files that are in specific folders from being scanned by Microsoft Defender Antivirus. <br/><br/>[Learn more about file and folder exclusions](../defender-endpoint/configure-extension-file-exclusions-microsoft-defender-antivirus.md) |

## Additional next-generation protection settings

The following settings are preconfigured for next-generation protection in Defender for Business:

- Scanning of removable drives is turned on ([AllowFullScanRemovableDriveScanning](/windows/client-management/mdm/policy-csp-defender))

- Daily quick scans do not have a preset time ([ScheduleQuickScanTime](/windows/client-management/mdm/policy-csp-defender))

- Security intelligence updates are checked before an antivirus scan runs ([CheckForSignaturesBeforeRunningScan](/windows/client-management/mdm/policy-csp-defender))

- Security intelligence checks occur every four hours ([SignatureUpdateInterval](/windows/client-management/mdm/policy-csp-defender))

## Next steps

- [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md)

- [Respond to and mitigate threats in Microsoft Defender for Business](mdb-respond-mitigate-threats.md)

- [Review remediation actions in the Action center](mdb-review-remediation-actions.md)


## See also

- [Visit the Microsoft 365 Defender portal](mdb-get-started.md)

- [Compare plans for small and medium-sized businesses](compare-mdb-m365-plans.md)

- [View or edit device policies in Microsoft Defender for Business](mdb-manage-next-generation-protection.md) 

- [Manage firewall settings in Microsoft Defender for Business](mdb-manage-firewall.md)

- [Policy CSP - Defender](/windows/client-management/mdm/policy-csp-defender)