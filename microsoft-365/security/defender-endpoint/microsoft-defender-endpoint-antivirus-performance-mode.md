---
title: Protect Dev Drive using performance mode
description: Learn how to manage, configure, Microsoft Defender Antivirus performance mode for developers who use Dev Drive.
keywords: performance mode, Dev Drive, Real-time protection (Real-time protection), Windows Security App, Microsoft Defender Antivirus, windows Defender, Resilient File System (ReFS), virus, malware, threat, detection, protection, security
ms.service: microsoft-365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
ms.topic: conceptual
author: denisebmsft
ms.author: dansimp
ms.reviewer: pricci
manager: dansimp
ms.custom: nextgen02
ms.subservice: mde
ms.collection: 
- m365-security
- tier2
search.appverid: met150
ms.date: 06/06/2023
---

# Protect Dev Drive using performance mode

> [!NOTE]
> Want to experience Microsoft 365 Defender? Learn more about how you can [evaluate and pilot Microsoft 365 Defender](/microsoft-365/security/defender/eval-overview?ocid=cx-docs-MTPtriallab).

**Applies to:**

- Microsoft Defender for Endpoint Plans 1 and 2
- Microsoft Defender for Business
- Microsoft Defender Antivirus

**Platforms**

- Windows 11

## What is performance mode

Performance mode is now available on Windows 11 as a new Microsoft Defender Antivirus capability. Performance mode reduces the performance impact of Microsoft Defender Antivirus scans for files stored on designated _Dev Drive_. The goal of performance mode is to improve functional performance for developers who use Windows 11 devices. 

It's important to note that performance mode can run only on Dev Drive. Additionally, Real-time protection ("On") is required for performance mode to function. Enabling this feature on a Dev Drive doesn't change standard Real-time protection running on volumes having operating systems or other volumes formatted FAT32 or NTFS.

### Dev Drive

Dev Drive is a new form of storage volume available to improve performance for key developer workloads.

Dev Drive builds on ReFS technology to employ targeted file system optimizations and provide more control over storage volume settings and security, including trust designation, antivirus configuration, and administrative control over which filters are attached.

For more information about Dev Drive, see: [Set up a Dev Drive on Windows 11](/windows/dev-drive).

### Performance mode compared to real-time protection

By default, to give the best possible performance, creating a Dev Drive automatically grants trust in the new volume. A _trusted_ Dev Drive volume causes real-time protection to run in a special _asynchronous_ "performance mode" for that volume. Running performance mode provides a balance between threat protection and performance. The balance is achieved by deferring security scans until after the _open file_ operation has completed, instead of performing the security scan synchronously while the file operation is being processed. This mode of performing security scans inherently provides faster performance, but with less protection. However, enabling performance mode provides significantly better protection than other _performance tuning_ methods such as using folder exclusions, which block security scans altogether.

> [!NOTE]
> To enable performance mode, Real-time protection must be "On".

The following table summarizes performance mode synchronous and asynchronous scan behavior.

| Performance mode state | Scan type | Description | Summary |
|:---|:---|:---|:---|
|Not enabled (Off) | **Synchronous** <br> (Real-time protection) | Opening a file initiates a Real-time protection scan. | Open now, scan now. |
|Enabled (On) | **Asynchronous** | File open operations are scanned asynchronously. | Open now, scan later. |

An _untrusted_ Dev Drive doesn't have the same benefits as a _trusted_ Dev Drive. Security runs in synchronous, Real-time protection mode when a Dev Drive is _untrusted_. Real-time protection scans may impact performance.

## Microsoft Defender Antivirus requirements for performance mode

Step 1) For requirements specific to Dev Drive, see [Set up a Dev Drive on Windows 11](/windows/dev-drive).

Step 2) Microsoft Defender Antivirus needs to be updated to:

- Antimalware platform version of 4.18.2303.8 (or higher)
- Antimalware Security Intelligence Update version of 1.385.1455.0 (or higher)
- Real-time protection must be turned on

## Manage performance mode

Step 1) Performance mode can only run on a *trusted* Dev Drive and is enabled by default when a new Dev Drive is created. For more information, see [Understanding security risks and trust in relation to Dev Drive](/windows/dev-drive#understanding-security-risks-and-trust-in-relation-to-dev-drive).

Step 2) Enforce the Microsoft Defender Antivirus Performance Mode

2a) Via Intune

Set performance mode status to enabled via the following OMA-URI setting:

| Setting | Value |
| -------- | -------- |
|OMA-URI:| ./Device/Vendor/MSFT/Defender/Configuration/PerformanceModeStatus |
|Data type|Integer|
|Value|1|

2b) Via Group Policy

Set performance mode status to enabled via Group Policy:

  
In GPMC.msc or GPedit.msc  
Computer Configuration -> Administrative Templates -> Windows Components -> Microsoft Defender Antivirus -> Real-time Protection

Double-click on "Configure performance mode status"![Screenshot of Defender_Performance_Mode_10.](media/microsoft-defender-endpoint-antivirus-performance-mode/defender-performance-mode-10.png)

Select the radio button for "Enabled"

![Screenshot of Defender_Performance_Mode_11.](media/microsoft-defender-endpoint-antivirus-performance-mode/defender-performance-mode-11.png)

Click on "Apply"

Click on OK

2c) Via Powershell

Set performance mode status to enabled via Powershell:

Powershell (Run as admin)

Type "set-MpPreference -PerformanceModeStatus Enabled" w/o the double quoters, and press Enter.

![Screenshot of Defender_Performance_Mode_04.](media/microsoft-defender-endpoint-antivirus-performance-mode/defender-performance-mode-5.png)

## Verify performance mode is enabled

To verify that Dev Drive + Defender Performance Mode is enabled

Step 1) In the Windows Security App -> Go to "Virus & threat Protection settings" -> "Manage settings" -> verify that "Dev Drive protection" is enabled![Screenshot of Defender_Performance_Mode_02.](media/microsoft-defender-endpoint-antivirus-performance-mode/defender-performance-mode-02.png)

Step 2)

Click on "See volumes"

![Screenshot of Defender_Performance_Mode_03.](media/microsoft-defender-endpoint-antivirus-performance-mode/defender-performance-mode-03.png)

|Drive| Status|
| -------- | -------- |
| C: |Since the system drive (e.g. C: or D:) drive is formatted with NTFS, it's not eligible for Defender Performance mode.|
|D:|Dev Drive is enabled but Defender Performance mode is not enabled|
|F:|Dev Drive is enabled, and Defender Performance mode is enabled|

## See also

[Set up a Dev Drive on Windows 11](/windows/dev-drive)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]

