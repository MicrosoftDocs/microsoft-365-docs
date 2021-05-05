---
title: "Secure Windows 10 devices"
f1.keywords:
- CSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: conceptual
f1_keywords:
- 'O365E_BCSSetup4WindowsConfig'
ms.service: o365-administration
localization_priority: Normal
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
ms.assetid: 21e5551f-fa35-4f13-9418-f80d668b6a2b
description: "Learn about configuring the settings of the default device policy that any Windows 10 device will receive upon signing in to their work or school account."
---

# Secure Windows 10 devices

This article applies to Microsoft 365 Business Premium.

The settings that you configure here are part of the default device policy for Windows 10. All users who connect a Windows 10 device, including mobile devices and PCs, by signing in with their work account will automatically receive these settings. We recommend that you accept the default policy during setup and add policies later that target specific groups of users.
  
## Settings to secure Windows 10 devices

By default all settings are **On**. The following settings are available:
  


|Setting  <br/> |Description  <br/> |
|:-----|:-----|
|Help protect PCs from viruses and other threats using Windows Defender Antivirus  <br/> |Requires that Windows Defender Antivirus is turned on to protect PCs from the dangers of being connected to the internet.  <br/> |
|Help protect PCs from web-based threats in Microsoft Edge  <br/> |Turns on settings in Edge that help protect users from malicious sites and downloads.  <br/> |
|Help protect files and folders on PCs from unauthorized access with BitLocker  <br/> |Bitlocker protects data by encrypting the computer hard drives and protect against data exposure if a computer is lost or stolen. For more information, see [Bitlocker FAQ](/windows/security/information-protection/bitlocker/bitlocker-frequently-asked-questions).  <br/> |
|Turn off device screen when idle for this amount of time  <br/> |Makes sure that company data is protected if a user is idle. A user may be working in a public location, like a coffee shop, and step away or be distracted for just a moment, leaving their device vulnerable to random glances. This setting lets you control how long the user can be idle before the screen shuts off.  <br/> |
|