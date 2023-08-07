---
title: Microsoft Defender Antivirus security intelligence and product updates
description: Manage how Microsoft Defender Antivirus receives protection and product updates.
ms.service: microsoft-365-security
ms.localizationpriority: high
ms.date: 07/24/2023
audience: ITPro
ms.topic: reference
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: pahuijbr, mkaminska, tudobril
manager: dansimp
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Microsoft Defender Antivirus security intelligence and product updates

**Applies to:**
- [Microsoft Defender for Endpoint Plans 1 and 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Keeping Microsoft Defender Antivirus up to date is critical to assure your devices have the latest technology and features needed to protect against new malware and attack techniques. Make sure to update your antivirus protection, even if Microsoft Defender Antivirus is running in [passive mode](microsoft-defender-antivirus-compatibility.md). This article includes information about the two types of updates for keeping Microsoft Defender Antivirus current:

- [Security intelligence updates](#security-intelligence-updates)
- [Product updates](#product-updates)

This article also includes:

- [Microsoft Defender Antivirus platform support](#microsoft-defender-antivirus-platform-support)
- [How to roll back an update](#how-to-roll-back-an-update) (if necessary)
- [Platform version included with Windows 10 releases](#platform-version-included-with-windows-10-releases)
- [Updates for Deployment Image Servicing and Management (DISM)](#updates-for-deployment-image-servicing-and-management-dism)

> [!TIP]
> To see the most current engine, platform, and signature date, visit the [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates)

## Security intelligence updates

Microsoft Defender Antivirus uses [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md) (also called the *Microsoft Advanced Protection Service*, or MAPS) and periodically downloads dynamic security intelligence updates to provide more protection. These dynamic updates don't take the place of regular security intelligence updates via security intelligence update KB2267602.

> [!NOTE]
> Updates are released under the following KBs:
> - Microsoft Defender Antivirus: KB2267602
> - System Center Endpoint Protection: KB2461484

Cloud-delivered protection is always on and requires an active connection to the Internet to function. Security intelligence updates occur on a scheduled cadence (configurable via policy). For more information, see [Use Microsoft cloud-provided protection in Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md).

For a list of recent security intelligence updates, see [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).

Engine updates are included with security intelligence updates and are released on a monthly cadence.

## Product updates

Microsoft Defender Antivirus requires monthly updates (KB4052623) known as *platform updates*.

You can manage the distribution of updates through one of the following methods:

- [Windows Server Update Service (WSUS)](/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus)
- [Microsoft Configuration Manager](/configmgr/sum/understand/software-updates-introduction)
- The usual methods you use to deploy Microsoft and Windows updates to endpoints in your network.

For more information, see [Manage the sources for Microsoft Defender Antivirus protection updates](/mem/configmgr/protect/deploy-use/endpoint-definitions-wsus#to-synchronize-endpoint-protection-definition-updates-in-standalone-wsus).

### Important points about product updates

- Monthly updates are released in phases, resulting in multiple packages visible in your [Window Server Update Services](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus).

- This article lists changes that are included in the broad release channel. [See the latest broad channel release here](https://www.microsoft.com/security/encyclopedia/adlpackages.aspx?action=info).

- To learn more about the gradual rollout process, and to see more information about the next release, see [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md).

- To learn more about security intelligence updates, see [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).

- If you're looking for a list of Microsoft Defender processes, **[download the mde-urls workbook](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx)**, and then select the **Microsoft Defender Processes** worksheet. The `mde-urls` workbook also lists the services and their associated URLs that your network must be able to connect to, as described in [Enable access to Microsoft Defender for Endpoint service URLs in the proxy server](configure-proxy-internet.md).

- Platform updates can be temporarily postponed if other protection features (such as [Endpoint DLP](../../compliance/endpoint-dlp-getting-started.md) or [Device Control](device-control-report.md)) are actively monitoring running processes. Platform updates are retried after a reboot or when all monitored services are stopped.

- In the **Microsoft Endpoint Configuration Manager / Windows Server Update Services** (MECM/WSUS) catalog, the _category_ **Microsoft Defender for Endpoint** includes updates for the MSSense service in [KB5005292](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5005292). KB5005292 includes updates and fixes to the Microsoft Defender for Endpoint **endpoint detection and response** (EDR) sensor. For more information, see [Microsoft Defender for Endpoint update for EDR Sensor](https://support.microsoft.com/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac) and [What's new in Microsoft Defender for Endpoint on Windows](windows-whatsnew.md).

## Monthly platform and engine versions

All our updates contain

- Performance improvements
- Serviceability improvements
- Integration improvements (Cloud, [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender))

### May-2023 *UPDATE* (Platform: 4.18.23050.9)

*Microsoft has released an additional platform update (**4.18.23050.9**) for the May 2023 release.*

- Security intelligence update version: **1.393.1315.0**
- Released: **July 24, 2023 (Platform only)**
- Platform: **4.18.23050.9**
- Engine: **1.1.23060.1005**
- Support phase: **Security and Critical Updates**

#### What's new

- Fixed a regression where HTTP requests were being handled sequentially, causing high latency for [network protection](network-protection.md) scenarios
- Fixed a bug where DNS requests with empty authority records were being improperly parsed

### June-2023 (Engine: 1.1.23060.1005)

- Security intelligence update version: **1.393.71.0**
- Released:  **July 10, 2023 (Engine only)** 
- Engine: **1.1.23060.1005**
- Support phase: **Security and Critical Updates**
   
#### What's new  

- Fixed an issue with [ASR rules deployed via Intune](/mem/intune/protect/endpoint-security-asr-policy) to display accurately in the Microsoft 365 Defender portal
- Fixed a performance issue when building and validating Defender cache
- Improved performance by removing redundant exclusion checks
 
#### Known Issues  

- See [May-2023 *UPDATE* (Platform: 4.18.23050.9 | Engine: 1.1.23060.1005)](#may-2023-update-platform-418230509) for platform updates.

### May-2023 *UPDATE* (Platform: 4.18.23050.5 | Engine:  1.1.23050.2)

*Microsoft has released a platform update (**4.18.23050.5**) for the May 2023 release. Note that an [additional update](#may-2023-update-platform-418230509) has been released.*

- Security intelligence update version: **1.391.860.0**
- Released: **June 12, 2023**
- Platform: **4.18.23050.5**
- Engine: **1.1.23050.2**
- Support phase: **Security and Critical Updates**
   
#### What's new  

- Fixed issue that could lead to resolution of incorrect service endpoint
  
#### Known Issues  

- Users encounter slow loading webpages in non-Microsoft web browsers with [web content filtering](/microsoft-365/security/defender-endpoint/web-content-filtering) enabled

### May-2023 (Platform: 4.18.23050.3 | Engine:  1.1.23050.2)

- Security intelligence update version:  **1.391.64.0**    
- Released: **May 31, 2023**    
- Platform: **4.18.23050.3**    
- Engine: **1.1.23050.2**    
- Support phase: **Security and Critical Updates**  
   
#### What's new  

- New version format for Platform and Engine (see the [April-2023 update](#whats-new))
- Improved processing of SmartLockerMode  
- Fixed input parameters for DefinitionUpdateChannel cmdlet in [Set-MpPreference](/powershell/module/defender/set-mppreference)  
- Improved installation experience for [Windows Server 2012 R2 and Windows Server 2016](microsoft-defender-antivirus-on-windows-server.md)  
- Added ability to disable Defender task maintenance tasks programmatically  
- Fixed WDFilter 0x50 bug check  
- Fixed print enforcement issue for device control  
- Fixed scan randomization issue when setting Intune policy  
- Fixed sense offboarding on Windows Server 2016 when [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) is enabled  
- Fixed inconsistent results of caching files with the internal Defender file cache  
- Augmented attack surface reduction (ASR) telemetry with more data related to an ASR detection  
- Removed Image File Execution Options (IFEO) debugger value during installation which can be used to prevent service starts
- Fixed memory leaked in ASR logic  
- Improved validation guard-rail for Malicious Software Removal Tool (MSRT) releases
  
#### Known Issues  

- Potential issue that could lead to resolution of incorrect service endpoint

### April-2023 (Platform: 4.18.2304.8 | Engine: 1.1.20300.3)

- Security intelligence update version: **1.387.2997.0**
- Release date:  **May 2, 2023 (Engine) / May 2, 2023 (Platform)**
- Platform: **4.18.2304.8** 
- Engine: **1.1.20300.3**
- Support phase: **Security and Critical Updates**

#### What's new

- **Beginning in May 2023, the Platform and Engine version schema have a new format**. Here's what the new version format looks like: 
   - Platform: `4.18.23050.1` 
   - Engine: `1.1.23050.63000` 
- Fixed memory leak in behavior monitoring
- Improved resiliency of signature loading and platform updates
- Quarantine and restore support for [WMI](use-wmi-microsoft-defender-antivirus.md)
- Fixed attack surface reduction (ASR) rule output with [Get-MpPreference](/powershell/module/defender/get-mppreference)
- Fixed MSERT to only use release engine version
- Improved the enforcement of exclusions
- Added support for enabling real-time protection and signature updates during OOBE
- Fixed localization for Defender events
- Deprecated real-time signature delivery setting
- Updated missing setting (ValidateMapsConnection) in [MpCmdRun.exe](command-line-arguments-microsoft-defender-antivirus.md)
- Fixed abandoned threats in the Windows Security app
- Fixed a service-hang issue that caused invalid outputs to display in [Get-MpComputerStatus](/powershell/module/defender/get-mpcomputerstatus)

#### Known issues

- None

### Previous version updates: Technical upgrade support only

After a new package version is released, support for the previous two versions is reduced to technical support only. For more information about previous versions, see [Microsoft Defender Antivirus updates: Previous versions for technical upgrade support](msda-updates-previous-versions-technical-upgrade-support.md).

## Microsoft Defender Antivirus platform support

Platform and engine updates are provided on a monthly cadence. To be fully supported, keep current with the latest platform updates. Our support structure is dynamic, evolving into two phases depending on the availability of the latest platform version:

- **Security and Critical Updates servicing phase** - When running the latest platform version, you're eligible to receive both Security and Critical updates to the anti-malware platform.

- **Technical Support (Only) phase** - After a new platform version is released, support for older versions (N-2) reduce to [technical support only](msda-updates-previous-versions-technical-upgrade-support.md). Platform versions older than N-2 are no longer supported. Technical support continues to be provided for upgrades from the Windows 10 release version (see [Platform version included with Windows 10 releases](#platform-version-included-with-windows-10-releases)) to the latest platform version.

During the technical support (only) phase, commercially reasonable support incidents are provided through Microsoft Customer Service & Support and Microsoft's managed support offerings (such as Premier Support). If a support incident requires escalation to development for further guidance, requires a nonsecurity update, or requires a security update, customers are asked to upgrade to the latest platform version or an intermediate update (*).

> [!NOTE]
> If you are manually deploying Microsoft Defender Antivirus Platform Update, or if you are using a script or a non-Microsoft management product to deploy Microsoft Defender Antivirus Platform Update, make sure that version `4.18.2001.10` is installed from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=4.18.2001.10) before the latest version of Platform Update (N-2) is installed.

## How to roll back an update

In the unfortunate event that you encounter issues after a platform update, you can roll back to the previous or the inbox version of the Microsoft Defender platform.  

- To roll back to the previous version, run the following command:

   `"%programdata%\Microsoft\Windows Defender\Platform\<version>\MpCmdRun.exe" -RevertPlatform`

- To roll back this update to the version shipped with the Operating System ("%ProgramFiles%\Windows Defender")

   `"%programdata%\Microsoft\Windows Defender\Platform\<version>\MpCmdRun.exe" -ResetPlatform`

## Platform version included with Windows 10 releases

The below table provides the Microsoft Defender Antivirus platform and engine versions that are shipped with the latest Windows 10 releases:

|Windows 10 release  |Platform version  |Engine version |Support phase |
|:---|:---|:---|:---|
|2004  (20H1/20H2) | `4.18.1909.6` | `1.1.17000.2` | Technical upgrade support (only) |
|1909  (19H2) |`4.18.1902.5` |`1.1.16700.3` | Technical upgrade support (only) |
|1903  (19H1) |`4.18.1902.5` |`1.1.15600.4` | Technical upgrade support (only) |
|1809  (RS5) |`4.18.1807.5` |`1.1.15000.2` | Technical upgrade support (only) |
|1803  (RS4) |`4.13.17134.1` |`1.1.14600.4` | Technical upgrade support (only) |
|1709  (RS3) |`4.12.16299.15` |`1.1.14104.0` | Technical upgrade support (only) |
|1703  (RS2) |`4.11.15603.2` |`1.1.13504.0` | Technical upgrade support (only) |
|1607 (RS1) |`4.10.14393.3683` |`1.1.12805.0` | Technical upgrade support (only) |

For Windows 10 release information, see the [Windows lifecycle fact sheet](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet).
  
> [!NOTE]  
> Windows Server 2016 ships with the same Platform version as RS1 and falls under the same support phase: Technical upgrade support (only)  
> Windows Server 2019 ships with the same Platform version as RS5 and falls under the same support phase: Technical upgrade support (only)  

## Updates for Deployment Image Servicing and Management (DISM)

To avoid a gap in protection, keep your OS installation images up to date with the latest antivirus and antimalware updates. Updates are available for:

- Windows 10 and 11 (Enterprise, Pro, and Home editions)
- Windows Server 2022, Windows Server 2019, Windows Server 2016, and Windows Server 2012 R2
- WIM and VHD(x) files 

Updates are released for x86, x64, and ARM64 Windows architecture.

For more information, see [Microsoft Defender update for Windows operating system installation images](https://support.microsoft.com/help/4568292/defender-update-for-windows-operating-system-installation-images).

### 20230604.1

- Defender package version: **20230604.1**
- Security intelligence version: **1.391.476.0**
- Engine version: **1.1.23050.3**
- Platform version: **4.18.23050.3**

#### Fixes

- None

### 20230503.1

- Defender package version: **20230503.1**
- Security intelligence version: **1.389.44.0**
- Engine version: **1.1.20300.3**
- Platform version: **4.18.2304.8**

#### Fixes

- None

#### Additional information

- None

### 20230330.2

- Defender package version: **20230330.2**
- Security intelligence version: **1.385.1537.0**
- Engine version: **1.1.20100.6**
- Platform version: **4.18.2302.7**

#### Fixes

- None

#### Additional information

- None

### 20230308.1

- Defender package version: **20230308.1**
- Security intelligence version: **1.383.1321.0**
- Engine version: **1.1.20000.2**
- Platform version: **4.18.2301.6**

#### Fixes

- None

#### Additional information

- None

### 20230215.1

- Defender package version: **20230215.1**
- Security intelligence version: **1.383.51.0**
- Engine version: **1.1.20000.2**
- Platform version: **4.18.2301.6**

#### Fixes

- None

#### Additional information

- None

### 20230118.1

- Defender package version: **20230118.1**
- Security intelligence version: **1.381.2404.0**
- Engine version: **1.1.19900.2**
- Platform version: **4.18.2211.5**

#### Fixes

- None

#### Additional information

- None

### 20221209.1

- Defender package version: **20221209.1**
- Security intelligence version: **1.381.144.0**
- Engine version: **1.1.19900.2**
- Platform version: **4.18.2211.5**

#### Fixes

- None

#### Additional information

- None

### 20221102.3

- Defender package version: **20221102.3**
- Security intelligence version: **1.377.1180.0**
- Engine version: **1.1.19700.3**
- Platform version: **4.18.2210.4**

#### Fixes

- None

#### Additional information

- None

### 20221014.1

- Package version: **20221014.1**
- Platform version: **4.18.2209.7**
- Engine version: **1.1.19700.3**
- Signature version: **1.373.208.0**

#### Fixes

- None

#### Additional information

- None

### 20220929.1

- Package version: **20220929.1**
- Platform version: **4.18.2207.7**
- Engine version: **1.1.19600.3**
- Signature version: **1.373.1243.0**

#### Fixes

- None

#### Additional information

- None

### 20220925.2

- Package version: **20220925.2**
- Platform version: **4.18.2207.7**
- Engine version: **1.1.19600.3**
- Signature version: **1.373.1371.0**

#### Fixes

- None

#### Additional information

- None

### 20220901.4

- Package version: **20220901.4**
- Platform version: **4.18.2205.7**
- Engine version: **1.1.19500.2**
- Signature version: **1.373.1371.0**

#### Fixes

- None

#### Additional information

- None

### 20220802.1

- Package version: **20220802.1**
- Platform version: **4.18.2205.7**
- Engine version: **1.1.19400.3**
- Signature version: **1.371.1205.0**

#### Fixes

- None

#### Additional information

- None

### 20220629.5

- Package version: **20220629.5**
- Platform version: **4.18.2205.7**
- Engine version: **1.1.19300.2**
- Signature version: **1.369.220.0**

#### Fixes

- None

#### Additional information

- None

### 20220603.3

- Package version: **20220603.3**
- Platform version: **4.18.2203.5**
- Engine version: **1.1.19200.6**
- Signature version: **1.367.1009.0**

#### Fixes

- None

#### Additional information

- None

### 20220506.6

- Package version: **20220506.6**
- Platform version: **4.18.2203.5**
- Engine version: **1.1.19200.5**
- Signature version: **1.363.1436.0**

#### Fixes

- None

#### Additional information

- None

### 20220321.1

- Package version: **20220321.1**
- Platform version: **4.18.2202.4**
- Engine version: **1.1.19000.8**
- Signature version: **1.351.337.0**

#### Fixes

- None

#### Additional information

- None

### 20220305.1

- Package version: **20220305.1**
- Platform version: **4.18.2201.10**
- Engine version: **1.1.18900.3**
- Signature version: **1.359.1405.0**

#### Fixes

- None

#### Additional information

- None

### 20220203.1

- Package version: **20220203.1**
- Platform version: **4.18.2111.5**
- Engine version: **1.1.18900.2**
- Signature version: **1.357.32.0**

#### Fixes

- None

#### Additional information

- None

### 20220105.1

- Package version: **20220105.1**
- Platform version: **4.18.2111.5**
- Engine version: **1.1.18800.4**
- Signature version: **1.355.1482.0**

#### Fixes

- None

#### Additional information

- None


### 1.1.2112.01

- Package version: **1.1.2112.01**
- Platform version: **4.18.2110.6**
- Engine version: **1.1.18700.4**
- Signature version: **1.353.2283.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2111.02

- Package version: **1.1.2111.02**
- Platform version: **4.18.2110.6**
- Engine version: **1.1.18700.4**
- Signature version: **1.353.613.0**

#### Fixes

- Fixed an issue pertaining to localization files

#### Additional information

- None

### 1.1.2110.01

- Package version: **1.1.2110.01**
- Platform version: **4.18.2109.6**
- Engine version: **1.1.18500.10**
- Signature version: **1.349.2103.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2109.01

- Package version: **1.1.2109.01**
- Platform version: **4.18.2107.4**
- Engine version: **1.1.18400.5**
- Signature version: **1.347.891.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2108.01

- Package version: **1.1.2108.01**
- Platform version: **4.18.2107.4**
- Engine version: **1.1.18300.4**
- Signature version: **1.343.2244.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2107.02

- Package version: **1.1.2107.02**
- Platform version: **4.18.2105.5**
- Engine version: **1.1.18300.4**
- Signature version: **1.343.658.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2106.01

- Package version: **1.1.2106.01**
- Platform version: **4.18.2104.14**
- Engine version: **1.1.18100.6**
- Signature version: **1.339.1923.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2105.01

- Package version: **1.1.2105.01**
- Platform version: **4.18.2103.7**
- Engine version: **1.1.18100.6**
- Signature version: **1.339.42.0**

#### Fixes

- None

#### Additional information

- None


### 1.1.2104.01

- Package version: **1.1.2104.01**
- Platform version: **4.18.2102.4**
- Engine version: **1.1.18000.5**
- Signature version: **1.335.232.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2103.01

- Package version: **1.1.2103.01**
- Platform version: **4.18.2101.9**
- Engine version: **1.1.17800.5**
- Signature version: **1.331.2302.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2102.03

- Package version: **1.1.2102.03**
- Platform version: **4.18.2011.6**
- Engine version: **1.1.17800.5**
- Signature version: **1.331.174.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2101.02

- Package version: **1.1.2101.02**
- Platform version: **4.18.2011.6**
- Engine version: **1.1.17700.4**
- Signature version: **1.329.1796.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2012.01

- Package version: **1.1.2012.01**
- Platform version: **4.18.2010.7**
- Engine version: **1.1.17600.5**
- Signature version: **1.327.1991.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2011.02

- Package version: **1.1.2011.02**
- Platform version: **4.18.2010.7**
- Engine version: **1.1.17600.5**
- Signature version: **1.327.658.0**

#### Fixes

- None

#### Additional information

- Refreshed Microsoft Defender Antivirus signatures

### 1.1.2011.01

- Package version: **1.1.2011.01**
- Platform version: **4.18.2009.7**
- Engine version: **1.1.17600.5**
- Signature version: **1.327.344.0**

#### Fixes

- None

#### Additional information

- None

### 1.1.2009.10

- Package version: **1.1.2011.01**
- Platform version: **4.18.2008.9**
- Engine version: **1.1.17400.5**
- Signature version: **1.327.2216.0**

#### Fixes

- None

#### Additional information

- Added support for Windows 10 RS1 or later OS install images.

## More resources

| Article | Description  |
|:---|:---|
|[Microsoft Defender update for Windows operating system installation images](https://support.microsoft.com/help/4568292/defender-update-for-windows-operating-system-installation-images)  | Review antimalware update packages for your OS installation images (WIM and VHD files). Get Microsoft Defender Antivirus updates for Windows 10 (Enterprise, Pro, and Home editions), Windows Server 2019, Windows Server 2022, Windows Server 2016, and Windows Server 2012 R2 installation images.  |
|[Manage how protection updates are downloaded and applied](manage-protection-updates-microsoft-defender-antivirus.md) | Protection updates can be delivered through many sources. |
|[Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) | You can schedule when protection updates should be downloaded. |
|[Manage updates for endpoints that are out of date](manage-outdated-endpoints-microsoft-defender-antivirus.md) | If an endpoint misses an update or scheduled scan, you can force an update or scan the next time a user signs in. |
|[Manage event-based forced updates](manage-event-based-updates-microsoft-defender-antivirus.md) | You can set protection updates to be downloaded at startup or after certain cloud-delivered protection events. |
|[Manage updates for mobile devices and virtual machines (VMs)](manage-updates-mobile-devices-vms-microsoft-defender-antivirus.md)| You can specify settings, such as whether updates should occur on battery power that 's especially useful for mobile devices and virtual machines. |
| [Microsoft Defender for Endpoint update for EDR Sensor](https://support.microsoft.com/topic/microsoft-defender-for-endpoint-update-for-edr-sensor-f8f69773-f17f-420f-91f4-a8e5167284ac) | You can update the EDR sensor (MsSense.exe) that's included in the new Microsoft Defender for Endpoint unified solution package released in 2021.   |

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)


[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
