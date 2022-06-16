---
title: What's new in Microsoft Defender for Endpoint on Linux
description: List of major changes for Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, whatsnew, release
ms.prod: m365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
ms.topic: reference
ms.technology: mde
---

# What's new in Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)



<br/><br/>
</details><details>
<summary>May-2022 (Build: 101.68.80 | Release version: 30.122042.16880.0)</summary>

&ensp;Released: **May 23, 2022**<br/>
&ensp;Published: **May 23, 2022**<br/>
&ensp;Build: **101.68.80**<br/>
&ensp;Release version: **30.122042.16880.0**<br/>


### What's new
- Added support for kernel version `2.6.32-754.47.1.el6.x86_64` when running on RHEL 6
- On RHEL 6, product can now be installed on devices running Unbreakable Enterprise Kernel (UEK)
- Fixed an issue where the process name was sometimes incorrectly displayed as `unknown` when running `mdatp diagnostic real-time-protection-statistics`
- Fixed a bug where the product sometimes was incorrectly detecting files inside the quarantine folder
- Fixed an issue where the `mdatp` command-line tool was not working when `/opt` was mounted as a soft-link
- Performance improvements & bug fixes


<br/><br/>
</details><details>
<summary>May-2022 (Build: 101.65.77 | Release version: 30.122032.16577.0)</summary>

&ensp;Released: **May 2, 2022**<br/>
&ensp;Published: **May 2, 2022**<br/>
&ensp;Build: **101.65.77**<br/>
&ensp;Release version: **30.122032.16577.0**<br/>


### What's new
- Improved the `conflicting_applications` field in `mdatp health` to show only the most recent 10 processes and also to include the process names. This makes it easier to identify which processes are potentially conflicting with Microsoft Defender for Endpoint for Linux.
- Bug fixes


<br/><br/>
</details><details>
<summary>Mar-2022 (Build: 101.62.74 | Release version: 30.122022.16274.0)</summary>

&ensp;Released: **Mar 24, 2022**<br/>
&ensp;Published: **Mar 24, 2022**<br/>
&ensp;Build: **101.62.74**<br/>
&ensp;Release version: **30.122022.16274.0**<br/>


### What's new
- Addressed an issue where the product would incorrectly block access to files greater than 2GB in size when running on older kernel versions
- Bug fixes


<br/><br/>
</details><details>
<summary>Mar-2022 (Build: 101.60.93 | Release version: 30.122012.16093.0)</summary>

&ensp;Released: **Mar 9, 2022**<br/>
&ensp;Published: **Mar 9, 2022**<br/>
&ensp;Build: **101.60.93**<br/>
&ensp;Release version: **30.122012.16093.0**<br/>

