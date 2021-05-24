---
title: "Use the step-by-step guide to add Autopilot devices and profile"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
ms.collection: 
- M365-subscription-management 
- M365-identity-device-management
localization_priority: Normal
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
ms.assetid: be5b6d90-3344-4c5e-bf40-5733eb845beb
description: "Learn how to use Windows AutoPilot to set up new Windows 10 devices for your business so they're ready for employee use."
---

# Use the step-by-step guide to add Autopilot devices and profile

You can use Windows AutoPilot to set up **new** Windows 10 devices for your business so they're ready for use when you give them to your employees.
  
## Device requirements

Devices must meet these requirements:
  
- Windows 10, version 1703 or later
    
- New devices that haven't been through Windows out-of-box experience
    
## Use the setup guide to create devices and profiles

If you haven't created device groups or profiles yet, the best way to get started is by using the step-by-step guide. You can also [add devices](create-and-edit-autopilot-devices.md) and [assign profiles](create-and-edit-autopilot-profiles.md) to them without using the guide. 
  
1. Go to the admin center at <a href="https://go.microsoft.com/fwlink/p/?linkid=837890" target="_blank">https://admin.microsoft.com</a>.

2. On the left navigation pane, choose **Devices** \> **AutoPilot**.

    ![In the admin center, choose devices and then AutoPilot.](../media/AutoPilot.png)
  
2. On the **AutoPilot** page, click or tap **Start guide**.
    
    ![Click Start guide for step-by-step instructions for Autopilot.](../media/31662655-d1e6-437d-87ea-c0dec5da56f7.png)
  
3. On the **Upload .csv file with list of devices** page, browse to a location where you have the prepared .CSV file, then **Open** \> **Next**. The file must have three headers:
    
    - Column A: Device Serial Number
    
    - Column B: Windows Product ID
    
    - Column C: Hardware Hash
    
    You can get this information from your hardware vendor, or you can use the [Get-WindowsAutoPilotInfo PowerShell script](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo) to generate a CSV file. 
    
    For more information, see [Device list CSV-file](../admin/misc/device-list.md). You can also download a sample file on the **Upload .csv file with list of devices** page. 
    
> [!NOTE]
> This script uses WMI to retrieve properties needed for a customer to register a device with Windows Autopilot. Note that it is normal for the resulting CSV file to not collect a Windows Product ID (PKID) value since this is not required to register a device and PKID being NULL in the output CSV is totally fine. Only the serial number and hardware hash will be populated.
    
4. On the **Assign a profile** page, you can either pick an existing profile or create a new one. If you don't have one yet, you'll be prompted to create one. 
    
    A profile is a collection of settings that can be applied to a single device or to a group of devices.
    
    The default features are required and are set automatically. The default features are:
    
    - Skip Cortana, OneDrive, and OEM registration.
    
    - Create sign-in experience with your company brand.
    
    - Connect your devices to Azure Active Directory accounts, and automatically enroll them to be managed by Microsoft 365 Business Premium.
    
    For more information, see [About AutoPilot Profile settings](autopilot-profile-settings.md). 
    
5. The other settings are **Skip privacy settings** and **Don't allow user to become the local admin**. These are both set to **Off** by default. 
    
    Choose **Next**.
    
6. **You're done** indicates that the profile you created (or chose) will be applied to the device group you created by uploading the list of devices. The settings will be in effect when the device users sign in next. Choose **Close**.

## Related content

[About AutoPilot Profile settings](autopilot-profile-settings.md) (article)\
[Options for protecting your devices and app data](../admin/devices/choose-device-security.md) (article)
