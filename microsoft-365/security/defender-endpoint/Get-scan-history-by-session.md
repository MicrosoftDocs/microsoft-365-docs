---
title: Get scan history by session
description: Learn how to use the Get all scan definition APIs.
keywords: apis, graph api, supported apis, scan history by session
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
ms.topic: conceptual
ms.subservice: mde
ms.custom: api
search.appverid: met150
---

# Get scan history by session

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

[!Include[Prerelease information](../../includes/prerelease.md)]

[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Retrieves a list of all scan definitions by session.

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
GET /api/DeviceAuthenticatedScanDefinitions/ScanHistoryBySessionId
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful, this method returns 200 - OK response code with a list of the scan history for a session.

## Example

### Request example

Here is an example of the request.

```http
GET https://api-us.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions/ScanHistoryBySessionId
```

### Response example

Here is an example of the response.

```json
{
"scanType": "Network", 
"scanName": "Test Network scan", 
"isActive": true, 
"target": "127.0.0.1", 
"intervalInHours": 4, 
"scannerAgent": { 
    "machineId": "896226a67c5e2917e44fb5c0368dc6c83129c5bf" 
    }, 
"scanAuthenticationParams": { 
    "@odata.type": "#microsoft.windowsDefenderATP.api.SnmpAuthParams", 
    "type": "AuthPriv", 
    "username": "username", 
    "authProtocol": "authProtocol", 
    "authPassword": "authPassword", 
    "privProtocol": "privProtocol", 
    "privPassword": "privPassword", 
    "communityString": "community-string" 
    } 
} 

```
