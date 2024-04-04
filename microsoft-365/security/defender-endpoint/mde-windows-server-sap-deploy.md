**Request title**: Deploy Microsoft Defender for Endpoint with SAP

**Generated text**:

------------------------------------------------------------------------

---  
title: "Deploy Microsoft Defender for Endpoint with SAP"  
description:  
author:  
ms.author: deniseb  
manager:  
ms.date: 04/04/2024  
ms.topic:  
ms.service: defender-endpoint  
ms.subservice: linux  
ms.localizationpriority:  
ms.collection:  
ms.custom: QuickDraft  
ms.reviewer: cgardin; shlomiakirav; deniseb; siosulli  
search.appverid: MET150  
f1.keywords:  
audience:  
ai-usage:  
- ai-assisted  
---  

Customer Intent for this Article: Deploy and configure Microsoft Defender for Endpoint on Linux in an SAP environment, ensuring optimal security and performance.
Article:

## Deploying Microsoft Defender for Endpoint on Linux in an SAP Environment

This article provides a comprehensive overview of deploying Microsoft Defender for Endpoint on Linux in an environment running SAP. By following the recommended deployment methodology and important configuration settings, administrators can ensure a secure and efficient SAP system.

### Deployment Methodology

Microsoft and SAP advise against deploying Microsoft Defender for Endpoint on Linux directly to all development, QAS, and production systems without careful testing and monitoring. Uncontrolled deployment may lead to system downtime. Instead, deploy the software in development systems first, validate it in QAS, and then proceed with production environments.

Using tools like Endpoint Security Policies to deploy Defender for Endpoint to an entire SAP landscape without testing can cause downtime. Ensure the following factors are tested:

1.  Deploy Defender for Endpoint with Tamper Protection enabled. If issues arise, disable Real Time Scanning and configure scheduled scans. Open a support case using the Microsoft Defender Portal if necessary.
2.  Exclude DBMS files and executables per DBMS vendor recommendations.
3.  Analyze SAPMNT, SAP TRANS_DIR, Spool, and Job Log directories. Archive files if there are over 100,000 files.
4.  Confirm the performance limits and quotas of the shared file system used for SAPMNT. The SMB share source could be a NetApp appliance, a Windows server shared disk, or Azure Files SMB.
5.  Configure exclusions to prevent all SAP application servers from scanning the SAPMNT share simultaneously, as this may overload shared storage.
6.  Host interface files on a dedicated non-SAP file server with Real Time Protection enabled. SAP servers should not be used for interface files.

### Important Configuration Settings for Microsoft Defender for Endpoint with SAP on Linux

The following sections detail essential configuration settings for Microsoft Defender for Endpoint on Linux with SAP:

