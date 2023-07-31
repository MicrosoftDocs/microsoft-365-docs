---
title: Upload files to the live response library
description: Learn how to upload a file to the live response library.
keywords: apis, graph api, supported apis, upload to library
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
- tier2
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
ms.date: 06/03/2021
---

# Upload files to the live response library

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Upload file to live response library.

## Limitations

1. File max size limitation is 20MB.

2. Rate limitations for this API are 100 calls per minute and 1500 calls per
    hour.

## Permissions

One of the following permissions is required to call this API. To learn more,
including how to choose permissions, see [Get started](apis-intro.md).

| Permission type                    | Permission     | Permission display name        |
|------------------------------------|----------------|--------------------------------|
| Application                        | Library.Manage | Manage live response library |
| Delegated (work or school account) | Library.Manage | Manage live response library |

## HTTP request

Upload

```HTTP
POST https://api.securitycenter.microsoft.com/api/libraryfiles
```

## Request headers

|  Name   |    Type    |       Description                         |
|-----------------|--------|--------------------------------|
| Authorization   | String | Bearer\<token>. Required.      |
| Content-Type    | string | multipart/form-data. Required. |

## Request body

In the request body, supply a form-data object with the following parameters:

| Parameter         |     Type         |       Description                                        |
|-----------------------|--------------|------------------------------------------------------------|
| File                  | File content | The file to be uploaded to live response library.Required |
| Description           | String       | Description of the file.                                  |
| ParametersDescription | String       | (Optional) Parameters required for the script to run. Default value is an empty string.                |
| OverrideIfExists      | Boolean      | (Optional) Whether to override the file if it already exists. Default value is an empty string.          |

## Response

- If successful, this method returns 200 - OK response code and the uploaded
    live response library entity in the response body.

- If not successful: this method returns 400 - Bad Request.
    Bad request usually indicates incorrect body.

## Example

Request

Here is an example of the request using curl.

```CURL
curl -X POST https://api.securitycenter.microsoft.com/api/libraryfiles -H
"Authorization: Bearer \$token" -F "file=\@mdatp1.png" -F
"ParametersDescription=test"
-F "HasParameters=true" -F "OverrideIfExists=true" -F "Description=test
description"
```

## Related topic

- [Run live response](run-live-response.md) 
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
