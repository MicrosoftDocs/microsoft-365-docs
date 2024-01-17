---
title: Device control in Microsoft Defender for Endpoint            
description: Get an overview of device control, including removable storage access control and device installation policies in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/16/2024
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-asr
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
audience: ITPro
---

# Device control in Microsoft Defender for Endpoint

Device control capabilities in Microsoft Defender for Endpoint enable your security team to control whether users can install and use peripheral devices, like removable storage (USB thumb drives, CDs, disks, etc.), printers, Bluetooth devices, or other devices with their computers. Your security team can configure device control policies to configure rules like these:

- Prevent users from installing and using certain devices (like USB drives)
- Prevent users from installing and using *any* external devices with specific exceptions
- Allow users to install and use specific devices
- Allow users to install and use only [BitLocker](/windows/security/operating-system-security/data-protection/bitlocker/)-encrypted devices with Windows computers

This list is intended to provide some examples. It's not an exhaustive list; there are other examples to consider (see the [device control scenarios](#device-control-scenarios) section in this article). 

Device control helps protect your organization from potential data loss, malware, or other cyberthreats by allowing or preventing certain devices to be connected to users' computers. With device control, your security team can determine whether and what peripheral devices users can install and use on their computers. 

## Microsoft device control capabilities

Device control capabilities from Microsoft can be organized into three main categories: device control in Windows, device control in Defender for Endpoint, and Endpoint Data Loss Prevention (Endpoint DLP).

- **Device control in Windows**. The Windows operating system has built-in device control capabilities. Your security team can configure device installation settings to prevent (or allow) users from installing certain devices on their computers. Policies are applied at the device level, and use various device properties to determine whether or not a user can install/use a device. For more information, see [Microsoft Defender for Endpoint Device Control Device Installation](mde-device-control-device-installation.md). Device control in Windows works with BitLocker and ADMX templates, and can be managed using Intune.

   - **BitLocker and Intune**. [BitLocker](/windows/security/operating-system-security/data-protection/encrypted-hard-drive) is a Windows security feature that provides encryption for entire volumes. Together with [Intune](/mem/intune/fundamentals/what-is-intune), policies can be configured to enforce encryption on devices using BitLocker for Windows (and FileVault for Mac). For more information, see [Disk encryption policy settings for endpoint security in Intune](/mem/intune/protect/endpoint-security-disk-encryption-profile-settings).

   - **Administrative Templates (ADMX) and Intune**. You can use ADMX templates to create policies that restrict or allow specific types of USB devices to be used with computers. For more information, see [Restrict USB devices and allow specific USB devices using ADMX templates in Intune](/mem/intune/configuration/administrative-templates-restrict-usb).

- **Device control in Defender for Endpoint**. Device control in Defender for Endpoint provides more advanced capabilities and is cross platform. You can configure device control settings to prevent (or allow) users to have Read, Write, or Execute access to content on removable storage devices. You can define exceptions, and you can choose to employ audit policies that detect but don't block users from accessing their removable storage devices. Policies are applied at the device level, user level, or both. Device control in Microsoft Defender can be managed using Intune.

   - **Device control in Microsoft Defender and Intune**. Intune provides a rich experience for managing complex device control policies for organizations. You can configure and deploy device restriction settings in Defender for Endpoint, for example. See [Configure device restriction settings in Microsoft Intune](/mem/intune/configuration/device-restrictions-configure).

- **Endpoint data loss prevention** (Endpoint DLP). Endpoint DLP monitors sensitive information on devices that are onboarded to Microsoft Purview solutions. DLP policies can enforce protective actions on sensitive information and where it's stored or used. [Learn about Endpoint DLP](/purview/endpoint-dlp-learn-about).

