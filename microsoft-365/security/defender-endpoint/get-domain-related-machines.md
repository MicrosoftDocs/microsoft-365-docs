---
title: Get domain-related machines API
description: Learn how to use the Get domain-related machines API to get machines that communicated to or from a domain in Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get, domain, related, devices
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

# Get domain-related machines API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Retrieves a collection of [Machines](machine.md) that have communicated to or from a given domain address.

## Limitations

1. You can query on devices last updated according to your configured retention period.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Machine.Read.All|'Read all machine profiles'
Application|Machine.ReadWrite.All|'Read and write all machine information'
Delegated (work or school account)|Machine.Read|'Read machine information'
Delegated (work or school account)|Machine.ReadWrite|'Read and write machine information'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'View Data' (For more information, see [Create and manage roles](user-roles.md)
> - Response will include only devices that the user can access, based on device group settings (For more information, see [Create and manage device groups](machine-groups.md)
>
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

## HTTP request

```http
GET /api/domains/{domain}/machines
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful and domain exists - 200 OK with list of [machine](machine.md) entities. If domain doesn't exist - 200 OK with an empty set.

## Example

### Request

Here's an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/domains/api.securitycenter.microsoft.com/machines
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
