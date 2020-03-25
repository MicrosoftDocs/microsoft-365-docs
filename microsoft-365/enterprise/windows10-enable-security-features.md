---
title: Deploy Windows 10 Enterprise security features
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise security features on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, security
author: greg-lindsay
localization_priority: Normal
ms.collection: M365-modern-desktop
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 06/01/2018
f1.keywords:
- NOCSH
ms.author: greglin
---

# Step 5: Deploy Windows 10 Enterprise security features

![Phase 3: Windows 10 Enterprise](../media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)

Windows 10 provides security features to protect enterprise users, stop cyberthreats, and prevent data loss. 

To learn more about these technologies, see:

* [Identity protection](https://docs.microsoft.com/windows/security/identity-protection/) - Learn about Windows Hello for Business, Credential Guard, and access control.
* [Threat protection](https://docs.microsoft.com/windows/threat-protection/) - Learn about Microsoft Defender Advanced Threat Protection, a unified platform for preventative protection, post-breach detection, automated investigation, and response.
* [Information protection](https://docs.microsoft.com/windows/security/information-protection/) - Learn about BitLocker, Windows Information Protection, and other ways that Windows 10 helps protect enterprise data. 

This step shows you how you can deploy, manage, configure, and troubleshoot using these security features:

* [Windows Defender Antivirus](#windows-defender-antivirus)
* [Windows Defender Exploit Guard](#windows-defender-exploit-guard)
* [Microsoft Defender Advanced Threat Protection](#windows10-sec-atp)

<a name="windows10-sec-av"></a>
## Windows Defender Antivirus
Windows Defender Antivirus (AV) is an antimalware solution that's built into Windows 10. It provides security and antimalware management for desktops, portable computers, and servers. For more info about Windows Defender AV, the minimum requirements, and how you can manage this feature, see [Windows Defender Antivirus in Windows 10 and Windows Server 2016](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10).

If you are not using Windows Defender AV as your primary antivirus client, or if you are also using Microsoft Defender ATP, there are some considerations you need to take into account. To learn more, see [Windows Defender AV compatibility](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/windows-defender-antivirus-compatibility).

### Deployment and management
To deploy and manage Windows Defender AV, follow the guidance here:

* [Deploy, manage, and report on Windows Defender AV](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/deploy-manage-report-windows-defender-antivirus)
* [Reference topics for management and configuration tools](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/configuration-management-reference-windows-defender-antivirus)

### Configuration
Users can configure a number of features. For more info, see these resources:

* [Configure Windows Defender AV features](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features)
* [Reference topics for management and configuration tools](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/configuration-management-reference-windows-defender-antivirus)

To help understand configuration options, refer to this list of all settings (as defined by their Group Policy configuration): [Use Group Policy settings to configure and manage Windows Defender AV](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/use-group-policy-windows-defender-antivirus)

You can use the [Windows Defender AV protection Evaluation Guide](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/evaluate-windows-defender-antivirus) to help evaluate the protection level and impact of Windows Defender AV on your network. This can also be useful in creating an initial configuration or as a ‘quick start guide’ and is regularly updated to provide the most useful recommendations for configuring and enabling features to ensure maximum protection.

### Reporting
You can obtain reporting by using a configuration tool, such as Microsoft Endpoint Configuration Manager or Microsoft Intune. You can also obtain reporting from Update Compliance (OMS) or by consuming Windows event logs in your SIEM. If you have a license for Microsoft Defender ATP, you can also obtain reporting into Windows Defender AV detections and perform basic remediation. For more info, see these resources:
* [Deploy, manage, and report on Windows Defender AV](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/deploy-manage-report-windows-defender-antivirus)
* [Report on Windows Defender AV protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/report-monitor-windows-defender-antivirus)
* [Microsoft Defender ATP portal overview](https://go.microsoft.com/fwlink/?linkid=861596)

### Troubleshooting
For info on basic troubleshooting of error and event codes, see [Review event logs and error codes to troubleshoot issues with Windows Defender AV](https://docs.microsoft.com/windows/threat-protection/windows-defender-antivirus/troubleshoot-windows-defender-antivirus).

You can also submit issues (such as false positives) by using the Windows Defender Security Intelligence submission system. To learn how, see [Submit issues to Microsoft](https://www.microsoft.com/wdsi/filesubmission).

<a name="windows10-sec-eg"></a>
## Windows Defender Exploit Guard
Windows Defender Exploit Guard is a new set of host intrusion prevention capabilities for Windows 10. For more info about Windows Defender Exploit Guard, the  minimum requirements, and how you can manage this feature, see [Windows Defender Exploit Guard](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/windows-defender-exploit-guard).

### Deployment, management, and configuration
To deploy, manage, and configure Windows Defender Exploit Guard, follow the guidance here:
* [Exploit protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/exploit-protection-exploit-guard)
* [Attack surface protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard?ocid=cx-docs-msa4053440)
* [Network protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/network-protection-exploit-guard)
* [Controlled folder access](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)

You can use a series of evaluation topics to help evaluate the protection level and impact of Windows Defender Exploit Guard on your network. This can also be useful in creating an initial configuration or as a ‘quick start guide’ and the topics and guidance are regularly updated to provide the most useful recommendations for configuring and enabling features to ensure maximum protection. For more info,  [Evaluate Windows Defender Exploit Guard](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/evaluate-windows-defender-exploit-guard).

### Reporting
You can obtain reporting by using a configuration tool, such as Configuration Manager or Intune. You can also obtain reporting by consuming Windows event logs in your SIEM. If you have a license for Microsoft Defender ATP, you can also obtain reporting into Windows Defender AV detections and perform basic remediation. For more info, see these resources:
* [View Windows Defender Exploit Guard events](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/event-views-exploit-guard)
* [Microsoft Defender ATP portal overview](https://go.microsoft.com/fwlink/?linkid=861596)

### Troubleshooting
You can perform basic troubleshooting or optionally provide Microsoft with .cab files and submit issues (such as false positives) by using the Windows Defender Security Intelligence submission system. To learn how, see [Submit issues to Microsoft](https://www.microsoft.com/wdsi/filesubmission).


<a name="windows10-sec-atp"></a>
## Microsoft Defender Advanced Threat Protection
Microsoft Defender ATP, only available with the Microsoft 365 E5 plan, is a security service that enables enterprise customers to detect, investigate, and respond to advanced threats on their networks. For more info about Microsoft Defender ATP, the minimum requirements, and how you can manage this feature, see:

* [Microsoft Defender ATP](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection)
* [Minimum requirements](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/minimum-requirements-windows-defender-advanced-threat-protection)

### Deployment, management, and configuration
To deploy Microsoft Defender ATP, you’ll need to ensure you have the right Windows license. After verifying that you have the right license, you’ll need to decide the geolocation for where your data will be stored. After that, you can start onboarding endpoints to the service.

For more details on these steps, see these main topics: 

* [Validate licensing provisioning and complete set up](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/licensing-windows-defender-advanced-threat-protection)
* [Data storage and privacy](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/data-storage-privacy-windows-defender-advanced-threat-protection)
* [Onboard endpoints and setup access](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/onboard-configure-windows-defender-advanced-threat-protection)

### Detect, investigate, respond
After successfully onboarding endpoints to the service, you  can start investigating alerts from the various dashboards. Once you've investigated alerts, you can take response actions on alerts. 

For more info on how to do these, see:
* [Microsoft Defender ATP portal overview](https://go.microsoft.com/fwlink/?linkid=861596)
* [Use the Microsoft Defender ATP portal](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/use-windows-defender-advanced-threat-protection)
* [Take response actions](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/response-actions-windows-defender-advanced-threat-protection)

### Integrate with other products and tools
Microsoft Defender ATP integrates and supports various other products and tools to expand its security capabilities. 

For more info on the tools and other products, see:
* [SIEM tools](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection)
* [Create custom alerts](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/use-custom-ti-windows-defender-advanced-threat-protection)
* [Use APIs](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/exposed-apis-windows-defender-advanced-threat-protection)
* [Build Power BI reports](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/powerbi-reports-windows-defender-advanced-threat-protection)

### Troubleshooting
You might encounter issues while onboarding or while using the product. For more info on how to address issues, see:
* [Troubleshooting onboarding issues](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/troubleshoot-onboarding-windows-defender-advanced-threat-protection)
* [Troubleshooting Microsoft Defender ATP](https://docs.microsoft.com/windows/threat-protection/windows-defender-atp/troubleshoot-windows-defender-advanced-threat-protection)

## Next step

[Windows 10 Enterprise infrastructure exit criteria](windows10-exit-criteria.md)
