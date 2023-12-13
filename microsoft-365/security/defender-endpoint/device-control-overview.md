---
title: Device control in Microsoft Defender for Endpoint            
description: Get an overview of device control, including removable storage access control and device installation policies in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 12/13/2023
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

# Device control in Microsoft Defender for Endpoint

Device control capabilities in Microsoft Defender for Endpoint enable your security team to control whether users can install and use peripheral devices, like removable storage (USB thumb drives, CDs, disks, etc.), printers, Bluetooth or other devices with their computers. Your security team can configure device control policies to configure rules like these:

- Prevent users from installing and using certain devices (like USB drives)
- Prevent users from installing and using any external devices with specific exceptions
- Allow users to install and use specific devices
- Allow users to install and use only [BitLocker](/windows/security/operating-system-security/data-protection/bitlocker/)-encrypted devices with Windows computers

This list is intended to provide some examples. It’s not an exhaustive list; there are other examples to consider (see the use cases section in this article). 

Device control helps protect your organization from potential data loss, malware, or other cyberthreats by allowing or preventing certain devices to be connected to users’ computers. With device control, your security team can determine whether and what peripheral devices users can install and use on their computers. 

## Device installation and removable storage access control

Device control capabilities in Defender for Endpoint can be organized into two main categories:

- **Device installation**. You can configure device installation settings to prevent (or allow) users from installing certain devices on their computers. Policies are applied at the device level, and use various device properties to make the determination as to whether the user can install/use the device or not.
- **Removable storage access control** (RSAC). You can configure RSAC settings to prevent (or allow) users to have Read, Write, or Execute access to content on removable storage devices. You can define exceptions, and you can choose to employ audit policies that detect but do not block users from accessing their removable storage devices. Policies are applied at the device level, user level, or both.

