---
title: Protect Dev Drive using performance mode
description: Learn how to manage, configure, Microsoft Defender Antivirus performance mode for developers who use Dev Drive.
keywords: performance mode, Dev Drive, Dev Drive, Real-time protection (Real-time protection), Windows Security App, Microsoft Defender Antivirus, windows Defender, Resilient File System (ReFS), virus, malware, threat, detection, protection, security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
ms.topic: conceptual
author: v-britweston
ms.author: v-britweston
ms.reviewer: pricci
manager: dansimp
ms.custom: nextgen02
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 05/04/2023
---

# Protecting Dev Drive using performance mode

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

> [!NOTE]
> Want to experience Microsoft 365 Defender? Learn more about how you can [evaluate and pilot Microsoft 365 Defender](/microsoft-365/security/defender/eval-overview?ocid=cx-docs-MTPtriallab).

**Applies to:**

- Microsoft Defender for Endpoint Plans 1 and 2
- Microsoft Defender for Business
- Microsoft Defender Antivirus

**Platforms**

- Windows 11

## What is performance mode

Performance mode is now available on Windows 11 as a new Microsoft Defender Antivirus capability. This capability reduces the performance impact of Microsoft Defender Antivirus scans for files stored on designated _Dev Drive_. The goal of performance mode is to improve functional performance for developers who use Windows 11 devices. It’s important to note that performance mode can run only on Dev Drive, not on volumes that have operating systems; for example, `(C:)`. Also note that Real-time protection (“On”) is required for performance mode to function. Enabling this feature on a Dev Drive doesn’t change standard Real-time protection running on volumes having operating systems or other volumes formatted FAT32 or NTFS.

### Dev Drive

Dev Drive is a new form of storage volume available to improve performance for key developer workloads.
Dev Drive utilizes ReFS to employ targeted file system optimizations and provide more control over storage volume settings and security, including trust designation, antivirus configuration, and  provide more control to admins over what filters are attached.

For more information about Dev Drive, see: [Set up a Dev Drive on Windows 11](/windows/dev-environment/dev-drive)

### Performance mode compared to real time protection

The "_trusted_" or "_untrusted_" designations applied to Dev Drives help you make decisions about security. A _trusted_ Dev Drive means the developer using the volume has high confidence in the security of the content stored and doesn't require strong threat protection. Similar to when a developer chooses to [Add an exclusion to Windows Security](/windows/add-an-exclusion-to-windows-security-811816c0-4dfd-af4a-47e4-c301afe13b26), the developer takes on the responsibility for managing the security of the stored content to gain performance.

 Performance mode runs only on "trusted" Dev Drives.

### Performance mode compared to real-time protection

By default, to give the best possible performance, creating a Dev Drive automatically grants trust in the new volume. A trusted Dev Drive volume causes real-time protection to run in a special asynchronous “performance mode” for that volume. Running performance mode provides a balance between threat protection and performance. The balance is achieved by deferring security scans until after the file open operation has completed instead of performing the security scan synchronously while the file operation is being processed. This mode of performing security scans inherently provides faster performance, but with less protection. However, enabling performance mode provides significantly better protection than other performance tuning methods such as using folder exclusions, which block security scans altogether.

> [!NOTE]
> To enable performance mode, Real-time protection must be "On".

The following table summarizes performance mode synchronous and asynchronous scan behavior.

| Performance mode state | Scan type | Description | Summary |
|:---|:---|:---|:---|
|Not enabled (Off) | **Synchronous** | Opening a file or directory initiates a Real-time protection scan. | Open now, scan now. |
|Enabled (On) | **Asynchronous** | File open operations are scanned asynchronously. | Open now, scan later. |

An _untrusted_ Dev Drive doesn't have the same benefits as a _trusted_ Dev Drive. For example, security may run in synchronous, Real-time protection mode when a Dev Drive is _untrusted_.  Synchronous, Real-time protection scans may impact performance.

## Microsoft Defender Antivirus requirements for performance mode

