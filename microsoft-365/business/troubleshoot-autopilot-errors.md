---
title: "Troubleshoot AutoPilot device errors"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: troubleshooting
f1_keywords:
- 'ZTDTroubleshootDeviceErrors'
- 'O365E_ZTDTroubleshootDeviceErrors'
- 'BCS365_ZTDTroubleshootDeviceErrors'
ms.service: o365-administration
localization_priority: Normal
ms.custom:
- Adm_O365
- Core_O365Admin_Migration
- MSB365
search.appverid:
- BCS160
- MET150
- MOE150
ms.assetid: 1f468690-530c-47ea-918f-fede24607c53
description: "Learn how to troubleshoot AutoPilot device file errors."
---

# Troubleshoot AutoPilot device errors

## Device file error messages

Here's info on some of the errors you might see while working with AutoPilot device files in Microsoft 365 Business. 
  
|**Error code**|**Fix to try**|
|:-----|:-----|
|Invalid request body  <br/> |This error should happen rarely, if you see this error, try the operation again.  <br/> |
|Hardware hash value for a device isn't correct.  <br/> |If you see this error, it means that the value you provided in your CSV file for the hardware hash of one device isn't correct. First, verify that the value was typed correctly. If you think that the value is correct, but this error is still happening, ask your hardware vendor for help.  <br/> |
|Device assigned to another tenant  <br/> |If you see this error, it means that the value you provided in your CSV file for either the serial number or the product key of one or more devices isn't correct. First, verify that the value was typed correctly. If you think that the value is correct, but this error is still happening, ask your hardware vendor for help.  <br/> |
|The CSV file contains an invalid serial number or product key  <br/> |If you see this error it means that the device you are tyring to register is already registered by an other organization. To fix this, ask your hardware vendor for help.  <br/> |
|This device is not supported for setup by using AutoPilot  <br/> | This error means the device does not meet AutoPilot deployment requirements. Devices need to meet these requirements:  <br/>  Windows 10, version 1703 or later.  <br/>  New devices that have not been through Windows out-of-box experience.  <br/> |
|Device not found  <br/> |This error means that one or more devices in your CSV file is not registered to your organization. To fix this, ask your hardware vendor for help.  <br/> |
   
