---
title: Configure Microsoft Defender Antivirus features
description: You can configure Microsoft Defender Antivirus features with Intune, Microsoft Configuration Manager, Group Policy, and PowerShell.
keywords: Microsoft Defender Antivirus, antimalware, security, defender, configure, configuration, Config Manager, Microsoft Configuration Manager, SCCM, Intune, MDM, mobile device management, GP, group policy, PowerShell
ms.service: microsoft-365-security
ms.subservice: mde
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.topic: conceptual
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 04/08/2021
---

# Configure Microsoft Defender Antivirus features


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**
- Windows

You can configure Microsoft Defender Antivirus with a number of tools, such as:

- Microsoft Intune
- Microsoft Configuration Manager
- Group Policy
- PowerShell cmdlets
- Windows Management Instrumentation (WMI)
- [Tenant attach](/mem/configmgr/tenant-attach/)

The following broad categories of features can be configured:

- Cloud-delivered protection. See [Cloud-delivered protection and Microsoft Defender Antivirus](cloud-protection-microsoft-defender-antivirus.md)

- Always-on real-time protection, including behavioral, heuristic, and machine learning-based protection. See [Configure behavioral, heuristic, and real-time protection](configure-protection-features-microsoft-defender-antivirus.md).

- How end users interact with the client on individual endpoints. See the following resources:
  - [Prevent users from seeing or interacting with the Microsoft Defender Antivirus user interface](prevent-end-user-interaction-microsoft-defender-antivirus.md)
  - [Prevent or allow users to locally modify Microsoft Defender Antivirus policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)

> [!TIP]
> Review [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md).
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are:
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
>

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
