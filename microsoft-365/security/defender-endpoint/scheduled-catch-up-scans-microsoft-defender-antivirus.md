---
title: Schedule regular quick and full scans with Microsoft Defender Antivirus
description: Set up recurring (scheduled) scans, including when they should run and whether they run as full or quick scans
keywords: quick scan, full scan, quick vs full, schedule scan, daily, weekly, time, scheduled, recurring, regular
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localization_priority: Normal
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 05/05/2021
ms.reviewer: pauhijbr, ksarens
manager: dansimp
ms.technology: mde
ms.topic: how-to
---

# Configure scheduled quick or full Microsoft Defender Antivirus scans

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)


> [!NOTE]
> By default, Microsoft Defender Antivirus checks for an update 15 minutes before the time of any scheduled scans. You can [Manage the schedule for when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) to override this default. 

In addition to always-on real-time protection and [on-demand](run-scan-microsoft-defender-antivirus.md) scans, you can set up regular, scheduled scans. 

You can configure the type of scan, when the scan should occur, and if the scan should occur after a [protection update](manage-protection-updates-microsoft-defender-antivirus.md) or if the endpoint is being used. You can also specify when special scans to complete remediation should occur.

This article describes how to configure scheduled scans with Group Policy, PowerShell cmdlets, and WMI. You can also configure schedules scans with [Microsoft Endpoint Configuration Manager](/configmgr/protect/deploy-use/endpoint-antimalware-policies#scheduled-scans-settings) or [Microsoft Intune](/mem/intune/configuration/device-restrictions-windows-10).

## To configure the Group Policy settings described in this article

1. On your Group Policy management machine, in the Group Policy Editor, go to **Computer configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Scan**.

2. Right-click the Group Policy Object you want to configure, and then select **Edit**.

3. Specify settings for the Group Policy Object, and then select **OK**. 

4. Repeat steps 1-4 for each setting you want to configure.

5. Deploy your Group Policy Object as you normally do. If you need help with Group Policy Objects, see [Create a Group Policy Object](/windows/security/threat-protection/windows-firewall/create-a-group-policy-object).

Also see the [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) and [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md) topics.

## Quick scan versus full scan and custom scan

When you set up scheduled scans, you can set up whether the scan should be a full or quick scan.


|Quick scan  |Full scan  | Custom scan |
|---------|---------|---------|
|A quick scan looks at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders. <p>In most cases, a quick scan is sufficient and is recommended for scheduled scans. |A full scan starts by running a quick scan and then continues with a sequential file scan of all mounted fixed disks and removable/network drives (if the full scan is configured to do so). <p>A full scan can take a few hours or days to complete, depending on the amount and type of data that needs to be scanned.<p>When the full scan is complete, new security intelligence is available, and a new scan is required to make sure that no other threats are detected with the new security intelligence.   | A custom scan is a quick scan that runs on the files and folders you specify. For example, you can opt to scan a USB drive, or a specific folder on your device's local drive. <p> | 

>[!NOTE]
>By default, quick scans run on mounted removable devices, such as USB drives. Scanning mapped network drives only works for drives that are mapped on a system level. Learn more (and add a pointer to the section from Update #1). For more information, see [Configure Microsoft Defender Antivirus scanning options](configure-advanced-scan-types-microsoft-defender-antivirus.md#scanning-mapped-network-drives) 

### How do I know which scan type to choose?

Use the following table to choose a scan type.


|Scenario  |Recommended scan type  |
|---------|---------|
|You want to set up regular, scheduled scans     | Quick scan <p>A quick scan checks the processes, memory, profiles, and certain locations on the device. Combined with [always-on real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md), a quick scan helps provide strong coverage both for malware that starts with the system and kernel-level malware. Real-time protection reviews files when they are opened and closed, and whenever a user navigates to a folder.         |
|Threats, such as malware, are detected on a device     | Full scan <p>A full scan can help identify whether there are any inactive components that require a more thorough clean-up.         |
|You want to run an [on-demand scan](run-scan-microsoft-defender-antivirus.md)     | Full scan  <p>A full scan looks at all files on the device disk, including files that are stale, archived, and not accessed on a daily basis.      |
| You want to make sure a portable device, such as a USB drive, does not contain malware | Custom scan <p>A custom scan enables you to select specific locations, folders, or files and runs a quick scan. |

### What else do I need to know about quick and full scans?

- Malicious files can be stored in locations that are not included in a quick scan. However, always-on real-time protection reviews all files that are opened and closed, and any files that are in folders that are accessed by a user. The combination of real-time protection and a quick scan helps provide strong protection against malware.

- On-access protection with [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md) helps ensure that all the files accessed on the system are being scanned with the latest security intelligence and cloud machine learning models.

- When real-time protection detects malware and the extent of the affected files is not determined initially, Microsoft Defender Antivirus initiates a full scan as part of the remediation process.

- A full scan can detect malicious files that were not detected by other scans, such as a quick scan. However, a full scan can take a while and use valuable system resources to complete.

- If a device is offline for an extended period of time, a full scan can take longer to complete. 

## Set up scheduled scans

Scheduled scans run on the day and time that you specify. You can use Group Policy, PowerShell, and WMI to configure scheduled scans.

> [!NOTE]
> If a device is unplugged and running on battery during a scheduled full scan, the scheduled scan will stop with event 1002, which states that the scan stopped before completion. Microsoft Defender Antivirus will run a full scan at the next scheduled time.

### Use Group Policy to schedule scans

|Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
|Scan | Specify the scan type to use for a scheduled scan | Quick scan |
|Scan | Specify the day of the week to run a scheduled scan | Specify the day (or never) to run a scan. | Never |
|Scan | Specify the time of day to run a scheduled scan | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.). | 2 a.m. |
|Root | Randomize scheduled task times |In Microsoft Defender Antivirus, randomize the start time of the scan to any interval from 0 to 4 hours. <p>In [SCEP](/mem/intune/protect/certificates-scep-configure), randomize scans to any interval plus or minus 30 minutes. This can be useful in virtual machines or VDI deployments. | Enabled |


### Use PowerShell cmdlets to schedule scans

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanParameters
Set-MpPreference -ScanScheduleDay
Set-MpPreference -ScanScheduleTime
Set-MpPreference -RandomizeScheduleTaskTimes

```

For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

### Use Windows Management Instruction (WMI) to schedule scans

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
ScanParameters
ScanScheduleDay
ScanScheduleTime
RandomizeScheduleTaskTimes
```

For more information and allowed parameters, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)


