---
title: Cancel machine action API
description: Learn how to cancel an already launched machine action
keywords: apis, graph api, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: normal
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
- m365initiative-m365-defender 
ms.topic: article
MS.technology: mde
ms.custom: api
---

#   Cancel machine action API 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

[!include[Prerelease information](../../includes/prerelease.md)]

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Cancel an already launched machine action that are not yet in final state (completed, cancelled, failed).

## Limitations

1.  Rate limitations for this API are 100 calls per minute and 1500 calls per
    hour.

## Permissions

One of the following permissions is required to call this API. To learn more,
including how to choose permissions, see [Get
started](apis-intro.md).

|     Permission    type     |     Permission     |    Permission    display name     |
|-|-|-|
|    <br>Application    |    <br>Machine.CollectForensic<br>   Machine.Isolate   <br>Machine.RestrictExecution<br>   Machine.Scan<br>   Machine.Offboard<br>   Machine.StopAndQuarantine<br>   Machine.LiveResponse    |    Collect   forensics   <br>Isolate   machine<br>Restrict   code execution<br>  Scan   machine<br>  Offboard   machine<br>   Stop And   Quarantine<br>   Run live   response on a specific machine    |
|    <br>Delegated   (work or school account)    |    Machine.CollectForensic<br>   Machine.Isolate    <br>Machine.RestrictExecution<br>   Machine.Scan<br>   Machine.Offboard<br>   Machine.StopAndQuarantineMachine.LiveResponse    |    Collect   forensics<br>   Isolate   machine<br>  Restrict   code execution<br> Scan   machine<br>Offboard   machine<br> Stop And   Quarantine<br> Run live   response on a specific machine    |


## HTTP request

```
POST https://api.securitycenter.microsoft.com/api/machineactions/<machineactionid>/cancel  
```


## Request headers

| Name      | Type | Description                 |
|---------------|----------|---------------------------------|
| Authorization | String   | Bearer {token}. Required.   |
| Content-Type  | string   | application/json. Required. |

## Request body

| Parameter | Type | Description                        |
|---------------|----------|----------------------------------------|
| Comment       | String   | Comment to associate with the cancellation action.  |

## Response

If successful, this method returns 200, Ok response code with a Machine Action
entity. If machine action entity with the specified id was not found - 404 Not
Found.

## Example

**Request**

Here is an example of the request.

```HTTP
POST
https://api.securitycenter.microsoft.com/api/machineactions/988cc94e-7a8f-4b28-ab65-54970c5d5018/cancel
```


```JSON
{
    "Comment": "Machine action was canceled by automation"
}
```

## Related topic

- [Get machine action API](get-machineaction-object.md)