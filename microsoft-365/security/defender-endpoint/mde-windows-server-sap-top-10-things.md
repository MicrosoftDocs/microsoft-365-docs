**Request title**: Top 10 recommendations for SAP customers using Microsoft Defender for Endpoint

**Generated text**:

------------------------------------------------------------------------

---  
title: "Top 10 recommendations for SAP customers using Microsoft Defender for Endpoint"  
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

Customer Intent for this Article: Learn best practices for deploying Microsoft Defender for Endpoint on Linux in SAP environments.
Article:

## Top 10 Recommendations for Microsoft Defender for Endpoint on Linux in SAP Environments

Follow these best practices to ensure a smooth deployment of Microsoft Defender for Endpoint on Linux in your SAP environment:

1.  **Ensure basic security measures:** Limit access to SAP servers, block network ports, and implement other common security protection measures as a crucial first step. Modern threats have evolved beyond traditional file-based viruses, so these measures are necessary but not sufficient to mitigate all risks.
2.  **Test on non-productive systems:** Deploy Defender for Endpoint to non-productive systems first before rolling out to production systems. This reduces the risk of downtime due to untested configurations. If immediate deployment to production systems is necessary, consider temporarily disabling Tamper Protection and Real-Time Protection.
3.  **Configure exclusions and support:** Real-Time Protection is enabled by default on Windows OS. If you encounter issues related to Defender for Endpoint, configure exclusions or open a support case via the Microsoft Defender portal.
4.  **Collaborate with relevant teams:** Involve both the SAP Basis Team and the Enterprise Security Team in the deployment process. Create a phased deployment, testing, and monitoring plan together.
5.  **Establish a performance baseline:** Use tools like Perfmon (Windows) to measure performance before and after deploying Defender for Endpoint. This helps identify any impact on system performance.
6.  **Use the latest versions:** Deploy the latest version of Defender for Endpoint and use the latest releases of Windows, ideally Windows Server 2019 or higher. Older releases, such as Windows Server 2012, have not been tested.
7.  **Configure exclusions for Microsoft Defender Antivirus:** Exclude the following items from scanning:
    - DBMS data files, log files, and temp files, including disks containing backup files
    - Entire contents of the SAPMNT, SAPLOC, and TRANS directories
    - Entire contents of directories for standalone engines, such as TREX

    For more information on DBMS exclusions, refer to the following resources:
    - [SQL Server: Configure antivirus software to work with SQL Server](https://docs.microsoft.com/en-us/sql/sql-server/install/configure-antivirus-software-to-work-with-sql-server?view=sql-server-ver15)
    - Oracle: See How To Configure Anti-Virus On Oracle Database Server (Doc ID 782354.1)
    - [DB2: Which DB2 directories to exclude for Linux anti-virus software](https://www.ibm.com/support/pages/which-db2-directories-exclude-linux-anti-virus-software) (use the same commands on Windows OS)
    - SAP ASE: Contact SAP
    - MaxDB: Contact SAP
8.  **Recommended Microsoft Defender Antivirus settings for SAP applications:** Configure the following settings:
    - AntivirusEnabled: True
    - AntivirusSignatureAge: 0
    - BehaviorMonitorEnabled: True
    - DefenderSignaturesOutOfDate: False
    - IsTamperProtected: True
    - RealTimeProtectionEnabled: True
9.  **Use security policies:** Utilize Defender for Endpoint security policies to ensure uniform deployment and configuration. In the Microsoft Defender portal, navigate to **Endpoints \> Configuration management \> Endpoint security policies** and select **Create new Policy**. For more information, review the [Microsoft Defender for Endpoint security policies documentation](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/manage-security-policies?view=o365-worldwide).
10. **Stay up-to-date:** New features in Defender for Endpoint on Windows have been tested with SAP systems and offer improved performance. Always use the latest release to benefit from these enhancements.

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
<th>Related Microsoft Articles</th>
<th>Potential Issues or Concerns</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Microsoft Defender for Endpoint, SAP, Linux, deployment, best practices</td>
<td>Additional recommendations for specific SAP components</td>
<td><ul>
<li><a href="https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/linux-install-manually?view=o365-worldwide">Manually install Microsoft Defender for Endpoint on Linux</a></li>
<li><a href="https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/linux-install-with-ansible?view=o365-worldwide">Install Microsoft Defender for Endpoint on Linux with Ansible</a></li>
</ul></td>
<td>Customers using older Windows Server versions may require additional support</td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

**Acrolinx score**: **83**

**Acrolinx correctness score**: 100

**Acrolinx scorecard** (Acrolinx account required): https://microsoft-ce-csi-qa.acrolinx.cloud/api/v1/checking/scorecards/470d29a5-f036-4deb-9402-a9b66fa45906

------------------------------------------------------------------------

**Reviewers**: cgardin; shlomiakirav; deniseb; siosulli

**Key dates**:

------------------------------------------------------------------------

**Audience**: Admin

**Product**: Microsoft Defender for Endpoint on Linux

**Article should cover the following**: Draft an overview of this section:\n\nSAP Applications on Windows: Top 10 Recommendations \n1.\tLimiting access to SAP servers, blocking network ports and all other common security protection measures remain an essential first step. The threat landscape has evolved from “file based” Viruses to file-less complex and sophisticated threats. Steps such as blocking ports and limiting logon/access to VMs is no longer considered sufficient to fully mitigate modern threats.\n2.\tDeploy Defender for Endpoint to non-productive systems first before deploying to production systems. Deploying Defender for Endpoint directly to production systems without testing is highly risky and has led to downtime. If it is not possible to delay deploying Defender for Endpoint to production systems, consider temporarily disabling Tamper Protection and Real Time Protection. \n3.\tReal Time Protection is enabled by default on Windows OS. If problems are identified that might be related to Defender for Endpoint, it is recommended to configure exclusions and/or open a support case via the Microsoft Defender portal \n4.\tDefender for Endpoint deployment should be a joint project between the SAP Basis Team and the Enterprise Security Team. The two teams need to create a phased deployment, testing and monitoring plan \n5.\tUse tools such as Perfmon (Windows) to create a performance baseline before deploying and activating Defender for Endpoint. Compare the performance utilization before and after activating Defender for Endpoint.\n6.\tDeploy the latest version of Defender for Endpoint and use the latest releases of Windows, ideally Windows 2019 or higher. No testing has been done on old releases of Windows such as Windows 2012. \n7.\tConfigure the following exclusions for Microsoft Defender Antivirus: \nDBMS data files, log files and temp files, including disks containing backup files\nThe entire contents of the SAPMNT directory\nThe entire contents of the SAPLOC directory\nThe entire contents of the TRANS directory\nThe entire contents of directories for standalone engines such as TREX\n\nFor more information about DBMS exclusions:\nSQL Server – Configure antivirus software to work with SQL Server - SQL Server \| Microsoft Learn\nOracle – See How To Configure Anti-Virus On Oracle Database Server (Doc ID 782354.1)\nDB2 – https://www.ibm.com/support/pages/which-db2-directories-exclude-linux-anti-virus-software (use the same commands on Windows OS) \nSAP ASE – contact SAP \nMaxDB – contact SAP\n\n\n8.\tMicrosoft Defender Antivirus with SAP applications should have the following settings in most cases: \nAntivirusEnabled \t\t: True\nAntivirusSignatureAge \t\t: 0\nBehaviorMonitorEnabled \t\t: True\nDefenderSignaturesOutOfDate \t: False\nIsTamperProtected \t\t: True\nRealTimeProtectionEnabled \t: True\n\n\n9.\tTools such as Defender for Endpoint security policies are recommended to ensure that the deployment and configuration of Defender for Endpoint is configured and uniformly deployed. In the Microsoft Defender portal navigate to Endpoints \> Configuration management \> Endpoint security policies and then select Create new Policy. For more information review this link https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/manage-security-policies?view=o365-worldwide \n\n10.\tSeveral new features are being implemented in Defender for Endpoint on Windows and these features have been tested with SAP systems. These new features reduce blocking and lower CPU consumption. It is recommended to use the very latest Defender for Endpoint for Windows release\n

**How this article will help customers**: Understand important points of consideration with respect to deploying Defender for Endpoint in an environment running SAP.

**Submitted by**: deniseb@microsoft.com

**Spec**: SAP Applications on Windows: Top 10 Recommendations \n1.\tLimiting access to SAP servers, blocking network ports and all other common security protection measures remain an essential first step. The threat landscape has evolved from “file based” Viruses to file-less complex and sophisticated threats. Steps such as blocking ports and limiting logon/access to VMs is no longer considered sufficient to fully mitigate modern threats.\n2.\tDeploy Defender for Endpoint to non-productive systems first before deploying to production systems. Deploying Defender for Endpoint directly to production systems without testing is highly risky and has led to downtime. If it is not possible to delay deploying Defender for Endpoint to production systems, consider temporarily disabling Tamper Protection and Real Time Protection. \n3.\tReal Time Protection is enabled by default on Windows OS. If problems are identified that might be related to Defender for Endpoint, it is recommended to configure exclusions and/or open a support case via the Microsoft Defender portal \n4.\tDefender for Endpoint deployment should be a joint project between the SAP Basis Team and the Enterprise Security Team. The two teams need to create a phased deployment, testing and monitoring plan \n5.\tUse tools such as Perfmon (Windows) to create a performance baseline before deploying and activating Defender for Endpoint. Compare the performance utilization before and after activating Defender for Endpoint.\n6.\tDeploy the latest version of Defender for Endpoint and use the latest releases of Windows, ideally Windows 2019 or higher. No testing has been done on old releases of Windows such as Windows 2012. \n7.\tConfigure the following exclusions for Microsoft Defender Antivirus: \nDBMS data files, log files and temp files, including disks containing backup files\nThe entire contents of the SAPMNT directory\nThe entire contents of the SAPLOC directory\nThe entire contents of the TRANS directory\nThe entire contents of directories for standalone engines such as TREX\n\nFor more information about DBMS exclusions:\nSQL Server – Configure antivirus software to work with SQL Server - SQL Server \| Microsoft Learn\nOracle – See How To Configure Anti-Virus On Oracle Database Server (Doc ID 782354.1)\nDB2 – https://www.ibm.com/support/pages/which-db2-directories-exclude-linux-anti-virus-software (use the same commands on Windows OS) \nSAP ASE – contact SAP \nMaxDB – contact SAP\n\n\n8.\tMicrosoft Defender Antivirus with SAP applications should have the following settings in most cases: \nAntivirusEnabled \t\t: True\nAntivirusSignatureAge \t\t: 0\nBehaviorMonitorEnabled \t\t: True\nDefenderSignaturesOutOfDate \t: False\nIsTamperProtected \t\t: True\nRealTimeProtectionEnabled \t: True\n\n\n9.\tTools such as Defender for Endpoint security policies are recommended to ensure that the deployment and configuration of Defender for Endpoint is configured and uniformly deployed. In the Microsoft Defender portal navigate to Endpoints \> Configuration management \> Endpoint security policies and then select Create new Policy. For more information review this link https://learn.microsoft.com/en-us/microsoft-365/security/defender-endpoint/manage-security-policies?view=o365-worldwide \n\n10.\tSeveral new features are being implemented in Defender for Endpoint on Windows and these features have been tested with SAP systems. These new features reduce blocking and lower CPU consumption. It is recommended to use the very latest Defender for Endpoint for Windows release\n

**Run ID**: 9661a1fe-7563-424a-8964-080e23c1dae2

**Session ID**: 984b6cad-7956-498f-afd6-dd99ebae6645
