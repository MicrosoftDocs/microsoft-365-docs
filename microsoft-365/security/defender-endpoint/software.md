---
title: Software methods and properties
description: Retrieves top recent alerts.
keywords: apis, graph api, supported apis, get, alerts, recent
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
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

# Software resource type

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

<br>

****

|Method|Return Type|Description|
|---|---|---|
|[List software](get-software.md)|Software collection|List the organizational software inventory|
|[Get software by ID](get-software-by-id.md)|Software|Get a specific software by its software ID|
|[List software version distribution](get-software-ver-distribution.md)|Distribution collection|List software version distribution by software ID|
|[List machines by software](get-machines-by-software.md)|MachineRef collection|Retrieve a list of devices that are associated with the software ID|
|[List vulnerabilities by software](get-vuln-by-software.md)|[Vulnerability](vulnerability.md) collection|Retrieve a list of vulnerabilities associated with the software ID|
|[Get missing KBs](get-missing-kbs-software.md)|KB collection|Get a list of missing KBs associated with the software ID|
|

## Properties

<br>

****

|Property|Type|Description|
|---|---|---|
|id|String|Software ID|
|Name|String|Software name|
|Vendor|String|Software publisher name|
|Weaknesses|Long|Number of discovered vulnerabilities|
|publicExploit|Boolean|Public exploit exists for some of the vulnerabilities|
|activeAlert|Boolean|Active alert is associated with this software|
|exposedMachines|Long|Number of exposed devices|
|impactScore|Double|Exposure score impact of this software|
|
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
