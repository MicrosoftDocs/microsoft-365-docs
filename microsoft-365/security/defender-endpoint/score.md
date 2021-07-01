---
title: Score methods and properties
description: Retrieves your organization's exposure score, device secure score, and exposure score by device group
keywords: apis, graph api, supported apis, score, exposure score, device secure score, exposure score by device group
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
MS.technology: mde
ms.custom: api
---

# Score resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


[!include[Prerelease information](../../includes/prerelease.md)]

## Methods

Method |Return Type |Description
:---|:---|:---
[Get exposure score](get-exposure-score.md) | [Score](score.md) | Get the organizational exposure score.
[Get device secure score](get-device-secure-score.md) | [Score](score.md) | Get the organizational device secure score.
[List exposure score by device group](get-machine-group-exposure-score.md)| [Score](score.md) | List scores by device group.

## Properties

Property |	Type	|	Description
:---|:---|:---
Score | Double | The current score.
Time | DateTime | The date and time in which the call for this API was made.
RbacGroupName | String | The device group name.
