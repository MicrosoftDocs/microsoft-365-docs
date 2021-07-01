---
title: What's new in Microsoft Defender for Endpoint on Linux
description: List of major changes for Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, whatsnew, release
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: security
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# What's new in Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

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
