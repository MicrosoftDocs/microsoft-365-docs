---
title: Microsoft Defender Antivirus updates - Previous versions for technical upgrade support
description: Understand the type of technical support offered for previous versions of Microsoft Defender Antivirus
ms.service: microsoft-365-security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
ms.reviewer: pahuijbr, mkaminska, v-vutrieu
ms.date: 07/06/2023
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier1
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Microsoft Defender Antivirus updates - Previous versions for technical upgrade support only

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Microsoft regularly releases [security intelligence updates and product updates for Microsoft Defender Antivirus](microsoft-defender-antivirus-updates.md). It's important to keep Microsoft Defender Antivirus up to date. When a new package version is released, support for the previous two versions is reduced to technical support only. Versions that are older than the previous two versions are listed in this article and are provided for technical upgrade support only.

## March-2023 (Platform: 4.18.2303.8 | Engine: 1.1.20200.4)

- Security intelligence update version: **1.387.695.0**
- Release date:  **April 4, 2023 (Engine) / April 11, 2023 (Platform)**
- Platform: **4.18.2303.8**
- Engine: **1.1.20200.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Beginning in April 2023, monthly platform and engine version release information (in this article) now includes two dates: Engine and Platform
- Increased file hash support
- Added support to protect registry keys against parent keys abuse
- Improved tamper protection of registry keys against parent keys abuse
- Improved log handling for DLP and Device Control
- Improved performance on developer drives

### Known issues

- None

## February-2023 (Platform: 4.18.2302.7 | Engine: 1.1.20100.6)

- Security intelligence update version: **1.385.68.0**
- Release date: **March 27, 2023**
- Platform: **4.18.2302.7**
- Engine: **1.1.20100.6**
- Support phase: **Technical upgrade support (only)**

### What's new

- Fixed attack surface reduction (ASR) rule output with [Get-MpPreference](/powershell/module/defender/get-mppreference)
- Fixed threat DefaultAction outputs in Get-MpPreference
- Improved Defender performance during file copy operations for .NET applications
- Fixed [Microsoft Defender Vulnerability Management](/microsoft-365/security/defender-vulnerability-management/defender-vulnerability-management) app block warn feature
- Added opt-in feature to allow users seeing exclusions
- Fixed [ASR](overview-attack-surface-reduction.md) warn policy
- Increased maximum size for quarantine archive file to 4 GB
- Improvements to threat remediation logic
- Improved [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) hardening for temporary exclusions
- Fixed time zone calculation in [Defender PowerShell](/powershell/module/defender) module
- Fixed merging logic for exclusions in Defender PowerShell module
- Improvements in the [contextual exclusions](/microsoft-365/security/defender-endpoint/configure-contextual-file-folder-exclusions-microsoft-defender-antivirus) syntax
- Improved scheduled scan robustness
- Improved serviceability for internal database files
- Enhanced certificate indicators determination logic
- Enhanced memory usage

### Known Issues

- None


## January-2023 (Platform: 4.18.2301.6 | Engine: 1.1.20000.2)

- Security intelligence update version: **1.383.26.0**
- Release date: **February 14, 2023**
- Platform: **4.18.2301.6**
- Engine: **1.1.20000.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improved [ASR rule](attack-surface-reduction-rules-reference.md) processing logic
- Updated Sense token hardening
- Improved [Defender CSP](/windows/client-management/mdm/defender-csp) module update channel logic

### Known Issues

- None

## November-2022 (Platform: 4.18.2211.5 | Engine: 1.1.19900.2)

- Security intelligence update version: **1.381.144.0**
- Release date: **December 8, 2022**
- Platform: **4.18.2211.5**
- Engine: **1.1.19900.2**
- Support phase: **Technical upgrade support (only)**


### What's new

- Enhanced threat protection capabilities
- Improved [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) capabilities
- Enhanced enabling of tamper protection for newly onboarded devices
- Improved reporting for [cloud protection](cloud-protection-microsoft-defender-antivirus.md)
- Improved [controlled folder access](controlled-folders.md) notifications
- Improved scanning of network shares
- Enhanced processing of host files containing a wild card
- Improved performance for [scan events](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)

