---
title: Add, update or remove a scan definition
description: Learn how to use the Add, update or Remove scan definitions.
keywords: apis, graph api, supported apis, scans, network scans, authenticated scan
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

# Add, update or remove a scan definition

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

API to Add, update or remove an authenticated scan.

## Limitations

Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

You can post on machines last seen according to your configured retention period.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Defender for Endpoint APIs](apis-intro.md).

Permission type|Permission|Permission display name
:---|:---|:---
Application|Machine.ReadWrite.All| Read and write all scan information.
Delegated (work or school account)|Machine.Read.Write|Read and write all scan information.

> [!NOTE]
> When obtaining a token using user credentials:
>
> - To view data the user needs to have at least the following role permission: 'ViewData' or 'TvmViewData' (See [Create and manage roles](user-roles.md) for more information)
> - To edit data the user needs to have at least the following role permission: 'ManageSecurity' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions
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
Value|String|The scan Id. **Required**.
Action|Enum|Add, Patch or Remove. Allowed values are: 'Add', 'Patch' or 'Remove'. **Required**.

## Response

If successful, this method returns 200 - Ok response code and the updated Machine in the response body.

## Example Request

Here is an example of a request that adds a new scan.

```http
POST https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions
```

```json
{
  "Value" : "td32f17af-5cc2-4e4e-964a-4c4ef7d216e2",
  "Action": "Add"
}
```

To remove machine tag, set the Action to 'Remove' instead of 'Add' in the request body.
