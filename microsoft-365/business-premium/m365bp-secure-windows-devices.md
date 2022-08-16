---
title: "Secure Windows devices"
f1.keywords:
- CSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: conceptual
f1_keywords:
- 'O365E_BCSSetup4WindowsConfig'
ms.service: o365-administration
ms.localizationpriority: high
ms.date: 07/19/2022
ms.custom:
- MiniMaven
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn about configuring the settings of the default device policy that any Windows device will receive upon signing in to their work or school account."
---

# Secure Windows devices

The objective here is to configure settings that are part of the default device policy for Windows 10 or 11. All users who connect a Windows device, including mobile devices and computers, by signing in with their work account will automatically receive these settings. We recommend that you accept the default policy during setup and add policies later that target specific groups of users.

## Before you begin

Before you can set up Windows devices for Microsoft 365 Business Premium users, make sure all the Windows devices are running Windows 10 Pro.

Windows 10 Pro is a prerequisite for deploying Windows 10 Business, which is a set of cloud services and device management capabilities that complement Windows 10 Pro and Windows 11 Pro, and enable the centralized management and security controls of Microsoft 365 Business Premium.

[Learn more about requirements for Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium?activetab=pivot:techspecstab).

## Windows 10 Pro

If you have Windows devices running previous versions of Windows, such as Windows 7 Pro, Windows 8 Pro, or Windows 8.1 Pro, your Microsoft 365 Business Premium subscription entitles you to upgrade those devices to Windows 10 Pro or Windows 11 Pro.
  
For more information on how to upgrade Windows devices, see [Upgrade Windows devices to Windows 10 Pro](m365bp-upgrade-windows-10-pro.md).

## Secure your Windows 10 and 11 devices

By default all settings are **On**. The following settings are available:

|Setting |Description |
|:-----|:-----|
|Help protect computers from viruses and other threats using Microsoft Defender Antivirus  |Requires that Microsoft Defender Antivirus is turned on to protect computers from the dangers of being connected to the internet.   |
|Help protect computers from web-based threats in Microsoft Edge   |Turns on settings in Edge that help protect users from malicious sites and downloads.  <br/> |
|Help protect files and folders on computers from unauthorized access with BitLocker  |BitLocker protects data by encrypting the computer hard drives and protect against data exposure if a computer is lost or stolen. For more information, see [BitLocker FAQ](/windows/security/information-protection/bitlocker/bitlocker-frequently-asked-questions).  |
|Turn off device screen when idle for this amount of time  |Makes sure that company data is protected if a user is idle. A user may be working in a public location, like a coffee shop, and step away or be distracted for just a moment, leaving their device vulnerable to random glances. This setting lets you control how long the user can be idle before the screen shuts off.  |

## Next objective

[Manage Windows devices](m365bp-manage-windows-devices.md)
