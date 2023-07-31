---
title: What's new in Microsoft Defender for Endpoint on Linux
description: List of major changes for Microsoft Defender for Endpoint on Linux.
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, whatsnew, release
ms.service: microsoft-365-security
ms.author: dansimp
author: dansimp
ms.reviewer: kumasumit
ms.localizationpriority: medium
ms.date: 04/05/2023
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier3
ms.topic: reference
ms.subservice: mde
search.appverid: met150
---

# What's new in Microsoft Defender for Endpoint on Linux

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article is updated frequently to let you know what's new in the latest releases of Microsoft Defender for Endpoint on Linux.

- [What's new in Defender for Endpoint on macOS](mac-whatsnew.md)
- [What's new in Defender for Endpoint on iOS](ios-whatsnew.md)


<details>
	<summary> July-2023 (Build: 101.23062.0010 | Release version: 30.123062.0010.0)</summary>

## July-2023 Build: 101.23062.0010 | Release version: 30.123062.0010.0

&ensp;Released: **July 26,2023**<br/>
&ensp;Published: **July 26,2023**<br/>
&ensp;Build: **101.23062.0010**<br/>
&ensp;Release version: **30.123062.0010.0**<br/>
&ensp;Engine version: **1.1.20100.7**<br/>
&ensp;Signature version: **1.385.1648.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release
	- If a proxy is set for Defender for Endpoint then it will be visible in the `mdatp health` command output
	- With this release we provided two options in mdatp diagnostic hot-event-sources:
        1. Files
        2. Executables
	- Network Protection: Connections that are blocked by Network Protection and have the block overridden by users will now correctly be reported to  Microsoft 365 Defender
	- Improved logging in Network Protection block and audit events for debugging
- Other fixes and improvements
    - From this version, enforcementLevel will be in passive mode by default giving admins more control over where they want 'RTP on' within their estate
    - This change only applies to fresh MDE deployments, for example, servers where Defender for Endpoint is being deployed for the first time. In update scenarios, servers that have Defender for Endpoint deployed with RTP ON, will continue operating with RTP ON even post update to version 101.23062.0010

- Bug Fixes
    - RPM database corruption issue in Defender Vulnerability Management baseline has been fixed
- Other performance improvements

**Known issues**

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.98.05. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901).

There are two ways to mitigate this upgrade issue:

1. Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.

Example:
```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```

2. As an alternative you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

If you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrading.
Some customers (<1%) experience issues with this method.

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```
</details>

<details>
	<summary> July-2023 (Build: 101.23052.0009 | Release version: 30.123052.0009.0)</summary>

## July-2023 Build: 101.23052.0009 | Release version: 30.123052.0009.0

&ensp;Released: **July 10,2023**<br/>
&ensp;Published: **July 10,2023**<br/>
&ensp;Build: **101.23052.0009**<br/>
&ensp;Release version: **30.123052.0009.0**<br/>
&ensp;Engine version: **1.1.20100.7**<br/>
&ensp;Signature version: **1.385.1648.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release
  	- The build version schema is updated from this release. While the major version number remains same as 101, the minor version number will now have 5 digits followed by 4 digit patch number i.e. 101.xxxxx.yyy
  	- Improved Network Protection memory consumption under stress
 	- Updated engine version to 1.1.20300.5 and signature version to 1.391.2837.0.
	- Bug fixes.

**Known issues**

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.98.05. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901).

There are two ways to mitigate this upgrade issue:

1. Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.

Example:
```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```

2. As an alternative you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

If you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrading.
Some customers (<1%) experience issues with this method.

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```
</details>

<details>
	<summary> June-2023 (Build: 101.98.89 | Release version: 30.123042.19889.0)</summary>

## June-2023 Build: 101.98.89 | Release version: 30.123042.19889.0

&ensp;Released: **June 12,2023**<br/>
&ensp;Published: **June 12, 2023**<br/>
&ensp;Build: **101.98.89**<br/>
&ensp;Release version: **30.123042.19889.0**<br/>
&ensp;Engine version: **1.1.20100.7**<br/>
&ensp;Signature version: **1.385.1648.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release 
	- Improved Network Protection Proxy handling.
	- In Passive mode, Defender for Endpoint no longer scans when Definition update happens.
	- Device will continue to be protected even after Defender for Endpoint agent has expired. It is still recommended to upgrade the Defender for Endpoint Linux agent to the latest available version to receive bug fixes, features and performance improvements.
	- Removed semanage package dependency.
	- Engine Update to 1.1.20100.7 and Signatures Ver: 1.385.1648.0.
	- Bug fixes.

**Known issues**

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.98.05. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901).

