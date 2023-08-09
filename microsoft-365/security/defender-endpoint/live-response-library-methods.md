---
title: Live response library methods and properties
description: Learn how to use the live response library methods and properties.
keywords: apis, graph api, supported apis, get, devices
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: reference
ms.subservice: mde
ms.date: 06/03/2021
---

#  Live response library methods and properties

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

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
