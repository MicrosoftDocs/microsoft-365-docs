---
title: Get IP statistics API
description: Get the latest stats for your IP using Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get, ip, statistics, prevalence
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

# Get IP statistics API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description
Retrieves the statistics for the given IP.

## Limitations
1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.
2. Maximum Value for Lookbackhours is 720 Hours(30days).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Ip.Read.All|'Read IP address profiles'
Delegated (work or school account)|Ip.Read.All|'Read IP address profiles'

> [!NOTE]
> When obtaining a token using user credentials:
> - The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request

```http
GET /api/ips/{ip}/stats
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request URI parameters

Name|Type|Description
:---|:---|:---
lookBackHours|Int32|Defines the hours we search back to get the statistics. Defaults to 30 days. **Optional**.

## Request body

Empty

## Response

If successful and ip exists - 200 OK with statistical data in the body. IP is valid but does not exist - organizationPrevalence 0, IP is invalid - HTTP 400.

## Example

### Request example

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/ips/10.209.67.177/stats?lookBackHours=48
```

### Response example

Here is an example of the response.

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#microsoft.windowsDefenderATP.api.InOrgIPStats",
    "ipAddress": "10.209.67.177",
    "organizationPrevalence": 63515,
    "orgFirstSeen": "2017-07-30T13:36:06Z",
    "orgLastSeen": "2017-08-29T13:32:59Z"
}
```

|Name|Description|
|---|---|
|Organization prevalence|the distinct count of devices that opened network connection to this IP.|
|Org first seen|the first connection for this IP in the organization.|
|Org last seen|the last connection for this IP in the organization.|

> [!NOTE]
> This statistic information is based on data from the past 30 days.