## Start scheduled scans only when the endpoint is not in use

You can set the scheduled scan to only occur when the endpoint is turned on but not in use with Group Policy, PowerShell, or WMI.

> [!NOTE]
> These scans will not honor the CPU throttling configuration and take full advantage of the resources available to complete the scan as fast as possible.

### Use Group Policy to schedule scans

|Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
|Scan | Start the scheduled scan only when computer is on but not in use | Scheduled scans will not run, unless the computer is on but not in use | Enabled |

### Use PowerShell cmdlets

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanOnlyIfIdleEnabled
```

For more information, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/).

### Use Windows Management Instruction (WMI)

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
ScanOnlyIfIdleEnabled
```

For more information about APIs and allowed parameters, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal).

<a id="remed"></a>
## Configure when full scans should be run to complete remediation

Some threats might require a full scan to complete their removal and remediation. You can specify when these scans should occur with Group Policy, PowerShell, or WMI.

### Use Group Policy to schedule remediation-required scans

| Location | Setting | Description | Default setting (if not configured) |
|---|---|---|---|
|Remediation | Specify the day of the week to run a scheduled full scan to complete remediation | Specify the day (or never) to run a scan. | Never |
|Remediation | Specify the time of day to run a scheduled full scan to complete remediation | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.) | 2 a.m. |

### Use PowerShell cmdlets

Use the following cmdlets:

```PowerShell
Set-MpPreference -RemediationScheduleDay
Set-MpPreference -RemediationScheduleTime
```

See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/) for more information on how to use PowerShell with Microsoft Defender Antivirus.

### Use Windows Management Instruction (WMI)

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
RemediationScheduleDay
RemediationScheduleTime
```

For more information and allowed parameters, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal).


## Set up daily quick scans

You can enable a daily quick scan that can be run in addition to your other scheduled scans with Group Policy, PowerShell, or WMI.

### Use Group Policy to schedule daily scans

|Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
|Scan | Specify the interval to run quick scans per day | Specify how many hours should elapse before the next quick scan. For example, to run every two hours, enter **2**, for once a day, enter **24**. Enter **0** to never run a daily quick scan. | Never |
|Scan | Specify the time for a daily quick scan | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.) | 2 a.m. |

### Use PowerShell cmdlets to schedule daily scans

Use the following cmdlets:

```PowerShell
Set-MpPreference -ScanScheduleQuickScanTime
```

For more information about how to use PowerShell with Microsoft Defender Antivirus, see [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](/powershell/module/defender/).

### Use Windows Management Instruction (WMI) to schedule daily scans

Use the [**Set** method of the **MSFT_MpPreference**](/previous-versions/windows/desktop/legacy/dn455323(v=vs.85)) class for the following properties:

```WMI
ScanScheduleQuickScanTime
```

For more information and allowed parameters, see [Windows Defender WMIv2 APIs](/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal).


## Enable scans after protection updates

You can force a scan to occur after every [protection update](manage-protection-updates-microsoft-defender-antivirus.md) with Group Policy.

### Use Group Policy to schedule scans after protection updates

|Location | Setting | Description | Default setting (if not configured)|
|:---|:---|:---|:---|
|Signature updates | Turn on scan after Security intelligence update | A scan will occur immediately after a new protection update is downloaded | Enabled |

## See also

- [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md)
- [Configure and run on-demand Microsoft Defender Antivirus scans](run-scan-microsoft-defender-antivirus.md)
- [Configure Microsoft Defender Antivirus scanning options](configure-advanced-scan-types-microsoft-defender-antivirus.md)
- [Manage Microsoft Defender Antivirus updates and apply baselines](manage-updates-baselines-microsoft-defender-antivirus.md)
- [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) 
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)