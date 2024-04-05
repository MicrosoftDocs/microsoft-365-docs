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

# Deploying Microsoft Defender for Endpoint on Windows Server with SAP

This article provides a comprehensive overview of deploying Microsoft Defender for Endpoint on Windows Server in an environment running SAP. By following the recommended deployment methodology and important configuration settings, administrators can ensure a secure and efficient SAP system.

## Deployment methodology

Microsoft and SAP advise against deploying Microsoft Defender for Endpoint on Windows Server directly to all development, QAS, and production systems without careful testing and monitoring. Uncontrolled deployment can lead to system downtime. Instead, deploy the software in development systems first, validate it in QAS, and then proceed with production environments.

Using tools like [Intune to deploy Defender for Endpoint security policies](/mem/intune/protect/endpoint-security) to an entire SAP landscape without testing can cause downtime. Make sure to test the following factors:

1. Deploy Defender for Endpoint with [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) enabled. If issues arise, disable [real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md) and configure [scheduled scans](schedule-antivirus-scans.md). 

   If you need help, [Contact Microsoft Defender for Endpoint support](contact-support.md).

2. [Configure exclusions](/microsoft-365/security/defender-endpoint/defender-endpoint-antivirus-exclusions#custom-exclusions) for DBMS files and executables per DBMS vendor recommendations.

3. Analyze SAPMNT, SAP TRANS_DIR, Spool, and Job Log directories. Archive files if there are over 100,000 files.

4. Confirm the performance limits and quotas of the shared file system used for SAPMNT. The SMB share source could be a NetApp appliance, a Windows server shared disk, or Azure Files SMB.

5. Configure exclusions to prevent all SAP application servers from scanning the SAPMNT share simultaneously, as this scenario could overload shared storage.

6. Host interface files on a dedicated non-SAP file server with Real Time Protection enabled. SAP servers shouldn't be used for interface files.

## Important configuration settings for Defender for Endpoint on Windows Server with SAP

The following sections detail essential configuration settings for Microsoft Defender for Endpoint on Windows Server with SAP:

1. **Microsoft Defender for Endpoint Overview**: Learn about Microsoft 365 Defender at [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md).

2. **Checking Microsoft Defender Antivirus status**: Open a command prompt with Administrative rights and run the [Defender PowerShell commands](/powershell/module/defender).

3. **Checking Microsoft Defender Endpoint Detection and Response (EDR) status**: Use the Get-Service command in PowerShell to check the status of the EDR service.

4. **Updating Microsoft Defender Antivirus software components**: Ensure engine and signatures are updated via Windows Update. Contact the Security Team if updates fail.

5. **Behavior monitoring:** Understand behavioral monitoring and containmment. See [Behavioral blocking and containment](behavioral-blocking-containment.md).

6. **Recommended setting for RealTimeProtectionEnabled**: Enable [real-time scanning](configure-real-time-protection-microsoft-defender-antivirus.md) with [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) and behavior monitoring, unless a specific problem is identified. See [Built-in protection helps guard against ransomware](built-in-protection.md).

7. **Scanning network shares with Defender for Endpoint on Windows Server**: By default, Microsoft Defender Antivirus scans SMB shared network file systems on Windows. However, it doesn't scan NFS file systems during scheduled scans on Windows Server. EDR on Windows might scan SMB shared network file systems.

8. **Defender for Endpoint Client Analyzer Support tool**: Download the latest version of the [Microsoft Defender for Endpoint client analyzer](https://aka.ms/MDEAnalyzer).

9.  **Opening a support case**: Contact support if you need help. See [Contact Microsoft Defender for Endpoint support](/microsoft-365/security/defender-endpoint/contact-support).

## Related articles

[Top 10 Recommendations for Microsoft Defender for Endpoint in SAP Environments](mde-sap-top-10-things.md)

[Microsoft Defender for Endpoint on Windows Server with SAP](mde-sap-windows-server.md)
