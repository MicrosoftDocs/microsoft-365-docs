---
title: Device control in Microsoft Defender for Endpoint            
description: Get an overview of device control, including removable storage access control and device installation policies in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/02/2024
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

This list is intended to provide some examples. It's not an exhaustive list; there are other examples to consider (see the [Microsoft device control scenarios](#microsoft-device-control-scenarios) section in this article). 

Device control helps protect your organization from potential data loss, malware, or other cyberthreats by allowing or preventing certain devices to be connected to users' computers. With device control, your security team can determine whether and what peripheral devices users can install and use on their computers. 

## Microsoft device control capabilities

Device control capabilities in Defender for Endpoint can be organized into three main categories:

- **Device control in Windows**. The Windows operating system has built-in device control capabilities. You can configure device installation settings to prevent (or allow) users from installing certain devices on their computers. Policies are applied at the device level, and use various device properties to determine whether or not a user can install/use a device. For more information, see [Microsoft Defender for Endpoint Device Control Device Installation](mde-device-control-device-installation.md). 

   - **BitLocker and Intune**. [BitLocker](/windows/security/operating-system-security/data-protection/encrypted-hard-drive) is a Windows security feature that provides encryption for entire volumes. Together with Intune, policies can be configured to enforce encryption on devices using BitLocker for Windows and FileVault for Mac. For more information, see [Disk encryption policy settings for endpoint security in Intune](/mem/intune/protect/endpoint-security-disk-encryption-profile-settings).

   - **Administrative Templates (ADMX) and Intune**. You can use ADMX templates to create policies that restrict or allow specific types of USB devices to be used with computers. For more information, see [Restrict USB devices and allow specific USB devices using ADMX templates in Intune](/mem/intune/configuration/administrative-templates-restrict-usb).

- **Device control in Microsoft Defender**. Device control in Defender for Endpoint provides more advanced capabilities and is cross platform. You can configure device control settings to prevent (or allow) users to have Read, Write, or Execute access to content on removable storage devices. You can define exceptions, and you can choose to employ audit policies that detect but do not block users from accessing their removable storage devices. Policies are applied at the device level, user level, or both. 

   - **Device control in Microsoft Defender and Intune**. Intune provides a rich experience for managing complex device control policies for organizations. You can configure and deploy device restriction settings, for example. See [Configure device restriction settings in Microsoft Intune](/mem/intune/configuration/device-restrictions-configure).

- **Endpoint data loss prevention** (Endpoint DLP). Endpoint DLP monitors sensitive information on devices that are onboarded to Microsoft Purview solutions. DLP policies can enforce protective actions on sensitive information and where it's stored or used. [Learn about Endpoint DLP](/purview/endpoint-dlp-learn-about).

## Supported devices

Device control organizes supported devices into types by their `primary_id`. On a Windows device, based on the driver, some peripheral devices are marked as removable. For example, USB drives, Windows Portable Devices (WPD), CD/ROMs, Bluetooth devices, and printers are all considered to be removable devices. The following table lists examples of devices that device control supports with their `primary_id` values:

| Device type | `PrimaryId` in Windows | `primary_id` in macOS | 
|---|---|---|
| Bluetooth devices |  | `bluetoothDevice` |
| CD/ROMs, DVDs | `CdRomDevices` |  |
| iOS devices |  | `appleDevice` |
| Portable devices (such as cameras) |   | `portableDevice` |
| Printers | `PrinterDevices` |  |
| USB devices (removable media) | `RemovableMediaDevices` | `removableMedia` |
| Windows Portable Devices | `WpdDevices` |  |

## Microsoft device control scenarios

This section lists scenarios and use cases for device control. Select a tab, review the scenarios, and then identify the type of device control policy to create.

## [**Removable storage**](#tab/Removable)

| Scenario | Device control policy |
|---|---|
| Prevent installation of a specific USB device | [Device Installation](mde-device-control-device-installation.md) |
| Prevent installation of all USB devices while allowing an installation of only an authorized USB | [Device Installation](mde-device-control-device-installation.md) |
| Prevent copying of sensitive files to USB | Endpoint DLP |
| Block write access to removable data drives not protected by BitLocker | BitLocker |
| Block write access to devices configured in another organization | BitLocker |
| Prevent Write and Execute access to all but allow specific approved USBs | Removable Storage Access Control |
| Audit Write and Execute access for all but block specific blocked USBs | Removable Storage Access Control |
| Block read and execute access to specific file extension | Removable Storage Access Control |
| Block people from access removable storage when the machine isn't connecting corporate network | Removable Storage Access Control |

## [**Printers**](#tab/Printers)

| Scenario | Device control policy |
|---|---|
| Block people from printing via non-corporate printer | Device Control Printer Protection |
| Only Allow specific USB printer(s) by VID/PID | Device Control Printer Protection |
| Block printing of sensitive documents to any printer | Endpoint DLP |
| Prevent installation of all printers | [Device Installation](mde-device-control-device-installation.md) |
| Prevent installation of a specific printer | [Device Installation](mde-device-control-device-installation.md) |
| Prevent installation of all printers while allowing a specific printer to be installed | [Device Installation](mde-device-control-device-installation.md) |

## [**Bluetooth**](#tab/Bluetooth)

| Scenario | Device control policy |
|---|---|
| Block copying of sensitive document to any Bluetooth Device | Endpoint DLP |

---

## Next steps

- [Learn about device control policies and entries](device-control-policies-entries.md)
- [Learn how to deploy RSAC policies](device-control-deploy-rsac.md)
- [View device control reports](device-control-report.md)