There are two ways to mitigate this upgrade issue:

1. Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.

Example:
```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```

2. As an alternative you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

If you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrading. 
Some customers (<1%) experience issues with this method. 

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```
</details>

<details>
	<summary> May-2023 (Build: 101.98.64 | Release version: 30.123032.19864.0)</summary>

## May-2023 Build: 101.98.64 | Release version: 30.123032.19864.0

&ensp;Released: **May 3,2023**<br/>
&ensp;Published: **May 3, 2023**<br/>
&ensp;Build: **101.98.64**<br/>
&ensp;Release version: **30.123032.19864.0**<br/>
&ensp;Engine version: **1.1.20100.6**<br/>
&ensp;Signature version: **1.385.68.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release 
	- Health message improvements to capture details about auditd failures.
	- Improvements to handle augenrules which was causing installation failure.
	- Periodic memory cleanup in engine process.
	- Fix for memory issue in mdatp audisp plugin.
	- Handled missing plugin directory path during installation.
	- When conflicting application is using blocking fanotify, with default configuration mdatp health will show unhealthy. This is now fixed.
	- Support for ICMP traffic inspection in BM.
	- Engine Update to 1.1.20100.6 and Signatures Ver: 1.385.68.0.
	- Bug fixes.

**Known issues**

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.98.05. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901).

There are two ways to mitigate this upgrade issue:

1. Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.

Example:
```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```

2. As an alternative you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

If you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrading. 
Caution: Some customers (<1%) experience issues with this method. 

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```
</details>

<details>
	<summary> April-2023 (Build: 101.98.58 | Release version: 30.123022.19858.0)</summary>

## April-2023 Build: 101.98.58 | Release version: 30.123022.19858.0

&ensp;Released: **April 20,2023**<br/>
&ensp;Published: **April 20, 2023**<br/>
&ensp;Build: **101.98.58**<br/>
&ensp;Release version: **30.123022.19858.0**<br/>
&ensp;Engine version: **1.1.20000.2**<br/>
&ensp;Signature version: **1.381.3067.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release 
	- Logging and error reporting improvements for auditd.
	- Handle failure in reload of auditd configuration.
	- Handling for empty auditd rule files during MDE install.
	- Engine Update to 1.1.20000.2 and Signatures Ver: 1.381.3067.0.
	- Addressed a health issue in mdatp which occur due to selinux denials.
	- Bug fixes.

**Known issues**

- While upgrading mdatp to version 101.94.13 or later, you may notice that health is false, with health_issues as "no active supplementary event provider". This may happen due to misconfigured/conflicting auditd rules on existing machines. To mitigate the issue, the auditd rules on the existing machines need to be fixed. The following commands can help you to identify such auditd rules (commands need to be run as super user). Please take backup of following file: /etc/audit/rules.d/audit.rules as these steps are only to identify failures.

```bash
echo -c >> /etc/audit/rules.d/audit.rules
augenrules --load
```

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.98.05. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901).

There are two ways to mitigate this upgrade issue:

1. Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.
	
Example:
```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```
	
2. As an alternative you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

