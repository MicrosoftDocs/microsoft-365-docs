---
title: Manage Microsoft Defender Antivirus in your business
description: Learn how to use Group Policy, Configuration Manager, PowerShell, WMI, Intune, and the command line to manage Microsoft Defender Antivirus
ms.service: defender-endpoint
ms.localizationpriority: medium
author: siosulli
ms.author: siosulli
ms.custom: nextgen
ms.date: 02/18/2024
ms.reviewer: yongrhee
manager: deniseb
ms.subservice: ngp
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Manage Microsoft Defender Antivirus in your business

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**
- Windows
- Windows Server

> [!TIP]
> For the best experience, please choose 1 method for configuring the Microsoft Defender Antivirus policies.

> [!IMPORTANT]
> Group Policy (GPO) wins over Microsoft Configuration Manager wins over Microsoft Intune wins over Microsoft Defender for Endpoint Security Configuration Management or Powershell or WMI or MpCmdRun.exe.
You can manage and configure Microsoft Defender Antivirus with the following tools:
- [Microsoft Defender for Endpoint Security Configuration Management](/mem/intune/protect/mde-security-integration)
- [Microsoft Intune](/mem/intune/protect/endpoint-security-antivirus-policy)
- [Microsoft Configuration Manager](/mem/configmgr/protect/deploy-use/endpoint-protection-configure)
- [Group Policy](./use-group-policy-microsoft-defender-antivirus.md)
- [PowerShell cmdlets](./use-powershell-cmdlets-microsoft-defender-antivirus.md)
- [Windows Management Instrumentation (WMI)](./use-wmi-microsoft-defender-antivirus.md)
- The [Microsoft Malware Protection Command Line Utility](./command-line-arguments-microsoft-defender-antivirus.md) (referred to as the *mpcmdrun.exe* utility)

The following articles provide further information, links, and resources for using these tools to manage and configure Microsoft Defender Antivirus.

|Article|Description|
|:---|:---|
|[Manage Microsoft Defender Antivirus with Microsoft Defender for Endpoint Security Configuration Management](/mem/intune/protect/mde-security-integration)|Information about using the Microsoft Defender for Endpoint Security Configuration Management to configure, manage, and report, Microsoft Defender Antivirus|
|[Manage Microsoft Defender Antivirus with Microsoft Intune and Microsoft Endpoint Configuration Manager](use-intune-config-manager-microsoft-defender-antivirus.md)|Information about using Intune and Configuration Manager to deploy, manage, report, and configure Microsoft Defender Antivirus|
|[Manage Microsoft Defender Antivirus with Group Policy settings](use-group-policy-microsoft-defender-antivirus.md)|List of all Group Policy settings located in ADMX templates|
|[Manage Microsoft Defender Antivirus with PowerShell cmdlets](use-powershell-cmdlets-microsoft-defender-antivirus.md)|Instructions for using PowerShell cmdlets to manage Microsoft Defender Antivirus, plus links to documentation for all cmdlets and allowed parameters|
|[Manage Microsoft Defender Antivirus with Windows Management Instrumentation (WMI)](use-wmi-microsoft-defender-antivirus.md)|Instructions for using WMI to manage Microsoft Defender Antivirus, plus links to documentation for the WMIv2 APIs (including all classes, methods, and properties)|
|[Manage Microsoft Defender Antivirus with the MpCmdRun.exe command-line tool](command-line-arguments-microsoft-defender-antivirus.md)|Instructions on using the dedicated command-line tool to manage and use Microsoft Defender Antivirus|

If running high CPU in Antimalware Service Executable | Microsoft Defender Antivirus Service | MsMpEng.exe, please review:
- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
