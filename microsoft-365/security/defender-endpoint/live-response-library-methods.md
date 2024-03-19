---
title: Live response library methods and properties
description: Learn how to use the live response library methods and properties.
search.appverid: met150
ms.service: defender-endpoint
f1.keywords:
- NOCSH
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- mde-edr
ms.topic: reference
ms.subservice: edr
ms.date: 06/03/2021
---

#  Live response library methods and properties

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/microsoft-defender.md)]

**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

[!include[Prerelease information](../../includes/prerelease.md)]

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## Methods

| **Method**          | **Return Type**         | **Description**                         |
|---------------------|-------------------------|-----------------------------------------|
| List library files  | Library file collection | List library file entities              |
| Upload to library   | Library file entity     | Upload a file to live response library |
| Delete from library | No content              | Delete library file entity              |

## Properties

| **Property** | **Type**                         | **Description**                                        |
|--------------|----------------------------------|--------------------------------------------------------|
| Commands     | Live Response command collection | Array of Command objects. See [live response commands](live-response.md#live-response-commands). |

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
