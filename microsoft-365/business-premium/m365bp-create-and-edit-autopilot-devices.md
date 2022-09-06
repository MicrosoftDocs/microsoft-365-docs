---
title: "Create and edit Autopilot devices"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-business
ms.subservice: business-premium
ms.localizationpriority: high
ms.date: 07/19/2022
ms.collection: 
ms.custom:
- MiniMaven
- OKR_SMB_M365
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn how to upload devices using Autopilot in Microsoft 365 Business Premium. You can assign a profile to a device or a group of devices."
---

# Create and edit Autopilot devices

## Upload a list of devices

You can use the [Step-by-step guide](m365bp-add-Autopilot-devices-and-profile.md) to upload devices, but you can also upload devices in the **Devices** tab. 
  
Devices must meet these requirements:
  
- Windows 10, version 1703 or later
    
- New devices that haven't been through Windows out-of-box experience

1. In the Microsoft 365 admin center, choose **Devices** \> **Autopilot**.
  
2. On the **Autopilot** page, choose the **Devices** tab \> **Add devices**.
    
    ![In the Devices tab, choose Add devices.](./../media/6ba81e22-c873-40ad-8a72-ce64d15ea6ba.png)
  
3. On the **Add devices** panel, browse to a [Device list CSV-file](../admin/misc/device-list.md)  that you prepared \> **Save** \> **Close**.
    
    You can get this information from your hardware vendor, or you can use the [Get-WindowsAutopilotInfo PowerShell script](https://www.powershellgallery.com/packages/Get-WindowsAutopilotInfo) to generate a CSV file. 
    
## Assign a profile to a device or a group of devices

1. On the **Prepare Windows** page, choose the **Devices** tab, and select the check box next to one or more devices. 
    
2. On the **Device** panel, select a profile from the **Assigned profile** drop-down. 
    
    If you don't have any profiles yet, see [Create and edit Autopilot profiles](../admin/devices/create-and-edit-Autopilot-profiles.md) for instructions. 

## See also

[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)
