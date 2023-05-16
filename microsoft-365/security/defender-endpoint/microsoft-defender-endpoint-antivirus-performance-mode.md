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

## Prerequisites

- Platform version of 4.18.2303.8 or higher
- Microsoft Defender Antivirus signature version of 1.385.1455.0 or higher
- Real-time protection active 

## What is performance mode

Performance mode is now available in Windows 11 as a new Microsoft Defender Antivirus capability.

Performance mode is a capability of Microsoft Defender Antivirus that reduces the performance impact of Microsoft Defender Antivirus scans for files stored on a designated "Dev Drive." The goal of performance mode is to improve functional performance for developers who use Windows 11 devices. It's important to note that performance mode can run only on Dev Drive, not on volumes that have operating systems; for example, `(C:)`. Also note that Real-time protection ("On") is required for performance mode to function. Enabling performance mode on a Dev Drive doesn't change _standard_ Real-time protection running on volumes having operating systems or other volumes formatted FAT32 or NTFS.

To best understand how performance mode works, it's essential to have a basic understanding of Dev Drive.

### Microsoft Dev Drive

Dev Drive utilizes ReFS to employ targeted file system optimizations. ReFS also provides more control over storage volume settings and security, including trust designation, antivirus configuration, and other security filters. For more information about Dev Drive, see: [Set up a Dev Drive on Windows 11](/windows/dev-environment/dev-drive)

### Performance mode and trusted versus untrusted Dev Drives

The "_trusted_" or "_untrusted_" designations applied to Dev Drives help you make decisions about security. A _trusted_ Dev Drive means the developer using the volume has high confidence in the security of the content stored and doesn't require strong threat protection. Similar to when a developer chooses to [Add an exclusion to Windows Security](/windows/add-an-exclusion-to-windows-security-811816c0-4dfd-af4a-47e4-c301afe13b26), the developer takes on the responsibility for managing the security of the stored content to gain performance.

 Performance mode runs only on "trusted" Dev Drives.

### Performance mode compared to real-time protection

By default, to give the best possible performance, creating a Dev Drive automatically grants trust in the new volume. A _trusted_ Dev Drive volume causes Real-time protection to run in a special _asynchronous_ “performance mode” for that volume. Running performance mode provides a balance between threat protection and performance. The balance is achieved by deferring security scans until after the file open operation has completed instead of performing the security scan synchronously while the file operation is being processed. This mode of performing security scans inherently provides faster performance, but with less protection. However, enabling performance mode provides significantly better protection than other _performance tuning methods_ such as using folder exclusions, which block security scans altogether. 

> [!NOTE]
> To enable performance mode, Real-time protection must be "On".

The following table summarizes performance mode synchronous and asynchronous scan behavior.

| Performance mode - state | Scan type | Description | Summary |
|:---|:---|:---|:---|
|Not enabled (Off) | **Synchronous** | Opening a file or directory initiates a Real-time protection scan. | Open now, scan now. |
|Enabled (On) | **Asynchronous** | File open operations are scanned asynchronously | Open now, scan later. |

An _untrusted_ Dev Drive doesn't have the same benefits as a _trusted_ Dev Drive. For example, security may run in synchronous, Real-time protection mode when a Dev Drive is _untrusted_.  Synchronous, Real-time protection scans may impact performance.

## Manage performance mode

Performance mode is enabled by default when a new Dev Drive is created. Disabling it through management tools will be available in the foreseeable future.  

During public preview, users can choose between these options to protect Dev Drive: 

- Performance mode (default mode) 
- Real-time protection – a Dev Drive can switch back to real-time protection “untrusting” a Dev Drive volume
- No security on a Dev Drive – detaching the filter manager from specified Dev Drive volumes. When filter manager is removed from a specific drive, the volume is not protected by either real-time protection or performance mode

See: [Set up a Dev Drive on Windows 11](/windows/dev-environment/dev-drive).

## Viewing performance mode status

Depending on configuration settings, you can use the Window Security App to view the state of Real-time protection and performance mode on Dev Drives.

To view the state of Real-time protection, select **_Start_**, > type **Windows Security**, > **Virus & threat protection**.

:::image type="content" source="images/microsoft-defender-performance-mode-view-windows-security.png" alt-text="Shows a screen capture of the Windows Security UI with the Virus & threat protection navigation button." lightbox="images/microsoft-defender-performance-mode-view-windows-security.png":::

## Performance mode scenarios

The following tables describe how (and if) the UI displays status for performance mode, depending on Enterprise-level or consumer-level configuration settings:

- Microsoft Defender Antivirus
- Real-time protection
- Dev Drive
- Performance mode

### Enterprise scenario 1

Microsoft Defender Antivirus is in the enabled state.

