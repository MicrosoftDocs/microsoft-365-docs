---
title: Configure Microsoft Defender Antivirus using Microsoft Intune
description: Use Microsoft Intune to configure Microsoft Defender Antivirus and Endpoint Protection
keywords: scep, intune, endpoint protection, configuration
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 12/16/2021
ms.reviewer: phuijbr, oogunrinde
manager: dansimp
ms.subservice: mde
audience: ITPro
ms.topic: how-to
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Use Microsoft Intune to configure and manage Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

You can use the Microsoft Intune family of products to configure Microsoft Defender Antivirus scans, like [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Configuration Manager](/mem/configmgr/core/understand/introduction).

## Configure Microsoft Defender Antivirus scans in Intune

1. Go to the Microsoft Intune admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)), and sign in.

2. Navigate to **Endpoint Security**.

3. Under **Manage**, choose **Antivirus**.

4. Select your Microsoft Defender Antivirus policy.

5. Under **Manage**, choose **Properties**.

6. Next to **Configuration settings**, choose **Edit**.

   > [!IMPORTANT]
   > AllowOnAccessProtection and AllowIntrusionPreventionSystem antivirus settings are officially being deprecated and as such cannot be configured. 

7. Expand the **Scan** section, and review or edit your scanning settings.

8. Choose **Review + save**.

> [!TIP]
> Need help? See [Manage endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security).

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## Related articles

- [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md)
- [Reference articles for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)

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
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
