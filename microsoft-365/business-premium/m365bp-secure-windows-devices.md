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
ms.collection: 
- M365-subscription-management
- M365-identity-device-management 
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- OKR_SMB_M365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ROBOTS: NO INDEX, NO FOLLOW
ms.assetid: 21e5551f-fa35-4f13-9418-f80d668b6a2b
description: "Learn about configuring the settings of the default device policy that any Windows device will receive upon signing in to their work or school account."
---

# Secure Windows devices

The objective here is to configure settings that are part of the default device policy for Windows 10 or 11. All users who connect a Windows device, including mobile devices and PCs, by signing in with their work account will automatically receive these settings. We recommend that you accept the default policy during setup and add policies later that target specific groups of users.

## Before you begin

Before you can set up Windows devices for Microsoft 365 Business Premium users, make sure all the Windows devices are running Windows 10 Pro, version 1703 (Creators Update) or Windows 11 Pro.

Windows 10 Pro (or Windows 11 Pro) is a prerequisite for deploying Windows 10 Business, which is a set of cloud services and device management capabilities that complement Windows 10 Pro and Windows 11 Pro, and enable the centralized management and security controls of Microsoft 365 Business Premium.

[Learn more about requirements for Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium?activetab=pivot:techspecstab).

## Windows 10 Pro and Windows 11 Pro

If you have Windows devices running previous versions of Windows, such as Windows 7 Pro, Windows 8 Pro, or Windows 8.1 Pro, your Microsoft 365 Business Premium subscription entitles you to upgrade those devices to Windows 10 Pro or Windows 11 Pro.
  
For more information on how to upgrade Windows devices, see the following articles:

- [Upgrade Windows Home to Windows 10 or Windows 11 Pro](https://support.microsoft.com/windows/upgrade-windows-home-to-windows-pro-ef34d520-e73f-3198-c525-d1a218cc2818)
- [Upgrade to Windows 10 Pro](https://support.microsoft.com/windows/upgrade-to-windows-10-pro-71ecc746-0f81-a4c0-bd4b-0db8559e0796)

<!---
Could not find the Win11 equivalent upgrade link.
---> 
  
## Secure your Windows 10 and 11 devices

By default all settings are **On**. The following settings are available: <br/><br/>

|Setting  <br/> |Description  <br/> |
|:-----|:-----|
|Help protect PCs from viruses and other threats using Microsoft Defender Antivirus  <br/> |Requires that Microsoft Defender Antivirus is turned on to protect PCs from the dangers of being connected to the internet.  <br/> |
|Help protect PCs from web-based threats in Microsoft Edge  <br/> |Turns on settings in Edge that help protect users from malicious sites and downloads.  <br/> |
|Help protect files and folders on PCs from unauthorized access with BitLocker  <br/> |BitLocker protects data by encrypting the computer hard drives and protect against data exposure if a computer is lost or stolen. For more information, see [BitLocker FAQ](/windows/security/information-protection/bitlocker/bitlocker-frequently-asked-questions).  <br/> |
|Turn off device screen when idle for this amount of time  <br/> |Makes sure that company data is protected if a user is idle. A user may be working in a public location, like a coffee shop, and step away or be distracted for just a moment, leaving their device vulnerable to random glances. This setting lets you control how long the user can be idle before the screen shuts off.  <br/> |

## Next objective

[Manage Windows devices](m365bp-manage-windows-devices.md)
