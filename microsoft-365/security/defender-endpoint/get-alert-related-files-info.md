---
title: Get alert related files information
description: Retrieve all files related to a specific alert using Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get alert information, alert information, related files
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
ms.custom: api
---

# Get alert related files information API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Retrieves all files related to a specific alert.

## Limitations

1. You can query on alerts last updated according to your configured retention period.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|File.Read.All|'Read file profiles'
Delegated (work or school account)|File.Read.All|'Read file profiles'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
> - The user needs to have access to the device associated with the alert, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request

```http
GET /api/alerts/{id}/files
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful and alert and files exist - 200 OK. If alert not found - 404 Not Found.

## Example

### Request example

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/alerts/636688558380765161_2136280442/files
```

### Response example

Here is an example of the response.

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Files",
    "value": [
        {
            "sha1": "f2a00fd2f2de1be0214b8529f1e9f67096c1aa70",
            "sha256": "dcd71ef5fff4362a9f64cf3f96f14f2b11d6f428f3badbedcb9ff3361e7079aa",
            "md5": "8d5b7cc9a832e21d22503057e1fec8e9",
            "globalPrevalence": 29,
            "globalFirstObserved": "2019-03-23T23:54:06.0135204Z",
            "globalLastObserved": "2019-04-23T00:43:20.0489831Z",
            "size": 113984,
            "fileType": null,
            "isPeFile": true,
            "filePublisher": "Microsoft Corporation",
            "fileProductName": "Microsoft© Windows© Operating System",
            "signer": "Microsoft Corporation",
            "issuer": "Microsoft Code Signing PCA",
            "signerHash": "9dc17888b5cfad98b3cb35c1994e96227f061675",
            "isValidCertificate": true,
            "determinationType": "Unknown",
            "determinationValue": null
        }
        ...
    ]
}
```
