---
title: Review the results of Microsoft Defender Antivirus scans
description: Review the results of scans using Microsoft Endpoint Configuration Manager, Microsoft Intune, or the Windows Security app
ms.service: defender-endpoint
ms.localizationpriority: medium
author: siosulli
ms.author: siosulli
ms.custom: nextgen
ms.date: 12/11/2023
ms.reviewer: 
manager: deniseb
ms.subservice: ngp
ms.topic: conceptual
ms.collection: 
- m365-security
- tier2
- mde-ngp
search.appverid: met150
---

# Review Microsoft Defender Antivirus scan results

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](defender-endpoint-plan-1.md)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](https://www.microsoft.com/en-us/security/business/endpoint-security/microsoft-defender-business)
- [Microsoft Defender for Individuals](https://www.microsoft.com/en-us/microsoft-365/microsoft-defender-for-individuals)
- [Microsoft Defender Antivirus](microsoft-defender-antivirus-windows.md)

**Platforms**

- Windows

After a Microsoft Defender Antivirus scan completes, whether it's an [on-demand](run-scan-microsoft-defender-antivirus.md) or [scheduled scan](scheduled-catch-up-scans-microsoft-defender-antivirus.md), the results are recorded and you can view the results.

## Use Microsoft Defender XDR to review scan results

To view the scan results using Microsoft Defender XDR Endpoint, follow the below process.

1. Sign in to [Microsoft Defender portal](https://security.microsoft.com)

2. Go to **Incidents & alerts** \> **Alerts**.

   You can view the scanned results under **Alerts**.

## Use Microsoft Intune to review scan results

To view the scan results using Microsoft Intune admin center, follow the below process.

1. Sign in to [Microsoft Intune admin center](https://intune.microsoft.com/#home).
1. Go to **Reports**.
1. Under **Endpoint security**, select **Microsoft Defender Antivirus**.
1. In the **Reports** tab, select **Detected malware**.
1. Select the **Severity** level from the dropdown list.

   By default **All severity** option is selected.
1. Select **Execution state** from the dropdown list.

   By default **All execution state** option is selected.
1. Select **Managed by** from the dropdown list.

   By default **All Managed by** option is selected.
1. Click on **Generate report**.

## Use Configuration Manager to review scan results

See [How to monitor Endpoint Protection status](/configmgr/protect/deploy-use/monitor-endpoint-protection).

## Use PowerShell cmdlets to review scan results

The following cmdlet returns each detection on the endpoint. If there are multiple detections of the same threat, each detection is listed separately, based on the time of each detection:

```PowerShell
Get-MpThreatDetection
```

:::image type="content" source="../../media/wdav-get-mpthreatdetection.png" alt-text="The PowerShell cmdlets and outputs" lightbox="../../media/wdav-get-mpthreatdetection.png":::

You can specify `-ThreatID` to limit the output to only show the detections for a specific threat.

If you want to list threat detections, but combine detections of the same threat into a single item, you can use the following cmdlet:

```PowerShell
Get-MpThreat
```

:::image type="content" source="../../media/wdav-get-mpthreat.png" alt-text="The PowerShell code" lightbox="../../media/wdav-get-mpthreat.png":::

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender Antivirus cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

## Use Windows Management Instruction (WMI) to review scan results

Use the [**Get** method of the **MSFT_MpThreat** and **MSFT_MpThreatDetection**](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal) classes.

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

- [Customize, initiate, and review the results of Microsoft Defender Antivirus scans and remediation](customize-run-review-remediate-scans-microsoft-defender-antivirus.md)
- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
