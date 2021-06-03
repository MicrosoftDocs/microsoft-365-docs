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

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

## API description

Cancel an already launched machine action

## Limitations

1.  Rate limitations for this API are 100 calls per minute and 1500 calls per
    hour.

## Permissions

One of the following permissions is required to call this API. To learn more,
including how to choose permissions, see [Get
started](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/apis-intro?view=o365-worldwide)

| Permission type                | Permission        | Permission display name              |
|------------------------------------|-----------------------|------------------------------------------|
| Application                        | Machine.Read.All      | 'Read all machine profiles'              |
| Application                        | Machine.ReadWrite.All | 'Read and write all machine information' |
| Delegated (work or school account) | Machine.Read          | 'Read machine information'               |
| Delegated (work or school account) | Machine.ReadWrite     | 'Read and write machine information'     |

## HTTP request

*HTTP*

POST [https://api.securitycenter.microsoft.com/api/machineactions/{machine
action
id}/cancel](https://api.securitycenter.microsoft.com/api/machineactions/%7bmachine%20action%20id%7d/cancel)

## Request headers

| Name      | Type | Description                 |
|---------------|----------|---------------------------------|
| Authorization | String   | Bearer {token}. Required.   |
| Content-Type  | string   | application/json. Required. |

## Request body

| Parameter | Type | Description                        |
|---------------|----------|----------------------------------------|
| Comment       | String   | Comment to associate with the action.  |

## Response

If successful, this method returns 200, Ok response code with a Machine Action
entity. If machine action entity with the specified id was not found - 404 Not
Found.

## Example

**Request**

Here is an example of the request.

```HTTP

POST
[https://api.securitycenter.microsoft.com/api/machineactions/988cc94e-7a8f-4b28-ab65-54970c5d5018/cancel](https://api.securitycenter.microsoft.com/api/machineactions/%7bmachine%20action%20id%7d/cancel)
```


```JSON
{
"Comment": "Machine action was canceled by automation"
}
```

## Related topic

Get machine action API [link to machine actions / Get machine action API ]