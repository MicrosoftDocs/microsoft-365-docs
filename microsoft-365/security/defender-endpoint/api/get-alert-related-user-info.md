---
title: Get alert related user information
description: Learn how to use the Get alert-related user information API to retrieve the user related to a specific alert in Microsoft Defender for Endpoint.
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

# Get alert related user information API

[!INCLUDE [Microsoft Defender XDR rebranding](../../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../../includes/improve-request-performance.md)]

## API description

Retrieves the User related to a specific alert.

## Limitations

- You can query on alerts last updated according to your configured retention period.
- Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|User.Read.All|'Read user profiles'
Delegated (work or school account)|User.Read.All|'Read user profiles'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](../user-roles.md) for more information)
> - The user needs to have access to the device associated with the alert, based on device group settings (See [Create and manage device groups](../machine-groups.md) for more information)
>
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

## HTTP request

```http
GET /api/alerts/{id}/user
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful and alert and a user exists - 200 OK with user in the body. If alert or user not found - 404 Not Found.

## Example

### Request example

Here's an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/alerts/636688558380765161_2136280442/user
```

### Response example

Here is an example of the response.

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Users/$entity",
    "id": "contoso\\user1",
    "accountName": "user1",
    "accountDomain": "contoso",
    "accountSid": "S-1-5-21-72051607-1745760036-109187956-93922",
    "firstSeen": "2019-12-08T06:33:39Z",
    "lastSeen": "2020-01-05T06:58:34Z",
    "mostPrevalentMachineId": "0111b647235c26159bec3e5eb6c8c3a0cc3ab766",
    "leastPrevalentMachineId": "0111b647235c26159bec3e5eb6c8c3a0cc3ab766",
    "logonTypes": "Network",
    "logOnMachinesCount": 1,
    "isDomainAdmin": false,
    "isOnlyNetworkUser": false
}
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../../includes/defender-mde-techcommunity.md)]
