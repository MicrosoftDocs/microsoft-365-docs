---
title: Overview of next-generation protection in Microsoft Defender for Endpoint
description: Get an overview of next-generation protection in Microsoft Defender for Endpoint. Reinforce the security perimeter of your network by using next-generation protection designed to catch all types of emerging threats.
ms.service: microsoft-365-security
ms.localizationpriority: high
ms.topic: conceptual
author: denisebmsft
ms.author: deniseb
ms.reviewer: mkaminska
manager: dansimp
ms.custom: nextgen
ms.subservice: mde
ms.collection: 
- m365-security
- tier1
search.appverid: met150
ms.date: 07/05/2023
---

# Next-generation protection overview

**Applies to**

- Microsoft Defender Antivirus
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/index.yml)

**Platforms**
- Windows

Microsoft Defender for Endpoint includes next-generation protection to reinforce the security perimeter of your network. Next-generation protection was designed to catch all types of emerging threats. In addition to Microsoft Defender Antivirus, your next-generation protection services include the following capabilities:

- [Behavior-based, heuristic, and real-time antivirus protection](configure-protection-features-microsoft-defender-antivirus.md), which includes always-on scanning using file and process behavior monitoring and other heuristics (also known as *real-time protection*). It also includes detecting and blocking apps that are deemed unsafe, but might not be detected as malware.
- [Cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md), which includes near-instant detection and blocking of new and emerging threats.
- [Dedicated protection and product updates](microsoft-defender-antivirus-updates.md), which includes updates related to keeping Microsoft Defender Antivirus up to date.

Next-generation protection is included in both [Defender for Endpoint Plan 1 and Plan 2](defender-endpoint-plan-1-2.md). Next-generation protection is also included in Microsoft Defender for Business and Microsoft 365 Business Premium (See [Security features in Microsoft 365 plans for small and medium-sized businesses](../defender-business/compare-mdb-m365-plans.md)).

To configure next-generation protection services, see [Configure Microsoft Defender Antivirus features](configure-microsoft-defender-antivirus-features.md).

If you're looking for antivirus-related information for other platforms, see one of the following articles:

- [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
- [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
- [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
- [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
- [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
- [Configure Defender for Endpoint on Android features](android-configure.md)
- [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

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
> See [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).


[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
