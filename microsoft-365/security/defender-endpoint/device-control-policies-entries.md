---
title: Device control policies and entries in Microsoft Defender for Endpoint            
description: Learn about device control policies and entries in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 12/15/2023
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

Device control policies define access for a set of devices. The devices that are in scope are determined by a list of included device groups and a list of excluded device groups. A policy applies if the device is in all of the included device groups and none of the excluded device groups. If no policies apply, then the default enforcement is applied. 

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
| Read-only access for USBs  | All removable storage devices  | Writeable USBs  | Read-only access        |
|Row3     |         |         |         |
