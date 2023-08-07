---
title: Get user-related alerts API
description: Retrieve a collection of alerts related to a given user ID using Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get, user, related, alerts
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
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
ms.date: 12/18/2020
---

# Get user-related alerts API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Retrieves a collection of alerts related to a given user ID.

## Limitations

1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Alert.Read.All|'Read all alerts'
Application|Alert.ReadWrite.All|'Read and write all alerts'
Delegated (work or school account) | Alert.Read | 'Read alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'View Data'. For more information, see [Create and manage roles](user-roles.md).
> - Response will include only alerts, associated with devices, that the user have access to, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)
>
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2. 

## HTTP request

```http
GET /api/users/{id}/alerts
```

**The ID is not the full UPN, but only the user name. (for example, to retrieve alerts for user1@contoso.com use /api/users/user1/alerts)**

## Request headers

Name|Type|Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful and user exists - 200 OK. If the user does not exist - 200 OK with an empty set.

## Example

### Request

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/users/user1/alerts
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
