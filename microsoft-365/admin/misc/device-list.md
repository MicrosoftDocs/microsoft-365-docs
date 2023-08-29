---
title: "Device list CSV-file"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 02/18/2020
audience: Admin
ms.topic: overview
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection: 
- Tier3
- scotvorg
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom:
- MSB365
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 932e3676-2491-49f0-9177-d893d2f5276e
ROBOTS: NOINDEX
description: "Learn how to make a CSV file for AutoPilot in Microsoft 365 for business."
---

# Windows Autopilot device list CSV-file

## Device list .csv file format

To manage and deploy devices through Windows Autopilot, you'll need a .csv file that contains specific information about the devices.
  
Columns in the device list file must have the following headers in the specified order:
  
- Column A: Device Serial Number

- Column B: leave blank

- Column C: Hardware Hash

You can get this information from your hardware vendor, or you can use the [Get-WindowsAutoPilotInfo PowerShell script](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo) that will generate a CSV file. 

When you add devices, you also need to add them to a Profile. A profile is used to apply AutoPilot deployment profiles to a device or a group of devices.
  
## Related content

[Microsoft 365 for business documentation and resources](../../index.yml)
  
[Get started with Microsoft 365 for business](../../admin/admin-overview/what-is-microsoft-365.md)