If you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrading. 
Caution: Some customers (<1%) experience issues with this method. 

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```
</details>

<details>
	<summary> March-2023 (Build: 101.98.30 | Release version: 30.123012.19830.0)</summary>

## March-2023 Build: 101.98.30 | Release version: 30.123012.19830.0

&ensp;Released: **March , 20,2023**<br/>
&ensp;Published: **March 20, 2023**<br/>
&ensp;Build: **101.98.30**<br/>
&ensp;Release version: **30.123012.19830.0**<br/>
&ensp;Engine version: **1.1.19900.2**<br/>
&ensp;Signature version: **1.379.1299.0**<br/>
	
**What's new**
- This new release is build over March 2023 release (101.98.05) with fix for Live response commands failing for one of our customers. There's no change for other customers and upgrade is optional. 
	
**Known issues**

- With mdatp version 101.98.30 you might see a health false issue in some of the cases, because SELinux rules are not defined for certain scenarios. The health warning could look something like this:

*found SELinux denials within last one day. If the MDATP is recently installed, please clear the existing audit logs or wait for a day for this issue to auto-resolve. Please use command: \"sudo ausearch -i -c 'mdatp_audisp_pl' | grep \"type=AVC\" | grep \" denied\" to find details*

The issue could be mitigated by running the following commands.

```
sudo ausearch -c 'mdatp_audisp_pl' --raw | sudo audit2allow -M my-mdatpaudisppl_v1
sudo semodule -i my-mdatpaudisppl_v1.pp
```

Here my-mdatpaudisppl_v1 represents the policy module name. After running the commands, either wait for 24 hours or clear/archive the audit logs. The audit logs could be archived by running the following command

```
sudo service auditd stop
sudo systemctl stop mdatp
cd /var/log/audit
sudo gzip audit.*
sudo service auditd start
sudo systemctl start mdatp
mdatp health
```

In case the issue reappears with some different denials. We need to run the mitigation again with a different module name(eg my-mdatpaudisppl_v2).

</details>

<details>
	<summary> March-2023 (Build: 101.98.05 | Release version: 30.123012.19805.0)</summary>

## March-2023 (Build: 101.98.05 | Release version: 30.123012.19805.0)

&ensp;Released: **March , 08,2023**<br/>
&ensp;Published: **March 08, 2023**<br/>
&ensp;Build: **101.98.05**<br/>
&ensp;Release version: **30.123012.19805.0**<br/>
&ensp;Engine version: **1.1.19900.2**<br/>
&ensp;Signature version: **1.379.1299.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release 
	- Improved Data Completeness for Network Connection events.
	- Improved Data Collection capabilities for file ownership/permissions changes
	- seManage in part of the package, to that seLinux policies can be configured in different distro (fixed).
	- Bug fix 
		- Improved enterprise daemon stability.
		- AuditD stop path clean-up: 
		- Improve the stability of mdatp stop flow.
	- Added new field to wdavstate to keep track of platform update time.
	- Stability improvements to parsing Defender for Endpoint onboarding blob.
	- Scan does not proceed if a valid license is not present (fixed)
	- Added performance tracing option to xPlatClientAnalyzer, with tracing enabled mdatp process will be dumping the flow in all_process.zip file that can be used for analysis of performance issues.
	- Added support in Defender for Endpoint for the below RHEL-6 kernel versions
		- 2.6.32-754.43.1.el6.x86_64
		- 2.6.32-754.49.1.el6.x86_64
	- Other fixes
	
**Known issues**

- While upgrading mdatp to version 101.94.13, you may notice that health is false, with health_issues as "no active supplementary event provider". This may happen due to misconfigured/conflicting auditd rules on existing machines. To mitigate the issue, the auditd rules on the existing machines need to be fixed. The following steps can help you to identify such auditd rules (these commands need to be run as super user). Please take backup of following file: /etc/audit/rules.d/audit.rules as these steps are only to identify failures.


```bash
echo -c >> /etc/audit/rules.d/audit.rules
augenrules --load
```

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.98.05. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901)

There are two ways to mitigate the problem in upgrading.

Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.
Example:
```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```
	
As an alternative to the above, you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

In case you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrade. 
Caution: Some customers(<1%) are experiencing issues with this method. 

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```
</details>

	
<details>
  <summary>Jan-2023 (Build: 101.94.13 | Release version: 30.122112.19413.0)</summary>

