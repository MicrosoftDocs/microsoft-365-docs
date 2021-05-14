---
title: Microsoft Defender for Endpoint Device Control Removable Storage Protection
description: Understand the `capabilities that help prevent user or machine or both from using unauthorized removable storage media
keywords: removable storage media
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-smandalika
author: v-smandalika
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint Device Control Removable Storage Protection

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Microsoft Defender for Endpoint Device Control Removable Storage Protection prevents user or machine or both from using unauthorized removable storage media.

## Protection policies

### Device installation

**Capabilities** - Prevent installation with or without exclusion based on various device properties.

**Desription**
- Applied at machine level: the same policy applies for any logged on user.
- Supports MEM and GPO.
- Supported  ‘[Device Properties](#device-properties)’ as listed.
- For more information on Windows, see [How to control usb devices and other removable media using microsoft defender for endpoint](control-usb-devices-using-intune.md).

**Supported Platform** - Windows 10

**Description**
- Applied at machine level: the same policy applies for any logged on user
- For macOS specific information, see [Device control for macOS](mac-device-control-overview.md).
 
**Supported platform** - macOS Catalina 10.15.4+ (with system extensions enabled)

### Removable storage Access Control

**Capabilities**
- *Audit* Read or Write or Execute access to removable storage based on various device properties, with or without an exclusion.
- *Prevent* Read or Write or Execute access with or without an exclusion - Allow specific device based on various device properties.

**Desription**
- Applied at either machine or user or both – only allow specific people performing Read/Write/Execute access to specific removable storage on specific machine.
- Support MEM OMA-URI and GPO.
- Supported  ‘[Device Properties](#device-properties)’ as listed.
- For feature in Windows, see [Removable storage Access Control](/microsoft-365/security/defender-endpoint/mde-device-control-removable-storage-access-control).

**Supported Platform** - Windows 10

**Description**
- Applied at machine level: the same policy applies for any logged on user.
- For macOS specific information, see [Device control for macOS](mac-device-control-overview.md).
 
**Supported platform** - macOS Catalina 10.15.4+ (with system extensions enabled)

### Windows Portable Device Access Control

**Capabilities** - Deny Read or Write access to any [Windows Portable Device](/windows-hardware/drivers/portable/)., for example: Tablet, iPhone.

**Desription**
- Applied at either machine or user or both.
- Support MEM OMA-URI and GPO.

**Supported Platform** - Windows 10

### Endpoint DLP Removable storage

**Capabilities** - Audit or Warn or Prevent a user from copying an item or information to removable media or USB device.

**Desription** - For more information on Windows, see [Learn about Microsoft 365 Endpoint data loss prevention](../../compliance/endpoint-dlp-learn-about.md).

**Supported Platform** - Windows 10

### BitLocker 

**Capabilities**
- Block data to be written to removable drives that aren't BitLocker protected.
- Block access to removable drives unless they were encrypted on a computer owned by your organization
 
**Desription** - For more information on Windows, see [BitLocker – Removable Drive Settings](/mem/intune/protect/endpoint-security-disk-encryption-profile-settings).

**Supported Platform** - Windows 10

## Device properties

Microsoft Defender for Endpoint Device Control Removable Storage Protection allows you to restrict the removable storage access based on the properties described in the table below:


|Property Name  |Applicable Policies  |Applies to Operating Systems  |Description  |
|---------|---------|---------|---------|
|Device Class    |     [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md)     |   Windows      |  For information about Device ID formats, see [device setup class](/windows-hardware/drivers/install/system-defined-device-setup-classes-available-to-vendors). **Note**: Device Installation can be applied to any devices, not only Removable storage.       |
|Primary ID   |     Removable storage Access Control    |   Windows      |      The Primary ID includes removable storage and CD/DVD.   |
|Device ID     |  [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md); Removable storage Access Control       |      Windows   |    For information about Device ID formats, see [Standard USB Identifiers](/windows-hardware/drivers/install/standard-usb-identifiers), for example, USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07      |
|Hardware ID     |     [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md); Removable storage Access Control    |     Windows    |    A string identified the device in the system, for example, USBSTOR\DiskGeneric_Flash_Disk______8.07; **Note**: Hardware ID is not unique; different devices may share same value.|
|Instance ID    | Device Installation; Removable storage Access Control     |     Windows    |   A string uniquely identifies the device in the system, for example, USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611&0      |
|Friendly Name     |     Removable storage Access Control    |   Windows      |    A string attached to the device, for example, Generic Flash Disk USB Device     |
|Vendor ID / Product ID     |  Removable storage Access Control       |   Windows Mac      |     Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. Product ID is the four-digit product code that the vendor assigns to the device; Support wildcard.    |
|Serial NumberId     |     Removable storage Access Control    |      Windows Mac   |     For example, <SerialNumberId>002324B534BCB431B000058A</SerialNumberId>    |

## Related topic

- [Microsoft Defender for Endpoint Device Control Removable Storage Access Control](device-control-removable-storage-access-control.md)

