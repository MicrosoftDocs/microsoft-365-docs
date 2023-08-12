---
title: Score methods and properties
description: Retrieves your organization's exposure score, device secure score, and exposure score by device group
keywords: apis, graph api, supported apis, score, exposure score, device secure score, exposure score by device group
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/18/2020
---

# Score resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

## Methods

Method|Return Type|Description
:---|:---|:---
[Get exposure score](get-exposure-score.md)|[Score](score.md)|Get the organizational exposure score.
[Get device secure score](get-device-secure-score.md)|[Score](score.md)|Get the organizational device secure score.
[List exposure score by device group](get-machine-group-exposure-score.md)|[Score](score.md)|List scores by device group.

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

## Properties

Property|Type|Description
:---|:---|:---
Score|Double|The current score.
Time|DateTime|The date and time in which the call for this API was made.
RbacGroupName|String|The device group name.
RbacGroupId|String|The device group ID.
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