- Antimalware platform version of 4.18.2303.8 (or higher
- Antimalware signature version of 1.385.1455.0 (or higher)
- Real-time protection must be turned on

For Dev Drive requirements, see [Set up a Dev Drive on Windows 11](/windows/dev-environment/dev-drive).

## Manage performance mode

Performance mode is enabled by default when a new Dev Drive is created. To enable users to control the balance between performance and security when protecting a Dev Drive, they can choose between these options:


During public preview, users can choose between these options to protect Dev Drive: 

- Real-time protection
- Performance mode (default)
- No protection on the Dev Drive at all: no antivirus filter attached to Dev Drive. In this scenario, Dev Drive isn't protected by Real-time protection or performance mode.

Dev Drives are automatically designated as trusted using a flag stored in the system registry during the original formatting time, providing the best possible performance by default. A trusted Dev Drive means that the developer using the volume has high confidence in the security of the content stored there.

Similar to when a developer chooses to add an exclusion to Windows Security, the developer takes on the responsibility for managing the security of the content stored in order to gain more performance. A Dev Drive marked as trusted is a signal for Microsoft Defender Antivirus to run in performance mode. Running performance mode provides a balance between threat protection and performance. Real-time protection is still enabled on all other storage volumes. An untrusted Dev Drive doesn't have the same privileges as a trusted Dev Drive. Security runs in real-time protection mode when a Dev Drive is untrusted. 

> [NOTE!]
> Performance mode will only run on a “trusted” Dev Drive.

## Viewing performance mode status

Depending on configuration settings, you may use the Window Security App to view the state of Real-time protection and Performance mode for the device under “Virus & threat protection” pillar.

### To view the state of Real-time protection and performance mode

1. Open the **Windows Security App** from:
  - The notification area of the taskbar
  - The **Start** menu by searching for **Windows Security**
  :::image type="content" source="images/microsoft-defender-antivirus-performance-mode-view-windows-security.png" alt-text="Shows a screen capture of the Windows Security UI with the Virus & threat protection navigation button." lightbox="images/microsoft-defender-antivirus-performance-mode-view-windows-security.png":::
1. Navigate to the **Virus & threat protection** pillar >  **Manage Settings**.
  :::image type="content" source="images/microsoft-defender-antivirus-performance-mode-manage-settings.png" alt-text="Shows a screen capture of the Windows Security UI with the Virus & threat protection navigation button." lightbox="images/microsoft-defender-antivirus-performance-mode-manage-settings.png":::

> [!NOTE]
> You may need to refresh the **Manage Settings** page to see the current status of performance mode if the status of performance mode changed while the page was open. You can do this by navigating to the page again following the instructions [To view the state of Real-time protection and performance mode](#to-view-the-state-of-rteal-time-protection-and-performance-mode).

## Performance mode scenarios

The following tables describe how (and if) the UI displays status for Performance mode, depending on configuration settings at device level.

### Enterprise scenario 1

Microsoft Defender Antivirus is in the enabled state.

| Link to scenario image | Microsoft Defender Antivirus = enabled (On) <br> performance mode = | Result |
|:---|:---|:---|
| [Enterprise 1.1](#enterprise-scenario-11) | performance mode = On. | Windows Security app: Surface the states of performance mode as _enabled_. |
| [Enterprise 1.2](#enterprise-scenario-12) | performance mode = Off | Windows Security app: Surface the states of performance mode as _disabled_. |
| [Enterprise 1.3](#enterprise-scenario-13) | Microsoft Defender Antivirus filter (WdFilter) = not attached | Windows Security app: Surface the state of Dev Drive volumes as not protected either by _Real-time protection mode_ or _performance mode_. |

#### Enterprise scenario 1.1

:::image type="content" source="images/microsoft-defender-antivirus-windows-security-performance-mode-on.png" alt-text="Shows a screen capture of Windows Security UI for Dev Drive protection with status when performance mode is on." lightbox="images/microsoft-defender-antivirus-windows-security-performance-mode-on.png":::

#### Enterprise scenario 1.2

:::image type="content" source="images/microsoft-defender-antivirus-windows-security-performance-mode-off.png" alt-text="Shows a screen capture of Windows Security UI for Dev Drive protection with status when performance mode is off." lightbox="images/microsoft-defender-antivirus-windows-security-performance-mode-off.png":::

#### Enterprise scenario 1.3

:::image type="content" source="images/microsoft-defender-antivirus-performance-mode-windows-security-filter-not-attached.png" alt-text="Shows a screen capture of Windows Security UI for Dev Drive protection with status when filter isn't attached on device." lightbox="images/microsoft-defender-antivirus-performance-mode-windows-security-filter-not-attached.png":::

## See also

[Set up a Dev Drive on Windows 11](/windows/dev-environment/dev-drive)