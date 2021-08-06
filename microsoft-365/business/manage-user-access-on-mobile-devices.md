---
title: "Manage how users access Office documents on mobile devices"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: conceptual
f1_keywords:
- 'O365E_BCSSetup4OfficeMobile'
ms.service: o365-administration
localization_priority: Normal
ms.collection:
- M365-subscription-management 
- M365-identity-device-management
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MiniMaven
- MSB365
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: aa31319c-9196-48c9-a90b-4057e0494c7a
description: "Learn about protection policies that allow you to manage how users access Office apps and work files from mobile devices."
---

# Manage how users access Office documents on mobile devices

This article applies to Microsoft 365 Business Premium.

Policy settings that control how users access Office files from their mobile devices are **Off** by default. We recommend that you accept the default values during setup to create application policies for Android, iOS, and Windows 10 that apply to all users. You can create more policies after setup completes. 
  
## Settings that control how users access Office files on mobile devices

The following settings are available to manage how users access Office work files:

|Setting  <br/> |Description  <br/> |
|:-----|:-----|
|Require a PIN or fingerprint to access Office apps  <br/> |If this setting is **On**, users must provide another form of authentication, in addition to their username and password, before they can use Office apps on their mobile device.  <br/> |
|Reset PIN when login fails this many times  <br/> |To prevent an unauthorized user from randomly guessing a PIN, the PIN will reset after the number of wrong entries that you specify.  <br/> |
|Require users to sign in again after Office apps have been idle for  <br/> |This setting determines how long a user can be idle before they're prompted to sign in again.  <br/> |
|Deny access to work files on jailbroken or rooted devices  <br/> |Clever users may have a device that is jailbroken or rooted. This means that the user can modify the operating system, which can make the device more susceptible to malware. These devices are blocked when this setting is **On**.  <br/> |
|Don't allow users to copy content from Office apps into personal apps  <br/> |When the setting is **On**, the user can't copy information in a work file to a personal file. If the setting is **Off**, the user can copy information from a work file to a personal app or personal account.  <br/> |
   

