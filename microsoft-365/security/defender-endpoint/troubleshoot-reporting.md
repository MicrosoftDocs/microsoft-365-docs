---
title: Troubleshoot problems with reporting tools for Microsoft Defender Antivirus
description: Identify and solve common problems when attempting to report in Microsoft Defender Antivirus protection status in Update Compliance
ms.service: defender-endpoint
ms.localizationpriority: medium
ms.topic: conceptual
author: siosulli
ms.author: siosulli
ms.custom: nextgen
ms.reviewer: yongrhee
manager: deniseb
ms.subservice: ngp
ms.collection: 
- m365-security
- tier3
- mde-ngp
search.appverid: met150
ms.date: 02/18/2024
---

# Troubleshoot Microsoft Defender Antivirus reporting in Update Compliance

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows
- Windows Server

> [!IMPORTANT]
> On March 31, 2020, the Microsoft Defender Antivirus reporting feature of Update Compliance will be removed. You can continue to define and review security compliance policies using [Microsoft Intune family of products](https://www.microsoft.com/security/business/endpoint-management/microsoft-intune), which allows finer control over security features and updates.

You can use Microsoft Defender Antivirus with Update Compliance. You'll see status for E3, B, F1, VL, and Pro licenses. However, for E5 licenses, you need to use the [Microsoft Defender for Endpoint portal](/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). To learn more about licensing options, see [Windows 10 product licensing options](https://www.microsoft.com/licensing/product-licensing/windows10.aspx).

When you use [Windows Analytics Update Compliance to obtain reporting into the protection status of devices or endpoints](/windows/deployment/update/update-compliance-using#wdav-assessment) in your network that are using Microsoft Defender Antivirus, you might encounter problems or issues.

Typically, the most common indicators of a problem are:

- You only see a small number or subset of all the devices you were expecting to see
- You do not see any devices at all
- The reports and information you do see is outdated (older than a few days)

For common error codes and event IDs related to the Microsoft Defender Antivirus service that are not related to Update Compliance, see [Microsoft Defender Antivirus events](/microsoft-365/security/defender-endpoint/troubleshoot-microsoft-defender-antivirus/).

There are three steps to troubleshooting these problems:

1. Confirm that you have met all prerequisites
2. Check your connectivity to the Windows Defender cloud-based service
3. Submit support logs

> [!IMPORTANT]
> It typically takes 3 days for devices to start appearing in Update Compliance.

## Confirm prerequisites

In order for devices to properly show up in Update Compliance, you have to meet certain prerequisites for both the Update Compliance service and for Microsoft Defender Antivirus:

>[!div class="checklist"]
>
> - Endpoints are using Microsoft Defender Antivirus as the sole antivirus protection app. [Using any other antivirus app will cause Microsoft Defender Antivirus to disable itself](microsoft-defender-antivirus-compatibility.md) and the endpoint will not be reported in Update Compliance.
> - [Cloud-delivered protection is enabled](enable-cloud-protection-microsoft-defender-antivirus.md).
> - Endpoints can [connect to the Microsoft Defender Antivirus cloud](configure-network-connections-microsoft-defender-antivirus.md#validate-connections-between-your-network-and-the-cloud)
> - If the endpoint is running Windows 10 version 1607 or earlier, [Windows 10 diagnostic data must be set to the Enhanced level](/windows/configuration/configure-windows-diagnostic-data-in-your-organization#enhanced-level).
> - It has been 3 days since all requirements have been met

"You can use Microsoft Defender Antivirus with Update Compliance. You'll see status for E3, B, F1, VL, and Pro licenses. However, for E5 licenses, you need to use the Microsoft Defender for Endpoint portal (/windows/security/threat-protection/microsoft-defender-atp/configure-endpoints). To learn more about licensing options, see Windows 10 product licensing options"

If the above prerequisites have all been met, you might need to proceed to the next step to collect diagnostic information and send it to us.

> [!div class="nextstepaction"]
> [Collect diagnostic data for Update Compliance troubleshooting](collect-diagnostic-data.md)

> [!TIP]
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

## Related topics

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Deploy Microsoft Defender Antivirus](deploy-manage-report-microsoft-defender-antivirus.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
