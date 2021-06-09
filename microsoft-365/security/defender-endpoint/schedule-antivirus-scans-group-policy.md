---
title: Schedule antivirus scans using Group Policy
description: Use Group Policy to set up antivirus scans
keywords: quick scan, full scan, schedule, group policy, antivirus
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

# Schedule antivirus scans using Group Policy

**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)


This article describes how to configure scheduled scans using Group Policy. To learn more about scheduling scans, see [Configure scheduled quick or full Microsoft Defender Antivirus scans](schedule-antivirus-scans.md). 

## To configure antivirus scans using Group Policy

1. On your Group Policy management machine, in the Group Policy Editor, go to **Computer configuration** > **Administrative Templates** > **Windows Components** > **Microsoft Defender Antivirus** > **Scan**.

2. Right-click the Group Policy Object you want to configure, and then select **Edit**.

3. Specify settings for the Group Policy Object, and then select **OK**. 

4. Repeat steps 1-4 for each setting you want to configure.

5. Deploy your Group Policy Object as you normally do. If you need help with Group Policy Objects, see [Create a Group Policy Object](/windows/security/threat-protection/windows-firewall/create-a-group-policy-object).

> [!TIP]
> See the [Manage when protection updates should be downloaded and applied](manage-protection-update-schedule-microsoft-defender-antivirus.md) and [Prevent or allow users to locally modify policy settings](configure-local-policy-overrides-microsoft-defender-antivirus.md) topics.

## Use Group Policy to schedule scans

|Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
|Scan | Specify the scan type to use for a scheduled scan | Quick scan |
|Scan | Specify the day of the week to run a scheduled scan | Specify the day (or never) to run a scan. | Never |
|Scan | Specify the time of day to run a scheduled scan | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.). | 2 a.m. |
|Root | Randomize scheduled task times |In Microsoft Defender Antivirus, randomize the start time of the scan to any interval from 0 to 4 hours. <p>In [SCEP](/mem/intune/protect/certificates-scep-configure), randomize scans to any interval plus or minus 30 minutes. This can be useful in virtual machines or VDI deployments. | Enabled |

## Use Group Policy to schedule scans for when an endpoint is not in use

|Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
|Scan | Start the scheduled scan only when computer is on but not in use | Scheduled scans will not run, unless the computer is on but not in use | Enabled |

## Use Group Policy to schedule remediation-required scans

| Location | Setting | Description | Default setting (if not configured) |
|---|---|---|---|
|Remediation | Specify the day of the week to run a scheduled full scan to complete remediation | Specify the day (or never) to run a scan. | Never |
|Remediation | Specify the time of day to run a scheduled full scan to complete remediation | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.) | 2 a.m. |

## Use Group Policy to schedule daily scans

|Location | Setting | Description | Default setting (if not configured) |
|:---|:---|:---|:---|
|Scan | Specify the interval to run quick scans per day | Specify how many hours should elapse before the next quick scan. For example, to run every two hours, enter **2**, for once a day, enter **24**. Enter **0** to never run a daily quick scan. | Never |
|Scan | Specify the time for a daily quick scan | Specify the number of minutes after midnight (for example, enter **60** for 1 a.m.) | 2 a.m. |

## Use Group Policy to schedule scans after protection updates

|Location | Setting | Description | Default setting (if not configured)|
|:---|:---|:---|:---|
|Signature updates | Turn on scan after Security intelligence update | A scan will occur immediately after a new protection update is downloaded | Enabled |

