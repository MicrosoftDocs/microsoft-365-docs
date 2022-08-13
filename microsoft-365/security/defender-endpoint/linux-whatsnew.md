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


This article is updated frequently to let you know what's new in the latest releases of Microsoft Defender for Endpoint on Linux. 

- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)

<details>
  <summary>Aug-2022 (Build: 101.75.43 | Release version: 30.122071.17543.0)</summary>

&ensp;Released: **August 2, 2022**<br/>
&ensp;Published: **August 2, 2022**<br/>
&ensp;Build: **101.75.43**<br/>
&ensp;Release version: **30.122071.17543.0**<br/>
&ensp;Engine version: **1.1.19300.3**<br/>
&ensp;Signature version: **1.369.395.0**<br/>

**What's new**

- Added support for Red Hat Enterprise Linux version 9.0
- Added a new field in the output of `mdatp health` that can be used to query the enforcement level of the network protection feature. The new field is called `network_protection_enforcement_level` and can take one of the following values: `audit`, `block`, or `disabled`.
- Addressed a product bug where multiple detections of the same content could lead to duplicate entries in the threat history
- Addressed an issue where one of the processes spawned by the product (`mdatp_audisp_plugin`) was sometimes not properly terminated when the service was stopped
- Other bug fixes
</br>

<br/><br/>
</details>

<details>
  <summary>Jul-2022 (Build: 101.73.77 | Release version: 30.122062.17377.0)</summary>

&ensp;Released: **July 21, 2022**<br/>
&ensp;Published: **July 21, 2022**<br/>
&ensp;Build: **101.73.77**<br/>
&ensp;Release version: **30.122062.17377.0**<br/>
&ensp;Engine version: **1.1.19200.3**<br/>
&ensp;Signature version: **1.367.1011.0**<br/>


**What's new**

