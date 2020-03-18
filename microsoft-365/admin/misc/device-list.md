---
title: "Device list CSV-file"
f1.keywords:
- NOCSH
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
audience: Admin
ms.topic: overview
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_NonTOC
ms.custom:
- MSB365
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 932e3676-2491-49f0-9177-d893d2f5276e
ROBOTS: NOINDEX
description: "Learn how to make a CSV file for AutoPilo tin Microsoft 365 Business."
---

# Device list CSV-file

## Device list .csv file format

To manage and deploy devices through Windows Autopilot, you'll need a .csv file that contains specific information about the devices.
  
Columns in the device list file must have the following headers in the specified order:
  
- Column A: Device Serial Number

- Column B: leave blank

- Column C: Hardware Hash

You can get this information from your hardware vendor, or you can use the [Get-WindowsAutoPilotInfo PowerShell script](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo) that will generate a CSV file. 

When you add devices, you also need to add them to a Profile. A profile is used to apply AutoPilot deployment profiles to a device or a group of devices.
  
## Related articles

[Microsoft 365 for business documentation and resources](https://go.microsoft.com/fwlink/p/?linkid=853701)
  
[Get started with Microsoft 365 for business](https://support.office.com/article/496e690b-b75d-4ff5-bf34-cc32905d0364)
  
[Manage Microsoft 365 for business](https://support.office.com/article/27ff1678-865a-4707-8145-e1155aa815d6)
  
