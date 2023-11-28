---
title: Search for entity information with go hunt in Microsoft Defender XDR
description: Investigate entities within the attack story of an incident page with the go hunt action.
keywords: investigation, incidents, incident investigation, threat hunt, hunting, go hunt, attack story, investigate entities
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 11/28/2023
---

# Search for entity information with go hunt in Microsoft Defender XDR

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

Extend your investigation about entities within the [attack story](investigate-incidents.md#attack-story) of the incident page with the **go hunt** option. The go hunt action takes advantage of [advanced hunting](advanced-hunting-go-hunt.md) to find relevant information about an entity. With go hunt included in the options of an entity within an attack story, you can quickly investigate entities while on the incident page.

The go hunt query checks relevant schema tables for any events or alerts involving the specific entity you’re investigating. You can select between two options to find relevant information about the entity: 

•	All Activity – this query returns all activities associated with an entity, providing you with a comprehensive view of the incident's context. 
•	Related Alerts – this query searches for and returns all security alerts involving a specific entity, ensuring you don’t miss any information.

The go hunt option is available in the following entities:
-	Devices
-	Files
-	IP addresses
-	URLs

To access the go hunt option, perform the following steps:


## Next step

- [Configure the deception capability in Microsoft Defender XDR](configure-deception.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]