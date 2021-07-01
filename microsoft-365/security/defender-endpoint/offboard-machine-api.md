---
title: Offboard machine API
description: Learn how to use an API to offboard a device from Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, collect investigation package
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

# Offboard machine API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 



[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Offboard device from Defender for Endpoint.


## Limitations
 - Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


[!include[Machine actions note](../../includes/machineactionsnote.md)]

>[!Note]
> This API is supported on Windows 10, version 1703 and later, or Windows Server 2019 and later. 
> This API is not supported on MacOS or Linux devices.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Defender for Endpoint APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Offboard |	'Offboard machine'
Delegated (work or school account) |	Machine.Offboard |	'Offboard machine'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to 'Global Admin' AD role
>- The user needs to have access to the device, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.microsoft.com/api/machines/{id}/offboard
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | string | application/json. **Required**.

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Comment |	String |	Comment to associate with the action. **Required**.

## Response
If successful, this method returns 201 - Created response code and [Machine Action](machineaction.md) in the response body.


## Example

**Request**

Here is an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/offboard
```

```json
{
  "Comment": "Offboard machine by automation"
}
```