## Jan-2023 (Build: 101.94.13 | Release version: 30.122112.19413.0)

&ensp;Released: **January 10, 2023**<br/>
&ensp;Published: **January 10, 2023**<br/>
&ensp;Build: **101.94.13**<br/>
&ensp;Release version: **30.122112.19413.0**<br/>
&ensp;Engine version: **1.1.19700.3**<br/>
&ensp;Signature version: **1.377.550.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release
  - Skip quarantine of threats in passive mode by default.
  - New config, nonExecMountPolicy, can now be used to specify behavior of RTP on mount point marked as noexec.
  - New config, unmonitoredFilesystems, can be used to unmonitor certain filesystems.
  - Improved performance under high load and in speed test scenarios.
  - Fixes an issue with accessing SMB shares behind Cisco AnyConnect VPN connections.
  - Fixes an issue with Network Protection and SMB.
  - lttng performance tracing support.
  - TVM, eBPF, auditd, telemetry and mdatp cli improvements.
  - mdatp health will now report behavior_monitoring
  - Other fixes.

**Known issues**

- While upgrading mdatp to version 101.94.13, you may notice that health is false, with health_issues as "no active supplementary event provider". This may happen due to misconfigured/conflicting auditd rules on existing machines. To mitigate the issue, the auditd rules on the existing machines need to be fixed. The following steps can help you to identify such auditd rules (these commands need to be run as super user). Please take backup of following file: /etc/audit/rules.d/audit.rules as these steps are only to identify failures.

```bash
echo -c >> /etc/audit/rules.d/audit.rules
augenrules --load
```

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.94.13. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901)

There are two ways to mitigate the problem in upgrading.

Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.

Example:

```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```

As an alternative to the above, you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

