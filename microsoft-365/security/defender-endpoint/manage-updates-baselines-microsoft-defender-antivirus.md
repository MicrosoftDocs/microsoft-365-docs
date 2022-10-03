---
title: Manage Microsoft Defender Antivirus updates and apply baselines
description: Manage how Microsoft Defender Antivirus receives protection and product updates.
keywords: updates, security baselines, protection, schedule updates, force updates, mobile updates, wsus
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
ms.date: 10/03/2022
audience: ITPro
ms.topic: reference
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: pahuijbr, mkaminska, v-vutrieu
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Manage Microsoft Defender Antivirus updates and apply baselines

**Applies to:**
- [Microsoft Defender for Endpoint Plans 1 and 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Keeping Microsoft Defender Antivirus up to date is critical to assure your devices have the latest technology and features needed to protect against new malware and attack techniques. Make sure to update your antivirus protection, even if Microsoft Defender Antivirus is running in [passive mode](microsoft-defender-antivirus-compatibility.md). There are two types of updates related to keeping Microsoft Defender Antivirus up to date:

- [Security intelligence updates](#security-intelligence-updates)
- [Product updates](#product-updates)

> [!TIP]
> To see the most current engine, platform, and signature date, visit the [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates)

## Security intelligence updates

Microsoft Defender Antivirus uses [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md) (also called the Microsoft Advanced Protection Service or MAPS) and periodically downloads dynamic security intelligence updates to provide more protection. These dynamic updates don't take the place of regular security intelligence updates via security intelligence update KB2267602.

> [!NOTE]
> Updates are released under the following KBs:
> - Microsoft Defender Antivirus: KB2267602
> - System Center Endpoint Protection: KB2461484

Cloud-delivered protection is always on and requires an active connection to the Internet to function. Security intelligence updates occur on a scheduled cadence (configurable via policy). For more information, see [Use Microsoft cloud-provided protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md).

For a list of recent security intelligence updates, see [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).

Engine updates are included with security intelligence updates and are released on a monthly cadence.

## Product updates

Microsoft Defender Antivirus requires [monthly updates (KB4052623)](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform) known as *platform updates*.

You can manage the distribution of updates through one of the following methods:

- [Windows Server Update Service (WSUS)](/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus)
- [Microsoft Endpoint Configuration Manager](/configmgr/sum/understand/software-updates-introduction)
- The usual method you use to deploy Microsoft and Windows updates to endpoints in your network.

For more information, see [Manage the sources for Microsoft Defender Antivirus protection updates](/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus).

> [!NOTE]
> - Monthly updates are released in phases, resulting in multiple packages visible in your [Window Server Update Services](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus).
> - This article lists changes that are included in the broad release channel. [See the latest broad channel release here](https://www.microsoft.com/security/encyclopedia/adlpackages.aspx?action=info).
> - To learn more about the gradual rollout process, and to see more information about the next release, see [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md).
> - To learn more about security intelligence updates, see [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).
> - If you're looking for a list of Microsoft Defender processes, **[download the mde-urls workbook](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx)**, and then select the **Microsoft Defender Processes** worksheet. The mde-urls workbook also lists the services and their associated URLs that your network must be able to connect to, as described in [Enable access to Microsoft Defender for Endpoint service URLs in the proxy server](configure-proxy-internet.md).

## Monthly platform and engine versions

For information how to update or install the platform update, see [Update for Windows Defender antimalware platform](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform).

All our updates contain

- Performance improvements
- Serviceability improvements
- Integration improvements (Cloud, [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender))
<br/><br/>
<details>
<summary>September-2022 (Platform: 4.18.2209.3 | Engine: 1.1.19700.1)</summary>

&ensp;Security intelligence update version: **x.xxx.xxxx.x** (*version number coming soon*)<br/>
&ensp;Release date: **October 6, 2022**<br/>
&ensp;Platform: **4.18.2209.3**<br/>
&ensp;Engine: **1.1.19700.1**<br/>
&ensp;Support phase: **Security and Critical Updates**<br/>

Engine version: 1.1.19700.1<br/>
Security intelligence update version: x.xxx.xxxx.x <br/>

### What's new

- Improved processing of Defender fallback order on Server SKU 
- Fixed Defender updates during OOBE process 
- Fixed Trusted Installer security descriptor vulnerability 
- Fixed Microsoft Defender Antivirus exclusions visibility 
- Fixed output of fallback order of the PowerShell cmdlet 
- Fixed Defender Platform update failure on Server Core 2019 SKUs 
- Improved hardening support for Defender disablement configurations on Server SKUs 
- Improved Defender configuration logics for tamper protection on servers 
- Improved WARN mode for ASR rule 
- Improved certificate handling of OSX  
- Improved logging for scanning FilesStash location 
- Beginning with platform version 4.18.2208.0 and later: If a server has been onboarded to Microsoft Defender for Endpoint, the "Turn off Windows Defender" group policy setting will no longer completely disable Windows Defender Antivirus on Windows Server 2012 R2 and later operating systems. Instead, it will be either ignored (if ForceDefenderPassiveMode is configured explicitly) or it will place Microsoft Defender Antivirus into passive mode (if ForceDefenderPassiveMode is not configured). In addition, the [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) feature will allow a switch to active mode via changing ForceDefenderPassiveMode to 0, but not to passive mode. 

   > [!NOTE]
   > These changes apply only to servers onboarded to Microsoft Defender for Endpoint. For more information, please refer to [Microsoft Defender Antivirus compatibility with other security products](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-compatibility#microsoft-defender-antivirus-and-non-microsoft-antivirusantimalware-solutions)

### Known Issues

- Some customers might have received platform updates 4.18.2209.2 from preview. The service gets stuck at the start state after the update.  
<br/><br/>
</details><details>
<summary>August-2022 (Platform: 4.18.2207.7 | Engine: 1.1.19600.3)</summary>

&ensp;Security intelligence update version: **1.373.1647.0**<br/>
&ensp;Release date: **September 6, 2022**<br/>
&ensp;Platform: **4.18.2207.7**<br/>
&ensp;Engine: **1.1.19600.3**<br/>
&ensp;Support phase: **Security and Critical Updates**<br/>

Engine version: 1.1.19600.3<br/>
Security intelligence update version: 1.373.1647.0 <br/>

### What's new

- Fixed Unified agent installer issues on WS2012R2 Server and Windows Server 2016
- Fixed remediation issue for custom detection
- Fixed Race condition related to behavior monitoring
- Resolved multiple deadlock scenarios in Defender dlls
- Improved frequency of Windows toasts notification for ASR rules

### Known Issues

- None

<br/><br/>
</details><details>
<summary>July-2022 (Platform: 4.18.2207.5 | Engine: 1.1.19500.2)</summary>

&ensp;Security intelligence update version: **1.373.219.0**<br/>
&ensp;Release date: **August 15, 2022**<br/>
&ensp;Platform: **4.18.2207.5**<br/>
&ensp;Engine: **1.1.19500.2**<br/>
&ensp;Support phase: **Security and Critical Updates**<br/>

Engine version: 1.1.19300.2<br/>
Security intelligence update version: 1.373.219.0 <br/>

### What's new

- Performance improvement for [hybrid sleep](/windows-hardware/customize/power-settings/sleep-settings-hybrid-sleep) delay when Microsoft Defender Antivirus is active 
- Fixed client detection behavior related to custom [certificate blocking indicators of compromise](indicator-certificates.md) 
- Performance improvement for [AntiMalware Scan Interface (AMSI)](/windows/win32/amsi/antimalware-scan-interface-portal) caching 
- Improved detection and remediation for [Microsoft Visual Basic for Applications](/office/vba/language/concepts/getting-started/64-bit-visual-basic-for-applications-overview) (VBA) related macros 
- Improved processing of AMSI exclusions 
- Fixed deadlock detection in Host Intrusion Prevention System (HIPS) rule processing. (For additional information about HIPS and Defender for Endpoint, see [Migrating from a third-party HIPS to ASR rules](migrating-asr-rules.md).) 
- Fixed memory leak where `MsMpEng.exe` was consuming private bytes. (If high CPU usage is also an issue, see [High CPU usage due to Microsoft Defender Antivirus](troubleshooting-mode-scenarios.md)) 
- Fixed deadlock with [behavior monitoring](configure-real-time-protection-microsoft-defender-antivirus.md) 
- Improved trust validation 
- Fixed engine crash issue on legacy operating platforms 
- Performance Analyzer v3 updates: Added top path support, scan skip information, and OnDemand scan support. See [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md). 
- Defender performance improvements during file copy operations
- Added improvements for [troubleshooting mode](enable-troubleshooting-mode.md)  
- Added fix for Defender WINEVT channels across update/restarts. (See [Windows Event Log](/windows/win32/api/_wes/) for more details about WINEVT.)
- Added fix for [Defender WMI management](use-wmi-microsoft-defender-antivirus.md) bug during startup/updates 
- Added fix for duplicated 2010/2011 in the [Windows Event Viewer Operational events](troubleshoot-microsoft-defender-antivirus.md) 
- Added support for [Defender for Endpoint](microsoft-defender-endpoint.md) stack processes token hardening 


### Known Issues

- Customers deploying platform update 4.18.2207.5 might experience lagging network performance that could impact applications.

<br/><br/>
</details>


### Previous version updates: Technical upgrade support only

After a new package version is released, support for the previous two versions is reduced to technical support only. Versions older than that are listed in this section, and are provided for technical upgrade support only.<br/><br/>

<details>
<summary>May-2022 (Platform: 4.18.2205.7 | Engine: 1.1.19300.2)</summary>

&ensp;Security intelligence update version: **1.369.88.0**<br/>
&ensp;Released: **June 22, 2022**<br/>
&ensp;Platform: **4.18.2205.7**<br/>
&ensp;Engine: **1.1.19300.2**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.19300.2<br/>
Security intelligence update version: 1.369.88.0<br/>

### What's new

- Added fix for ETW channel configuration for updates 
- Added support for contextual exclusions allowing more specific exclusion targeting 
- Fixed context maximum size
- Added fix for [ASR LSASS detection](attack-surface-reduction-rules-reference.md)
- Added fix to SHSetKnownFolder for rule exclusion logic
- Added AMSI disk usage limits for The History Store
- Added fix for Defender service refusing to accept signature updates

### Known Issues

No known issues

<br/><br/>
</details><details>
<summary>March-2022 *UPDATE* (Platform: 4.18.2203.5 | Engine:  1.1.19200.5)</summary>

*Customers who applied the March 2022 Microsoft Defender engine update (**1.1.19100.5**) might have encountered high resource utilization (CPU and/or memory). Microsoft has released an update (**1.1.19200.5**) that resolves the bugs introduced in the earlier version. Customers are recommended to update to at least this new engine build of Antivirus Engine (**1.1.19200.5**). To ensure any performance issues are fully fixed, it's recommended to reboot machines after applying update.*

&ensp;Security intelligence update version: **1.363.817.0**<br/>
&ensp;Released: **April 22, 2022**<br/>
&ensp;Platform: **4.18.2203.5**<br/>
&ensp;Engine: **1.1.19200.5**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.19200.5 <br/>
Security intelligence update version: 1.363.817.0<br/>

### What's new

- Resolves issues with high resource utilization (CPU and/or memory) related to the earlier March 2022 Microsoft Defender engine update (1.1.19100.5)

### Known Issues

No known issues

<br/><br/>
</details><details>
<summary>March-2022 (Platform: 4.18.2203.5 | Engine:  1.1.19100.5)</summary>

&ensp;Security intelligence update version: **1.361.1449.0**<br/>
&ensp;Released: **April 7, 2022**<br/>
&ensp;Platform: **4.18.2203.5**<br/>
&ensp;Engine: **1.1.19100.5**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.19100.5 <br/>
Security intelligence update version: 1.361.1449.0<br/>

### What's new

- Added fix for an [attack surface reduction rule](attack-surface-reduction.md) that blocked an Outlook add-in 
- Added fix for [behavior monitoring](configure-protection-features-microsoft-defender-antivirus.md) performance issue related to short live processes 
- Added fix for [AMSI](/windows/win32/amsi/antimalware-scan-interface-portal) exclusion 
- Improved [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) capabilities 
- Added a fix for [real-time protection](configure-protection-features-microsoft-defender-antivirus.md) getting disabled in some cases when using `SharedSignaturesPath` config. For more details about the `SharedSignaturesPath` parameter, see [Set-MpPreference](/powershell/module/defender/set-mppreference).

### Known Issues

- Potential for high resource utilization (CPU and/or memory). See the Platform 4.18.2203.5 and Engine 1.1.19200.5 update for March 2022.

<br/><br/>
</details><details>
<summary>February-2022 (Platform: 4.18.2202.4 | Engine: 1.1.19000.8)</summary>

&ensp;Security intelligence update version: **1.361.14.0**<br/>
&ensp;Released: **March 14, 2022**<br/>
&ensp;Platform: **4.18.2202.4**<br/>
&ensp;Engine: **1.1.19000.8**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.19000.8 <br/>
Security intelligence update version: 1.361.14.0 <br/>

### What's new

- Improvements to detection and behavior monitoring logic
- Fixed false positive triggering attack surface reduction detections
- Added fix resulting in better fidelity of EDR and Advanced Hunting detection alerts
- Defender no longer supports custom notifications on toast pop ups. Modified GPO/Intune/SCCM and docs to reflect this change.
- Improvements to capture both information and copy of files written to removable storage. To learn more, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control, removable storage media](device-control-removable-storage-access-control.md).
- Improved traffic output when SmartScreen service is unreachable 
- Connectivity improvements for customers using proxies with authentication requirements
- Fixed VDI device update bug for network FileShares 
- EDR in block mode now supports granular device targeting with new CSPs. See [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md).

### Known Issues

No known issues

<br/><br/>
</details><details>
<summary>January-2022 (Platform: 4.18.2201.10 | Engine: 1.1.18900.2)</summary>

&ensp;Security intelligence update version: **1.357.8.0**<br/>
&ensp;Released: **February 9, 2022**<br/>
&ensp;Platform: **4.18.2201.10**<br/>
&ensp;Engine: **1.1.18900.2**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.18900.2 <br/>
Security intelligence update version: 1.357.8.0 <br/>

### What's new

- Behavior monitoring improvements in filtering performance
- Hardening to TrustedInstaller
- Tamper protection improvements
- Replaced `ScanScheduleTime` with new `ScanScheduleOffest` cmdlet in [Set-MpPreference](/powershell/module/defender/set-mppreference). This policy configures the number of minutes after midnight to perform a scheduled scan.
- Added the `-ServiceHealthReportInterval` setting to [Set-MpPreference](/powershell/module/defender/set-mppreference). This policy configures the time interval (in minutes) to perform a scheduled scan.
- Added the `AllowSwitchToAsyncInspection` setting to [Set-MpPreference](/powershell/module/defender/set-mppreference). This policy enables a performance optimization, that allows synchronously inspected network flows, to switch to async inspection once they've been checked and validated.
- Performance Analyzer v2 updates: Remote PowerShell and PowerShell 7.x support added. See [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
- Fixed potential duplicate packet bug in Microsoft Defender Antivirus network inspection system driver.

### Known Issues

No known issues

<br/><br/>
</details><details>
<summary>November-2021 (Platform: 4.18.2111.5 | Engine: 1.1.18800.4)</summary>

&ensp;Security intelligence update version: **1.355.2.0**<br/>
&ensp;Released: **December 9th, 2021**<br/>
&ensp;Platform: **4.18.2111.5**<br/>
&ensp;Engine: **1.1.18800.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.18800.4
Security intelligence update version: 1.355.2.0

### What's new

- Improved CPU usage efficiency of certain intensive scenarios on Exchange servers
- Added new device control status fields under Get-MpComputerStatus in Defender PowerShell module. For more information, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md).
- Fixed bug in which `SharedSignatureRoot` value couldn't be removed when set with PowerShell
- Fixed bug in which [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) failed to be enabled, even though Microsoft Defender for Endpoint indicated that tamper protection was turned on
- Added supportability and bug fixes to performance analyzer for Microsoft Defender Antivirus tool. For more information, see [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).   
   - PowerShell ISE support added for `New-MpPerformanceRecording`
   - Fixed bug errors for `Get-MpPerformanceReport -TopFilesPerProcess`
   - Fixed performance recording session leak when using `New-MpPerformanceRecording` in PowerShell 7.x, remote sessions, and PowerShell ISE


### Known Issues
No known issues
<br/>
</details><details>
<summary> October-2021 (Platform: 4.18.2110.6 | Engine: 1.1.18700.4)</summary>

&ensp;Security intelligence update version: **1.353.3.0**<br/>
&ensp;Released: **October 28th, 2021**<br/>
&ensp;Platform: **4.18.2110.6**<br/>
&ensp;Engine: **1.1.18700.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.18700.4
Security intelligence update version: 1.353.3.0

### What's new

- Improvements to file transfer protocol (FTP) network traffic coverage
- Fix to reduce Microsoft Defender CPU usage in Exchange Server running on Windows Server 2016
- Fix for scan interruptions
- Fix for alerts on blocked tampering attempts not appearing in Security Center
- Improvements to tamper resilience in Microsoft Defender service

### Known Issues
No known issues
<br/>
</details><details>
<summary> September-2021 (Platform: 4.18.2109.6 | Engine: 1.1.18600.4)</summary>

&ensp;Security intelligence update version: **1.351.7.0**<br/>
&ensp;Released: **October 7th, 2021**<br/>
&ensp;Platform: **4.18.2109.6**<br/>
&ensp;Engine: **1.1.18600.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

Engine version: 1.1.18600.4
Security intelligence update version: 1.351.7.0

### What's new
- New delay ring for Microsoft Defender Antivirus engine and platform updates. Devices that opt into this ring will receive updates with a 48-hour delay. The new delay ring is suggested for critical environments only. See [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md).
- Improvements to Microsoft Defender update gradual rollout process

### Known Issues
No known issues
<br/>
</details><details>
<summary> August-2021 (Platform: 4.18.2108.7 | Engine: 1.1.18500.10)</summary>

&ensp;Security intelligence update version: **1.349.22.0**<br/>
&ensp;Released: **September 2, 2021**<br/>
&ensp;Platform: **4.18.2108.7**<br/>
&ensp;Engine: **1.1.18500.10**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new
- Improvements to the behavior monitoring engine
- Released new [performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
- Microsoft Defender Antivirus hardened against loading malicious DLLs
- Microsoft Defender Antivirus hardened against the TrustedInstaller bypass
- Extending file change notifications to include more data for Human-Operated Ransomware (HumOR)

### Known Issues
No known issues
<br/>
</details><details>
<summary> July-2021 (Platform: 4.18.2107.4 | Engine: 1.1.18400.4)</summary>

&ensp;Security intelligence update version: **1.345.13.0**<br/>
&ensp;Released: **August 5, 2021**<br/>
&ensp;Platform: **4.18.2107.4**<br/>
&ensp;Engine: **1.1.18400.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new
- Device control support added for Windows Portable Devices
- Potentially unwanted applications (PUA) protection is turned on by default for consumers (See [Block potentially unwanted applications with Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).)
- Scheduled scans for Group Policy Object managed systems will adhere to user configured scan time
- Improvements to the behavior monitoring engine

### Known Issues
No known issues

<br/>
</details><details>
<summary> June-2021 (Platform: 4.18.2106.5 | Engine: 1.1.18300.4)</summary>

&ensp;Security intelligence update version: **1.343.17.0**<br/>
&ensp;Released: **June 28, 2021**<br/>
&ensp;Platform: **4.18.2106.5**<br/>
&ensp;Engine: **1.1.18300.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new
- New controls for managing the gradual rollout process of Microsoft Defender updates. See [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md).
- Improvement to the behavior monitoring engine
- Improvements to the rollout of antimalware definitions
- Extended Edge network event inspections

### Known Issues
No known issues
<br/>
</details><details>
<summary> May-2021 (Platform: 4.18.2105.4 | Engine: 1.1.18200.4)</summary>

&ensp;Security intelligence update version: **1.341.8.0**<br/>
&ensp;Released: **June 3, 2021**<br/>
&ensp;Platform: **4.18.2105.4**<br/>
&ensp;Engine: **1.1.18200.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new
- Improvements to [behavior monitoring](client-behavioral-blocking.md)
- Fixed [network protection](network-protection.md) notification filtering feature

### Known Issues
No known issues
<br/>
</details><details>
<summary> April-2021 (Platform: 4.18.2104.14 | Engine: 1.1.18100.5)</summary>

&ensp;Security intelligence update version: **1.337.2.0**<br/>
&ensp;Released: **April 26, 2021**  (Engine: 1.1.18100.6 released May 5, 2021)<br/>
&ensp;Platform: **4.18.2104.14**<br/>
&ensp;Engine: **1.1.18100.5**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new
- More behavior monitoring logic
- Improved kernel mode key logger detection
- Added new controls to manage the gradual rollout process for [Microsoft Defender updates](manage-gradual-rollout.md)


### Known Issues
No known issues
<br/>
</details><details>
<summary> March-2021 (Platform: 4.18.2103.7 | Engine: 1.1.18000.5)</summary>

&ensp;Security intelligence update version: **1.335.36.0**<br/>
&ensp;Released: **April 2, 2021**<br/>
&ensp;Platform: **4.18.2103.7**<br/>
&ensp;Engine: **1.1.18000.5**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Improvement to the Behavior Monitoring engine
- Expanded network brute-force-attack mitigations
- More failed tampering attempt event generation when [Tamper Protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled

### Known Issues
No known issues
<br/>
</details><details>
<summary> February-2021 (Platform: 4.18.2102.3 | Engine: 1.1.17900.7)</summary>

&ensp;Security intelligence update version: **1.333.7.0**<br/>
&ensp;Released: **March 9, 2021**<br/>
&ensp;Platform: **4.18.2102.3**<br/>
&ensp;Engine: **1.1.17900.7**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Improved service recovery through [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
- Extend tamper protection scope

### Known Issues
No known issues
<br/>
</details><details>
<summary> January-2021 (Platform: 4.18.2101.9 | Engine: 1.1.17800.5)</summary>

&ensp;Security intelligence update version: **1.327.1854.0**<br/>
&ensp;Released: **February 2, 2021**<br/>
&ensp;Platform: **4.18.2101.9**<br/>
&ensp;Engine: **1.1.17800.5**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Shellcode exploit detection improvements
- Increased visibility for credential stealing attempts
- Improvements in antitampering features in Microsoft Defender Antivirus services
- Improved support for ARM x64 emulation
- Fix: EDR Block notification remains in threat history after real-time protection performed initial detection

### Known Issues
No known issues
<br/>
</details><details>
<summary> November-2020 (Platform: 4.18.2011.6 | Engine: 1.1.17700.4)</summary>

&ensp;Security intelligence update version: **1.327.1854.0**<br/>
&ensp;Released: **December 03, 2020**<br/>
&ensp;Platform: **4.18.2011.6**<br/>
&ensp;Engine: **1.1.17700.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Improved [SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) status support logging

### Known Issues
No known issues
<br/>
</details><details>
<summary> October-2020 (Platform: 4.18.2010.7 | Engine: 1.1.17600.5)</summary>

&ensp;Security intelligence update version: **1.327.7.0**<br/>
&ensp;Released: **October 29, 2020**<br/>
&ensp;Platform: **4.18.2010.7**<br/>
&ensp;Engine: **1.1.17600.5**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- New descriptions for special threat categories
- Improved emulation capabilities
- Improved host address allow/block capabilities
- New option in Defender CSP to Ignore merging of local user exclusions

### Known Issues

No known issues
<br/>
</details><details>
<summary> September-2020 (Platform: 4.18.2009.7 | Engine: 1.1.17500.4)</summary>

&ensp;Security intelligence update version: **1.325.10.0**<br/>
&ensp;Released: **October 01, 2020**<br/>
&ensp;Platform: **4.18.2009.7**<br/>
&ensp;Engine: **1.1.17500.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Admin permissions are required to restore files in quarantine
- XML formatted events are now supported
- CSP support for ignoring exclusion merges
- New management interfaces for:
   - UDP Inspection
   - Network Protection on Server 2019
   - IP Address exclusions for Network Protection
- Improved visibility into TPM measurements
- Improved Office VBA module scanning

### Known Issues

No known issues
<br/>
</details>
<details>
<summary> August-2020 (Platform: 4.18.2008.9 | Engine: 1.1.17400.5)</summary>

&ensp;Security intelligence update version: **1.323.9.0**<br/>
&ensp;Released: **August 27, 2020**<br/>
&ensp;Platform: **4.18.2008.9**<br/>
&ensp;Engine: **1.1.17400.5**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Add more telemetry events
- Improved scan event telemetry
- Improved behavior monitoring for memory scans
- Improved macro streams scanning
- Added `AMRunningMode` to Get-MpComputerStatus PowerShell cmdlet
- [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) is ignored. Microsoft Defender Antivirus automatically turns itself off when it detects another antivirus program.


### Known Issues
No known issues
<br/>
</details>

<details>
<summary> July-2020 (Platform: 4.18.2007.8 | Engine: 1.1.17300.4)</summary>

&ensp;Security intelligence update version: **1.321.30.0**<br/>
&ensp;Released: **July 28, 2020**<br/>
&ensp;Platform: **4.18.2007.8**<br/>
&ensp;Engine: **1.1.17300.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Improved telemetry for BITS
- Improved Authenticode code signing certificate validation

### Known Issues
No known issues
<br/>
</details>

<details>
<summary> June-2020 (Platform: 4.18.2006.10 | Engine: 1.1.17200.2)</summary>

&ensp;Security intelligence update version: **1.319.20.0**<br/>
&ensp;Released: **June 22, 2020**<br/>
&ensp;Platform: **4.18.2006.10**<br/>
&ensp;Engine: **1.1.17200.2**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Possibility to specify the [location of the support logs](./collect-diagnostic-data.md)
- Skipping aggressive catchup scan in Passive mode.
- Allow Defender to update on metered connections
- Fixed performance tuning when caching is disabled
- Fixed registry query
- Fixed scantime randomization in ADMX

### Known Issues
No known issues
<br/>
</details>

<details>
<summary> May-2020 (Platform: 4.18.2005.4 | Engine: 1.1.17100.2)</summary>

&ensp;Security intelligence update version: **1.317.20.0**<br/>
&ensp;Released: **May 26, 2020**<br/>
&ensp;Platform: **4.18.2005.4**<br/>
&ensp;Engine: **1.1.17100.2**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Improved logging for scan events
- Improved user mode crash handling.
- Added event tracing for Tamper protection
- Fixed AMSI Sample submission
- Fixed AMSI Cloud blocking
- Fixed Security update install log

### Known Issues
No known issues
<br/>
</details>

<details>
<summary> April-2020 (Platform: 4.18.2004.6 | Engine: 1.1.17000.2)</summary>

&ensp;Security intelligence update version: **1.315.12.0**<br/>
&ensp;Released: **April 30, 2020**<br/>
&ensp;Platform: **4.18.2004.6**<br/>
&ensp;Engine: **1.1.17000.2**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new
- WDfilter improvements
- Add more actionable event data to attack surface reduction detection events
- Fixed version information in diagnostic data and WMI
- Fixed incorrect platform version in UI after platform update
- Dynamic URL intel for Fileless threat protection
- UEFI scan capability
- Extend logging for updates

### Known Issues
No known issues
<br/>
</details>

<details>
<summary> March-2020 (Platform: 4.18.2003.8 | Engine: 1.1.16900.2)</summary>

&ensp;Security intelligence update version: **1.313.8.0**<br/>
&ensp;Released: **March 24, 2020**<br/>
&ensp;Platform: **4.18.2003.8**<br/>
&ensp;Engine: **1.1.16900.4**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- CPU Throttling option added to [MpCmdRun](./command-line-arguments-microsoft-defender-antivirus.md)
- Improve diagnostic capability
- reduce Security intelligence timeout (5 min)
- Extend AMSI engine internal log capability
- Improve notification for process blocking

### Known Issues
[**Fixed**] Microsoft Defender Antivirus is skipping files when running a scan.

<br/>
</details>

<details>

<summary> February-2020 (Platform: - | Engine: 1.1.16800.2)</summary>


&ensp;Security intelligence update version: **1.311.4.0**<br/>
&ensp;Released: **February 25, 2020**<br/>
&ensp;Platform/Client: **-**<br/>
&ensp;Engine: **1.1.16800.2**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new


### Known Issues
No known issues
<br/>
</details>

<details>
<summary> January-2020 (Platform: 4.18.2001.10 | Engine: 1.1.16700.2)</summary>


Security intelligence update version: **1.309.32.0**<br/>
Released: **January 30, 2020**<br/>
Platform/Client: **4.18.2001.10**<br/>
Engine: **1.1.16700.2**<br/>
&ensp;Support phase: **Technical upgrade support (only)**<br/>

### What's new

- Fixed BSOD on WS2016 with Exchange
- Support platform updates when TMP is redirected to network path
- Platform and engine versions are added to [WDSI](https://www.microsoft.com/en-us/wdsi/defenderupdates) <!-- The preceding URL must include "/en-us" -->
- extend Emergency signature update to [passive mode](./microsoft-defender-antivirus-compatibility.md)
- Fix 4.18.1911.3 hang

### Known Issues

[**Fixed**] devices utilizing [modern standby mode](/windows-hardware/design/device-experiences/modern-standby) may experience a hang with the Windows Defender filter driver that results in a gap of protection.  Affected machines appear to the customer as having not updated to the latest antimalware platform.
<br/>
> [!IMPORTANT]
> This update is:
> - needed by RS1 devices running lower version of the platform to support SHA2;
> - has a reboot flag for systems that have hanging issues;
> - is re-released in April 2020 and will not be superseded by newer updates to keep future availability;
> - is categorized as an update due to the reboot requirement; and
> - is only be offered with [Windows Update](https://support.microsoft.com/help/4027667/windows-10-update).
<br/>
</details>

<details>
<summary> November-2019 (Platform: 4.18.1911.3 | Engine: 1.1.16600.7)</summary>

Security intelligence update version: **1.307.13.0**<br/>
Released: **December 7, 2019**<br/>
Platform: **4.18.1911.3**<br/>
Engine: **1.1.17000.7**<br/>
Support phase: **No support**<br/>

### What's new

- Fixed MpCmdRun tracing level
- Fixed WDFilter version info
- Improve notifications (PUA)
- add MRT logs to support files

### Known Issues
When this update is installed, the device needs the jump package 4.18.2001.10 to be able to update to the latest platform version.
<br/>
</details>


## Microsoft Defender Antivirus platform support

Platform and engine updates are provided on a monthly cadence. To be fully supported, keep current with the latest platform updates. Our support structure is dynamic, evolving into two phases depending on the availability of the latest platform version:

- **Security and Critical Updates servicing phase** - When running the latest platform version, you'll be eligible to receive both Security and Critical updates to the anti-malware platform.

- **Technical Support (Only) phase** - After a new platform version is released, support for older versions (N-2) will reduce to technical support only. Platform versions older than N-2 will no longer be supported.*

\* Technical support will continue to be provided for upgrades from the Windows 10 release version (see [Platform version included with Windows 10 releases](#platform-version-included-with-windows-10-releases)) to the latest platform version.

During the technical support (only) phase, commercially reasonable support incidents will be provided through Microsoft Customer Service & Support and Microsoft's managed support offerings (such as Premier Support). If a support incident requires escalation to development for further guidance, requires a non-security update, or requires a security update, customers will be asked to upgrade to the latest platform version or an intermediate update (*).

> [!NOTE]
> If you are manually deploying Microsoft Defender Antivirus Platform Update, or if you are using a script or a non-Microsoft management product to deploy Microsoft Defender Antivirus Platform Update, make sure that version `4.18.2001.10` is installed from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=4.18.2001.10) before the latest version of Platform Update (N-2) is installed.

### Platform version included with Windows 10 releases

The below table provides the Microsoft Defender Antivirus platform and engine versions that are shipped with the latest Windows 10 releases:<br/><br/>

|Windows 10 release  |Platform version  |Engine version |Support phase |
|:---|:---|:---|:---|
|2004  (20H1/20H2) | `4.18.1909.6` | `1.1.17000.2` | Technical upgrade support (only) |
|1909  (19H2) |`4.18.1902.5` |`1.1.16700.3` | Technical upgrade support (only) |
|1903  (19H1) |`4.18.1902.5` |`1.1.15600.4` | Technical upgrade support (only) |
|1809  (RS5) |`4.18.1807.1807`5 |`1.1.15000.2` | Technical upgrade support (only) |
|1803  (RS4) |`4.13.17134.1` |`1.1.14600.4` | Technical upgrade support (only) |
|1709  (RS3) |`4.12.16299.15` |`1.1.14104.0` | Technical upgrade support (only) |
|1703  (RS2) |`4.11.15603.2` |`1.1.13504.0` | Technical upgrade support (only) |
|1607 (RS1) |`4.10.14393.3683` |`1.1.12805.0` | Technical upgrade support (only) |

For Windows 10 release information, see the [Windows lifecycle fact sheet](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet).

## Updates for Deployment Image Servicing and Management (DISM)

We recommend updating your Windows 10 (Enterprise, Pro, and Home editions), Windows Server 2019, Windows Server 2022, and Windows Server 2016 OS installation images with the latest antivirus and antimalware updates. Keeping your OS installation images up to date helps avoid a gap in protection.

For more information, see [Microsoft Defender update for Windows operating system installation images](https://support.microsoft.com/help/4568292/defender-update-for-windows-operating-system-installation-images).

<details>
<summary>20220925.2</summary>

&ensp;Package version: **20220925.2**<br/>
&ensp;Platform version: **4.18.2207.7**<br/>
&ensp;Engine version: **1.1.19600.3**<br/>
&ensp;Signature version: **1.373.1371.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220901.4</summary>

&ensp;Package version: **20220901.4**<br/>
&ensp;Platform version: **4.18.2205.7**<br/>
&ensp;Engine version: **1.1.19500.2**<br/>
&ensp;Signature version: **1.373.1371.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220802.1</summary>

&ensp;Package version: **20220802.1**<br/>
&ensp;Platform version: **4.18.2205.7**<br/>
&ensp;Engine version: **1.1.19400.3**<br/>
&ensp;Signature version: **1.371.1205.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220629.5</summary>

&ensp;Package version: **20220629.5**<br/>
&ensp;Platform version: **4.18.2205.7**<br/>
&ensp;Engine version: **1.1.19300.2**<br/>
&ensp;Signature version: **1.369.220.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220603.3</summary>

&ensp;Package version: **20220603.3**<br/>
&ensp;Platform version: **4.18.2203.5**<br/>
&ensp;Engine version: **1.1.19200.6**<br/>
&ensp;Signature version: **1.367.1009.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220506.6</summary>

&ensp;Package version: **20220506.6**<br/>
&ensp;Platform version: **4.18.2203.5**<br/>
&ensp;Engine version: **1.1.19200.5**<br/>
&ensp;Signature version: **1.363.1436.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220321.1</summary>

&ensp;Package version: **20220321.1**<br/>
&ensp;Platform version: **4.18.2202.4**<br/>
&ensp;Engine version: **1.1.19000.8**<br/>
&ensp;Signature version: **1.351.337.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220305.1</summary>

&ensp;Package version: **20220305.1**<br/>
&ensp;Platform version: **4.18.2201.10**<br/>
&ensp;Engine version: **1.1.18900.3**<br/>
&ensp;Signature version: **1.359.1405.0**<br/>

### Fixes
- None

### Additional information
- None

<br/>
</details><details>
<summary>20220203.1</summary>

&ensp;Package version: **20220203.1**<br/>
&ensp;Platform version: **4.18.2111.5**<br/>
&ensp;Engine version: **1.1.18900.2**<br/>
&ensp;Signature version: **1.357.32.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>20220105.1</summary>

&ensp;Package version: **20220105.1**<br/>
&ensp;Platform version: **4.18.2111.5**<br/>
&ensp;Engine version: **1.1.18800.4**<br/>
&ensp;Signature version: **1.355.1482.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2112.01</summary>

&ensp;Package version: **1.1.2112.01**<br/>
&ensp;Platform version: **4.18.2110.6**<br/>
&ensp;Engine version: **1.1.18700.4**<br/>
&ensp;Signature version: **1.353.2283.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2111.02</summary>

&ensp;Package version: **1.1.2111.02**<br/>
&ensp;Platform version: **4.18.2110.6**<br/>
&ensp;Engine version: **1.1.18700.4**<br/>
&ensp;Signature version: **1.353.613.0**<br/>

### Fixes
- Fixed an issue pertaining to localization files

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2110.01</summary>

&ensp;Package version: **1.1.2110.01**<br/>
&ensp;Platform version: **4.18.2109.6**<br/>
&ensp;Engine version: **1.1.18500.10**<br/>
&ensp;Signature version: **1.349.2103.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2109.01</summary>

&ensp;Package version: **1.1.2109.01**<br/>
&ensp;Platform version: **4.18.2107.4**<br/>
&ensp;Engine version: **1.1.18400.5**<br/>
&ensp;Signature version: **1.347.891.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2108.01</summary>

&ensp;Package version: **1.1.2108.01**<br/>
&ensp;Platform version: **4.18.2107.4**<br/>
&ensp;Engine version: **1.1.18300.4**<br/>
&ensp;Signature version: **1.343.2244.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2107.02</summary>

&ensp;Package version: **1.1.2107.02**<br/>
&ensp;Platform version: **4.18.2105.5**<br/>
&ensp;Engine version: **1.1.18300.4**<br/>
&ensp;Signature version: **1.343.658.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2106.01</summary>

&ensp;Package version: **1.1.2106.01**<br/>
&ensp;Platform version: **4.18.2104.14**<br/>
&ensp;Engine version: **1.1.18100.6**<br/>
&ensp;Signature version: **1.339.1923.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2105.01</summary>

&ensp;Package version: **1.1.2105.01**<br/>
&ensp;Platform version: **4.18.2103.7**<br/>
&ensp;Engine version: **1.1.18100.6**<br/>
&ensp;Signature version: **1.339.42.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2104.01</summary>

&ensp;Package version: **1.1.2104.01**<br/>
&ensp;Platform version: **4.18.2102.4**<br/>
&ensp;Engine version: **1.1.18000.5**<br/>
&ensp;Signature version: **1.335.232.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2103.01</summary>

&ensp;Package version: **1.1.2103.01**<br/>
&ensp;Platform version: **4.18.2101.9**<br/>
&ensp;Engine version: **1.1.17800.5**<br/>
&ensp;Signature version: **1.331.2302.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2102.03</summary>

&ensp;Package version: **1.1.2102.03**<br/>
&ensp;Platform version: **4.18.2011.6**<br/>
&ensp;Engine version: **1.1.17800.5**<br/>
&ensp;Signature version: **1.331.174.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2101.02</summary>

&ensp;Package version: **1.1.2101.02**<br/>
&ensp;Platform version: **4.18.2011.6**<br/>
&ensp;Engine version: **1.1.17700.4**<br/>
&ensp;Signature version: **1.329.1796.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2012.01</summary>

&ensp;Package version: **1.1.2012.01**<br/>
&ensp;Platform version: **4.18.2010.7**<br/>
&ensp;Engine version: **1.1.17600.5**<br/>
&ensp;Signature version: **1.327.1991.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2011.02</summary>

&ensp;Package version: **1.1.2011.02**<br/>
&ensp;Platform version: **4.18.2010.7**<br/>
&ensp;Engine version: **1.1.17600.5**<br/>
&ensp;Signature version: **1.327.658.0**<br/>

### Fixes
- None

### Additional information
- Refreshed Microsoft Defender Antivirus signatures
<br/>
</details><details>
<summary>1.1.2011.01</summary>

&ensp;Package version: **1.1.2011.01**<br/>
&ensp;Platform version: **4.18.2009.7**<br/>
&ensp;Engine version: **1.1.17600.5**<br/>
&ensp;Signature version: **1.327.344.0**<br/>

### Fixes
- None

### Additional information
- None
<br/>
</details><details>
<summary>1.1.2009.10</summary>

&ensp;Package version: **1.1.2011.01**<br/>
&ensp;Platform version: **4.18.2008.9**<br/>
&ensp;Engine version: **1.1.17400.5**<br/>
&ensp;Signature version: **1.327.2216.0**<br/>

### Fixes
- None

### Additional information
- Added support for Windows 10 RS1 or later OS install images.
<br/>
</details>

## More resources

| Article | Description  |
|:---|:---|
|[Microsoft Defender update for Windows operating system installation images](https://support.microsoft.com/help/4568292/defender-update-for-windows-operating-system-installation-images)  | Review antimalware update packages for your OS installation images (WIM and VHD files). Get Microsoft Defender Antivirus updates for Windows 10 (Enterprise, Pro, and Home editions), Windows Server 2019, Windows Server 2022, and Windows Server 2016 installation images.  |
|[Manage how protection updates are downloaded and applied](manage-protection-updates-microsoft-defender-antivirus.md) | Protection updates can be delivered through many sources. |
|[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) | You can schedule when protection updates should be downloaded. |
|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan the next time a user signs in. |
|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events. |
|[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power that are especially useful for mobile devices and virtual machines. |
| [Microsoft Defender for Endpoint update for EDR Sensor](https://support.microsoft.com/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac) | You can update the EDR sensor (MsSense.exe) that is included in the new Microsoft Defender for Endpoint unified solution package released in 2021.   |

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
