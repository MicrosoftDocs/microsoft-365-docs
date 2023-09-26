---
title: Batch Delete Indicators API
description: Learn how to use the Batch Delete Indicators API to delete indicator entities by ID in Microsoft Defender for Endpoint.
keywords: apis, public api, supported apis, delete, ti indicator, entity, id
ms.service: microsoft-365-security
ms.subservice: mde
author: itsela-ms
ms.author: itsela
ms.localizationpriority: medium
manager: dansimp
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.custom: api
search.appverid: met150
ms.date: 07/31/2023
---

# Batch Delete Indicators

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description

Deletes [Indicator](ti-indicator.md) entities by ID.

## Limitations

Rate limitations for this API are 30 calls per minute and 1500 calls per hour.

Batch size limit of up to 500 [Indicator](ti-indicator.md) IDs.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md)

Permission type | Permission | Permission display name
:---|:---|:---
Application | Ti.ReadWrite | 'Read and write TI Indicators'
Application | Ti.ReadWrite.All | 'Read and write Indicators'

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/indicators/BatchDelete
```

[!include [Improve request performance](../../includes/improve-request-performance.md)]

## Request headers

Name|Type|Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body

In the request body, supply a JSON object with the following parameters:

|Parameter|Type|Description|
|:---|:---|:---|
|IndicatorIds|List *String* |A list of the IDs of the indicators to be removed. **Required**|

## Response

If Indicators all existed and were deleted successfully - 204 OK without content

if indicator IDs list is empty or exceeds size limit - 400 Bad Request

if any indicator ID is invalid - 400 Bad Request

if requestor is not exposed to any indicator's device groups - 403 Forbidden

If any Indicator ID was not found - 404 Not Found

## Example

### Request

Here's an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/indicators/BatchDelete
```


```json
{
	"IndicatorIds": [ "1", "2", "5" ]
}
```

