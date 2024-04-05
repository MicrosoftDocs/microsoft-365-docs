---  
title: "Top 10 recommendations for SAP customers using Microsoft Defender for Endpoint"  
description: Learn best practices for deploying Microsoft Defender for Endpoint on Windows Server in SAP environments. 
author: denisebmsft
ms.author: deniseb  
manager: dansimp
ms.date: 04/04/2024
ms.topic: overview 
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

# Top 10 Recommendations for Microsoft Defender for Endpoint in SAP Environments

Follow these best practices to ensure a smooth deployment of Microsoft Defender for Endpoint in your SAP environment:

1. **Ensure basic security measures:** Limit access to SAP servers, block network ports, and implement other common security protection measures as a crucial first step. Modern threats recently evolved beyond traditional file-based viruses, so these measures are necessary but not sufficient to mitigate all risks.

2. **Test on non-productive systems:** Deploy Defender for Endpoint to nonproductive systems first before rolling out to production systems. This reduces the risk of downtime due to untested configurations. If immediate deployment to production systems is necessary, consider temporarily disabling [tamper protection](prevent-changes-to-security-settings-with-tamper-protection.md) and [real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md).

3. **Configure exclusions and support:** Real-time protection is enabled by default on Windows OS. If you encounter issues related to Defender for Endpoint, configure [exclusions](defender-endpoint-antivirus-exclusions.md) or [open a support case via the Microsoft Defender portal](contact-support.md).

4. **Collaborate with relevant teams:** Involve both the SAP Basis Team and the Enterprise Security Team in the deployment process. Create a phased deployment, testing, and monitoring plan together.

5. **Establish a performance baseline:** Use tools like [PerfMon (Windows)](/windows-server/administration/windows-commands/perfmon) to measure performance before and after deploying Defender for Endpoint. This helps identify any impact on system performance.

6. **Use the latest versions:** Deploy the latest version of Defender for Endpoint and use the latest releases of Windows, ideally Windows Server 2019 or higher. Older releases, such as Windows Server 2012, haven't been tested. See [Microsoft Defender Antivirus security intelligence and product updates](microsoft-defender-antivirus-updates.md).

7. **Configure exclusions for Microsoft Defender Antivirus:** Exclude the following items in SAP from scanning:

   - DBMS data files, log files, and temp files, including disks containing backup files
   - Entire contents of the SAPMNT, SAPLOC, and TRANS directories
   - Entire contents of directories for standalone engines, such as TREX

    For more information on DBMS exclusions, see the following resources:

      - [SQL Server: Configure antivirus software to work with SQL Server](/troubleshoot/sql/database-engine/security/antivirus-and-sql-server)
      - [Oracle: How to configure antivirus On Oracle Database Server (Doc ID 782354.1)](https://support.oracle.com/knowledge/Oracle%20Database%20Products/782354_1.html)
      - [SAP ASE documentation](https://help.sap.com/docs/SUPPORT_CONTENT/sybase/3362697907.html)
      - [MaxDB: Contact SAP](https://help.sap.com/docs/SUPPORT_CONTENT/sybase/3362697907.html)

8. **Recommended Microsoft Defender Antivirus settings for SAP applications:** Configure the following [settings](/powershell/module/defender/set-mppreference):

   - `AntivirusEnabled: True`
   - `AntivirusSignatureAge: 0`
   - `BehaviorMonitorEnabled: True`
   - `DefenderSignaturesOutOfDate: False`
   - `IsTamperProtected: True`
   - `RealTimeProtectionEnabled: True`

9. **Use security policies:** Utilize Defender for Endpoint security policies to ensure uniform deployment and configuration. In the Microsoft Defender portal, navigate to **Endpoints** > **Configuration management** > **Endpoint security policies**, and then select **Create new Policy**. 

   For more information, review the [Microsoft Defender for Endpoint security policies documentation](/microsoft-365/security/defender-endpoint/manage-security-policies).

10. **Stay up-to-date:** New features in Defender for Endpoint on Windows have been tested with SAP systems and offer improved performance. Always use the latest release to benefit from these enhancements.

## Related articles

[Microsoft Defender for Endpoint on Windows Server with SAP](mde-sap-windows-server.md)

[Deploying Microsoft Defender for Endpoint on Windows Server with SAP](mde-sap-deploy.md)