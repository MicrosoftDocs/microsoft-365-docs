---  
title: "Microsoft Defender Endpoint on Windows Server with SAP"  
description: Understand how Microsoft Defender for Endpoint with EDR and other advanced security capabilities interacts with SAP applications.
author: denisebmsft
ms.author: deniseb  
manager: dansimp
ms.date: 04/16/2024
ms.topic: overview
ms.service: defender-endpoint  
ms.subservice: ngp
ms.localizationpriority: normal
ms.collection:  
ms.custom: 
- partner-contribution
ms.reviewer: cgardin; deniseb; siosulli; shlomiakirav  
search.appverid: MET150  
f1.keywords: NOCSH 
audience: ITPro
---  

# Microsoft Defender for Endpoint on Windows Server with SAP

If your organization uses SAP, it's essential to understand the compatibility and support between Microsoft Defender for Endpoint on Windows Server with EDR and SAP applications. This article helps you understand the support provided by SAP for endpoint protection security solutions like Defender for Endpoint with EDR and how it interacts with SAP applications.

This documentation applies to Microsoft Defender for Endpoint running on Windows Server OS Releases with SAP applications such, as NetWeaver, S4 Hana, and SAP standalone engines, such as LiveCache. This documentation doesn't cover SAP client software, such as SAPGUI or Microsoft Defender Antivirus on Windows client devices.

## Enterprise security and your SAP Basis team

Enterprise Security is a specialist role and the activities described below should be planned as a joint activity between the Enterprise Security Team and the SAP Basis Team. The Enterprise Security Team needs to coordinate with the SAP Basis Team and jointly design the Defender for Endpoint configuration and analyze any exclusions. 

### Get an overview of Defender for Endpoint

Defender for Endpoint is a component of [Microsoft Defender XDR](/microsoft-365/security/defender/), and can be integrated with your SIEM/SOAR solution. 

Before you begin to plan or deploy Defender for Endpoint on Windows Server with SAP, take a moment to get an overview. Watch the following video to learn more about Defender for Endpoint:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4wDob]

For more detailed information about Defender for Endpoint and Microsoft security offerings, see the following resources:

- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)
- [Microsoft Security documentation and training - Security documentation](/security/)

The Microsoft Defender XDR solution incorporates many security components that are beyond the scope of this article. In this article, we focus on two main areas of Defender for Endpoint:

- Next-generation protection (which includes antivirus protection). Next-generation protection is an antivirus product like other antivirus solutions for Windows environments.
- Endpoint Detection and Response (EDR). EDR detects suspicious activity and system calls and provides an extra layer of protection against threats that bypassed antivirus protection. 