- Added an option to [configure file hash computation](linux-preferences.md#configure-file-hash-computation-feature)
- From this build onwards, the product will have the new anti-malware engine by default
- Performance improvements for file copy operations
- Bug fixes
</br>

<br/><br/>
</details>

<details>
  <summary>Jun-2022 (Build: 101.71.18 | Release version: 30.122052.17118.0)</summary>

&ensp;Released: **June 24, 2022**<br/>
&ensp;Published: **June 24, 2022**<br/>
&ensp;Build: **101.71.18**<br/>
&ensp;Release version: **30.122052.17118.0**<br/>


**What's new**

- Fix to support definitions storage in non-standard locations (outside of /var) for v2 definition updates
- Fixed an issue in the product sensor used on RHEL 6 that could lead to an OS hang
- `mdatp connectivity test` was extended with an extra URL that the product requires to function correctly. The new URL is [https://go.microsoft.com/fwlink/?linkid=2144709](https://go.microsoft.com/fwlink/?linkid=2144709).
- Up until now, the product log level wasn't persisted between product restarts. Starting from this version, there's a new command-line tool switch that persists the log level. The new command is `mdatp log level persist --level <level>`.
- Removed the dependency on `python` from the product installation package
- Performance improvements for file copy operations and processing of network events originating from `auditd`
- Bug fixes
</br>

<br/><br/>
</details>


<details>
  <summary>May-2022 (Build: 101.68.80 | Release version: 30.122042.16880.0)</summary>

&ensp;Released: **May 23, 2022**<br/>
&ensp;Published: **May 23, 2022**<br/>
&ensp;Build: **101.68.80**<br/>
&ensp;Release version: **30.122042.16880.0**<br/>

**What's new** 

- Added support for kernel version `2.6.32-754.47.1.el6.x86_64` when running on RHEL 6
- On RHEL 6, product can now be installed on devices running Unbreakable Enterprise Kernel (UEK)
- Fixed an issue where the process name was sometimes incorrectly displayed as `unknown` when running `mdatp diagnostic real-time-protection-statistics`
- Fixed a bug where the product sometimes was incorrectly detecting files inside the quarantine folder
- Fixed an issue where the `mdatp` command-line tool was not working when `/opt` was mounted as a soft-link
- Performance improvements & bug fixes
</br>

<br/><br/>
</details>

<details>
<summary>May-2022 (Build: 101.65.77 | Release version: 30.122032.16577.0)</summary>

&ensp;Released: **May 2, 2022**<br/>
&ensp;Published: **May 2, 2022**<br/>
&ensp;Build: **101.65.77**<br/>
&ensp;Release version: **30.122032.16577.0**<br/>


**What's new**

- Improved the `conflicting_applications` field in `mdatp health` to show only the most recent 10 processes and also to include the process names. This makes it easier to identify which processes are potentially conflicting with Microsoft Defender for Endpoint for Linux.
- Bug fixes


<br/><br/>
</details><details>
<summary>Mar-2022 (Build: 101.62.74 | Release version: 30.122022.16274.0)</summary>

&ensp;Released: **Mar 24, 2022**<br/>
&ensp;Published: **Mar 24, 2022**<br/>
&ensp;Build: **101.62.74**<br/>
&ensp;Release version: **30.122022.16274.0**<br/>


**What's new**

- Addressed an issue where the product would incorrectly block access to files greater than 2GB in size when running on older kernel versions
- Bug fixes


<br/><br/>
</details><details>
<summary>Mar-2022 (Build: 101.60.93 | Release version: 30.122012.16093.0)</summary>

&ensp;Released: **Mar 9, 2022**<br/>
&ensp;Published: **Mar 9, 2022**<br/>
&ensp;Build: **101.60.93**<br/>
&ensp;Release version: **30.122012.16093.0**<br/>

**What's new**

- This version contains a security update for [CVE-2022-23278](https://msrc-blog.microsoft.com/2022/03/08/guidance-for-cve-2022-23278-spoofing-in-microsoft-defender-for-endpoint/)


<br/><br/>
</details><details>
<summary>Mar-2022 (Build: 101.60.05 | Release version: 30.122012.16005.0)</summary>

&ensp;Released: **Mar 3, 2022**<br/>
&ensp;Published: **Mar 3, 2022**<br/>
&ensp;Build: **101.60.05**<br/>
&ensp;Release version: **30.122012.16005.0**<br/>

**What's new**

- Added support for kernel version 2.6.32-754.43.1.el6.x86_64 for RHEL 6.10
- Bug fixes


<br/><br/>
</details><details>
<summary>Feb-2022 (Build: 101.58.80 | Release version: 30.122012.15880.0)</summary>

&ensp;Released: **Feb 20, 2022**<br/>
&ensp;Published: **Feb 20, 2022**<br/>
&ensp;Build: **101.58.80**<br/>
&ensp;Release version: **30.122012.15880.0**<br/>

**What's new**

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

**What's new**

- Fixed a product crash introduced in 101.53.02 and that has impacted multiple customers


<br/><br/>
</details><details>
<summary>Jan-2022 (Build: 101.53.02 | Release version: (30.121112.15302.0)</summary>

&ensp;Released: **Jan 8, 2022**<br/>
&ensp;Published: **Jan 8, 2022**<br/>
&ensp;Build: **101.53.02**<br/>
&ensp;Release version: **30.121112.15302.0**<br/>

**What's new**

- Performance improvements & bug fixes



</details>

<details><summary> 2021 releases</summary><blockquote>
  <details><summary>(Build: 101.52.57 | Release version: 30.121092.15257.0)</summary>
   
  <p><b> 
  Build: 101.52.57 <br>
  Release version: 30.121092.15257.0</b></p>
   
  <p><b> What's new </b></p>

   - Added a capability to detect vulnerable log4j jars in use by Java applications. The machine is periodically inspected for running Java processes with loaded log4j jars. The information is reported to the Microsoft Defender for Endpoint backend and is exposed in the Vulnerability Management area of the portal.
   
   </details>

  <details><summary>(Build: 101.47.76  | Release version: 30.121092.14776.0)</summary>
   
  <p><b> 
  Build: 101.47.76 <br>
  Release version: 30.121092.14776.0</b></p>
   
  <p><b>What's new</b></p>

   - Added a new switch to the command-line tool to control whether archives are scanned during on-demand scans. This can be configured through mdatp config scan-archives --value [enabled/disabled]. By default, this is set to enabled.

   - Bug fixes

   </details>

   <details><summary>(Build: 101.45.13 | Release version: 30.121082.14513.0)</summary>
   
  <p> 
  Build: <b>101.45.13 </b>  <br>
  Release version:<b> 30.121082.14513.0 </b></p>
   
  <p><b>What's new</b></p>

  - Starting with this version, we are bringing Microsoft Defender for Endpoint support to the following distros:

    - RHEL6.7-6.10 and CentOS6.7-6.10 versions.
    - Amazon Linux 2
    - Fedora 33 or higher

  - Bug fixes

   </details>


   <details><summary>(Build: 101.45.00 | Release version: 30.121072.14500.0)</summary>
   
   <p> 
   Build:<b> 101.45.00</b> <br>
   Release version: <b>30.121072.14500.0</b></p>
   
   <p><b>What's new</b></p>
      

  - Added new switches to the command-line tool:
    - Control degree of parallelism for on-demand scans. This can be configured through `mdatp config maximum-on-demand-scan-threads --value [number-between-1-and-64]`. By default, a degree of parallelism of `2` is used.
    - Control whether scans after security intelligence updates are enabled or disabled. This can be configured through `mdatp config scan-after-definition-update --value [enabled/disabled]`. By default, this is set to `enabled`.
  - Changing the product log level now requires elevation
  - Bug fixes

   </details>

   <details><summary>(Build: 101.39.98 | Release version: 30.121062.13998.0)</summary>
   
   <p> 
   Build: <b>101.39.98 </b><br>
   Release version: <b>30.121062.13998.0</b></p>
   
   <p><b>What's new</b></p>

  - Performance improvements & bug fixes
  
   </details>

   <details><summary>(Build: 101.34.27 | Release version: 30.121052.13427.0)</summary>
   
   <p> 
   Build:<b> 101.34.27</b> <br>
   Release version: <b>30.121052.13427.0</b></p>
   
   <p><b>What's new</b></p>

   - Performance improvements & bug fixes
  
   </details>

   <details><summary>(Build: 101.29.64 | Release version: 30.121042.12964.0)</summary>
   
   <p> 
   Build:<b> 101.29.64 </b><br>
   Release version:<b> 30.121042.12964.0</b></p>
   
   <p><b>What's new</b></p>

   - Starting with this version, threats detected during on-demand antivirus scans triggered through the command-line client are automatically remediated. Threats detected during scans triggered through the user interface still require manual action.
   - `mdatp diagnostic real-time-protection-statistics` now supports two additional switches:
     - `--sort`: sorts the output descending by total number of files scanned
     - `--top N`: displays the top N results (only works if `--sort` is also specified)
   - Performance improvements & bug fixes
  
   </details>

   <details><summary>(Build: 101.25.72 | Release version: 30.121022.12563.0)</summary>
   
   <p> 
   Build:<b> 101.25.72</b> <br>
   Release version: <b>30.121022.12563.0</b></p>
   
   <p><b>What's new</b></p>

   - Microsoft Defender for Endpoint on Linux is now available in preview for US Government customers. For more information, see [Microsoft Defender for Endpoint for US Government customers](gov.md).
   - Fixed an issue where usage of Microsoft Defender for Endpoint on Linux on systems with FUSE filesystems was leading to OS hang
   - Performance improvements & other bug fixes
  
   </details>

   
   <details><summary>(Build: 101.25.63 | Release version: 30.121022.12563.0)</summary>
   
   <p> 
   Build:<b> 101.25.63</b> <br>
   Release version: <b>30.121022.12563.0</b></p>
   
   <p><b>What's new</b></p>

   - Performance improvements & bug fixes
  
   </details>

   <details><summary>(Build: 101.23.64 | Release version: 30.121021.12364.0)</summary>
   
   <p>
   Build:<b> 101.23.64 </b><br>
   Release version: 30.121021.12364.0</b></p>
   
   <p><b>What's new</b></p>

   - Performance improvement for the situation where an entire mount point is added to the antivirus exclusion list. Prior to this version, file activity originating from the mount point was still processed by the product. Starting with this version, file activity for excluded mount points is suppressed, leading to better product performance
   - Added a new option to the command-line tool to view information about the last on-demand scan. To view information about the last on-demand scan, run `mdatp health --details antivirus`
   - Other performance improvements & bug fixes
  
   </details>

   <details><summary>(Build: 101.18.53)</summary>
   
	<p> 
	Build:<b> 101.18.53 </b><br>
		
	<p>What's new</b></p>

   - EDR for Linux is now [generally available](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/edr-for-linux-is-now-is-generally-available/ba-p/2048539)
   - Added a new command-line switch (`--ignore-exclusions`) to ignore AV exclusions during custom scans (`mdatp scan custom`)
   - Extended `mdatp diagnostic create` with a new parameter (`--path [directory]`) that allows the diagnostic logs to be saved to a different directory
	- Performance improvements & bug fixes
	
   </details>





</blockquote></details>

