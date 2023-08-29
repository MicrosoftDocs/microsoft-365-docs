---
title: Device health reporting in Microsoft Defender for Endpoint
description: Use the device health report to track device health, antivirus status and versions, OS platforms, and Windows 10 versions.
keywords: health state, antivirus, os platform, windows 10 version, version, health, compliance, state
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
ms.date: 09/06/2022 
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.subservice: mde
ms.reviewer: mkaminska
---

# Device health reports in Microsoft Defender for Endpoint

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

The Device Health report provides information about the devices in your organization. The report includes trending information showing the sensor health state, antivirus status, OS platforms, Windows 10 versions, and Microsoft Defender Antivirus update versions.

> [!IMPORTANT]
> For Windows&nbsp;Server&nbsp;2012&nbsp;R2 and Windows&nbsp;Server&nbsp;2016 to appear in device health reports, these devices must be onboarded using the modern unified solution package. For more information, see [New functionality in the modern unified solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution).

In the Microsoft 365 Security dashboard navigation panel, select **Reports**, and then open **Device health and compliance**.
The Device health and compliance dashboard is structured in two tabs:

- The [**Sensor health & OS** tab](device-health-sensor-health-os.md#sensor-health--os-tab) provides general operating system information, divided into three cards that display the following device attributes:
  - [Sensor health card](device-health-sensor-health-os.md#sensor-health-card)
  - [Operating systems and platforms card](device-health-sensor-health-os.md#operating-systems-and-platforms-card)
  - [Windows versions card](device-health-sensor-health-os.md#windows-versions-card)

- The [**Microsoft Defender Antivirus health** tab](device-health-microsoft-defender-antivirus-health.md#microsoft-defender-antivirus-health-tab) has eight cards that report on aspects of Microsoft Defender Antivirus:
  - [Antivirus mode card](device-health-microsoft-defender-antivirus-health.md#antivirus-mode-card)
  - [Antivirus engine version card](device-health-microsoft-defender-antivirus-health.md#antivirus-engine-version-card)
  - [Antivirus security intelligence version card](device-health-microsoft-defender-antivirus-health.md#antivirus-security-intelligence-version-card)
  - [Antivirus platform version card](device-health-microsoft-defender-antivirus-health.md#antivirus-platform-version-card)
  - [Recent antivirus scan results card](device-health-microsoft-defender-antivirus-health.md#recent-antivirus-scan-results-card)
  - [Antivirus engine updates card](device-health-microsoft-defender-antivirus-health.md#antivirus-engine-updates-card)
  - [Security intelligence updates card](device-health-microsoft-defender-antivirus-health.md#security-intelligence-updates-card)
  - [Antivirus platform updates card](device-health-microsoft-defender-antivirus-health.md#antivirus-platform-updates-card)

## Report access permissions

To access the Device health and antivirus compliance report in the Microsoft 365 Security dashboard, the following permissions are required:

| Permission name | Permission type |
|:---|:---|
| View Data | Threat and vulnerability management (TVM) |

To Assign these permissions:

1. Sign in to <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender</a> using account with Security administrator or Global administrator role assigned.
1. In the navigation pane, select **Settings** \> **Endpoints** \> **Roles** (under **Permissions**).
1. Select the role you'd like to edit.
1. Select **Edit**.
1. In **Edit role**, on the **General** tab, in **Role name**, type a name for the role.
1. In **Description** type a brief summary of the role.
1. In **Permissions**, select **View Data**, and under **View Data** select **Threat and vulnerability management** (TVM).

## See also

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

- [Create and manage roles for role-based access control](user-roles.md).
- [Export device antivirus health details API methods and properties](device-health-api-methods-properties.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
