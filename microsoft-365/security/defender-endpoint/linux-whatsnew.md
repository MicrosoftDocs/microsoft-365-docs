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
</br>

<br/><br/>
</details>

<details>
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



</details>

<details><summary> 2021 releases</summary>

   <details><summary>(Build: 101.52.57 | Release version: 30.121092.15257.0)</summary>
   
  <p><b> 
  Build: 101.52.57
  Release version: 30.121092.15257.0</b></p>
   
  <p> What's new </p>

   - Added a capability to detect vulnerable log4j jars in use by Java applications. The machine is periodically inspected for running Javaprocesses  with loaded log4j jars. The information is reported to the Microsoft Defender for Endpoint backend and is exposed in theVulnerability Management    area of the portal.
   
   </details>
</details>

--------------



 <details>
  <summary><b><u>Top Level Toggle</u></b></summary>

  <p>
          Great, Top Layer summary text working fine.
  </p>

  *   <details>
      <summary><b>Mid Toggle</b></summary>

      <p>
          Great, Middle Layer summary text working fine.
      </p>

</details>