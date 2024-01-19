---
title: Device control policies and entries in Microsoft Defender for Endpoint            
description: Learn about device control policies and entries in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/19/2024
ms.topic: overview
ms.service: defender-endpoint
ms.subservice: asr
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-asr
ms.custom:     # Useful for querying on a specific set of articles.
ms.reviewer: joshbregman
search.appverid: MET150
f1.keywords: NOCSH 
audience: ITPro
---

# Device control policies and entries in Microsoft Defender for Endpoint

This article describes device control policies, rules, entries, groups, and advanced conditions. Essentially, device control policies define access for a set of devices. The devices that are in scope are determined by a list of included device groups and a list of excluded device groups. A policy applies if the device is in all of the included device groups and none of the excluded device groups. If no policies apply, then the default enforcement is applied. 

By default device control is disabled, so access to all types of devices is allowed. To learn more about device control, see [Device control in Microsoft Defender for Endpoint](device-control-overview.md).

## Controlling default behavior

When device control is enabled, it is enabled for all device types by default. The default enforcement can also be changed from *Allow* to *Deny*. Your security team can also configure the types of devices that device control protects. The following table below illustrates how various combinations of settings change the access control decision. 

| Is device control enabled? | Default behavior | Device types |
|---|---|---|
| No | Access is allowed | - CD/DVD drives <br/>- Printers <br/>- Removable media devices <br/>- Windows portable devices |
| Yes | (Not specified) <br/>Access is allowed | - CD/DVD drives <br/>- Printers <br/>- Removable media devices <br/>- Windows portable devices |
| Yes | Deny | - CD/DVD drives <br/>- Printers <br/>- Removable media devices <br/>- Windows portable devices |
| Yes | Deny removable media devices and printers | - Printers and removable media devices (blocked) <br/>- CD/DVD drives and Windows portable devices (allowed) | 



The following table lists examples of device groups that you can use:


|Device group name  |Description  |
|---------|---------|
| All Removable Storage Devices   | Removable storage devices |
| Writeable USBs     | List of USBs where write access is permitted  |
| Other Devices     | Non-removable storage devices   |

Access is determined by a list of entries. Each entry specifies:

- **Access**: Read, Write, or Execute; and 
- **Action**: Prevent, Deny, or Audit. 

For example, to have write access for some USB devices, and read access for other USB devices, you can use the groups and policies that are listed in the following table, with default enforcement set to deny.


| Policy  | Included Device Groups | Excluded Device Groups  | Entry  |
|---------|---------|---------|---------|
| Write access for USBs  | Writeable USBs   |         | Write access  |
| Read-only access for USBs  | All removable storage devices  | Writeable USBs  | Read-only access  |
| Full access for other devices   | Other devices   |         | Full access        |
