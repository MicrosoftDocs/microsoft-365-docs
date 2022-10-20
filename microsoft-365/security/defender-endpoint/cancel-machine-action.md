---
title: Cancel machine action API
description: Learn how to cancel an already launched machine action
keywords: apis, graph api,
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: mde
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
ms.topic: conceptual
ms.custom: api
---

# Cancel machine action API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/defender-endpoint)
- [Microsoft Defender for Endpoint Plan 1](/microsoft-365/security/defender-endpoint/defender-endpoint-plan-1)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Cancel an already launched machine action that is not yet in final state (completed, canceled, failed).

## Limitations

1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more,
including how to choose permissions, see [Get started](apis-intro.md).

|Permission type|Permission|Permission display name|
|---|---|---|
|Application|Machine.CollectForensics <br> Machine.Isolate <br> Machine.RestrictExecution <br> Machine.Scan <br> Machine.Offboard <br> Machine.StopAndQuarantine <br> Machine.LiveResponse|Collect forensics <br>Isolate machine<br>Restrict code execution<br>  Scan machine<br>  Offboard machine<br> Stop And Quarantine<br> Run live response on a specific machine|
|Delegated (work or school account)|Machine.CollectForensics<br> Machine.Isolate  <br>Machine.RestrictExecution<br> Machine.Scan<br> Machine.Offboard<br> Machine.StopAndQuarantineMachine.LiveResponse|Collect forensics<br> Isolate machine<br>  Restrict code execution<br> Scan machine<br>Offboard machine<br> Stop And Quarantine<br> Run live response on a specific machine|

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/machineactions/<machineactionid>/cancel
```

## Request headers

|Name|Type|Description|
|---|---|---|
|Authorization|String|Bearer {token}. Required.|
|Content-Type|string|application/json. Required.|

## Request body

|Parameter|Type|Description|
|---|---|---|
|Comment|String|Comment to associate with the cancellation action.|

## Response

If successful, this method returns 200, OK response code with a Machine Action entity. If machine action entity with the specified id was not found - 404 Not Found.

## Example

### Request

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
