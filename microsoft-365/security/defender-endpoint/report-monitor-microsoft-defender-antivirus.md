---
title: Monitor and report on Microsoft Defender Antivirus protection
description: Use Configuration Manager or security information and event management (SIEM) tools to consume reports, and monitor Microsoft Defender Antivirus with PowerShell and WMI.
keywords: siem, monitor, report, Microsoft Defender AV, Microsoft Defender Antivirus
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer:
manager: dansimp
ms.subservice: mde
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 03/13/2023
---

# Report on Microsoft Defender Antivirus

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

Microsoft Defender Antivirus is built into Windows 10, Windows 11, Windows Server 2019, Windows Server 2022, and Windows Server 2016. Microsoft Defender Antivirus is of your next-generation protection in Microsoft Defender for Endpoint. Next-generation protection helps protect your devices from software threats like viruses, malware, and spyware across email, apps, the cloud, and the web.

With Microsoft Defender Antivirus, you have several options for reviewing protection status and alerts. You can use Microsoft Configuration Manager to [monitor Microsoft Defender Antivirus](/configmgr/protect/deploy-use/monitor-endpoint-protection) or [create email alerts](/configmgr/protect/deploy-use/endpoint-configure-alerts). Or, you can monitor protection using [Microsoft Intune](/intune/introduction-intune). When endpoints are onboarded to Defender for Endpoint, alerts are visible in Microsoft 365 Defender [unified alert and incident queues](/microsoft-365/security/defender/incident-queue).

Within the Microsoft 365 Defender portal, reporting is also available for Microsoft Defender for Endpoint onboarded endpoints across platforms that include antivirus engine versions, security intelligence versions, and Microsoft Defender Antivirus platform versions via [Device Health reports](/microsoft-365/security/defender-endpoint/device-health-reports).

If you have a third-party security information and event management (SIEM) server, you can also consume [Windows Defender client events](/windows/win32/events/windows-events).

Windows events comprise several security event sources, including Security Account Manager (SAM) events ([enhanced for Windows 10](/windows/whats-new/whats-new-windows-10-version-1507-and-1511), also see the [Security auditing](/windows/security/threat-protection/auditing/security-auditing-overview) topic) and  [Windows Defender events](troubleshoot-microsoft-defender-antivirus.md).

These events can be centrally aggregated using the [Windows event collector](/windows/win32/wec/windows-event-collector). Often, SIEM servers have connectors for Windows events, allowing you to correlate all security events in your SIEM server.

You can also [monitor malware events using the Malware Assessment solution in Log Analytics](/security/benchmark/azure/security-control-logging-monitoring).

For monitoring or determining status with PowerShell, WMI, or Microsoft Azure, see the [(Deployment, management, and reporting options table)](deploy-manage-report-microsoft-defender-antivirus.md#ref2).

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

> [!NOTE]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)

## See also

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Deploy Microsoft Defender Antivirus](deploy-manage-report-microsoft-defender-antivirus.md)
