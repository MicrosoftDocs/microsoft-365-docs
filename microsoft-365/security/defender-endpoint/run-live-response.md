---
title: Run live response commands on a device
description: Learn how to run a sequence of live response commands on a device.
keywords: apis, graph api, supported apis, upload to library
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

#  Run live response commands on a device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]


## API description

Runs a sequence of live response commands on a device

## Limitations

1.  Rate limitations for this API are 10 calls per minute (additional requests
    are responded with HTTP 429)

2.  25 concurrently running sessions (additional requests are queued)

3.  If the machine is not available, the session will be queued for up to 7
    days.

4.  RunScript command timeouts after 10 minutes.

5.  When a live response command fails all followed actions will not be
    executed.

## Permissions

One of the following permissions is required to call this API. To learn more,
including how to choose permissions, see [Get started](apis-intro.md).

| PERMISSIONS                        |                      |                                           |
|------------------------------------|----------------------|-------------------------------------------|
| Permission type                    | Permission           | Permission display name                   |
| Application                        | Machine.LiveResponse | 'Run live response on a specific machine' |
| Delegated (work or school account) | Machine.LiveResponse | 'Run live response on a specific machine' |

## HTTP request

POST
[https://api.securitycenter.microsoft.com/API/machines/{machine_id}/runliveresponse](https://api.securitycenter.microsoft.com/API/machines/%7bmachine_id%7d/runliveresponse)

## Request headers

| Name      | Type | Description                 |
|---------------|----------|---------------------------------|
| Authorization | String   | Bearer {token}. Required.   |
| Content-Type  | string   | application/json. Required. |

## Request body

| Parameter | Type | Description                                                        |
|---------------|----------|------------------------------------------------------------------------|
| Comment       | String   | Comment to associate with the action.                                  |
| Commands      | Array    | Commands to run. Allowed values are “PutFile”, “RunScript”, “GetFile”. |

Commands:

| Command Type | Parameters                                                                          | Description                                                                                                                      |
|------------------|-----------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| PutFile      | Key: “FileName”                                                                         | Puts a file from the library to the device. Files are saved in a working folder and are deleted when the device restarts by default. |
|                  | Value: \<file name\>                                                                    |                                                                                                                                      |
| RunScript    | Key: “ScriptName” Value: \<Script from library\> Key: “Args”                            | Runs a script from the library on a device.                                                                                          |
|                  | Value: \<Script arguments\>                                                             |                                                                                                                                      |
|                  |                                                                                         | The Args parameter is passed to your script. Timeouts after 10 minutes.                                                              |
| GetFile      | Key: “Path” Value: \<File path\>                                                        | Collect file from a device. Backslashes in path must be escaped                                                                      |

## Response

-   If successful, this method returns 200, Created response code with a Machine
    Action entity. If machine action entity with the specified ID was not found
    - 404 Not Found.

## Example

**Request**

Here is an example of the request.

```HTTP

POST
https://api.securitycenter.microsoft.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/runliveresponse

```
**JSON**

image


**Response**

Here is an example of the response.

```HTTP
HTTP/1.1 200 Ok
```

Content-type: application/json

## Related topics
Get machine action API [link to machine actions / Get machine action API ]
Get live response result API [link to machine actions / get live response
result]
Cancel machine action API [link to machine actions / run live response]
Run live response API [link to machine actions / run live response]
Upload to live response library API [link to machine actions / run live
response]