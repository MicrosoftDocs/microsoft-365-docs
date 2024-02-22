---
title: Delete Indicator API.
description: Learn how to use the Delete Indicator API to delete an Indicator entity by ID in Microsoft Defender for Endpoint.
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

# Delete Indicator API

[!INCLUDE [Microsoft Defender XDR rebranding](../../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../../includes/improve-request-performance.md)]


## API description

Deletes an [Indicator](ti-indicator.md) entity by ID.

## Limitations

Rate limitations for this API are 100 calls per minute and 1,500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md).

| Permission type | Permission | Permission display name |
| :---|:---|:---|
| Application | Ti.ReadWrite | 'Read and write TI Indicators' |
| Application | Ti.ReadWrite.All | 'Read and write Indicators' |

## HTTP request

```http
Delete https://api.securitycenter.microsoft.com/api/indicators/{id}
```

[!include[Improve request performance](../../../includes/improve-request-performance.md)]

## Request headers

Name|Type|Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body

Empty

## Response

If Indicator exists and deleted successfully - 204 OK without content

If Indicator with the specified id wasn't found - 404 Not Found

## Example

### Request

Here's an example of the request.

```http
DELETE https://api.securitycenter.microsoft.com/api/indicators/995
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../../includes/defender-mde-techcommunity.md)]
