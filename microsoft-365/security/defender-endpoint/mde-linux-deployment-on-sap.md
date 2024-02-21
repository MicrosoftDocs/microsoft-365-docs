---
title: Deployment guidance for Microsoft Defender for Endpoint on Linux for SAP 
description: Deployment guidance for Microsoft Defender for Endpoint on Linux for SAP 
keywords: microsoft, defender, Microsoft Defender for Endpoint, linux, installation, SAp
ms.service: defender-endpoint
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-linux
ms.topic: conceptual
ms.subservice: linux
search.appverid: met150
ms.date: 01/10/2024
---

# Deployment guidance for Microsoft Defender for Endpoint on Linux for SAP

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)

This article provides deployment guidance for Microsoft Defender for Endpoint on Linux for SAP. You'll learn about recommended SAP OSS(Online Services System) notes, the system requirements, prerequisites, important configuration settings, recommended antivirus exclusions, and guidance on scheduling antivirus scans.

Conventional security defenses that have been commonly used to protect SAP systems such as isolating infrastructure behind firewalls and limiting interactive operating system logons are no longer considered sufficient to mitigate modern sophisticated threats. It's essential to deploy modern defenses to detect and contain threats in real-time. SAP applications unlike most other workloads require basic assessment and validation before deploying Microsoft Defender for Endpoint. The Enterprise Security administrators should contact the SAP Basis Team prior to deploying Defender for Endpoint. The SAP Basis Team should be cross trained with a basic level of knowledge about Defender for Endpoint.

## Recommended SAP OSS Notes