In case you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrade.
Caution: Some customers(<1%) are experiencing issues with this method.

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```

</details>

<details>
  <summary>Nov-2022 (Build: 101.85.27 | Release version: 30.122092.18527.0)</summary>

## Nov-2022 (Build: 101.85.27 | Release version: 30.122092.18527.0)

&ensp;Released: **November 02, 2022**<br/>
&ensp;Published: **November 02, 2022**<br/>
&ensp;Build: **101.85.27**<br/>
&ensp;Release version: **30.122092.18527.0**<br/>
&ensp;Engine version: **1.1.19500.2**<br/>
&ensp;Signature version: **1.371.1369.0**<br/>

**What's new**

- There are multiple fixes and new changes in this release
  - V2 engine is default with this release and V1 engine bits are completely removed for enhanced security.
  - V2 engine support configuration path for AV definitions. (mdatp definition set path)
  - Removed external packages dependencies from MDE package. Removed dependencies are libatomic1, libselinux, libseccomp, libfuse, and libuuid
  - In case crash collection is disabled by configuration, crash monitoring process won't be launched.
  - Performance fixes to optimally use system events for AV capabilities.
  - Stability improvement in case of mdatp restart and loading of epsext issues.
  - Other fixes

**Known issues**

- While upgrading from mdatp version 101.75.43 or 101.78.13, you may encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.85.21. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901)

There are two ways to mitigate the problem in upgrading.

Use your package manager to uninstall the 101.75.43 or 101.78.13 mdatp version.

Example:

```bash
sudo apt purge mdatp
sudo apt-get install mdatp
```

As an alternative to the above, you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.

In case you don't want to uninstall mdatp you can disable rtp and mdatp in sequence before upgrade.
Caution: Some customers(<1%) are experiencing issues with this method.

 ```bash
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```

</details>

<details>
  <summary>Sep-2022 (Build: 101.80.97 | Release version: 30.122072.18097.0)</summary>

## Sep-2022 (Build: 101.80.97 | Release version: 30.122072.18097.0)

&ensp;Released: **September 14, 2022**<br/>
&ensp;Published: **September 14, 2022**<br/>
&ensp;Build: **101.80.97**<br/>
&ensp;Release version: **30.122072.18097.0**<br/>
&ensp;Engine version: **1.1.19300.3**<br/>
&ensp;Signature version: **1.369.395.0**<br/>

**What's new**

- Fixes a kernel hang observed on select customer workloads running mdatp version 101.75.43. After RCA this was attributed to a race condition while releasing the ownership of a sensor file descriptor. The race condition was exposed due to a recent product change in the shutdown path. Customers on newer Kernel versions (5.1+) aren't impacted by this issue. More information about the underlying issue can be found at [System hang due to blocked tasks in fanotify code](https://access.redhat.com/solutions/2838901).

**Known issues**

- When upgrading from mdatp version 101.75.43 or 101.78.13, you might encounter a kernel hang. Run the following commands before attempting to upgrade to version 101.80.97. This should prevent the issue from occurring.

```
sudo mdatp config real-time-protection --value=disabled
sudo systemctl disable mdatp
```

After executing the above, use your package manager to perform the upgrade.

As an alternative to the above, you can follow the instructions to [uninstall](/microsoft-365/security/defender-endpoint/linux-resources#uninstall), then [install](/microsoft-365/security/defender-endpoint/linux-install-manually#application-installation) the latest version of the package.
</br>

<br/><br/>
</details>

<details>
   <summary>Aug-2022 (Build: 101.78.13 | Release version: 30.122072.17813.0)</summary>

## Aug-2022 (Build: 101.78.13 | Release version: 30.122072.17813.0)

 &ensp;Released: **August 24, 2022**<br/>
 &ensp;Published: **August 24, 2022**<br/>
 &ensp;Build: **101.78.13**<br/>
 &ensp;Release version: **30.122072.17813.0**<br/>
 &ensp;Engine version: **1.1.19300.3**<br/>
 &ensp;Signature version: **1.369.395.0**<br/>

 **What's new**

 - Rolled back due to reliability issues

 </br>

 <br/><br/>
 </details>

<details>
  <summary>Aug-2022 (Build: 101.75.43 | Release version: 30.122071.17543.0)</summary>

## Aug-2022 (Build: 101.75.43 | Release version: 30.122071.17543.0)

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

## Jul-2022 (Build: 101.73.77 | Release version: 30.122062.17377.0)

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

## May-2022 (Build: 101.68.80 | Release version: 30.122042.16880.0)

&ensp;Released: **May 23, 2022**<br/>
&ensp;Published: **May 23, 2022**<br/>
&ensp;Build: **101.68.80**<br/>
&ensp;Release version: **30.122042.16880.0**<br/>

**What's new**

- Added support for kernel version `2.6.32-754.47.1.el6.x86_64` when running on RHEL 6
- On RHEL 6, product can now be installed on devices running Unbreakable Enterprise Kernel (UEK)
- Fixed an issue where the process name was sometimes incorrectly displayed as `unknown` when running `mdatp diagnostic real-time-protection-statistics`
- Fixed a bug where the product sometimes was incorrectly detecting files inside the quarantine folder
- Fixed an issue where the `mdatp` command-line tool wasn't working when `/opt` was mounted as a soft-link
- Performance improvements & bug fixes
</br>

<br/><br/>
</details>

<details>
<summary>May-2022 (Build: 101.65.77 | Release version: 30.122032.16577.0)</summary>

## May-2022 (Build: 101.65.77 | Release version: 30.122032.16577.0)

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

## Mar-2022 (Build: 101.60.93 | Release version: 30.122012.16093.0)

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

## Feb-2022 (Build: 101.58.80 | Release version: 30.122012.15880.0)

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

## Jan-2022 (Build: 101.56.62 | Release version: 30.121122.15662.0)

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

  - Starting with this version, we're bringing Microsoft Defender for Endpoint support to the following distros:

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
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
