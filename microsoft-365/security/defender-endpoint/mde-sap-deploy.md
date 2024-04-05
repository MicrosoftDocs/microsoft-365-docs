---  
title: "Deploy Microsoft Defender for Endpoint on Windows Server with SAP"  
description: Deploy and configure Microsoft Defender for Endpoint on Windows Server in an SAP environment, ensuring optimal security and performance.
author: denisebmsft
ms.author: deniseb  
manager: dansimp
ms.date: 04/04/2024
ms.topic: how-to
ms.service: defender-endpoint  
ms.subservice: ngp
ms.localizationpriority: normal 
ms.collection:  
ms.custom: 
- QuickDraft
- partner-contribution  
ms.reviewer: cgardin; shlomiakirav; deniseb; siosulli  
search.appverid: MET150  
f1.keywords: NOCSH
audience: ITPro
ai-usage:  
- ai-assisted  
---  

## Deploying Microsoft Defender for Endpoint on Windows Server with SAP

This article provides a comprehensive overview of deploying Microsoft Defender for Endpoint on Linux in an environment running SAP. By following the recommended deployment methodology and important configuration settings, administrators can ensure a secure and efficient SAP system.

## Deployment Methodology

Microsoft and SAP advise against deploying Microsoft Defender for Endpoint on Windows Server directly to all development, QAS, and production systems without careful testing and monitoring. Uncontrolled deployment can lead to system downtime. Instead, deploy the software in development systems first, validate it in QAS, and then proceed with production environments.

Using tools like Endpoint Security Policies to deploy Defender for Endpoint to an entire SAP landscape without testing can cause downtime. Ensure the following factors are tested:

1. Deploy Defender for Endpoint with [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) enabled. If issues arise, disable [real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) and configure [scheduled scans](schedule-antivirus-scans.md). 

   If you need help, [Contact Microsoft Defender for Endpoint support](contact-support.md).

2. [Configure exclusions](/microsoft-365/security/defender-endpoint/defender-endpoint-antivirus-exclusions#custom-exclusions) for DBMS files and executables per DBMS vendor recommendations.

3. Analyze SAPMNT, SAP TRANS_DIR, Spool, and Job Log directories. Archive files if there are over 100,000 files.

4. Confirm the performance limits and quotas of the shared file system used for SAPMNT. The SMB share source could be a NetApp appliance, a Windows server shared disk, or Azure Files SMB.

5. Configure exclusions to prevent all SAP application servers from scanning the SAPMNT share simultaneously, as this scenario could overload shared storage.

6. Host interface files on a dedicated non-SAP file server with Real Time Protection enabled. SAP servers shouldn't be used for interface files.

## Important Configuration Settings for Microsoft Defender for Endpoint on Windows Server with SAP

The following sections detail essential configuration settings for Microsoft Defender for Endpoint on Windows Server with SAP:

1. **Microsoft Defender for Endpoint Overview:** Learn about Microsoft 365 Defender at [What is Microsoft 365 Defender?](/learn/modules/introduction-to-microsoft-365-defender/).

2. **Checking Microsoft Defender Antivirus status:** Open a command prompt with Administrative rights and run the provided PowerShell commands.

3. **Checking Microsoft Defender Endpoint Detection and Response (EDR) status:** Use the Get-Service command in PowerShell to check the status of the EDR service.

4. **Updating Microsoft Defender Antivirus software components:** Ensure engine and signatures are updated via Windows Update. Contact the Security Team if updates fail.

5. **Behavior Monitoring:** Understand Behavior Monitoring at [Behavioral blocking and containment](/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-and-containment).

6. **Recommended setting for RealTimeProtectionEnabled:** Enable Real Time Scanning with Tamper Protection and Behavior Monitoring, unless a specific problem is identified.

7. **Scanning network shares with Defender for Endpoint on Linux:** By default, Microsoft Defender Antivirus scans SMB shared network file systems on Windows. However, it doesn't scan NFS file systems during scheduled scans on Linux. EDR on Windows might scan SMB shared network file systems.

8. **Defender for Endpoint Client Analyzer Support tool:** Download the latest version of the Microsoft Defender for Endpoint client analyzer at <https://aka.ms/MDEAnalyzer>.

9.  **Opening a support case:** Contact Microsoft Defender for Endpoint support at [Contact Microsoft Defender for Endpoint support](/microsoft-365/security/defender-endpoint/contact-support?view=o365-worldwide).

For more helpful commands, refer to the [Microsoft Defender for Endpoint with SAP on Windows documentation](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-on-windows-server).

