---
title: Enable and configure Microsoft Defender Antivirus protection features
description: Enable behavior-based, heuristic, and real-time protection in Microsoft Defender AV.
keywords: heuristic, machine learning, behavior monitor, real-time protection, always-on, Microsoft Defender Antivirus, antimalware, security, defender
ms.prod: m365-security
ms.technology: mde
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.topic: article
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.collection: M365-security-compliance
---

# Configure behavioral, heuristic, and real-time protection


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus 

**Platforms**
- Windows

Microsoft Defender Antivirus uses several methods to provide threat protection:

- Cloud protection for near-instant detection and blocking of new and emerging threats
- Always-on scanning, using file and process behavior monitoring and other heuristics (also known as "real-time protection")
- Dedicated protection updates based on machine learning, human and automated big-data analysis, and in-depth threat resistance research

You can configure how Microsoft Defender Antivirus uses these methods with Group Policy, System Center Configuration Manage, PowerShell cmdlets, and Windows Management Instrumentation (WMI).

This section covers configuration for always-on scanning, including how to detect and block apps that are deemed unsafe, but may not be detected as malware.

See [Use next-gen Microsoft Defender Antivirus technologies through cloud protection](cloud-protection-microsoft-defender-antivirus.md) for how to enable and configure Microsoft Defender Antivirus cloud protection.

## In this section

| Topic|Description |
|---|---|
| [Detect and block potentially unwanted applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md)| Detect and block apps that may be unwanted in your network, such as adware, browser modifiers and toolbars, and rogue or fake antivirus apps |
| [Enable and configure Microsoft Defender Antivirus protection capabilities](configure-real-time-protection-microsoft-defender-antivirus.md)|Enable and configure real-time protection, heuristics, and other always-on Microsoft Defender Antivirus monitoring features |

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
