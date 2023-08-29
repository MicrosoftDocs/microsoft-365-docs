---
title: Schedule antivirus scans using Group Policy
description: Use Group Policy to set up antivirus scans
keywords: quick scan, full scan, schedule, group policy, antivirus
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 03/06/2023
ms.reviewer: pauhijbr, ksarens
manager: dansimp
ms.subservice: mde
ms.topic: how-to
ms.collection: 
- m365-security
- tier2
search.appverid: met150
---

# Schedule antivirus scans using Group Policy

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- Microsoft Defender Antivirus

**Platforms**
- Windows

This article describes how to configure scheduled scans using Group Policy. To learn more about scheduling scans and about scan types, see [Configure scheduled quick or full Microsoft Defender Antivirus scans](schedule-antivirus-scans.md). 

## Configure antivirus scans using Group Policy

1. On your Group Policy management machine, in the Group Policy Editor, go to **Computer configuration** \> **Administrative Templates** \> **Windows Components** \> **Microsoft Defender Antivirus** \> **Scan**.

2. Right-click the Group Policy Object you want to configure, and then select **Edit**.

3. Specify settings for the Group Policy Object, and then select **OK**. 

4. Repeat steps 1-4 for each setting you want to configure.

5. Deploy your Group Policy Object as you normally do. If you need help with Group Policy Objects, see [Create a Group Policy Object](/windows/security/threat-protection/windows-firewall/create-a-group-policy-object).

> [!NOTE]
> When configuring scheduled scans, the setting **Start the scheduled scan only when computer is on but not in use**, which is enabled by default, can impact the expected scheduled time by requiring the machine to be idle first.
>
> For weekly scans, default behavior on Windows Server is to scan outside of automatic maintenance when the machine is idle. The default on Windows 10 and later is to scan during automatic maintenance when the machine is idle. To change this behavior, modify the settings by disabling **ScanOnlyIfIdle**, and then define a schedule.

For more information, see the [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) and [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md) topics.

## Group Policy settings for scheduling scans

| Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
| Scan | Specify the scan type to use for a scheduled scan | Quick scan |
| Scan | Specify the day of the week to run a scheduled scan | Specify the day (or never) to run a scan. | Never |
| Scan | Specify the time of day to run a scheduled scan | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.). | 2 a.m. |
| Root | Randomize scheduled task times |In Microsoft Defender Antivirus, randomize the start time of the scan to any interval from 0 to 23 hours. By default, scheduled tasks will begin at a random time within four hours of the time specified in Task Scheduler. | Enabled |

## Group Policy settings for scheduling scans for when an endpoint is not in use

| Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
| Scan | Start the scheduled scan only when computer is on but not in use | Scheduled scans will not run, unless the computer is on but not in use | Enabled |

> [!NOTE]
> When you schedule scans for times when endpoints are not in use, scans do not honor the CPU throttling configuration and will take full advantage of the resources available to complete the scan as fast as possible.

## Group Policy settings for scheduling remediation-required scans

| Location | Setting | Description | Default setting (if not configured) |
|---|---|---|---|
| Remediation | Specify the day of the week to run a scheduled full scan to complete remediation | Specify the day (or never) to run a scan. | Never |
| Remediation | Specify the time of day to run a scheduled full scan to complete remediation | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.) | 2 a.m. |

## Group Policy settings for scheduling daily scans

| Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
| Scan | Specify the interval to run quick scans per day | Specify how many hours should elapse before the next quick scan. For example, to run every two hours, enter **2**, for once a day, enter **24**. Enter **0** to never run a daily quick scan. | Never |
| Scan | Specify the time for a daily quick scan | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.) | 2 a.m. |

## Group Policy settings for scheduling scans after protection updates

| Location | Setting | Description | Default setting (if not configured)|
|:---|:---|:---|:---|
| Signature updates | Turn on scan after Security intelligence update | A scan will occur immediately after a new protection update is downloaded | Enabled |

> [!TIP]
> If you're looking for Antivirus related information for other platforms, see:
> - [Set preferences for Microsoft Defender for Endpoint on macOS](mac-preferences.md)
> - [Microsoft Defender for Endpoint on Mac](microsoft-defender-endpoint-mac.md)
> - [macOS Antivirus policy settings for Microsoft Defender Antivirus for Intune](/mem/intune/protect/antivirus-microsoft-defender-settings-macos)
> - [Set preferences for Microsoft Defender for Endpoint on Linux](linux-preferences.md)
> - [Microsoft Defender for Endpoint on Linux](microsoft-defender-endpoint-linux.md)
> - [Configure Defender for Endpoint on Android features](android-configure.md)
> - [Configure Microsoft Defender for Endpoint on iOS features](ios-configure-features.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