See the [device control scenarios](#device-control-scenarios) section (in this article) for more details about these capabilities.

## Supported devices

Device control supports Bluetooth devices, CD/ROMs and DVD devices, printers, USB devices, and other types of portable devices. On a Windows device, based on the driver, some peripheral devices are marked as removable. The following table lists examples of devices that device control supports with their `primary_id` values and media class names:

| Device type | `PrimaryId` in Windows | `primary_id` in macOS | Media Class Name |
|---|---|---|
| Bluetooth devices |  | `bluetoothDevice` | `Bluetooth Devices` |
| CD/ROMs, DVDs | `CdRomDevices` |  |  `CD-Roms` |
| iOS devices |  | `appleDevice` | | 
| Portable devices (such as cameras) |   | `portableDevice` | | 
| Printers | `PrinterDevices` |  | `Printers` | 
| USB devices (removable media) | `RemovableMediaDevices` | `removableMedia` | `USB` | 
| Windows Portable Devices | `WpdDevices` |  | `Windows Portable Devices (WPD)` | 

## Device control scenarios

This section lists scenarios for device control. Select a tab, review the scenarios, and then identify the type of device control policy to create.

## [**Removable storage**](#tab/Removable)

| Scenario | Device control policy |
|---|---|
| Prevent installation of a specific USB device | Device control in Windows. See [Device Installation](mde-device-control-device-installation.md) |
| Prevent installation of all USB devices while allowing an installation of only an authorized USB | Device control in Windows. See [Device Installation](mde-device-control-device-installation.md). |
| Prevent copying of sensitive files to USB | [Endpoint DLP](/purview/endpoint-dlp-learn-about?view=o365-worldwide) |
| Block write access to removable data drives not protected by BitLocker | Device control in Windows. See [BitLocker](/windows/security/operating-system-security/data-protection/bitlocker/configure?tabs=common). |
| Block write access to devices configured in another organization | Device control in Windows. See [BitLocker](/windows/security/operating-system-security/data-protection/bitlocker/configure?tabs=common). |
| Prevent Write and Execute access to all but allow specific approved USBs | Device control in Defender for Endpoint. See [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md). |
| Audit Write and Execute access for all but block specific blocked USBs | Device control in Defender for Endpoint. See [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md). |
| Block read and execute access to specific file extension | Device control in Microsoft Defender. See [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md). |
| Block people from access removable storage when the machine isn't connecting corporate network | Device control in Microsoft Defender. See [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md). |

## [**Printers**](#tab/Printers)

| Scenario | Device control policy |
|---|---|
| Block people from printing via noncorporate printer | Device control in Microsoft Defender. See [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md). |
| Only Allow specific USB printer(s) by VID/PID | Device control in Microsoft Defender. See [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md). |
| Block printing of sensitive documents to any printer | [Endpoint DLP](/purview/endpoint-dlp-learn-about?view=o365-worldwide) |
| Prevent installation of all printers | Device control in Windows. See [Device Installation](mde-device-control-device-installation.md) |
| Prevent installation of a specific printer | Device control in Windows. See [Device Installation](mde-device-control-device-installation.md) |
| Prevent installation of all printers while allowing a specific printer to be installed | Device control in Windows. See [Device Installation](mde-device-control-device-installation.md) |

## [**Bluetooth**](#tab/Bluetooth)

| Scenario | Device control policy |
|---|---|
| Block copying of sensitive document to any Bluetooth Device | [Endpoint DLP](/purview/endpoint-dlp-learn-about?view=o365-worldwide) |

---

## Device control in Defender for Endpoint sample scenarios

Device control capabilities in Defender for Endpoint provide more advanced capabilities than what's built into the Windows operating system. With device control in Defender for Endpoint, you have a robust access control model that enables a wide range of scenarios (see [Device control policies and entries in Defender for Endpoint](device-control-policies-entries.md)).  

If you're interested in sample queries and configuration methods, see the following examples:

- **Removable Storage Access Control**. See [mdatp-devicecontrol/Removable Storage Access Control Samples](https://github.com/j0shbregman/mdatp-devicecontrol/tree/main/Removable%20Storage%20Access%20Control%20Samples).

- **Printer protection**. See [mdatp-devicecontrol/Printer Protection Samples](https://github.com/j0shbregman/mdatp-devicecontrol/tree/main/Printer%20Protection%20Samples).

If you're new to device control, see [Get started with device control in Microsoft Defender for Endpoint](device-control-get-started.md).

## Prerequisites

Device control in Defender for Endpoint can be applied to devices running Windows 10 or Windows 11 that have the anti-malware client version `4.18.2103.3` or later.

- `4.18.2104` or later: Add `SerialNumberId`, `VID_PID`, filepath-based GPO support, and `ComputerSid`
- `4.18.2105` or later: Add Wildcard support for `HardwareId/DeviceId/InstancePathId/FriendlyNameId/SerialNumberId`, the combination of specific user on specific machine, removable SSD (a SanDisk Extreme SSD)/USB Attached SCSI (UAS) support
- `4.18.2107` or later: Add Windows Portable Device (WPD) support (for mobile devices, such as tablets); add `AccountName` into [advanced hunting](device-control-removable-storage-access-control.md#view-data-in-microsoft-defender-for-endpoint)
- `4.18.2205` or later: Expand the default enforcement to Printer. If you set it to Deny, it blocks Printer as well, so if you only want to manage storage, make sure to create a custom policy to allow Printer
- `4.18.2207` or later: Add File support; the common use case can be: block people from Read/Write/Execute access specific file on removable storage. Add Network and VPN Connection support; the common use case can be: block people from access removable storage when the machine isn't connecting corporate network.

For Mac, see [Device Control for macOS](mac-device-control-overview.md).

## Next steps

- [Learn about device control policies and entries](device-control-policies-entries.md)
- [Learn how to deploy RSAC policies](defender-endpoint\device-control-mde-deploy.md)
- [View device control reports](device-control-report.md)