- [2248916 - Which files and directories should be excluded from an antivirus scan for SAP BusinessObjects Business Intelligence Platform products in Linux/Unix? - SAP ONE Support Launchpad](https://launchpad.support.sap.com/#/notes/2248916)
- [1984459 - Which files and directories should be excluded from an antivirus scan for SAP Data Services - SAP ONE Support Launchpad](https://launchpad.support.sap.com/#/notes/1984459)
- [2808515 - Installing security software on SAP servers running on Linux - SAP ONE Support Launchpad](https://launchpad.support.sap.com/#/notes/2808515)
- [1730930 - Using antivirus software in an SAP HANA appliance - SAP ONE Support Launchpad](https://launchpad.support.sap.com/#/notes/1730930)
- [1730997 - Unrecommended versions of antivirus software - SAP ONE Support Launchpad](https://launchpad.support.sap.com/#/notes/1730997)

## SAP Applications on Linux

- SAP only supports Suse, Redhat and Oracle Linux. Other distributions aren't supported for SAP S4 or NetWeaver applications.
- Suse 15.x, Redhat 8.x or 9.x and Oracle Linux 8.x are strongly recommended.
- Suse 12.x, Redhat 7.x and Oracle Linux 7.x are technically supported but haven't been extensively tested.
- Suse 11.x, Redhat 6.x and Oracle Linux 6.x might not be supported and haven't been tested.
- Suse and Redhat offer tailored distributions for SAP.  These “for SAP” versions of Suse and Redhat might have different packages preinstalled and possibly different kernels.
- SAP only supports certain Linux File systems. In general, XFS and EXT3 are used. Oracle Automatic Storage Management (ASM) filesystem is sometimes used for Oracle DBMS and can't be read by Defender for Endpoint.
- Some SAP applications use “standalone engines” such as TREX, Adobe Document Server, Content Server and LiveCache. These engines require specific configuration and file exclusions.
- SAP applications often have Transport and Interface directories with many thousands of small files. If the number of files is larger than 100,000, it might and affect performance. It's recommended to archive files.
- It's strongly recommended to deploy Defender for Endpoint to non-productive SAP landscapes for several weeks before deploying to production. The SAP Basis Team should use tools such as sysstat, KSAR and nmon to verify if CPU and other performance parameters are impacted.

## Prerequisites for deploying Microsoft Defender for Endpoint for Linux on SAP VMs

- Microsoft Defender for Endpoint [version](./linux-whatsnew.md) >= 101.23082.0009 | Release version: 30.123082.0009 or higher must be deployed.
- Microsoft Defender for Endpoint for Linux supports all the [Linux releases](microsoft-defender-endpoint-linux.md#system-requirements) used by SAP applications.
- Microsoft Defender for Endpoint for Linux requires connectivity to [specific Internet endpoints](microsoft-defender-endpoint-linux.md#network-connections) from VMs to update AV Definitions.
- Microsoft Defender for Endpoint for Linux requires some crontab (or other task scheduler) entries to schedule scans, log rotation, and Microsoft Defender for Endpoint updates. Enterprise Security team will normally manage these entries. Refer to [How to schedule an update of the Microsoft Defender for Endpoint (Linux) | Microsoft Learn](linux-update-mde-linux.md).

The default configuration option for deployment as an Azure Extension for AntiVirus (AV) will be Passive Mode. This means that the AV component of Microsoft Defender for Endpoint won't intercept IO calls. It's recommended to run Microsoft Defender for Endpoint in Passive Mode on all SAP applications and to schedule a scan once per day. In this mode:

- **Real-time protection is turned off**: Threats are not remediated by Microsoft Defender Antivirus.
- **On-demand scanning is turned on**: Still use the scan capabilities on the endpoint.
- **Automatic threat remediation is turned off**: No files will be moved and the security administrator is expected to take required action.
- **Security intelligence updates are turned on**: Alerts will be available on security administrator's tenant.

The Linux crontab is typically used to schedule Microsoft Defender for Endpoint AV scan and log rotation tasks:
[How to schedule scans with Microsoft Defender for Endpoint (Linux) | Microsoft Learn](linux-schedule-scan-mde.md)

Endpoint Detection and Response (EDR) functionality is active whenever Microsoft Defender for Endpoint for Linux is installed. There is no simple way to disable EDR functionality through command line or configuration. For more information on troubleshooting EDR, see the sections [Useful Commands](#useful-commands) and [Useful Links](#useful-links).

## Important Configuration Settings for Microsoft Defender for Endpoint on SAP on Linux  

It's recommended to check the installation and configuration of Defender for Endpoint with the command mdatp health.

The key parameters recommended for SAP applications are:

- healthy = true
- release_ring = Production. Pre-release and insider rings shouldn't be used with SAP Applications.
- real_time_protection_enabled = false. Real-time protection is off in passive mode which is the default mode and will prevent real-time IO interception.
- automatic_definition_update_enabled = true
- definition_status = “up_to_date”.  Run a manual update if a new value is identified.
- edr_early_preview_enabled = “disabled”. If enabled on SAP systems it might lead to system instability.
- conflicting_applications = [ ]. Other AV or security software installed on a VM such as Clam.
- supplementary_events_subsystem = "ebpf".  Do not proceed if ebpf is not displayed. Contact the security admin team.

This article has some useful hints on troubleshooting installation issues for Microsoft Defender for Endpoint:
[Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux | Microsoft Docs](linux-support-install.md#installation-failed)

## Recommended Microsoft Defender for Endpoint AntiVirus Exclusions for SAP on Linux

Enterprise Security Team must obtain a full list of AV exclusions from the SAP Administrators (typically the SAP Basis Team).
It's recommended to initially exclude:

- DBMS data files, log files and temp files, including disks containing backup files
- The entire contents of the SAPMNT directory
- The entire contents of the SAPLOC directory
- The entire contents of the TRANS directory
- The entire contents of directories for standalone engines such as TREX
- Hana – exclude /hana/shared, /hana/data and /hana/log - see Note 1730930
- SQL Server – [Configure antivirus software to work with SQL Server - SQL Server | Microsoft Learn](/troubleshoot/sql/database-engine/security/antivirus-and-sql-server)
- Oracle – See How To Configure Anti-Virus On Oracle Database Server (Doc ID 782354.1)
- DB2 – [https://www.ibm.com/support/pages/which-db2-directories-exclude-linux-anti-virus-software](https://www.ibm.com/support/pages/which-db2-directories-exclude-linux-anti-virus-software)
- SAP ASE – contact SAP
- MaxDB – contact SAP

Oracle ASM systems don't need exclusions as Microsoft Defender for Endpoint can't read ASM disks.

Customers with Pacemaker clusters should also configure these exclusions:

```bash
mdatp exclusion folder add --path /usr/lib/pacemaker/  (for RedHat /var/lib/pacemaker/)
```

```bash
mdatp exclusion process add --name pacemakerd
```

```bash
mdatp exclusion process add --name crm_*
```

Customers running the Azure Security security policy might trigger a scan using the Freeware Clam AV solution. It's recommended to disable Clam AV scan after a VM has been protected with Microsoft Defender for Endpoint using following commands:

```bash
sudo azsecd config  -s clamav -d "Disabled"
```

```bash
sudo service azsecd restart
```

```bash
sudo azsecd status 
```

The following articles detail how to configure AV exclusions for processes, files, and folders per individual VM:

- [Set up exclusions for Microsoft Defender Antivirus scans | Microsoft Learn](configure-exclusions-microsoft-defender-antivirus.md)
- [Common mistakes to avoid when defining exclusions | Microsoft Learn](common-exclusion-mistakes-microsoft-defender-antivirus.md)

## Scheduling a Daily AV Scan

The recommended configuration for SAP applications disables real-time interception of IO calls for AV scanning. The recommended setting is passive mode in which real_time_protection_enabled = false.

The following link details how to schedule a scan: [How to schedule scans with Microsoft Defender for Endpoint (Linux) | Microsoft Learn](linux-schedule-scan-mde.md).

Large SAP systems might have more than 20 SAP application servers each with a connection to the SAPMNT NFS share. Twenty or more application servers simultaneously scanning the same NFS server will likely overload the NFS server. By default Microsoft Defender for Endpoint for Linux won't scan NFS sources.

If there's a requirement to scan SAPMNT then this scan should be configured on one or two VMs only.

Scheduled scans for SAP ECC, BW, CRM, SCM, Solution Manager, and other components should be staggered at different times to avoid all SAP components from overloading a shared NFS storage source shared by all SAP components.

## Useful Commands

If, during manual zypper installation on Suse an error “Nothing provides ‘policycoreutils’” occurs, refer to:
[Troubleshoot installation issues for Microsoft Defender for Endpoint on Linux](linux-support-install.md).

There are several command-line commands that can control the operation of mdatp. To enable the passive mode you can use the following command:

```bash
mdatp config passive-mode --value enabled
```

> [!NOTE]
> passive mode is the default mode on installing defender for endpoint on Linux.

To turn off real-time protection, you can use the command:

```bash
mdatp config real-time-protection --value disabled
```

This command tells mdatp to retrieve the latest definitions from the cloud:

```bash
mdatp definitions update 
```

This command tests whether mdatp can connect to the cloud-based endpoints via the network:

```bash
mdatp connectivity test
```

These commands updates the mdatp software if needed:

```bash
yum update mdatp
```

```bash
zypper update mdatp
```

Since mdatp runs as a linux system service, you can control mdatp using the service command, for example:

```bash
service mdatp status 
```

This command creates a diagnostic file that can be uploaded to Microsoft support:

```bash
sudo mdatp diagnostic create
```

## Useful Links

- Microsoft Endpoint Manager doesn't support Linux at this time
- [Manage Microsoft Defender for Endpoint configuration settings on devices with Microsoft Endpoint Manager | Microsoft Learn](security-config-management.md)
- [Microsoft Defender for Endpoint Linux - Configuration and Operation Command List - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/core-infrastructure-and-security/microsoft-defender-for-endpoint-linux-configuration-and/ba-p/1577902)
- [Deploying Microsoft Defender for Endpoint on Linux Servers. - Microsoft Tech Community](https://techcommunity.microsoft.com/t5/core-infrastructure-and-security/deploying-microsoft-defender-for-endpoint-on-linux-servers/ba-p/1560326)
- [Troubleshoot cloud connectivity issues for Microsoft Defender for Endpoint on Linux | Microsoft Docs](linux-support-connectivity.md#run-the-connectivity-test)
- [Troubleshoot performance issues for Microsoft Defender for Endpoint on Linux | Microsoft Docs](linux-support-perf.md#troubleshoot-performance-issues-using-microsoft-defender-for-endpoint-client-analyzer)
