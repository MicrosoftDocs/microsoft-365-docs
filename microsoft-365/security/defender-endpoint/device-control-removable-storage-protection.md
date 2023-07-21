---
title: Microsoft Defender for Endpoint Device Control Removable Storage Protection
description: Understand the `capabilities that help prevent user or machine or both from using unauthorized removable storage media
keywords: removable storage media
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
ms.date: 08/01/2022
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Microsoft Defender for Endpoint Device Control Removable Storage Protection


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](/microsoft-365/security/defender-business)

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Device control removable storage protection in Microsoft Defender for Endpoint prevents users, endpoints, or both from using unauthorized removable storage media.

## Protection policies

### Removable storage access control

**Capabilities**

- *Audit* Read or Write or Execute access to removable storage based on various device properties, with or without an exclusion.
- *Prevent* Read or Write or Execute access with or without an exclusion - Allow specific device based on various device properties.

To manage external storage, use removable storage access control instead of [device installation](#device-installation).

**Windows 10 and Windows 11 support details**:

- Applied at either the device level, user level. or both. Only allow specific people performing Read/Write/Execute access to specific removable storage on specific machine.
- Support Intune OMA-URI and GPO.
- For Windows devices, see [Removable storage Access Control](device-control-removable-storage-access-control.md).

**Supported Platform** - Windows 10, Windows 11

**macOS support details**:

- Applied at the device level: the same policy applies for any logged on user.
- For macOS specific information, see [Device control for macOS](mac-device-control-overview.md).

**Supported platform** - macOS 11 (Big Sur) or later


### Device installation

**Capabilities** - Prevent installation with or without exclusion based on various device properties.

**Windows 10 and Windows 11 support details**:

- Applied at the device level: the same policy applies for any logged on user.
- Supports Microsoft Configuration Manager and Group Policy Objects.
- For more information on Windows, see [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md).

**Supported Platform** - Windows 10, Windows 11

**macOS support details**:

- Applied at the device level: the same policy applies for any logged on user
- For macOS specific information, see [Device control for macOS](mac-device-control-overview.md).

**Supported platform** - macOS 11 (Big Sur) or later

### Endpoint DLP Removable storage

**Capabilities** - Audit, warn, or prevent a user from copying an item or information to removable media or USB device.

**Description** - For more information on Windows, see [Learn about Endpoint data loss prevention](../../compliance/endpoint-dlp-learn-about.md).

**Supported Platform** - Windows 10, Windows 11

### BitLocker

**Capabilities**:

- Block data to be written to removable drives that aren't BitLocker protected.
- Block access to removable drives unless they were encrypted on a computer owned by your organization

**Description** - For more information on Windows, see [BitLocker - Removable Drive Settings](/mem/intune/protect/endpoint-security-disk-encryption-profile-settings).

**Supported Platform** - Windows 10, Windows 11
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