### Known Issues

- None

## October-2022 (Platform: 4.18.2210.6 | Engine: 1.1.19800.4)

- Security intelligence update version: **1.379.4.0**
- Release date: **November 10, 2022**
- Platform: **4.18.2210.6**
- Engine: **1.1.19800.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Addressed a quality issue that could result in poor responsiveness/usability
- Improved hang detection in antivirus engine
- Improved [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) capability
- Changed threat & vulnerability management (TVM)-warn and TVM-block action to block to resolve Intune's report
- Removed Clean Action from Intune policy for `ThreadSeverityDefaultAction`
- Added randomize scheduled task times configuration to Intune policy
- Added manageability for `DisableSMTPParsing` network protection
- Added improvement for behavior monitoring
- Normalized date format for event 1151 for Windows Defender
- Fixed a deadlock related to updating `\device\cdrom*` exclusions upon mounting a cdrom drive under certain conditions
- Improved PID information for threat detection

### Known Issues

- None


## September-2022 (Platform: 4.18.2209.7 | Engine: 1.1.19700.3)

- Security intelligence update version: **1.377.8.0**
- Release date: **October 10, 2022**
- Platform: **4.18.2209.7**
- Engine: **1.1.19700.3**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improved processing of Defender fallback order on Server SKU
- Fixed Defender updates during OOBE process
- Fixed Trusted Installer security descriptor vulnerability
- Fixed [Microsoft Defender Antivirus exclusions](configure-exclusions-microsoft-defender-antivirus.md) visibility
- Fixed output of fallback order of the PowerShell cmdlet
- Fixed Defender Platform update failure on Server Core 2019 SKUs
- Improved hardening support for Defender disablement configurations on Server SKUs
- Improved Defender configuration logics for [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) on servers
- Improved WARN mode for [ASR rule](attack-surface-reduction-rules-reference.md)
- Improved certificate handling of OSX
- Improved logging for scanning FilesStash location
- Beginning with platform version 4.18.2208.0 and later: If a server has been onboarded to Microsoft Defender for Endpoint, the "Turn off Windows Defender" [group policy setting](configure-endpoints-gp.md#update-endpoint-protection-configuration) will no longer completely disable Windows Defender Antivirus on Windows Server 2012 R2 and later operating systems. Instead, it is either ignored (if [ForceDefenderPassiveMode](switch-to-mde-phase-2.md#set-microsoft-defender-antivirus-to-passive-mode-on-windows-server) is configured explicitly) or it places Microsoft Defender Antivirus into [passive mode](microsoft-defender-antivirus-windows.md#comparing-active-mode-passive-mode-and-disabled-mode) (if `ForceDefenderPassiveMode` isn't configured). Moreover, [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) allows a switch to active mode via changing `ForceDefenderPassiveMode` to `0`, but not to passive mode. These changes apply only to servers onboarded to Microsoft Defender for Endpoint. For more information, please refer to [Microsoft Defender Antivirus compatibility with other security products](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-compatibility#microsoft-defender-antivirus-and-non-microsoft-antivirusantimalware-solutions)

### Known Issues

- Some customers might have received platform updates 4.18.2209.2 from preview. It can cause the service to get stuck at the start state after the update.

## August-2022 (Platform: 4.18.2207.7 | Engine: 1.1.19600.3)

- Security intelligence update version: **1.373.1647.0**
- Release date: **September 6, 2022**
- Platform: **4.18.2207.7**
- Engine: **1.1.19600.3**
- Support phase: **Technical upgrade support (only)**

### What's new

- Starting with platform version 4.18.2207.7, the default behavior of dynamic signature expiration reporting changes to reduce potential 2011 event notification flooding. See: **Event ID: 2011** in [Review event logs and error codes to troubleshoot issues with Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus/)
- Fixed Unified agent installer issues on WS2012R2 Server and Windows Server 2016
- Fixed remediation issue for custom detection
- Fixed Race condition related to behavior monitoring
- Resolved multiple deadlock scenarios in Defender dlls
- Improved frequency of Windows toasts notification for ASR rules

### Known Issues

- None

## July-2022 (Platform: 4.18.2207.5 | Engine: 1.1.19500.2)

- Security intelligence update version: **1.373.219.0**
- Release date: **August 15, 2022**
- Platform: **4.18.2207.5**
- Engine: **1.1.19500.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- Performance improvement for [hybrid sleep](/windows-hardware/customize/power-settings/sleep-settings-hybrid-sleep) delay when Microsoft Defender Antivirus is active
- Fixed client detection behavior related to custom [certificate blocking indicators of compromise](indicator-certificates.md)
- Performance improvement for [AntiMalware Scan Interface (AMSI)](/windows/win32/amsi/antimalware-scan-interface-portal) caching
- Improved detection and remediation for [Microsoft Visual Basic for Applications](/office/vba/language/concepts/getting-started/64-bit-visual-basic-for-applications-overview) (VBA) related macros
- Improved processing of AMSI exclusions
- Fixed deadlock detection in Host Intrusion Prevention System (HIPS) rule processing. (For more information about HIPS and Defender for Endpoint, see [Migrating from a third-party HIPS to ASR rules](migrating-asr-rules.md).)
- Fixed memory leak where `MsMpEng.exe` was consuming private bytes. (If high CPU usage is also an issue, see [High CPU usage due to Microsoft Defender Antivirus](troubleshooting-mode-scenarios.md))
- Fixed deadlock with [behavior monitoring](configure-real-time-protection-microsoft-defender-antivirus.md)
- Improved trust validation
- Fixed engine crash issue on legacy operating platforms
- Performance Analyzer v3 updates: Added top path support, scan skip information, and OnDemand scan support. See [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
- Defender performance improvements during file copy operations
- Added improvements for [troubleshooting mode](enable-troubleshooting-mode.md)
- Added fix for Defender WINEVT channels across update/restarts. (For more information about WINEVT, see [Windows Event Log](/windows/win32/api/_wes/).)
- Added fix for [Defender WMI management](use-wmi-microsoft-defender-antivirus.md) bug during startup/updates
- Added fix for duplicated 2010/2011 in the [Windows Event Viewer Operational events](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus/)
- Added support for [Defender for Endpoint](microsoft-defender-endpoint.md) stack processes token hardening

### Known Issues

- Customers deploying platform update 4.18.2207.5 might experience lagging network performance that could impact applications.

## May-2022 (Platform: 4.18.2205.7 | Engine: 1.1.19300.2)

- Security intelligence update version: **1.369.88.0**
- Released: **June 22, 2022**
- Platform: **4.18.2205.7**
- Engine: **1.1.19300.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- Added fix for ETW channel configuration for updates
- Added support for contextual exclusions allowing more specific exclusion targeting
- Fixed context maximum size
- Added fix for [ASR LSASS detection](attack-surface-reduction-rules-reference.md)
- Added fix to SHSetKnownFolder for rule exclusion logic
- Added AMSI disk usage limits for The History Store
- Added fix for Defender service refusing to accept signature updates

### Known issues

- None

## March-2022 *UPDATE* (Platform: 4.18.2203.5 | Engine:  1.1.19200.5)

*Customers who applied the March 2022 Microsoft Defender engine update (**1.1.19100.5**) might have encountered high resource utilization (CPU and/or memory). Microsoft has released an update (**1.1.19200.5**) that resolves the bugs introduced in the earlier version. Customers are recommended to update to at least this new engine build of Antivirus Engine (**1.1.19200.5**). To ensure any performance issues are fully fixed, it's recommended to reboot machines after applying update.*

- Security intelligence update version: **1.363.817.0**
- Released: **April 22, 2022**
- Platform: **4.18.2203.5**
- Engine: **1.1.19200.5**
- Support phase: **Technical upgrade support (only)**

## What's new

- Resolves issues with high resource utilization (CPU and/or memory) related to the earlier March 2022 Microsoft Defender engine update (1.1.19100.5)

### Known issues

- None

## March-2022 (Platform: 4.18.2203.5 | Engine:  1.1.19100.5)

- Security intelligence update version: **1.361.1449.0**
- Released: **April 7, 2022**
- Platform: **4.18.2203.5**
- Engine: **1.1.19100.5**
- Support phase: **Technical upgrade support (only)**

### What's new

- Added fix for an [attack surface reduction rule](attack-surface-reduction.md) that blocked an Outlook add-in
- Added fix for [behavior monitoring](configure-protection-features-microsoft-defender-antivirus.md) performance issue related to short live processes
- Added fix for [AMSI](/windows/win32/amsi/antimalware-scan-interface-portal) exclusion
- Improved [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) capabilities
- Added a fix for [real-time protection](configure-protection-features-microsoft-defender-antivirus.md) getting disabled in some cases when using `SharedSignaturesPath` config. For more information about the `SharedSignaturesPath` parameter, see [Set-MpPreference](/powershell/module/defender/set-mppreference).

### Known issues

- Potential for high resource utilization (CPU and/or memory). See the Platform 4.18.2203.5 and Engine 1.1.19200.5 update for March 2022.

## February-2022 (Platform: 4.18.2202.4 | Engine: 1.1.19000.8)

- Security intelligence update version: **1.361.14.0**
- Released: **March 14, 2022**
- Platform: **4.18.2202.4**
- Engine: **1.1.19000.8**
- Support phase: **Technical upgrade support (only)**

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

### Known issues

- None

## January-2022 (Platform: 4.18.2201.10 | Engine: 1.1.18900.2)

- Security intelligence update version: **1.357.8.0**
- Released: **February 9, 2022**
- Platform: **4.18.2201.10**
- Engine: **1.1.18900.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- Behavior monitoring improvements in filtering performance
- Hardening to TrustedInstaller
- Tamper protection improvements
- Replaced `ScanScheduleTime` with new `ScanScheduleOffest` cmdlet in [Set-MpPreference](/powershell/module/defender/set-mppreference). This policy configures the number of minutes after midnight to perform a scheduled scan.
- Added the `-ServiceHealthReportInterval` setting to [Set-MpPreference](/powershell/module/defender/set-mppreference). This policy configures the time interval (in minutes) to perform a scheduled scan.
- Added the `AllowSwitchToAsyncInspection` setting to [Set-MpPreference](/powershell/module/defender/set-mppreference). This policy enables a performance optimization that allows synchronously inspected network flows to switch to async inspection once they've been checked and validated.
- Performance Analyzer v2 updates: Remote PowerShell and PowerShell 7.x support added. See [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
- Fixed potential duplicate packet bug in Microsoft Defender Antivirus network inspection system driver.

### Known issues

- None

## November-2021 (Platform: 4.18.2111.5 | Engine: 1.1.18800.4)

- Security intelligence update version: **1.355.2.0**
- Released: **December 9th, 2021**
- Platform: **4.18.2111.5**
- Engine: **1.1.18800.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improved CPU usage efficiency of certain intensive scenarios on Exchange servers
- Added new device control status fields under Get-MpComputerStatus in Defender PowerShell module. For more information, see [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md).
- Fixed bug in which `SharedSignatureRoot` value couldn't be removed when set with PowerShell
- Fixed bug in which [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) failed to be enabled, even though Microsoft Defender for Endpoint indicated that tamper protection was turned on
- Added supportability and bug fixes to performance analyzer for Microsoft Defender Antivirus tool. For more information, see [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
   - PowerShell ISE support added for `New-MpPerformanceRecording`
   - Fixed bug errors for `Get-MpPerformanceReport -TopFilesPerProcess`
   - Fixed performance recording session leak when using `New-MpPerformanceRecording` in PowerShell 7.x, remote sessions, and PowerShell ISE

### Known issues

- None

##  October-2021 (Platform: 4.18.2110.6 | Engine: 1.1.18700.4)

- Security intelligence update version: **1.353.3.0**
- Released: **October 28th, 2021**
- Platform: **4.18.2110.6**
- Engine: **1.1.18700.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improvements to file transfer protocol (FTP) network traffic coverage
- Fix to reduce Microsoft Defender CPU usage in Exchange Server running on Windows Server 2016
- Fix for scan interruptions
- Fix for alerts on blocked tampering attempts not appearing in Security Center
- Improvements to tamper resilience in Microsoft Defender service

### Known issues

- None

##  September-2021 (Platform: 4.18.2109.6 | Engine: 1.1.18600.4)

- Security intelligence update version: **1.351.7.0**
- Released: **October 7th, 2021**
- Platform: **4.18.2109.6**
- Engine: **1.1.18600.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- New delay ring for Microsoft Defender Antivirus engine and platform updates. Devices that opt into this ring receives updates with a 48-hour delay. The new delay ring is suggested for critical environments only. See [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md).
- Improvements to Microsoft Defender update gradual rollout process

### Known issues

- None

##  August-2021 (Platform: 4.18.2108.7 | Engine: 1.1.18500.10)

- Security intelligence update version: **1.349.22.0**
- Released: **September 2, 2021**
- Platform: **4.18.2108.7**
- Engine: **1.1.18500.10**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improvements to the behavior monitoring engine
- Released new [performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
- Microsoft Defender Antivirus hardened against loading malicious DLLs
- Microsoft Defender Antivirus hardened against the TrustedInstaller bypass
- Extending file change notifications to include more data for Human-Operated Ransomware (HumOR)

### Known issues

- None

##  July-2021 (Platform: 4.18.2107.4 | Engine: 1.1.18400.4)

- Security intelligence update version: **1.345.13.0**
- Released: **August 5, 2021**
- Platform: **4.18.2107.4**
- Engine: **1.1.18400.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Device control support added for Windows Portable Devices
- Potentially unwanted applications (PUA) protection is turned on by default for consumers (See [Block potentially unwanted applications with Microsoft Defender Antivirus](/microsoft-365/security/defender-endpoint/detect-block-potentially-unwanted-apps-microsoft-defender-antivirus).)
- Scheduled scans for Group Policy Object managed systems adhere to user configured scan time
- Improvements to the behavior monitoring engine

### Known issues

- None

##  June-2021 (Platform: 4.18.2106.5 | Engine: 1.1.18300.4)

- Security intelligence update version: **1.343.17.0**
- Released: **June 28, 2021**
- Platform: **4.18.2106.5**
- Engine: **1.1.18300.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- New controls for managing the gradual rollout process of Microsoft Defender updates. See [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md).
- Improvement to the behavior monitoring engine
- Improvements to the rollout of antimalware definitions
- Extended Microsoft Edge network event inspections

### Known issues

- None

##  May-2021 (Platform: 4.18.2105.4 | Engine: 1.1.18200.4)

- Security intelligence update version: **1.341.8.0**
- Released: **June 3, 2021**
- Platform: **4.18.2105.4**
- Engine: **1.1.18200.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improvements to [behavior monitoring](client-behavioral-blocking.md)
- Fixed [network protection](network-protection.md) notification filtering feature

### Known issues

- None

##  April-2021 (Platform: 4.18.2104.14 | Engine: 1.1.18100.5)

- Security intelligence update version: **1.337.2.0**
- Released: **April 26, 2021**  (Engine: 1.1.18100.6 released May 5, 2021)
- Platform: **4.18.2104.14**
- Engine: **1.1.18100.5**
- Support phase: **Technical upgrade support (only)**

### What's new

- More behavior monitoring logic
- Improved kernel mode key logger detection
- Added new controls to manage the gradual rollout process for [Microsoft Defender updates](manage-gradual-rollout.md)

### Known issues

- None

##  March-2021 (Platform: 4.18.2103.7 | Engine: 1.1.18000.5)

- Security intelligence update version: **1.335.36.0**
- Released: **April 2, 2021**
- Platform: **4.18.2103.7**
- Engine: **1.1.18000.5**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improvement to the Behavior Monitoring engine
- Expanded network brute-force-attack mitigations
- More failed tampering attempt event generation when [Tamper Protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled

### Known issues

- None

##  February-2021 (Platform: 4.18.2102.3 | Engine: 1.1.17900.7)

- Security intelligence update version: **1.333.7.0**
- Released: **March 9, 2021**
- Platform: **4.18.2102.3**
- Engine: **1.1.17900.7**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improved service recovery through [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md)
- Extend tamper protection scope

### Known issues

- None

##  January-2021 (Platform: 4.18.2101.9 | Engine: 1.1.17800.5)

- Security intelligence update version: **1.327.1854.0**
- Released: **February 2, 2021**
- Platform: **4.18.2101.9**
- Engine: **1.1.17800.5**
- Support phase: **Technical upgrade support (only)**

### What's new

- Shellcode exploit detection improvements
- Increased visibility for credential stealing attempts
- Improvements in antitampering features in Microsoft Defender Antivirus services
- Improved support for ARM x64 emulation
- Fix: EDR Block notification remains in threat history after real-time protection performed initial detection

### Known issues

- None

##  November-2020 (Platform: 4.18.2011.6 | Engine: 1.1.17700.4)

- Security intelligence update version: **1.327.1854.0**
- Released: **December 03, 2020**
- Platform: **4.18.2011.6**
- Engine: **1.1.17700.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improved [SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) status support logging

### Known issues

- None

##  October-2020 (Platform: 4.18.2010.7 | Engine: 1.1.17600.5)

- Security intelligence update version: **1.327.7.0**
- Released: **October 29, 2020**
- Platform: **4.18.2010.7**
- Engine: **1.1.17600.5**
- Support phase: **Technical upgrade support (only)**

### What's new

- New descriptions for special threat categories
- Improved emulation capabilities
- Improved host address allow/block capabilities
- New option in Defender CSP to Ignore merging of local user exclusions

### Known issues

- None

##  September-2020 (Platform: 4.18.2009.7 | Engine: 1.1.17500.4)

- Security intelligence update version: **1.325.10.0**
- Released: **October 01, 2020**
- Platform: **4.18.2009.7**
- Engine: **1.1.17500.4**
- Support phase: **Technical upgrade support (only)**

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

### Known issues

- None

##  August-2020 (Platform: 4.18.2008.9 | Engine: 1.1.17400.5)

- Security intelligence update version: **1.323.9.0**
- Released: **August 27, 2020**
- Platform: **4.18.2008.9**
- Engine: **1.1.17400.5**
- Support phase: **Technical upgrade support (only)**

### What's new

- Add more telemetry events
- Improved scan event telemetry
- Improved behavior monitoring for memory scans
- Improved macro streams scanning
- Added `AMRunningMode` to Get-MpComputerStatus PowerShell cmdlet
- [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) is ignored. Microsoft Defender Antivirus automatically turns itself off when it detects another antivirus program.

### Known issues

- None

##  July-2020 (Platform: 4.18.2007.8 | Engine: 1.1.17300.4)

- Security intelligence update version: **1.321.30.0**
- Released: **July 28, 2020**
- Platform: **4.18.2007.8**
- Engine: **1.1.17300.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improved telemetry for BITS
- Improved Authenticode code signing certificate validation

### Known issues

- None

##  June-2020 (Platform: 4.18.2006.10 | Engine: 1.1.17200.2)

- Security intelligence update version: **1.319.20.0**
- Released: **June 22, 2020**
- Platform: **4.18.2006.10**
- Engine: **1.1.17200.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- Possibility to specify the [location of the support logs](./collect-diagnostic-data.md)
- Skipping aggressive catchup scan in Passive mode.
- Allow Defender to update on metered connections
- Fixed performance tuning when caching is disabled
- Fixed registry query
- Fixed scantime randomization in ADMX

### Known issues

- None

##  May-2020 (Platform: 4.18.2005.4 | Engine: 1.1.17100.2)

- Security intelligence update version: **1.317.20.0**
- Released: **May 26, 2020**
- Platform: **4.18.2005.4**
- Engine: **1.1.17100.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- Improved logging for scan events
- Improved user mode crash handling.
- Added event tracing for Tamper protection
- Fixed AMSI Sample submission
- Fixed AMSI Cloud blocking
- Fixed Security update install log

### Known issues

- None

##  April-2020 (Platform: 4.18.2004.6 | Engine: 1.1.17000.2)

- Security intelligence update version: **1.315.12.0**
- Released: **April 30, 2020**
- Platform: **4.18.2004.6**
- Engine: **1.1.17000.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- WDfilter improvements
- Add more actionable event data to attack surface reduction detection events
- Fixed version information in diagnostic data and WMI
- Fixed incorrect platform version in UI after platform update
- Dynamic URL intel for Fileless threat protection
- UEFI scan capability
- Extend logging for updates

### Known issues

- None

##  March-2020 (Platform: 4.18.2003.8 | Engine: 1.1.16900.2)

- Security intelligence update version: **1.313.8.0**
- Released: **March 24, 2020**
- Platform: **4.18.2003.8**
- Engine: **1.1.16900.4**
- Support phase: **Technical upgrade support (only)**

### What's new

- CPU Throttling option added to [MpCmdRun](./command-line-arguments-microsoft-defender-antivirus.md)
- Improve diagnostic capability
- reduce Security intelligence timeout (5 min)
- Extend AMSI engine internal log capability
- Improve notification for process blocking

### Known issues

- [**Fixed**] Microsoft Defender Antivirus is skipping files when running a scan.

##  February-2020 (Platform: - | Engine: 1.1.16800.2)

- Security intelligence update version: **1.311.4.0**
- Released: **February 25, 2020**
- Platform/Client: **-**
- Engine: **1.1.16800.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- None

### Known issues

- None

##  January-2020 (Platform: 4.18.2001.10 | Engine: 1.1.16700.2)

- Security intelligence update version: **1.309.32.0**
- Released: **January 30, 2020**
- Platform/Client: **4.18.2001.10**
- Engine: **1.1.16700.2**
- Support phase: **Technical upgrade support (only)**

### What's new

- Fixed BSOD on WS2016 with Exchange
- Support platform updates when TMP is redirected to network path
- Platform and engine versions are added to [WDSI](https://www.microsoft.com/en-us/wdsi/defenderupdates) <!-- The preceding URL must include "/en-us" -->
- extend Emergency signature update to [passive mode](./microsoft-defender-antivirus-compatibility.md)
- Fix 4.18.1911.3 hang

### Known issues

- [**Fixed**] devices utilizing [modern standby mode](/windows-hardware/design/device-experiences/modern-standby) may experience a hang with the Windows Defender filter driver that results in a gap of protection.  Affected machines appear to the customer as having not updated to the latest antimalware platform.

> [!IMPORTANT]
> This update is:
> - needed by RS1 devices running lower version of the platform to support SHA2;
> - has a reboot flag for systems that have hanging issues;
> - is re-released in April 2020 and will not be superseded by newer updates to keep future availability;
> - is categorized as an update due to the reboot requirement; and
> - is only be offered with [Windows Update](https://support.microsoft.com/help/4027667/windows-10-update).

##  November-2019 (Platform: 4.18.1911.3 | Engine: 1.1.16600.7)

- Security intelligence update version: **1.307.13.0**
- Released: **December 7, 2019**
- Platform: **4.18.1911.3**
- Engine: **1.1.17000.7**
- Support phase: **No support**

### What's new

- Fixed MpCmdRun tracing level
- Fixed WDFilter version info
- Improve notifications (PUA)
- add MRT logs to support files

### Known issues

- When this update is installed, the device needs the jump package 4.18.2001.10 to be able to update to the latest platform version.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