### What's new
- This version contains a security update for [CVE-2022-23278](https://msrc-blog.microsoft.com/2022/03/08/guidance-for-cve-2022-23278-spoofing-in-microsoft-defender-for-endpoint/)


<br/><br/>
</details><details>
<summary>Mar-2022 (Build: 101.60.05 | Release version: 30.122012.16005.0)</summary>

&ensp;Released: **Mar 3, 2022**<br/>
&ensp;Published: **Mar 3, 2022**<br/>
&ensp;Build: **101.60.05**<br/>
&ensp;Release version: **30.122012.16005.0**<br/>

### What's new
- Added support for kernel version 2.6.32-754.43.1.el6.x86_64 for RHEL 6.10
- Bug fixes


<br/><br/>
</details><details>
<summary>Feb-2022 (Build: 101.58.80 | Release version: 30.122012.15880.0)</summary>

&ensp;Released: **Feb 20, 2022**<br/>
&ensp;Published: **Feb 20, 2022**<br/>
&ensp;Build: **101.58.80**<br/>
&ensp;Release version: **30.122012.15880.0**<br/>

### What's new
- The command-line tool now supports restoring quarantined files to a location other than the one where the file was originally detected. This can be done through `mdatp threat quarantine restore --id [threat-id] --path [destination-folder]`.
- Starting with this version, network protection for Linux can be evaluated on demand
- Bug fixes



<br/><br/>
</details><details>
<summary>Jan-2022 (Build: 101.56.62 | Release version: 30.121122.15662.0)</summary>

&ensp;Released: **Jan 26, 2022**<br/>
&ensp;Published: **Jan 26, 2022**<br/>
&ensp;Build: **101.56.62**<br/>
&ensp;Release version: **30.121122.15662.0**<br/>

### What's new
- Fixed a product crash introduced in 101.53.02 and that has impacted multiple customers


<br/><br/>
</details><details>
<summary>Jan-2022 (Build: 101.53.02 | Release version: (30.121112.15302.0)</summary>

&ensp;Released: **Jan 8, 2022**<br/>
&ensp;Published: **Jan 8, 2022**<br/>
&ensp;Build: **101.53.02**<br/>
&ensp;Release version: **30.121112.15302.0**<br/>

### What's new
- Performance improvements & bug fixes



## PRIOR TO 2022


## 101.52.57 (30.121092.15257.0)

- Added a capability to detect vulnerable log4j jars in use by Java applications. The machine is periodically inspected for running Java processes with loaded log4j jars. The information is reported to the Microsoft Defender for Endpoint backend and is exposed in the Vulnerability Management area of the portal.

## 101.47.76 (30.121092.14776.0)

- Added a new switch to the command-line tool to control whether archives are scanned during on-demand scans. This can be configured through `mdatp config scan-archives --value [enabled/disabled]`. By default, this is set to `enabled`.
- Bug fixes

## 101.45.13 (30.121082.14513.0)

- Starting with this version, we are bringing Microsoft Defender for Endpoint support to the following distros: 
  - RHEL6.7-6.10 and CentOS6.7-6.10 versions.
  - Amazon Linux 2
  - Fedora 33 or higher
- Bug fixes


## 101.45.00 (30.121072.14500.0)

- Added new switches to the command-line tool:
  - Control degree of parallelism for on-demand scans. This can be configured through `mdatp config maximum-on-demand-scan-threads --value [number-between-1-and-64]`. By default, a degree of parallelism of `2` is used.
  - Control whether scans after security intelligence updates are enabled or disabled. This can be configured through `mdatp config scan-after-definition-update --value [enabled/disabled]`. By default, this is set to `enabled`.
- Changing the product log level now requires elevation
- Bug fixes

## 101.39.98 (30.121062.13998.0)

- Performance improvements & bug fixes

## 101.34.27 (30.121052.13427.0)

- Performance improvements & bug fixes

## 101.29.64 (30.121042.12964.0)

- Starting with this version, threats detected during on-demand antivirus scans triggered through the command-line client are automatically remediated. Threats detected during scans triggered through the user interface still require manual action.
- `mdatp diagnostic real-time-protection-statistics` now supports two additional switches:
  - `--sort`: sorts the output descending by total number of files scanned
  - `--top N`: displays the top N results (only works if `--sort` is also specified)
- Performance improvements & bug fixes

## 101.25.72 (30.121022.12563.0)

- Microsoft Defender for Endpoint on Linux is now available in preview for US Government customers. For more information, see [Microsoft Defender for Endpoint for US Government customers](gov.md).
- Fixed an issue where usage of Microsoft Defender for Endpoint on Linux on systems with FUSE filesystems was leading to OS hang
- Performance improvements & other bug fixes

## 101.25.63 (30.121022.12563.0)

- Performance improvements & bug fixes

## 101.23.64 (30.121021.12364.0)

- Performance improvement for the situation where an entire mount point is added to the antivirus exclusion list. Prior to this version, file activity originating from the mount point was still processed by the product. Starting with this version, file activity for excluded mount points is suppressed, leading to better product performance
- Added a new option to the command-line tool to view information about the last on-demand scan. To view information about the last on-demand scan, run `mdatp health --details antivirus`
- Other performance improvements & bug fixes

## 101.18.53

- EDR for Linux is now [generally available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/edr-for-linux-is-now-is-generally-available/ba-p/2048539)
- Added a new command-line switch (`--ignore-exclusions`) to ignore AV exclusions during custom scans (`mdatp scan custom`)
- Extended `mdatp diagnostic create` with a new parameter (`--path [directory]`) that allows the diagnostic logs to be saved to a different directory
- Performance improvements & bug fixes

## 101.12.99

- Performance improvements & bug fixes

## 101.04.76

- Bug fixes

## 101.03.48

- Bug fixes

## 101.02.55

- Fixed an issue where the product sometimes does not start following a reboot / upgrade
- Fixed an issue where proxy settings are not persisted across product upgrades

## 101.00.75

- Added support for the following file system types: `ecryptfs`, `fuse`, `fuseblk`, `jfs`, `nfs`, `overlay`, `ramfs`, `reiserfs`, `udf`, and `vfat`
- New syntax for the [command-line tool](linux-resources.md#configure-from-the-command-line).
- Performance improvements & bug fixes

## 100.90.70

> [!WARNING]
> When upgrading the installed package from a product version earlier than 100.90.70, the update may fail on Red Hat-based and SLES distributions. This is because of a major change in a file path. A temporary solution is to remove the older package, and then install the newer one. This issue does not exist in newer versions.

- Antivirus [exclusions now support wildcards](linux-exclusions.md#supported-exclusion-types)
- Added the ability to [troubleshoot performance issues](linux-support-perf.md) through the `mdatp` command-line tool
- Improvements to make the package installation more robust
- Performance improvements & bug fixes
