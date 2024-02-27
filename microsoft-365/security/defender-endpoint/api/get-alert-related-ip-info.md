---
title: Get alert-related IPs' information
description: Retrieve all IPs related to a specific alert using Microsoft Defender for Endpoint.
ms.service: defender-endpoint
ms.author: siosulli
author: siosulli
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.subservice: reference
ms.custom: api
search.appverid: met150
ms.date: 12/18/2020
---

# Get alert-related IPs' information API

[!INCLUDE [Microsoft Defender XDR rebranding](../../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)


[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../../includes/improve-request-performance.md)]

## API description

Retrieves all IPs related to a specific alert.

## Limitations

1. You can query on alerts last updated according to your configured retention period.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Ip.Read.All|'Read IP address profiles'
Delegated (work or school account)|Ip.Read.All|'Read IP address profiles'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'View Data' (For more information, see [Create and manage roles](../user-roles.md)
> - The user needs to have access to the device associated with the alert, based on device group settings (For more information, see [Create and manage device groups](../machine-groups.md)
>
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

## HTTP request

```http
GET /api/alerts/{id}/ips
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful and alert and an IP exist - 200 OK. If alert not found - 404 Not Found.

## Example

### Request example

Here's an example of the request.

```http
GET https://api.securitycenter.microsoft.com/alerts/636688558380765161_2136280442/ips
```

### Response example

Here's an example of the response.

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/$metadata#Ips",
    "value": [
                {
                    "id": "104.80.104.128"
                },
                {
                    "id": "23.203.232.228
                }
                ...
    ]
}
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../../includes/defender-mde-techcommunity.md)]