| Image link | Microsoft Defender Antivirus = enabled (On) <br> performance mode = | Result |
|:---|:---|:---|
| [Enterprise 1.1](#enterprise-scenario-11) | performance mode = On. <br>Performance mode settings are managed by IT. | Windows Security app: Surfaces the states of the Dev Drives and IT admin settings. <br> For Dev Drives, Microsoft Defender Antivirus is running in performance mode. |
| [Enterprise 1.2](#enterprise-scenario-12) | performance mode = Off. <br>Performance mode settings are managed by IT. | Windows Security app: Surfaces the states of the volume and IT admin settings. <br> For Dev Drives, Microsoft Defender Antivirus is running in standard _Real-time protection_ mode. |
| [Enterprise 1.3](#enterprise-scenario-13) | performance mode = Off. <br>Performance mode settings _are not_ managed by IT. | Windows Security app: Surfaces the states of Dev Drives. <br>Real-time protection = On|

#### Enterprise scenario 1.1

:::image type="content" source="images/microsoft-defender-rtp-on-performance-on-policy-enforced.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI in an enterprise in which the SecOps administrators have enabled Microsoft Defender Antivirus, switched on **Real-time protection**, SecOps manages Developer Protection Mode, and enabled performance mode" lightbox="images/microsoft-defender-rtp-on-performance-on-policy-enforced.png":::

#### Enterprise scenario 1.2

:::image type="content" source="images/microsoft-defender-rtp-on-performance-off-policy-enforced.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI in an enterprise environment in which the SecOps administrators have enabled Microsoft Defender Antivirus, switched on **Real-time protection**, SecOps manages Developer Protection Mode, and haven't enabled performance mode." lightbox="images/microsoft-defender-rtp-on-performance-off-policy-enforced.png":::

#### Enterprise scenario 1.3

:::image type="content" source="images/microsoft-defender-rtp-on-performance-off-policy-not-enforced.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI in an enterprise environment in which the SecOps administrators switched on **Real-time protection**, there's at least one Dev Drive. SecOps isn't managing Developer Protection Mode." lightbox="images/microsoft-defender-rtp-on-performance-off-policy-not-enforced.png":::

### Enterprise scenario 2

Microsoft Defender Antivirus isn't in an enabled state.

| Image link | Microsoft Defender Antivirus = not enabled (Off) <br> Dev Drive configuration = | Result |
|:---|:---|:---|
| [Enterprise 2.1](#enterprise-scenario-21) | performance mode = Off <br> No Dev Drive configured | No perfromance mode string surfaces. (default) |
| [Enterprise 2.2](#enterprise-scenario-22) | performance mode = Off <br> Dev Drive is configured| Windows Security app: Real-time protection = Off. Windows Security app surfaces string indicating Dev Drive is "not protected because RTP is OFF." |

#### Enterprise scenario 2.1

:::image type="content" source="images/microsoft-defender-rtp-off-no-developer-volume.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI in an enterprise environment in which the SecOps administrators have switched off **Real-time protection**, and there aren't any Dev Drives." lightbox="images/microsoft-defender-rtp-off-no-developer-volume.png":::

#### Enterprise scenario 2.2

:::image type="content" source="images/microsoft-defender-rtp-off-with-developer-volume.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI in an enterprise environment in which the SecOps administrators have switched off **Real-time protection**, there's at least one Dev Drive, SecOps isn't managing Developer Protection Mode, and the user hasn't enabled performance mode." lightbox="images/microsoft-defender-rtp-off-with-developer-volume.png":::

### Consumer scenario 1

Microsoft Defender Antivirus is set to the enabled state.

| Image link | Real-time protection = <br> Microsoft Defender Antivirus = enabled (On) <br> performance mode = | Result |
|:---|:---|:---|
| [Consumer 1.1](#consumer-scenario-11) | Real-time protection = On <br> performance mode = On | Windows Security app: Surface states of the volume, indicating "performance mode is on and active."|
| [Consumer 1.2](#consumer-scenario-12) | Real-time protection = Off <br> performance mode = Off | Windows Security app: Surface states of the volume, indicating the Dev Drive is "not protected because RTP is off." |
| [Consumer 1.3](#consumer-scenario-13) | Real-time protection = On <br> performance mode = Off | Windows Security app: Surface states of volume(s), indicating that for Dev Drives, Microsoft Defender Antivirus is "running in standard Real-time protection mode." |

#### Consumer scenario 1.1

:::image type="content" source="images/microsoft-defender-consumer-rtp-on-performance-on-with-volume.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI on a customer computer in which the customer has enabled **Real-time protection**, created a Dev Drive, and enabled performance mode." lightbox="images/microsoft-defender-consumer-rtp-on-performance-on-with-volume.png":::

#### Consumer scenario 1.2

:::image type="content" source="images/microsoft-defender-consumer-rtp-off-with-volume.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI on a customer computer in which the customer has switched off **Real-time protection**. A Dev Drive exists, but isn't using performance mode." lightbox="images/microsoft-defender-consumer-rtp-off-with-volume.png":::

#### Consumer scenario 1.3

:::image type="content" source="images/microsoft-defender-consumer-rtp-on-performance-off-with-volume.png" alt-text="Shows a screen capture of the Virus & threat protection UI on a customer computer in which the customer has switched on Real-time protection, created a Dev Drive, but hasn't enabled performance mode." lightbox="images/microsoft-defender-consumer-rtp-on-performance-off-with-volume.png":::

### Consumer scenario 2

Microsoft Defender Antivirus isn't in an enabled state.

| Image link | Microsoft Defender Antivirus = not enabled (Off) <br> performance mode = | Result |
|:---|:---|:---|
| [Consumer 2.1](#consumer-scenario-21) | performance mode = Off (default) | Windows Security app: No string surfaces. |

#### Consumer scenario 2.1

Microsoft Defender Antivirus isn't enabled, performance mode is Off.

:::image type="content" source="images/microsoft-defender-consumer-rtp-off-without-volume.png" alt-text="Shows a screen capture of the **Virus & threat protection** UI on a customer computer in which the customer has left Microsoft Defender Antivirus enabled, switched off **Real-time protection**, has created a Dev Drive, but hasn't enabled performance mode." lightbox="images/microsoft-defender-consumer-rtp-off-without-volume.png":::

## See also