---
title: List exposure score by device group
description: Retrieves a list of exposure scores by device group.
keywords: apis, graph api, supported apis, get, exposure score, device group, device group exposure score
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dansimp
ms.author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
ms.topic: conceptual
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/18/2020
---

# List exposure score by device group

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

Retrieves the exposure score for each machine group.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
---|---|---
Application|Score.Read.All|'Read Threat and Vulnerability Management score'
Delegated (work or school account)|Score.Read|'Read Threat and Vulnerability Management score'

## HTTP request

```http
GET /api/exposureScore/ByMachineGroups
```

## Request headers

Name|Type|Description
---|---|---
|Authorization|String|Bearer {token}.**Required**.

## Request body

Empty

## Response

If successful, this method returns 200 OK, with a list of exposure score per device group data in the response body.

## Example

### Example request

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/exposureScore/ByMachineGroups
```

### Example response

Here is an example of the response.

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#ExposureScore",
    "value": [
        {
            "time": "2019-12-03T09:51:28.214338Z",
            "score": 41.38041766305988,
            "rbacGroupName": "GroupOne"
        },
        {
            "time": "2019-12-03T09:51:28.2143399Z",
            "score": 37.403726933165366,
            "rbacGroupName": "GroupTwo"
        }
        ...
    ]
}
```

## Related topics

- [Microsoft Defender Vulnerability Management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
- [Defender Vulnerability Management exposure score](/microsoft-365/security/defender-endpoint/tvm-exposure-score)
