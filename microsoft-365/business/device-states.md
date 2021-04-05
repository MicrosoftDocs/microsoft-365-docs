---
title: "Device states"
f1.keywords:
- NOCSH
ms.author: sharik
author: skjerland
manager: scotv
audience: Admin
ms.topic: conceptual
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
- seo-marvel-mar
- AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: c3ac23c5-d4b4-4b1b-b7ce-ea759521bf8c
description: "Learn about the various device states in the Device actions list in Admin home in Microsoft 365 for business."
---

# Device states

This article applies to Microsoft 365 Business Premium.

Devices in the **Device actions** list (Admin home \> **Device actions**) can have the following states.
  
![In the Device actions list, you can see the Devices states.](../media/a621c47e-45d9-4e1a-beb9-c03254d40c1d.png)
  
|**Status**|**Description**|
|:-----|:-----|
|Managed by Intune  <br/> |Managed by Microsoft 365 Business Premium.  <br/> |
|Retire pending  <br/> |Microsoft 365 Business Premium is getting ready to remove company data from the device.  <br/> |
|Retire in progress  <br/> |Microsoft 365 Business Premium is currently removing company data from the device.  <br/> |
|Retire failed  <br/> | Remove company data action failed.  <br/> |
|Retire canceled  <br/> |Retire action was canceled.  <br/> |
|Wipe pending  <br/> |Waiting for factory reset to start.  <br/> |
|Wipe in progress  <br/> |Factory reset has been issued.  <br/> |
|Wipe failed  <br/> |Couldn't do factory reset.  <br/> |
|Wipe canceled  <br/> |Factory wipe was canceled.  <br/> |
|Unhealthy  <br/> |An action is pending (or in progress), but the device hasn't checked in for 30+ days.  <br/> |
|Delete pending  <br/> |Delete action is pending.  <br/> |
|Discovered  <br/> |Microsoft 365 Business Premium has detected the device.  <br/> |
   
