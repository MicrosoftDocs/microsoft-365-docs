---
title: Get scan history by definition
description: Learn how to use the get scan history by definition api
keywords: apis, graph api, supported apis, scan history, definition
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/15/2022
---

# Get scan history by definition

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> Want to experience Microsoft Defender Vulnerability Management? Find out how to [sign up for a free trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

[!Include[Prerelease information](../../includes/prerelease.md)]

[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Retrieves a list of the scan history by definitions.

## Limitations

1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md).

Permission type|Permission|Permission display name
:---|:---|:---
Application|Machine.Read.All| Read all scan information.
Delegated (work or school account)|Machine.Read.All|Read all scan information.

> [!NOTE]
> When obtaining a token using user credentials:
>
> - To view data the user needs to have at least the following role permission: 'ViewData' or 'TvmViewData' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request

```http
POST api/DeviceAuthenticatedScanDefinitions/GetScanHistoryByScanDefinitionId
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.
Content-Type|string|application/json. **Required**.

## Request body

In the request body, supply a JSON object with the following parameters:

Parameter|Type|Description
:---|:---|:---
ScanDefinitionIds |String|The scan Id. **Required**.

## Response

If successful, this method returns 200 - OK response code with a list of the scan history by definition.

## Example request

Here is an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions/GetScanHistoryByScanDefinitionId
```

```json
{
    "ScanDefinitionIds": ["4ad8d463-6b3a-4894-b42a-a2de9ea0a8ae", "60c4aa57-c573-4488-8d18-230914792a92", "c6220f67-2cad-4ba3-a2fa-7ded6384da56"]
}
```

## Response example

```json
{
"@odata.context": "https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions/GetScanHistoryByScanDefinitionId",
    "value": [
    {
    "ScanDefinitionIds": "4ad8d463-6b3a-4894-b42a-a2de9ea0a8ae",
    "LastScanned": "2022-12-20T11:14:24.5561791Z",
    "ScanStatus": "Partial Success",
    "ScannerId": "625431694b7d2ca9d07e77ca1b029ef216bebb6d"
    },
    {
    "ScanDefinitionIds": "60c4aa57-c573-4488-8d18-230914792a92",
    "LastScanned": "2022-11-17T15:13:24.5561791Z",
    "ScanStatus": "Partial Success",
    "ScannerId": "625431694b7d2ca9d07e77ca1b029ef216bebb6d"
    },
    {
    "ScanDefinitionIds": "c6220f67-2cad-4ba3-a2fa-7ded6384da56",
    "LastScanned": "2022-11-10T18:15:24.5561791Z",
    "ScanStatus": "Partial Success",
    "ScannerId": "625431694b7d2ca9d07e77ca1b029ef216bebb6d"
    },
   ]
}

```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
