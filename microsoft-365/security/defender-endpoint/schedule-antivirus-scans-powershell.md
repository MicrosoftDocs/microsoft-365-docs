---
title: Schedule antivirus scans using PowerShell
description: Schedule antivirus scans using PowerShell
keywords: quick scan, full scan, antivirus, schedule, PowerShell
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 06/09/2021
ms.reviewer: pauhijbr, ksarens
manager: dansimp
ms.technology: mde
ms.topic: how-to
---

# Schedule antivirus scans using PowerShell

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

This article describes how to configure scheduled scans using PowerShell cmdlets. To learn more about scheduling scans and about scan types, see [Configure scheduled quick or full Microsoft Defender Antivirus scans](schedule-antivirus-scans.md). 

## Use PowerShell cmdlets to schedule scans

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanParameters
Set-MpPreference -ScanScheduleDay
Set-MpPreference -ScanScheduleTime
Set-MpPreference -RandomizeScheduleTaskTimes

```

For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

## Use PowerShell cmdlets to schedule scans when an endpoint is not in use

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanOnlyIfIdleEnabled
```

For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/).

## Configure when full scans should be run to complete remediation

Some threats might require a full scan to complete their removal and remediation. You can specify when these scans should occur with Group Policy, PowerShell, or WMI.

## Use PowerShell cmdlets to schedule scans to complete remediation

Use the following cmdlets:

```PowerShell
Set-MpPreference -RemediationScheduleDay
Set-MpPreference -RemediationScheduleTime
```

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

## Use PowerShell cmdlets to schedule daily scans

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanScheduleQuickScanTime
```

For more information about how to use PowerShell with Microsoft Defender Antivirus, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/).


