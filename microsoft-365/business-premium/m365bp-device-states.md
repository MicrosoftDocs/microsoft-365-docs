---
title: "Device states"
f1.keywords:
- NOCSH
ms.author: deniseb
author: denisebmsft
manager: scotv
audience: Admin
ms.topic: conceptual
ms.service: o365-administration
ms.localizationpriority: high
ms.collection: 
- Adm_O365
- M365-subscription-management 
- M365-identity-device-management
- Adm_TOC
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

> [!NOTE]
> Microsoft Defender for Business is rolling out to Microsoft 365 Business Premium customers, beginning March 1, 2022. This offering provides additional security features for devices. [Learn more about Defender for Business](../security/defender-business/mdb-overview.md).

Devices in the **Device actions** list (Admin home \> **Device actions**) can have the following states.
  
![In the Device actions list, you can see the Devices states.](./../media/a621c47e-45d9-4e1a-beb9-c03254d40c1d.png)
  
|**Status**|**Description**|
|:-----|:-----|
|Managed by Intune  |Managed by Microsoft 365 Business Premium.  |
|Retire pending  |Microsoft 365 Business Premium is getting ready to remove company data from the device.  |
|Retire in progress  |Microsoft 365 Business Premium is currently removing company data from the device.  |
|Retire failed  | Remove company data action failed.  |
|Retire canceled  |Retire action was canceled.  |
|Wipe pending  |Waiting for factory reset to start.  |
|Wipe in progress  |Factory reset has been issued.  |
|Wipe failed  |Couldn't do factory reset.  |
|Wipe canceled  |Factory wipe was canceled.  |
|Unhealthy  |An action is pending (or in progress), but the device hasn't checked in for 30+ days.  |
|Delete pending  |Delete action is pending.  |
|Discovered  |Microsoft 365 Business Premium has detected the device.  |
   

## See also

[Best practices for securing Microsoft 365 for business plans](../admin/security-and-compliance/secure-your-business-data.md)