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
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint Device Control Removable Storage Protection

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)


[!INCLUDE [Prerelease](../includes/prerelease.md)]

Device control removable storage protection in Microsoft Defender for Endpoint prevents users, endpoints, or both from using unauthorized removable storage media.

## Protection policies

### Removable storage access control

**Capabilities**

- *Audit* Read or Write or Execute access to removable storage based on various device properties, with or without an exclusion.
- *Prevent* Read or Write or Execute access with or without an exclusion - Allow specific device based on various device properties.

**Windows 10 support details**:

- Applied at either the device level, user level. or both. Only allow specific people performing Read/Write/Execute access to specific removable storage on specific machine.
- Support MEM OMA-URI and GPO.
- Supported  '[Device Properties](#device-properties)' as listed.
- For feature in Windows, see [Removable storage Access Control](device-control-removable-storage-access-control.md).

**Supported Platform** - Windows 10

**macOS support details**:

- Applied at the device level: the same policy applies for any logged on user.
- For macOS specific information, see [Device control for macOS](mac-device-control-overview.md).

**Supported platform** - macOS Catalina 10.15.4+ (with system extensions enabled)


### Device installation

**Capabilities** - Prevent installation with or without exclusion based on various device properties.

**Windows 10 support details**:

- Applied at the device level: the same policy applies for any logged on user.
- Supports Microsoft Endpoint Manager and Group Policy Objects.
- Supported  '[Device Properties](#device-properties)' as listed.
- For more information on Windows, see [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md).

**Supported Platform** - Windows 10

**macOS support details**:

- Applied at the device level: the same policy applies for any logged on user
- For macOS specific information, see [Device control for macOS](mac-device-control-overview.md).

**Supported platform** - macOS Catalina 10.15.4+ (with system extensions enabled) or later

### Endpoint DLP Removable storage

**Capabilities** - Audit, warn, or prevent a user from copying an item or information to removable media or USB device.

**Description** - For more information on Windows, see [Learn about Microsoft 365 Endpoint data loss prevention](../../compliance/endpoint-dlp-learn-about.md).

**Supported Platform** - Windows 10

### BitLocker

**Capabilities**:

- Block data to be written to removable drives that aren't BitLocker protected.
- Block access to removable drives unless they were encrypted on a computer owned by your organization

**Description** - For more information on Windows, see [BitLocker - Removable Drive Settings](/mem/intune/protect/endpoint-security-disk-encryption-profile-settings).

**Supported Platform** - Windows 10

## Device properties

Microsoft Defender for Endpoint Device Control Removable Storage Protection allows you to restrict the removable storage access based on the properties described in the table below:

<br/><br/>

|Property Name|Applicable Policies|Applies to Operating Systems|Description|
|---|---|---|---|
|Device Class|[How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md)|Windows|For information about Device ID formats, see [device setup class](/windows-hardware/drivers/install/overview-of-device-setup-classes). The following two links provide the complete list of Device Setup Classes. ‘System Use’ classes are mostly refer to devices that come with a computer/machine from the factory, while ‘Vendor’ classes are mostly refer to devices that could be connected to an existing computer/machine: [System-Defined Device Setup Classes Available to Vendors - Windows drivers](/windows-hardware/drivers/install/system-defined-device-setup-classes-available-to-vendors) and [System-Defined Device Setup Classes Reserved for System Use - Windows drivers](/windows-hardware/drivers/install/system-defined-device-setup-classes-reserved-for-system-use). **Note**: Device Installation can be applied to any devices, not only Removable storage.|
|Primary ID|[Removable storage Access Control](device-control-removable-storage-access-control.md)|Windows|The Primary ID includes removable storage and CD/DVD and Windows Portable Device/WPD.|
|Device ID|[Removable storage Access Control](device-control-removable-storage-access-control.md); <p> [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md)|Windows|For information about Device ID formats, see [Standard USB Identifiers](/windows-hardware/drivers/install/standard-usb-identifiers), for example, USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07|
|Hardware ID|[Removable storage Access Control](device-control-removable-storage-access-control.md) <p> [How to control USB devices and other removable media using Microsoft Defender for Endpoint](control-usb-devices-using-intune.md)|Windows|A string identified the device in the system, for example, USBSTOR\DiskGeneric_Flash_Disk___8.07; **Note**: Hardware ID is not unique; different devices might share the same value.|
|Instance ID|[Removable storage Access Control](device-control-removable-storage-access-control.md) <p> Device Installation|Windows|A string uniquely identifies the device in the system, for example, USBSTOR\DISK&VEN_GENERIC&PROD_FLASH_DISK&REV_8.07\8735B611&0|
|Friendly Name|[Removable storage Access Control](device-control-removable-storage-access-control.md)|Windows|A string attached to the device, for example, Generic Flash Disk USB Device|
|Vendor ID / Product ID|[Removable storage Access Control](device-control-removable-storage-access-control.md)|Windows <p> macOS|Vendor ID is the four-digit vendor code that the USB committee assigns to the vendor. Product ID is the four-digit product code that the vendor assigns to the device; Support wildcard.|
|Serial NumberId|[Removable storage Access Control](device-control-removable-storage-access-control.md)|Windows <p> macOS |For example, <SerialNumberId>002324B534BCB431B000058A</SerialNumberId>|
