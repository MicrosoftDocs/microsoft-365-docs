---
title: Add or Remove Machine Tags API
description: Learn how to use the Add or Remove machine tags API to adds or remove a tag for a machine in Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, tags, machine tags
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
ms.topic: article
ms.subservice: mde
ms.custom: api
search.appverid: met150
---

# Add or remove machine tags API

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1 ](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2 ](https://go.microsoft.com/fwlink/p/?linkid=2154037)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Adds or removes tag to a specific [Machine](machine.md).

## Limitations

1. You can post on machines last seen according to your configured retention period.

2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Defender for Endpoint APIs](apis-intro.md).

Permission type|Permission|Permission display name
:---|:---|:---
Application|Machine.ReadWrite.All|'Read and write all machine information'
Delegated (work or school account)|Machine.ReadWrite|'Read and write machine information'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'Manage security setting'. For more (See [Create and manage roles](user-roles.md) for more information).
> - The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information).

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/machines/{id}/tags
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
Value|String|The tag name. **Required**.
Action|Enum|Add or Remove. Allowed values are: 'Add' or 'Remove'. **Required**.

## Response

If successful, this method returns 200 - Ok response code and the updated Machine in the response body.

## Example Request

Here is an example of a request that adds machine tag.

```http
POST https://api.securitycenter.microsoft.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/tags
```

```json
{
  "Value" : "test Tag 2",
  "Action": "Add"
}
```

To remove machine tag, set the Action to 'Remove' instead of 'Add' in the request body.