Microsoft and other security software vendors track threats and provide trend information. For information, see [Cyberthreats, viruses, and malware - Microsoft Security Intelligence](https://www.microsoft.com/en-us/wdsi/threats). 

> [!NOTE]
> For information on Microsoft Defender for SAP on Linux, see [Deployment guidance for Microsoft Defender for Endpoint on Linux for SAP](/microsoft-365/security/defender-endpoint/mde-linux-deployment-on-sap). Defender for Endpoint on Linux is significantly different than the Windows version. 

## SAP support statement on Defender for Endpoint and other Microsoft security solutions

SAP provides basic documentation for conventional file scan antivirus solutions. Conventional file scan antivirus solutions compare file signatures against a database of known threats. When an infected file is identified, the antivirus software typically alerts and quarantines the file. The mechanisms and behavior of file scan antivirus solutions are reasonably well known and are predictable; therefore, SAP support can provide a basic level of support for SAP applications interacting with file scan antivirus software. 

File based threats are now only one possible vector for malicious software. Fileless malware and that lives off the land, highly polymorphic threats that mutate faster than traditional solutions can keep up with, and human-operated attacks that adapt to what adversaries find on compromised devices. Traditional antivirus security solutions aren't sufficient to stop such attacks. Artificial intelligence (AI) and device learning (ML) backed capabilities, such as behavioral blocking and containment are required. Security software such as Defender for Endpoint EDR has advanced threat protection (ATP) features to mitigate modern threats. 

Defender for Endpoint is continuously monitoring Operating System calls such as file read, file write, create socket, and other process level operations. The Defender for Endpoint EDR sensor acquires Opportunistic Locks on local NTFS files systems and is, therefore, unlikely to impact applications. Opportunistic locks aren't possible on remote network file systems, and in rare cases, a lock could cause general nonspecific errors in SAP applications such as *Access Denied*.

SAP is not able to provide any level of support for EDR/XDR software as the mechanisms are adaptive; therefore, the mechanisms are not predictable and potentially are not reproducible. When problems are identified on systems running Advanced Security solutions, SAP recommends disabling the security software and trying to reproduce the problem. A support case can then be raised with the security software vendor. 

SAP Support policy is documented in [3356389 - Antivirus or other security software affecting SAP operations](https://me.sap.com/notes/3356389)

## Recommended SAP OSS Notes

[3356389 - Antivirus or other security software affecting SAP operations - SAP for Me](https://me.sap.com/notes/3356389)

[106267 - Virus scanner software on Windows - SAP for Me](https://me.sap.com/notes/106267)

[690449 - Transport buffer lock file (.LOB) remains blocked on Windows - SAP for Me](https://me.sap.com/notes/690449)

[2311946 - Filesystem errors on Windows - SAP for Me](https://me.sap.com/notes/2311946)

[2496239 - Ransomware / malware on Windows - SAP for Me](https://me.sap.com/notes/2496239)

- [1497394 - Which files and directories should be excluded from an antivirus scan for SAP BusinessObjects Business Intelligence Platform products in Windows? - SAP for Me](https://me.sap.com/notes/1497394/E)

## SAP Applications on Windows: Top 10 Recommendations

1. Limiting access to SAP servers, blocking network ports and all other common security protection measures remain an essential first step. The threat landscape has evolved from "file based" Viruses to file-less complex and sophisticated threats. Steps such as **blocking ports and limiting logon/access** to VMs is **no longer considered sufficient** to fully mitigate modern threats.

2. Deploy Defender for Endpoint to non-productive systems first before deploying to production systems. Deploying Defender for Endpoint directly to production systems without testing is highly risky and has led to downtime. If it is not possible to delay deploying Defender for Endpoint to production systems, consider temporarily disabling Tamper Protection and Real Time Protection. 

3. Real Time Protection is enabled by default on Windows OS. If problems are identified that might be related to Defender for Endpoint, it is recommended to configure exclusions and/or open a support case via the Microsoft Defender portal 

4. Defender for Endpoint deployment should be a joint project between the SAP Basis Team and the Enterprise Security Team. The two teams need to create a phased deployment, testing and monitoring plan 

5. Use tools such as Perfmon (Windows) to create a performance baseline before deploying and activating Defender for Endpoint. Compare the performance utilization before and after activating Defender for Endpoint.

6. Deploy the latest version of Defender for Endpoint and use the latest releases of Windows, ideally Windows 2019 or higher. No testing has been done on old releases of Windows such as Windows 2012. 

7. Configure the following exclusions for Microsoft Defender Antivirus: 

   DBMS data files, log files and temp files, including disks containing backup files

   The entire contents of the SAPMNT directory

   The entire contents of the SAPLOC directory

   The entire contents of the TRANS directory

   The entire contents of directories for standalone engines such as TREX

   

- For more information about DBMS exclusions:
- Microsoft Defender Antivirus with SAP applications should have the following settings in most cases: 
- Tools such as Defender for Endpoint security policies are recommended to ensure that the deployment and configuration of Defender for Endpoint  is configured and uniformly deployed. In the Microsoft Defender portal navigate to  Endpoints > Configuration management > Endpoint security policies and then select Create new Policy. For more information review this link   <https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/manage-security-policies?view=o365-worldwide> 
- Several new features are being implemented in Defender for Endpoint on  Windows and these features have been tested with SAP systems. These new features reduce blocking and lower CPU consumption. It is recommended to use the very latest Defender for Endpoint for Windows release

## Deployment Methodology

SAP and Microsoft do not recommend deploying Defender for Endpoint on Windows directly to all development, QAS and production systems simultaneously and/or without careful testing and monitoring. Customers that have deployed Defender for Endpoint and other similar software in an uncontrolled manner without adequate testing have experienced system downtime as a result. 

Defender for Endpoint on Windows and any other software or configuration change should be deployed into development systems first, validated in QAS and only then deployed into production environments. 

Using tools such as Endpoint Security Policies to deploy Defender for Endpoint to an entire SAP landscape without testing is very likely to cause downtime. 

The factors that need to be tested include:

1. Deploy Defender for Endpoint  with Tamper Protection enabled. If testing identifies file locking or blocking issues determine whether to disable Real Time Scanning and configure scheduled scans. If testing identifies problems open a support case using the Microsoft Defender Portal. 

2. Exclude DBMS files and executables following DBMS vendor recommendation 

3. Analyze SAPMNT, SAP TRANS_DIR, Spool and Job Log directories. If there are > 100,000 files consider archiving to reduce the number of files

4. Confirm the performance limits and quotas of the shared file system used for SAPMNT. The SMB share source could be a NetApp appliance, a Windows server shared disk or Azure Files SMB. 

5. Configure exclusions such that all SAP application servers are not scanning the SAPMNT share simultaneously as this may overload shared storage server  

6. Interface files are recognized as an attack vector and it is generally recommend to host interface files on a dedicated non-SAP file server. Real Time Protection should be activated on this dedicated file server. SAP Servers should never be used as file servers for interface files. 

   
Note: some large SAP systems have more than 20 SAP application servers each with a connection to the same SAPMNT SMB share. 20 application servers simultaneously scanning the same SMB server may overload the SMB server. It is recommended to exclude SAPMNT from regular scans. 

## Important Configuration Settings for Microsoft Defender for Endpoint with SAP on Windows

1. What is Microsoft Defender for Endpoint?

   The term "Defender" can be used to refer to an entire suite of products and solutions. The term "Defender" is used across multiple products and technologies. An overview of Microsoft 365 Defender is illustrated here [What is Microsoft 365 Defender? | Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide)

    

2. How to check Microsoft Defender Antivirus status?

   Open a command prompt with Administrative rights and run these PowerShell commands 

   Get-MpComputerStatus

   Get-MpPreference

   

- The most significant settings for SAP are:
- How to check Microsoft Defender Endpoint Detection and Response (EDR) status?
- How to check Microsoft Defender Antivirus software components are up to date?  
- What is Behavior Monitoring?
- What is the recommended setting for RealTimeProtectionEnabled?
- Does Defender for Endpoint on Windows scan network shares?
- Defender for Endpoint Client Analyzer Support tool 
- Where to open a support case?
- While testing Defender for Endpoint in Development and on QAS VMs is it possible to delay the Defender for Endpoint extension deployment to Production SAP VMs if Defender for Cloud is activated? Is it possible to selectively deploy Defender for Endpoint to VMs by Resource Group or other criteria? 

## Useful Commands: Microsoft Defender for Endpoint with SAP on Windows Server

- 
- How to manually update Microsoft Defender Antivirus definitions?

  ```
  PS C:\Program Files\Windows Defender> .\MpCmdRun.exe -SignatureUpdate
  Signature update started . . .
  Service Version: 4.18.23050.9
  Engine Version: 1.1.23060.1005
  AntiSpyware Signature Version: 1.393.925.0
  Antivirus Signature Version: 1.393.925.0
  Signature update finished.
  PS C:\Program Files\Windows Defender>
  PS C:\Program Files\Windows Defender> Update-MpSignature
  ```

- What is EDR Block Mode (AMRunningMode) and which running mode is recommended?

```
Get-MPComputerStatus|select AMRunningMode
```

- 
- How to configure antivirus exclusions?

```
Get-MpPreference | Select-Object -Property ExclusionPath
```

- 
- How to configure Endpoint Detection and Response (EDR) exclusions?
- How to completely disable Defender for Endpoint on Windows for testing purposes?

  ```
  PowerShell Set-MpPreference -MAPSReporting 0​
  PowerShell Set-MpPreference -MAPSReporting Disabled​
  ```

  | **MpCmdRun.exe** | **Microsoft Defender Antivirus command-line utility** |
  |---|---|
  | **MpDlpCmd.exe** | Microsoft Endpoint DLP command-line utility |
  | **MsMpEng.exe** | Microsoft Defender Antivirus service executable |
  | **ConfigSecurityPolicy.exe** | Microsoft Security Client Policy Configuration Tool |
  | **NisSrv.exe** | Microsoft Defender Antivirus Network Realtime Inspection |
  | **MsSense.exe** | Microsoft Defender for Endpoint service executable |
  | **SenseCnCProxy.exe** | Microsoft Defender for Endpoint communication module |
  | **SenseIR.exe** | Microsoft Defender for Endpoint Sense IR (Incident Response) module |
  | **SenseCE.exe** | Microsoft Defender for Endpoint Sense CE (Classification Engine) module |
  | **SenseSampleUploader.exe** | Microsoft Defender for Endpoint Sample Upload module |
  | **SenseNdr.exe** | Microsoft Defender for Endpoint Sense NDR (Network Detection and Response) module |
  | **SenseSC.exe** | Microsoft Defender for Endpoint Sense SC (Screenshot Capture) module |
  | **SenseCM.exe** | Microsoft Defender for Endpoint Sense CM (Configuration Management) |

- 

