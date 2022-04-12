---
title: Schedule regular quick and full scans with Microsoft Defender Antivirus
description: Set up recurring (scheduled) scans, including when they should run and whether they run as full or quick scans
keywords: quick scan, full scan, quick vs full, schedule scan, daily, weekly, time, scheduled, recurring, regular
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 02/22/2022
ms.reviewer: pauhijbr, ksarens, mkaminska
manager: dansimp
ms.technology: mde
ms.topic: how-to
ms.collection: M365-security-compliance
---

# Configure scheduled quick or full Microsoft Defender Antivirus scans

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

In addition to always-on, real-time protection and [on-demand antivirus](run-scan-microsoft-defender-antivirus.md) scans, you can set up regular, scheduled antivirus scans. You can configure the type of scan, when the scan should occur, and if the scan should occur after a [protection update](manage-protection-updates-microsoft-defender-antivirus.md) or when an endpoint is not being used. You can also set up special scans to complete remediation actions if needed.

## What do you want to do?

- [Learn about quick scans, full scans, and custom scans](#quick-scan-full-scan-and-custom-scan)
- [Use Group Policy to schedule antivirus scans](schedule-antivirus-scans-group-policy.md)
- [Use Windows PowerShell to Schedule antivirus scans](schedule-antivirus-scans-powershell.md)
- [Use Windows Management Instrumentation to schedule antivirus scans](schedule-antivirus-scans-wmi.md)

## Keep the following points in mind

- By default, Microsoft Defender Antivirus checks for an update 15 minutes before the time of any scheduled scans. You can [Manage the schedule for when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) to override this default.

- If a device is unplugged and running on battery during a scheduled full scan, the scheduled scan will stop with event 1002, which states that the scan stopped before completion. Microsoft Defender Antivirus will run a full scan at the next scheduled time.

## Quick scan, full scan, and custom scan

When you set up scheduled scans, you can specify whether the scan should be a full or quick scan. In most cases, a quick scan is recommended.

<br/><br/>

|Quick scan|Full scan|Custom scan|
|---|---|---|
|(Recommended) A quick scan looks at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders. <br/><br/>Combined with always-on, real-time protection, which reviews files when they are opened and closed, and whenever a user navigates to a folder, a quick scan helps provide strong protection against malware that starts with the system and kernel-level malware.<br/><br/>In most cases, a quick scan is sufficient and is the recommended option for scheduled scans.|A full scan starts by running a quick scan and then continues with a sequential file scan of all mounted fixed disks and removable/network drives (if the full scan is configured to do so).<br/><br/>A full scan can take a few hours or days to complete, depending on the amount and type of data that needs to be scanned.<br/><br/>When the full scan is complete, new security intelligence is available, and a new scan is then required to make sure that no other threats are detected with the new security intelligence.<br/><br/>Because of the time and resources involved in a full scan, in general, Microsoft does not recommend scheduling full scans.|A custom scan runs on files and folders that you specify. For example, you can choose to scan a USB drive, or a specific folder on your device's local drive.|

> [!NOTE]
> By default, quick scans run on mounted removable devices, such as USB drives.

## How do I know which scan type to choose?

Use the following table to choose a scan type.
<br/><br/>

|Scenario|Recommended scan type|
|---|---|
|You want to set up regular, scheduled scans|Quick scan <p> A quick scan checks the processes, memory, profiles, and certain locations on the device. Combined with [always-on real-time protection](configure-real-time-protection-microsoft-defender-antivirus.md), a quick scan helps provide strong coverage both for malware that starts with the system and kernel-level malware. Real-time protection reviews files when they are opened and closed, and whenever a user navigates to a folder.|
|Threats, such as malware, are detected on an individual device|Quick scan <p> In most cases, a quick scan will catch and clean up detected malware.|
|You want to run an [on-demand scan](run-scan-microsoft-defender-antivirus.md)|Quick scan|
|You want to make sure a portable device, such as a USB drive, does not contain malware|Custom scan <p> A custom scan enables you to select specific locations, folders, or files, and runs a quick scan.|

## What else do I need to know about quick and full scans?

- Malicious files can be stored in locations that are not included in a quick scan. However, always-on real-time protection reviews all files that are opened and closed, and any files that are in folders that are accessed by a user. The combination of real-time protection and a quick scan helps provide strong protection against malware.

- On-access protection with [cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md) helps ensure that all the files accessed on the system are being scanned with the latest security intelligence and cloud machine learning models.

- When real-time protection detects malware and the extent of the affected files is not determined initially, Microsoft Defender Antivirus initiates a full scan as part of the remediation process.

- A full scan can detect malicious files that were not detected by other scans, such as a quick scan. However, a full scan can take a while and use valuable system resources to complete.

- If a device is offline for an extended period of time, a full scan can take longer to complete.

> [!TIP]
> If you’re looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)