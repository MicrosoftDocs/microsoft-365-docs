---
title: Microsoft Defender Antivirus security intelligence and product updates
description: Manage how Microsoft Defender Antivirus receives protection and product updates.
keywords: updates, security baselines, protection, schedule updates, force updates, mobile updates, wsus
ms.service: microsoft-365-security
ms.localizationpriority: high
ms.date: 03/20/2023
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

# Microsoft Defender Antivirus security intelligence and product updates

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

> [!NOTE]
> - Monthly updates are released in phases, resulting in multiple packages visible in your [Window Server Update Services](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus).
> - This article lists changes that are included in the broad release channel. [See the latest broad channel release here](https://www.microsoft.com/security/encyclopedia/adlpackages.aspx?action=info).
> - To learn more about the gradual rollout process, and to see more information about the next release, see [Manage the gradual rollout process for Microsoft Defender updates](manage-gradual-rollout.md).
> - To learn more about security intelligence updates, see [Security intelligence updates for Microsoft Defender Antivirus and other Microsoft antimalware](https://www.microsoft.com/en-us/wdsi/defenderupdates).
> - If you're looking for a list of Microsoft Defender processes, **[download the mde-urls workbook](https://download.microsoft.com/download/6/b/f/6bfff670-47c3-4e45-b01b-64a2610eaefa/mde-urls-commercial.xlsx)**, and then select the **Microsoft Defender Processes** worksheet. The `mde-urls` workbook also lists the services and their associated URLs that your network must be able to connect to, as described in [Enable access to Microsoft Defender for Endpoint service URLs in the proxy server](configure-proxy-internet.md).

## Monthly platform and engine versions

For information how to update or install the platform update, see [Update for Windows Defender antimalware platform](https://support.microsoft.com/help/4052623/update-for-windows-defender-antimalware-platform).

All our updates contain

- Performance improvements
- Serviceability improvements
- Integration improvements (Cloud, [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender))

### February-2023 (Platform: 4.18.2302.x | Engine: 1.1.20100.6)

- Security intelligence update version: **1.385.68.0**
- Release date: **March 14, 2023**
- Platform: **4.18.2302.x**
- Engine: **1.1.20100.6**
- Support phase: **Security and Critical Updates**

#### What's new

- Improvements in the contextual exclusions syntax
- Improved scheduled scan robustness
- Improved serviceability for internal database files
- Enhanced certificate indicators determination logic
- Enhanced memory usage

#### Known Issues

- None  

### January-2023 (Platform: 4.18.2301.6 | Engine: 1.1.20000.2)

- Security intelligence update version: **1.383.26.0**
- Release date: **February 14, 2023**
- Platform: **4.18.2301.6**
- Engine: **1.1.20000.2**
- Support phase: **Security and Critical Updates**

#### What's new

- Improved [ASR rule](attack-surface-reduction-rules-reference.md) processing logic
- Updated Sense token hardening
- Improved [Defender CSP](/windows/client-management/mdm/defender-csp) module update channel logic

#### Known Issues

- None  

### November-2022 (Platform: 4.18.2211.5 | Engine: 1.1.19900.2)

- Security intelligence update version: **1.381.144.0** 
- Release date: **December 8, 2022**
- Platform: **4.18.2211.5** 
- Engine: **1.1.19900.2**

#### What's new

- Enhanced threat protection capabilities
- Improved [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) capabilities
- Enhanced enabling of tamper protection for newly onboarded devices
- Improved reporting for [cloud protection](cloud-protection-microsoft-defender-antivirus.md)
- Improved [controlled folder access](controlled-folders.md) notifications
- Improved scanning of network shares
- Enhanced processing of host files containing a wild card
- Improved performance for [scan events](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)

#### Known Issues

- None  

### Previous version updates: Technical upgrade support only

After a new package version is released, support for the previous two versions is reduced to technical support only. For more information about previous versions, see [Microsoft Defender Antivirus updates: Previous versions for technical upgrade support](msda-updates-previous-versions-technical-upgrade-support.md).

## Microsoft Defender Antivirus platform support

Platform and engine updates are provided on a monthly cadence. To be fully supported, keep current with the latest platform updates. Our support structure is dynamic, evolving into two phases depending on the availability of the latest platform version:

- **Security and Critical Updates servicing phase** - When running the latest platform version, you're eligible to receive both Security and Critical updates to the anti-malware platform.

- **Technical Support (Only) phase** - After a new platform version is released, support for older versions (N-2) will reduce to technical support only. Platform versions older than N-2 will no longer be supported.*

\* Technical support continues to be provided for upgrades from the Windows 10 release version (see [Platform version included with Windows 10 releases](#platform-version-included-with-windows-10-releases)) to the latest platform version.

During the technical support (only) phase, commercially reasonable support incidents will be provided through Microsoft Customer Service & Support and Microsoft's managed support offerings (such as Premier Support). If a support incident requires escalation to development for further guidance, requires a non-security update, or requires a security update, customers will be asked to upgrade to the latest platform version or an intermediate update (*).


> [!NOTE]
> If you are manually deploying Microsoft Defender Antivirus Platform Update, or if you are using a script or a non-Microsoft management product to deploy Microsoft Defender Antivirus Platform Update, make sure that version `4.18.2001.10` is installed from the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=4.18.2001.10) before the latest version of Platform Update (N-2) is installed.

## How to roll back an update

In the unfortunate event that you encounter issues after a platform update, you can roll back to the previous or the inbox version of the Microsoft Defender platform.  
- To roll back to the previous version, run the following command:<br>
`"%programdata%\Microsoft\Windows Defender\Platform\<version>\MpCmdRun.exe" -RevertPlatform`
- To roll back this update to the version shipped with the Operating System ("%ProgramFiles%\Windows Defender")<br>
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

## Updates for Deployment Image Servicing and Management (DISM)

We recommend updating your Windows 10 (Enterprise, Pro, and Home editions), Windows Server 2019, Windows Server 2022, Windows Server 2016, and Windows Server 2012 R2 OS installation images with the latest antivirus and antimalware updates. Keeping your OS installation images up to date helps avoid a gap in protection.

For more information, see [Microsoft Defender update for Windows operating system installation images](https://support.microsoft.com/help/4568292/defender-update-for-windows-operating-system-installation-images).


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
