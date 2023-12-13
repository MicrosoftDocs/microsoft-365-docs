---
title: Device control in Microsoft Defender for Endpoint            
description: Get an overview of device control, including removable storage access control and device installation policies in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 12/13/2023
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-asr
ms.custom:     # Useful for querying on a specific set of articles.
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
audience: ITPro
---

# Device control in Microsoft Defender for Endpoint

Device control capabilities in Microsoft Defender for Endpoint enable your security team to control whether users can install and use peripheral devices, like removable storage (USB thumb drives, CDs, disks, etc.), printers, Bluetooth or other devices with their computers. Your security team can configure device control policies to configure rules like these:

- Prevent users from installing and using certain devices (like USB drives)
- Prevent users from installing and using any external devices with specific exceptions
- Allow users to install and use specific devices
- Allow users to install and use only [BitLocker](/windows/security/operating-system-security/data-protection/bitlocker/)-encrypted devices with Windows computers

This list is intended to provide some examples. It’s not an exhaustive list; there are other examples to consider (see the use cases section in this article). 

Device control helps protect your organization from potential data loss, malware, or other cyberthreats by allowing or preventing certain devices to be connected to users’ computers. With device control, your security team can determine whether and what peripheral devices users can install and use on their computers. 

## Device installation and removable storage access control

Device control capabilities in Defender for Endpoint can be organized into two main categories:

- **Device installation**. You can configure device installation settings to prevent (or allow) users from installing certain devices on their computers. Policies are applied at the device level, and use various device properties to make the determination as to whether the user can install/use the device or not.
- **Removable storage access control** (RSAC). You can configure RSAC settings to prevent (or allow) users to have Read, Write, or Execute access to content on removable storage devices. You can define exceptions, and you can choose to employ audit policies that detect but do not block users from accessing their removable storage devices. Policies are applied at the device level, user level, or both.

## Other capabilities to govern peripheral devices

This article focuses on device control capabilities that are available in Defender for Endpoint. However, there are other capabilities to govern the use of peripheral devices that might be available to you, depending on what your subscription includes. These capabilities include:

- **Endpoint data loss prevention** (Endpoint DLP). Endpoint DLP monitors sensitive information on devices that are onboarded to Microsoft Purview solutions. DLP policies can enforce protective actions on sensitive information and where it’s stored or used. [Learn about Endpoint DLP](/purview/endpoint-dlp-learn-about).
- **BitLocker and Intune**. [BitLocker](/windows/security/operating-system-security/data-protection/encrypted-hard-drive) is a Windows security feature that provides encryption for entire volumes. Together with Intune, policies can be configured to enforce encryption on devices using BitLocker for Windows and FileVault for Mac. For more information, see [Disk encryption policy settings for endpoint security in Intune](/mem/intune/protect/endpoint-security-disk-encryption-profile-settings).
- **Administrative Templates (ADMX) and Intune**. You can use ADMX templates to create policies that restrict or allow specific types of USB devices to be used with computers. For more information, see [Restrict USB devices and allow specific USB devices using ADMX templates in Intune](/mem/intune/configuration/administrative-templates-restrict-usb).

## Supported devices

Device control organizes supported devices into types by their `primary_id`. On a Windows, based on the driver, some devices are marked as removable. For example, USB drives, Windows Portable Devices (WPD), CD/ROMs, Bluetooth devices, and printers are all removable. The following table lists examples of devices that device control supports:

| Device type | PrimaryId in Windows | primary_id in macOS | 
|---|---|---|
| Bluetooth devices |  | `bluetoothDevice` |
| CD/ROMS, DVDs | `CdRomDevices` |  |
| iOS devices |  | `appleDevice` |
| Portable devices (such as cameras) |   | `portableDevice` |
| Printers |
| USB devices (removable media) | `RemovableMediaDevices` | `removableMedia` |
| Windows Portable Devices | 
