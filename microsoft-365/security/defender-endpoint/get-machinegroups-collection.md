---
title: Get RBAC machine groups collection API
description: Learn how to use the Get KB collection API to retrieve a collection of RBAC device groups in Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get, RBAC, group
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: leonidzh
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 10/07/2018
ms.custom: api
---

# Get KB collection API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** 
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

Retrieves a collection of RBAC device groups.

## Permissions

User needs read permissions.

## HTTP request

```http
GET https://graph.microsoft.com/testwdatppreview/machinegroups
```

## Request headers

Header|Value
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json

## Request body

Empty

## Response

If successful - 200 OK.

## Example

### Request

Here is an example of the request.

```http
GET https://graph.microsoft.com/testwdatppreview/machinegroups
Content-type: application/json
```

### Response example

Here is an example of the response.
Field id contains device group **id** and equal to field **rbacGroupId** in devices info.
Field **ungrouped** is true only for one group for all devices that have not been assigned to any group. This group as usual has name "UnassignedGroup".

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context":"https://graph.microsoft.com/testwdatppreview/$metadata#MachineGroups",
    "@odata.count":7,
    "value":[
        {
            "id":86,
            "name":"UnassignedGroup",
            "description":"",
            "ungrouped":true},
        ...
}
```
