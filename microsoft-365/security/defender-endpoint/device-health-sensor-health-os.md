---
title: Device health Sensor health & OS report
description: Use the device health report to track device health, OS platforms, and Windows 10 versions.
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

# Device health, Sensor health & OS report

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

- The [**Sensor health & OS** tab](#sensor-health--os-tab) provides general operating system information, divided into three cards that display the following device attributes:
  - [Sensor health card](#sensor-health-card)
  - [Operating systems and platforms card](#operating-systems-and-platforms-card)
  - [Windows versions card](#windows-versions-card)

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

For more information about user role management, see [Create and manage roles for role-based access control](user-roles.md).

## Sensor health & OS tab

Sensor health and OS cards report on general operating system health, which includes detection sensor health, up-to-date versus out-of-date operating systems, and Windows 10 versions.

>:::image type="content" source="images/device-health-sensor-health-os-tab.png" alt-text="Shows Sensor health and Operating system information." lightbox="images/device-health-sensor-health-os-tab.png":::

Each of the three cards on the **Sensor health** tab has two reporting sections, _Current state_ and _device trends_, presented as graphs:

### Current state graph

In each card, the Current state (referred to in some documentation as _Device summary_) is the top, horizontal bar graph. Current state is a snapshot that shows information collected about devices in your organization, scoped to the current day. This graph represents the distribution of devices across your organization that report status or are detected to be in a specific state.

>:::image type="content" source="images/device-health-sensor-health-os-current-state-graph.png" alt-text="Shows the current state graph." lightbox="images/device-health-sensor-health-os-current-state-graph.png":::

### Device trends graph

The lower graph on each of the three cards isn't named, but is commonly known as _device trends_. The device trends graph depicts the collection of devices across your organization, throughout the time span indicated directly above the graph.
By default, the device trends graph displays device information from the 30-day period, ending in the latest full day. To gain a better perspective about trends occurring in your organization, you can fine-tune the reporting period by adjusting the time period shown. To adjust the time period, open the filter and select a start day and end day.

>:::image type="content" source="images/device-health-sensor-health-os-device-trends-graph.png" alt-text="Shows the Device Health versions trends graph." lightbox="images/device-health-sensor-health-os-device-trends-graph.png":::

### Filtering data

Use the provided filters to include or exclude devices with certain attributes. You can select multiple filters to apply from the device attributes. When applied, filters apply to all three cards in the report.

For example, to show data about Windows 10 devices with Active sensor health state:

1. Under **Filters** > **Sensor health state** > **Active**.
2. Then select **OS platforms** > **Windows 10**.
3. Select **Apply**.

### Sensor health card

The Sensor health card displays information about the sensor state on devices. Sensor health provides an aggregate view of devices that are:

- active
- inactive
- experiencing impaired communications
- or where no sensor data is reported

Devices that are either experiencing impaired communications, or devices from which no sensor data is detected could expose your organization to risks, and warrant investigation. Likewise, devices that are inactive for extended periods of time could expose your organization to threats due to out-of-date software. Devices that are inactive for long periods of time also warrant investigation.

> [!NOTE]
>
> In a small percentage of cases, the numbers and distributions reported when clicking on the horizontal Sensor health bar graph will be out of synch with the values shown in the **Device inventory** page. The disparity in values can occur because the Sensor Health Reports has a different refresh cadence than the Device Inventory page.

### Operating systems and platforms card

This card shows the distribution of operating systems and platforms that exist within your organization.
_OS systems and platforms_ can give useful insights into whether devices in your organization are running current or outdated operating systems. When new operating systems are introduced, security enhancements are frequently included that improve your organization's posture against security threats.

For example, Secure Boot (introduced in Windows 8) practically eliminated the threat from some of the most harmful types of malware. Improvements in Windows 10 provide PC manufacturers the option to prevent users from disabling Secure Boot. Preventing users from disabling Secure Boot removes almost any chance of malicious rootkits or other low-level malware from infecting the boot process.

Ideally, the "Current state" graph shows that the number of operating systems is weighted in favor of more current OS over older versions. Otherwise, the trends graph indicates that new systems are being adopted and/or older systems are being updated or replaced.

### Windows versions card

The Windows 10 versions card shows the distribution of Windows devices and their versions in your organization.
In the same way that an upgrade from Windows 8 to Windows 10 improves security in your organization, changing from early releases of Windows to more current versions improves your posture against possible threats.

The Windows version trend graph can help you quickly determine whether your organization is keeping current by updating to the most recent, most secure versions of Windows 10.

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

[Microsoft Defender Antivirus health](device-health-microsoft-defender-antivirus-health.md#microsoft-defender-antivirus-health-tab)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
