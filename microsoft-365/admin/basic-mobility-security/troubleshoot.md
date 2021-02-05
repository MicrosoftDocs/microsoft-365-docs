---
title: "Troubleshoot Basic Mobility and Security"   
f1.keywords: NOCSH                
ms.author: kwekua      
author: kwekua   
manager: scotv 
audience: Admin 
ms.topic: article 
ms.service: o365-administration 
localization_priority: Normal 
ms.collection:                  
- M365-subscription-management
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
description: "Try these steps to track down Basic Mobility and Security problems"  
---

# Troubleshoot Basic Mobility and Security

If you're running into issues when you try to enroll a device in Basic Mobility and Security, try the steps here to track down the problem. If the general steps don't fix the issue, see one of the later sections with specific steps for your device type.

## Steps to try first

To start, check the following:

- Make sure that the device is not already enrolled with another mobile device management provider, such as Intune.

- Make sure that the device is set to the correct date and time.

- Switch to a different WIFI or cellular network on the device.

- For Android or iOS devices, uninstall and reinstall the Intune Company Portal app on the device. 

## iOS phone or tablet

- Make sure that you've set up an APNs certificate. For more info, see [Create an APNs Certificate for iOS devices](create-an-apns-certificate-for-ios-devices.md).

- In **Settings** > **General** > **Profile (or Device Management)**, make sure that a Management Profile is not already installed. If it is, remove it.

- If you see the error message, "Device failed to enroll," sign in to Microsoft 365 and make sure that a license that includes Exchange Online has been assigned to the user who is signed in to the device.

- If you see the error message, "Profile failed to install," try one of the following:

    - Make sure that Safari is the default browser on the device, and that cookies are not disabled.

    - Reboot the device, and then navigate to portal.manage.microsoft.com. Sign in with your Microsoft 365 user ID and password, and attempt to install the profile manually.

## Windows RT

- Make sure that your domain is set up in Microsoft 365 to work with Basic Mobility and Security. For more info, see [Set up Basic Mobility and Security](set-up.md).
    
- Make sure that the user is choosing **Turn On** rather than choosing **Join**.

## Windows 10 PC

- Make sure that your domain is set up in Microsoft 365 to work with Basic Mobility and Security. For more info, see [Set up Basic Mobility and Security](set-up.md).
    
- Unless you have Azure Active Directory Premium, make sure that the user is choosing **Enroll in Device Management only** rather than choosing **Connect**.

## Android phone or tablet

- Make sure the device is running Android 4.4 or later.

- Make sure that Chrome is up to date and is set as the default browser.

- If you see the error message, "We couldn't enroll this device," sign in to Microsoft 365 and make sure that a license that includes Exchange Online has been assigned to the user who is signed in to the device.

- Check the Notification Area on the device to see if any required end-user actions are pending, and if they are, complete the actions.