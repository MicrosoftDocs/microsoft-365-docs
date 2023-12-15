---
title: Device control policies and entries in Microsoft Defender for Endpoint            
description: Learn about device control policies and entries in Defender for Endpoint           
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 12/14/2023
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

Device control policies define access for a set of devices. The devices that are in scope are defined by a list of included device groups and a list of excluded device groups. A policy applies if the device is in ALL of the included device groups and none of the excluded device groups. 

If no policies apply, then the default enforcement is applied. 

The access is defined in a list of entries. An entry contains the Access (Read,Write, Execute) and Action (Prevent, Deny, Audit). 

For example, to have write access for some USB devices, and read access for the other USB device, use following groups and policies with default enforcement set to deny.

MORE TO COME!