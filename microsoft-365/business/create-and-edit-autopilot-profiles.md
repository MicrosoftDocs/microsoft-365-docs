---
title: "Create and edit AutoPilot profiles"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-identity-device-management
ms.custom:
- Adm_O365
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
ms.assetid: 5cf7139e-cfa1-4765-8aad-001af1c74faa
description: "Learn to create an AutoPilot profile and apply it to a device, as well as edit or delete a profile or remove a profile from a device."
---

# Create and edit AutoPilot profiles

## Create a profile

A profile applies to a device, or a group of devices,
  
1. In the Microsoft 365 admin center, choose **Devices** \> **AutoPilot**.
  
2. On the **AutoPilot** page, choose the **Profiles** tab \> **Create profile**.
    
3. On the **Create profile** page, enter a name for the profile that helps you identify it, for example Marketing. Turn on the setting you want, and then choose **Save**. For more information about AutoPilot profile settings, see [About AutoPilot Profile settings](autopilot-profile-settings.md).
    
    ![Enter name and turn on settings in the Create profile panel.](../media/63b5a00d-6a5d-48d0-9557-e7531e80702a.png)
  
### Apply profile to a device

After you create a profile, you can apply it to a device or a group of devices. You can pick an existing profile in the [step-by-step guide](add-autopilot-devices-and-profile.md) and apply it to new devices, or replace an existing profile for a device or group of devices. 
  
1. On the **Prepare Windows** page, choose the **Devices** tab. 
    
2. Select the check box next to a device name, and in the **Device** panel, choose a profile from the **Assigned profile** drop-down list \> **Save**.
    
    ![In the Device panel, select an Assigned profile to apply it.](../media/ed0ce33f-9241-4403-a5de-2dddffdc6fb9.png)
  
## Edit, delete, or remove a profile

Once you've assigned a profile to a device, you can update it, even if you've already given the device to a user. When the device connects to the internet, it downloads the latest version of your profile during the setup process. If the user restores their device to its factory default settings, the device will again download the latest updates to your profile. 
  
### Edit a profile

1. On the **Prepare Windows** page, choose the **Profiles** tab. 
    
2. Select the check box next to a device name, and in the **Profile** panel, update any of the available settings \> **Save**.
    
    If you do this before a user connects the device to the internet, then the profile gets applied to the setup process.
    
### Delete a profile

1. On the **Prepare Windows** page, choose the **Profiles** tab. 
    
2. Select the check box next to a device name, and in the **Profile** panel, select **Delete profile** \> **Save**.
    
    When you delete a profile, it gets removed from a device or a group of devices it was assigned to.
    
### Remove a profile

1. On the **Prepare Windows** page, choose the **Devices** tab. 
    
2. Select the check box next to a device name, and in the **Device** panel, choose **None** from the **Assigned profile** drop-down list \> **Save**.
    
