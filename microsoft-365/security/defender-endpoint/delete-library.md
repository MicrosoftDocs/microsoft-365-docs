---
title: Delete a file from the live response library 
description: Learn how to delete a file from the live response library.
keywords: apis, graph api, supported apis, delete from library
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

#  Delete a file from the live response library  

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

## API description

Delete a file from [live response
library](live-response-library-methods.md).

## Limitations

1.  Rate limitations for this API are 100 calls per minute and 1500 calls per
    hour.

## Permissions

One of the following permissions is required to call this API. To learn more,
including how to choose permissions, see [Get started](apis-intro.md).

| Permission type                    | Permission     | Permission display name        |
|------------------------------------|----------------|--------------------------------|
| Application                        | Library.Manage | 'Manage live response library' |
| Delegated (work or school account) | Library.Manage | 'Manage live response library' |

## HTTP request

DELETE https://api.securitycenter.microsoft.com/api/libraryfiles/{fileName}

## Request headers

| Name            | Type   | Description               |
|-----------------|--------|---------------------------|
| Authorization   | String | Bearer {token}. Required. |

## Request body

Empty

## Response

-   If file exists in library and deleted successfully – 204 No Content.

-   If specified file name was not found – 404 Not Found.

## Example

Request

Here is an example of the request.

```HTTP
DELETE https://api.securitycenter.microsoft.com/api/libraryfiles/script1.ps1
```

Related topic

-   Run live response API [link to machine actions / run live response]
