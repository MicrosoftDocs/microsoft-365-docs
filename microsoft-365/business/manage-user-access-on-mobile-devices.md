---
title: "Manage how users access Office documents on mobile devices"
ms.author: sirkkuw
author: sirkkuw
manager: scotv
ms.audience: Admin
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
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: aa31319c-9196-48c9-a90b-4057e0494c7a
description: "Learn about protection policies that can help secure access to Office apps from mobile devices."
---

# Manage how users access Office documents on mobile devices

 Policy settings that control how users access Office files from their mobile devices are **Off** by default. We recommend you accept the default values during setup to create application policies for Android, iOS, and Windows 10 that apply to all users. You can create more policies after setup completes. 
  
## Settings that control how users access Office files on mobile devices

The following settings are available to manage how users access Office work files:
  
|||
|:-----|:-----|
|Setting  <br/> |Description  <br/> |
|Require a PIN or fingerprint to access Office apps  <br/> |If this settings is **On** users have to provide another form of authentication, in addition to their username and password, before they can use Office apps on their mobile device.  <br/> |
|Reset PIN when login fails this many times  <br/> |To prevent an unauthorized user from randomly guessing a PIN, the PIN will reset after the number of wrong entries that you specify.  <br/> |
|Require users to sign in again after Office apps have been idle for  <br/> |This setting determines how long a user can be idle before they are prompted to sign in again.  <br/> |
|Deny access to work files on jailbroken or rooted devices  <br/> |Clever users may have a device that is jailbroken or rooted. This means that the user can modify the operating system, which can make the device more subject to malware. These devices are blocked when this setting is **On**.  <br/> |
|Allow users to copy content from Office apps into personal apps  <br/> |We allow this by default, but when the setting is **On**, the user can copy information in a work file to a personal file. If the setting is **Off**, the user can't copy information from a work file to a personal app or personal account.  <br/> |
   

