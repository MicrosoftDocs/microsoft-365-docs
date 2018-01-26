---
title: Enable Windows 10 Enterprise security features | Microsoft docs
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment
author: CelesteDG
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 01/29/2018
ms.author: celested
---

# Enable Windows 10 Enterprise security features

## Windows Defender Antivirus
Windows Defender Antivirus (AV) is an antimalware solution that's built into Windows 10. It provides security and antimalware management for desktops, portable computers, and servers. For more info about Windows Defender AV, the minimum requirements, and how you can manage this feature, see [Windows Defender Antivirus in Windows 10 and Windows Server 2016](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10).

If you are not using Windows Defender AV as your primary antivirus client, or if you are also using Windows Defender ATP, there are some considerations you need to take into account. To learn more, see [Windows Defender AV compatibility](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/windows-defender-antivirus-compatibility).

### Deployment and management
To deploy and manage Windows Defender AV, follow the guidance here:
* [Deploy, manage, and report on Windows Defender AV](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/deploy-manage-report-windows-defender-antivirus)
* [Reference topics for management and configuration tools](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/configuration-management-reference-windows-defender-antivirus)

### Configuration
Users can configure a number of features. For more info, see these resources:
* [Configure Windows Defender AV features](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features)
* [Reference topics for management and configuration tools](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/configuration-management-reference-windows-defender-antivirus)

To help understand configuration options, refer to this list of all settings (as defined by their Group Policy configuration): [Use Group Policy settings to configure and manage Windows Defender AV](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/use-group-policy-windows-defender-antivirus)

You can use the [Windows Defender AV protection Evaluation Guide](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/evaluate-windows-defender-antivirus) to help evaluate the protection level and impact of Windows Defender AV on your network. This can also be useful in creating an initial configuration or as a ‘quick start guide’ and is regularly updated to provide the most useful recommendations for configuring and enabling features to ensure maximum protection.

### Reporting
You can obtain reporting by using a configuration tool, such as System Center Configuration Manager or Microsoft Intune. You can also obtain reporting from Update Compliance (OMS) or by consuming Windows event logs in your SIEM. If you have a license for Windows Defender ATP, you can also obtain reporting into Windows Defender AV detections and perform basic remediation. For more info, see these resources:
* [Deploy, manage, and report on Windows Defender AV](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/deploy-manage-report-windows-defender-antivirus)
* [Report on Windows Defender AV protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/report-monitor-windows-defender-antivirus)
* [Windows Defender ATP portal overview](https://go.microsoft.com/fwlink/?linkid=861596)

### Troubleshooting
See the following for information on basic troubleshooting of error and event codes:
•	Review event logs and error codes to troubleshoot issues with Windows Defender AV
Customers can also submit issues (such as false positives) by using the Windows Defender Security Intelligence submission system:
•	Submit issues to Microsoft

## Windows Defender Exploit Guard
Windows Defender Exploit Guard is a new set of host intrusion prevention capabilities for Windows 10. For more info about Windows Defender Exploit Guard, the  minimum requirements, and how you can manage this feature, see [Windows Defender Exploit Guard](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/windows-defender-exploit-guard).

### Deployment, management, and configuration
To deploy, manage, and configure Windows Defender Exploit Guard, follow the guidance here:
* [Exploit protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/exploit-protection-exploit-guard)
* [Attack surface protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard?ocid=cx-docs-msa4053440)
* [Network protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/network-protection-exploit-guard)
* [Controlled folder access](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)

TBD

## Windows Defender Advanced Threat Protection
TBD

## Learn more
[Microsoft 365 Enterprise product page](https://www.microsoft.com/microsoft-365/enterprise)</br>
[Windows 10](https://docs.microsoft.com/windows/windows-10)</br>
[Deploy and update Windows 10](https://docs.microsoft.com/windows/deployment/)

