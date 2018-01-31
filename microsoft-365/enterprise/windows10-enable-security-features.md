---
title: Enable Windows 10 Enterprise security features | Microsoft docs
description: Provides a high-level guidance on the steps you need to deploy Windows 10 Enterprise on PCs as part of Microsoft 365 Enterprise.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment
author: CelesteDG
localization_priority: Normal
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 01/29/2018
ms.author: celested
---

# Enable Windows 10 Enterprise security features
Windows 10 provides features to help protect against threats, help you secure your devices, and help with access control. 

To learn more about these technologies, see:
* [Access protection](https://docs.microsoft.com/en-us/windows/access-protection/) - Learn about access control, S/MIME, digital certificates, Credential Guard, User Account Control, virtual smart cards, Windows Hello for Business, Windows Firewall with Advanced Security, and more
* [Device security](https://docs.microsoft.com/en-us/windows/device-security/) - Includes AppLocker, BitLocker, Device Guard, and Trusted Platform Module
* [Threat protection](https://docs.microsoft.com/en-us/windows/threat-protection/) - Includes Windows Defender Security Center, Windows Defender Advanced Threat Protection, Windows Defender Antivirus, Windows Defender Application Guard, Windows Defender Smart Screen, and Windows Information Protection

Here, we'll show you how you can deploy, manage, configure, and troubleshoot using these security features:
* [Windows Defender Antivirus](#windows-defender-antivirus)
* [Windows Defender Exploit Guard](#windows-defender-exploit-guard)
* [Windows Defender Advanced Threat Protection](#windows-defender-advanced-threat-protection)

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
For info on basic troubleshooting of error and event codes, see [Review event logs and error codes to troubleshoot issues with Windows Defender AV](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-antivirus/troubleshoot-windows-defender-antivirus).

You can also submit issues (such as false positives) by using the Windows Defender Security Intelligence submission system. To learn how, see [Submit issues to Microsoft](https://www.microsoft.com/en-us/wdsi/filesubmission).

## Windows Defender Exploit Guard
Windows Defender Exploit Guard is a new set of host intrusion prevention capabilities for Windows 10. For more info about Windows Defender Exploit Guard, the  minimum requirements, and how you can manage this feature, see [Windows Defender Exploit Guard](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/windows-defender-exploit-guard).

### Deployment, management, and configuration
To deploy, manage, and configure Windows Defender Exploit Guard, follow the guidance here:
* [Exploit protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/exploit-protection-exploit-guard)
* [Attack surface protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard?ocid=cx-docs-msa4053440)
* [Network protection](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/network-protection-exploit-guard)
* [Controlled folder access](https://docs.microsoft.com/windows/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)

You can use a series of evaluation topics to help evaluate the protection level and impact of Windows Defender Exploit Guard on your network. This can also be useful in creating an initial configuration or as a ‘quick start guide’ and the topics and guidance are regularly updated to provide the most useful recommendations for configuring and enabling features to ensure maximum protection. For more info,  [Evaluate Windows Defender Exploit Guard](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-exploit-guard/evaluate-windows-defender-exploit-guard).

### Reporting
You can obtain reporting by using a configuration tool, such as System Center Configuration Manager or Intune. You can also obtain reporting by consuming Windows event logs in your SIEM. If you have a license for Windows Defender ATP, you can also obtain reporting into Windows Defender AV detections and perform basic remediation. For more info, see these resources:
* [View Windows Defender Exploit Guard events](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-exploit-guard/event-views-exploit-guard)
* [Windows Defender ATP portal overview](https://go.microsoft.com/fwlink/?linkid=861596)

### Troubleshooting
You can perform basic troubleshooting or optionally provide Microsoft with .cab files and submit issues (such as false positives) by using the Windows Defender Security Intelligence submission system. To learn how, see [Submit issues to Microsoft](https://www.microsoft.com/en-us/wdsi/filesubmission).


## Windows Defender Advanced Threat Protection
Windows Defender ATP<sup>[1](#footnote1)</sup> is a security service that enables enterprise customers to detect, investigate, and respond to advanced threats on their networks. For more info about Windows Defender ATP, the minimum requirements, and how you can manage this feature, see:
* [Windows Defender ATP](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection)
* [Minimum requirements](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/minimum-requirements-windows-defender-advanced-threat-protection)

### Deployment, management, and configuration
To deploy Windows Defender ATP, you’ll need to ensure you have the right Windows license. After verify that you have the right license, you’ll need to decide the geolocation for where your data will be stored. After that, you can start onboarding endpoints to the service.

For more details on these steps, see these main topics: 
* [Validate licensing provisioning and complete set up](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/licensing-windows-defender-advanced-threat-protection)
* [Data storage and privacy](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/data-storage-privacy-windows-defender-advanced-threat-protection)
* [Onboard endpoints and setup access](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/onboard-configure-windows-defender-advanced-threat-protection)

### Detect, investigate, respond
After successfully onboarding endpoints to the service, you  can start investigating alerts from the various dashboards. Once you've investigated alerts, you can take response actions on alerts. 

For more info on how to do these, see:
* [Windows Defender ATP portal overview](https://go.microsoft.com/fwlink/?linkid=861596)
* [Use the Windows Defender ATP portal](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/use-windows-defender-advanced-threat-protection)
* [Take response actions](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/response-actions-windows-defender-advanced-threat-protection)

### Integrate with other products and tools
Windows Defender ATP integrates and supports various other products and tools to expand its security capabilities. 

For more info on the tools and other products, see:
* [SIEM tools](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection)
* [Create custom alerts](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/use-custom-ti-windows-defender-advanced-threat-protection)
* [Use APIs](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/exposed-apis-windows-defender-advanced-threat-protection)
* [Build Power BI reports](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/powerbi-reports-windows-defender-advanced-threat-protection)

### Troubleshooting
You might encounter issues while onboarding or while using the product. For more info on how to address issues, see:
* [Troubleshooting onboarding issues](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/troubleshoot-onboarding-windows-defender-advanced-threat-protection)
* [Troubleshooting Windows Defender ATP](https://docs.microsoft.com/en-us/windows/threat-protection/windows-defender-atp/troubleshoot-windows-defender-advanced-threat-protection)

## Learn more
[Microsoft 365 Enterprise product page](https://www.microsoft.com/microsoft-365/enterprise)</br>
[Windows 10](https://docs.microsoft.com/windows/windows-10)</br>
[Deploy and update Windows 10](https://docs.microsoft.com/windows/deployment/)

</br>
</br>
</br>
</br>
</br>
</br>
</br>
<small><a name="footnote1">1</a> Only available with Enterprise E5 plan.</small>

