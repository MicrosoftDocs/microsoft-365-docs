---
title: Get incident API
description: Learn how to use the Get incidents API to get a single incident in Microsoft 365 Defender.
keywords: apis, graph api, supported apis, get, file, hash
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
MS.technology: mde
ms.custom: api
---

# Get incident information API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Retrieves a specific incident by its ID


## Limitations
1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions
One of the following permissions is required to call this API. 

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Incident.Read.All |	'Read all Incidents'
Application |	Incident.ReadWrite.All |	'Read and write all Incidents'
Delegated (work or school account) | Incident.Read | 'Read Incidents'
Delegated (work or school account) | Incident.ReadWrite | 'Read and write Incidents'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data'
>- The response will only include incidents that the user is exposed to

## HTTP request

```console
GET .../api/incidents/{id} 
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response

If successful, this method returns 200 OK, and the incident entity in the response body. 
If incident with the specified id was not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

```http
GET https://api.security.microsoft.com/api/incidents/{id}
```