1.  **Microsoft Defender for Endpoint Overview:** Learn about Microsoft 365 Defender at [What is Microsoft 365 Defender? \| Microsoft Learn](https://docs.microsoft.com/en-us/learn/modules/introduction-to-microsoft-365-defender/).
2.  **Checking Microsoft Defender Antivirus status:** Open a command prompt with Administrative rights and run the provided PowerShell commands.
3.  **Checking Microsoft Defender Endpoint Detection and Response (EDR) status:** Use the Get-Service command in PowerShell to check the status of the EDR service.
4.  **Updating Microsoft Defender Antivirus software components:** Ensure engine and signatures are updated via Windows Update. Contact the Security Team if updates fail.
5.  **Behavior Monitoring:** Understand Behavior Monitoring at [Behavioral blocking and containment \| Microsoft Learn](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-and-containment).
6.  **Recommended setting for RealTimeProtectionEnabled:** Enable Real Time Scanning with Tamper Protection and Behavior Monitoring, unless a specific problem has been identified.
7.  **Scanning network shares with Defender for Endpoint on Linux:** By default, Microsoft Defender Antivirus scans SMB shared network file systems on Windows. However, it does not scan NFS file systems during scheduled scans on Linux. EDR on Windows might scan SMB shared network file systems.
8.  **Defender for Endpoint Client Analyzer Support tool:** Download the latest version of the Microsoft Defender for Endpoint client analyzer at <https://aka.ms/MDEAnalyzer>.
9.  **Opening a support case:** Contact Microsoft Defender for Endpoint support at [Contact Microsoft Defender for Endpoint support \| Microsoft Learn](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/contact-support?view=o365-worldwide).

For more helpful commands, refer to the [Microsoft Defender for Endpoint with SAP on Windows documentation](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-on-windows-server).

Recommendations:

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>SEO Keywords</th>
<th>Suggested Additions</th>
<th>Related Articles</th>
<th>Possible Issues or Concerns</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Microsoft Defender for Endpoint, Linux, SAP, deployment, configuration</td>
<td>N/A</td>
<td><a href="https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint">Microsoft Defender for Endpoint</a><br />
<a href="https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/linux-install-manually?view=o365-worldwide">Install Microsoft Defender for Endpoint on Linux manually</a></td>
<td>Ensure compatibility with specific SAP components and configurations.</td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

**Acrolinx score**: **89**

**Acrolinx correctness score**: 88

**Acrolinx scorecard** (Acrolinx account required): https://microsoft-ce-csi-qa.acrolinx.cloud/api/v1/checking/scorecards/86531dab-2892-4a19-aaa7-ffd742a85c0d

------------------------------------------------------------------------

**Reviewers**: cgardin; shlomiakirav; deniseb; siosulli

**Key dates**:

------------------------------------------------------------------------

**Audience**: Admin

**Product**: Microsoft Defender for Endpoint on Linux

**Article should cover the following**: Draft an overview of how to deploy Defender for Endpoint in an environment running SAP

**How this article will help customers**: Understand how to deploy and configure Defender for Endpoint correctly in an environment running SAP.

**Submitted by**: deniseb@microsoft.com

**Spec**: Deployment Methodology \nSAP and Microsoft do not recommend deploying Defender for Endpoint on Windows directly to all development, QAS and production systems simultaneously and/or without careful testing and monitoring. Customers that have deployed Defender for Endpoint and other similar software in an uncontrolled manner without adequate testing have experienced system downtime as a result. \nDefender for Endpoint on Windows and any other software or configuration change should be deployed into development systems first, validated in QAS and only then deployed into production environments. \nUsing tools such as Endpoint Security Policies to deploy Defender for Endpoint to an entire SAP landscape without testing is very likely to cause downtime. \nThe factors that need to be tested include:\n1.\tDeploy Defender for Endpoint with Tamper Protection enabled. If testing identifies file locking or blocking issues determine whether to disable Real Time Scanning and configure scheduled scans. If testing identifies problems open a support case using the Microsoft Defender Portal. \n2.\tExclude DBMS files and executables following DBMS vendor recommendation \n3.\tAnalyze SAPMNT, SAP TRANS_DIR, Spool and Job Log directories. If there are \> 100,000 files consider archiving to reduce the number of files\n4.\tConfirm the performance limits and quotas of the shared file system used for SAPMNT. The SMB share source could be a NetApp appliance, a Windows server shared disk or Azure Files SMB. \n5.\tConfigure exclusions such that all SAP application servers are not scanning the SAPMNT share simultaneously as this may overload shared storage server \n6.\tInterface files are recognized as an attack vector and it is generally recommend to host interface files on a dedicated non-SAP file server. Real Time Protection should be activated on this dedicated file server. SAP Servers should never be used as file servers for interface files. \n\nNote: some large SAP systems have more than 20 SAP application servers each with a connection to the same SAPMNT SMB share. 20 application servers simultaneously scanning the same SMB server may overload the SMB server. It is recommended to exclude SAPMNT from regular scans. \n\nIf additional protection is required and scanning of the SAPMNT is configured, these scans should be configured on only one or two VMs only. \nScheduled scans for SAP ECC, BW, CRM, SCM, Solution Manager and other components should be staggered to avoid all SAP components from overloading a shared SMB storage source shared by all SAP components. \n\nImportant Configuration Settings for Microsoft Defender for Endpoint with SAP on Windows\n1.\tWhat is Microsoft Defender for Endpoint?\nThe term “Defender” can be used to refer to an entire suite of products and solutions. The term “Defender” is used across multiple products and technologies. An overview of Microsoft 365 Defender is illustrated here What is Microsoft 365 Defender? \| Microsoft Learn\n \n2.\tHow to check Microsoft Defender Antivirus status?\nOpen a command prompt with Administrative rights and run these PowerShell commands \nGet-MpComputerStatus\nGet-MpPreference\n\nThe most significant settings for SAP are:\n\nGet-MpPreference \|Select-Object -Property DisableCpuThrottleOnIdleScans, DisableRealtimeMonitoring, DisableScanningMappedNetworkDrivesForFullScan , DisableScanningNetworkFiles, ExclusionPath, MAPSReporting \nGet-MpComputerStatus \|Select-Object -Property AMRunningMode, AntivirusEnabled, BehaviorMonitorEnabled, IsTamperProtected , OnAccessProtectionEnabled, RealTimeProtectionEnabled\n\n\n3.\tHow to check Microsoft Defender Endpoint Detection and Response (EDR) status?\n\nPS C:\\Windows\\System32\> Get-Service -Name sense \| FL \*\n\nName : sense\nRequiredServices : {}\nCanPauseAndContinue : False\nCanShutdown : False\nCanStop : False\nDisplayName : Windows Defender Advanced Threat Protection Service\nDependentServices : {}\nMachineName : .\nServiceName : sense\nServicesDependedOn : {}\nServiceHandle :\nStatus : Running\nServiceType : Win32OwnProcess\nStartType : Automatic\nSite :\nContainer :\n\n\nReview events and errors using Event Viewer \| Microsoft Learn\n\n4.\tHow to check Microsoft Defender Antivirus software components are up to date? \nMicrosoft Defender Antivirus engine and signatures are updated via Windows Update. If Defender for Endpoint is not up to date or if there are errors in Windows Update contact the Security Team. \n\n5.\tWhat is Behavior Monitoring?\nMore information on Behavior Monitoring can be found: \nBehavioral blocking and containment \| Microsoft Learn\nIf Tamper Protection is enabled Behavior Monitoring is enabled by default. The default configuration with Tamper Protection enabled, Behavior Monitoring enabled and Real Time Monitoring enabled should be used unless a specific problem has been identified. \n\n6.\tWhat is the recommended setting for RealTimeProtectionEnabled?\nThe current recommendation for Defender for Endpoint on Windows is to enable Real Time Scanning. The default configuration with Tamper Protection enabled, Behavior Monitoring enabled and Real Time Monitoring enabled should be used unless a specific problem has been identified. \n\n7.\tDoes Defender for Endpoint on Windows scan network shares?\nBy default, the Microsoft Defender Antivirus component on Windows does scan SMB shared network file systems (for example a Windows server share \\\\server\\smb-share or a NetApp share) when these files are accessed by processes.\nBy default , Defender for Endpoint on Linux does not scan NFS file systems during schedules scans. \n\nBy default , Defender for Endpoint EDR on Windows might scan SMB shared network file systems. The EDR sensor scans certain files that are identified as interesting for EDR analysis during file modification, delete and move operations.\n\n\n\n8.\tDefender for Endpoint Client Analyzer Support tool \nDownload the Microsoft Defender for Endpoint client analyzer \| Microsoft Learn The latest released version of the tool can be found https://aka.ms/MDEAnalyzer \nPerformance analyzer for Microsoft Defender Antivirus \| Microsoft Learn\n\n9.\tWhere to open a support case?\nContact Microsoft Defender for Endpoint support \| Microsoft Learn\nContact Microsoft Defender for Endpoint support\nLearn how to contact Microsoft Defender for Endpoint support\n\n10.\tWhile testing Defender for Endpoint in Development and on QAS VMs is it possible to delay the Defender for Endpoint extension deployment to Production SAP VMs if Defender for Cloud is activated? Is it possible to selectively deploy Defender for Endpoint to VMs by Resource Group or other criteria? \n\nBy default, Defender for Cloud deploys the Defender for Endpoint extension to all VMs in a subscription. Even one VM in a subscription that does not have Defender for Endpoint deployed can be used as an attack vector. If additional time is required to test Defender for Endpoint before deploying to production, contact Microsoft Support via the Microsoft Defender portal.\n\n\n\nUseful Commands: Microsoft Defender for Endpoint with SAP on Windows\n\n\n11.\tHow to manually update Microsoft Defender Antivirus definitions?\nRun Windows Update or the commands below \nPS C:\\Program Files\\Windows Defender\> .\\MpCmdRun.exe -SignatureUpdate\nSignature update started . . .\nService Version: 4.18.23050.9\nEngine Version: 1.1.23060.1005\nAntiSpyware Signature Version: 1.393.925.0\nAntivirus Signature Version: 1.393.925.0\nSignature update finished.\nPS C:\\Program Files\\Windows Defender\>\n\nAnother option is:\nPS C:\\Program Files\\Windows Defender\> Update-MpSignature\n\n\n12.\tWhat is EDR Block Mode (AMRunningMode) and which running mode is recommended?\nMore information on EDR Block Mode can be found here Endpoint detection and response in block mode \| Microsoft Learn and FAQ Endpoint detection and response (EDR) in block mode frequently asked questions (FAQ) \| Microsoft Learn\n\nThis command will display the \nGet-MPComputerStatus\|select AMRunningMode\n\nThere are two modes: Normal and Passive Mode \n\nTesting with SAP systems has only been completed with AMRunningMode = Normal for SAP systems. Further testing will be done in the future with non-Microsoft antivirus solutions and AMRunningMode = Passive Mode.\n\n\n13.\tHow to configure antivirus exclusions?\nIt is recommended that the SAP Basis Team coordinate exclusions with the Security Team. Exclusions should be configured centrally and not at the VM level. Exclusions such as the shared SAPMNT file system should be excluded via a policy using the Intune admin tool.\n\nManage exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus \| Microsoft Learn\nAV exclusions - Set up exclusions for Microsoft Defender Antivirus scans \| Microsoft Learn\n\nTo display configured exclusions run this command \nGet-MpPreference \| Select-Object -Property ExclusionPath\n\n\n14.\tHow to configure Endpoint Detection and Response (EDR) exclusions?\nIt is not recommended to exclude files, paths or processes from EDR as this comprises the protection from modern non-file based threats. If required open a support case with Microsoft Support via the Microsoft Defender portal specifying executables and/or paths to exclude.\n\n15.\tHow to completely disable Defender for Endpoint on Windows for testing purposes?\nDefender for Endpoint should be configured with “Tamper protection”. To disable Defender for Endpoint to isolate problems it is recommended to use troubleshooting mode https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/enable-troubleshooting-mode?view=o365-worldwide \nTo shutdown various subcomponents of the Microsoft Defender Antivirus solution run the following commands:\nSet-MPPreference -DisableTamperProtection \$true\nSet-MpPreference -DisableRealtimeMonitoring \$true\nSet-MpPreference -DisableBehaviorMonitoring \$true\nSet-MpPreference -MAPSReporting Disabled\nSet-MpPreference -DisableIOAVProtection \$true\nSet-MpPreference -EnableNetworkProtection Disabled \n\nIt is not possible to switch off EDR subcomponents. The only way is to completely off-board a device: https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/configure-endpoints-script?view=o365-worldwide#offboard-devices-using-a-local-script \n\nIt is not recommended to disable security software unless there is no alternative to solve or isolate a problem. \n\nTurn Off Cloud-delivered Protection - Microsoft Advanced Protection Service (MAPS)\n\nPowerShell Set-MpPreference -MAPSReporting 0\nOr;\nPowerShell Set-MpPreference -MAPSReporting Disabled\n\nWindows Defender Antivirus cloud protection service: Advanced real-time defense against never-before-seen malware \| Microsoft Security Blog\nCloud protection and sample submission at Microsoft Defender Antivirus \| Microsoft Learn\n\nSome SAP customers may not wish to configure \\Automatic sample submission” due to security policies. \n\n\n\n

**Run ID**: 33346fc2-becb-4eb5-aeb7-38b6c93e7786

**Session ID**: 984b6cad-7956-498f-afd6-dd99ebae6645
