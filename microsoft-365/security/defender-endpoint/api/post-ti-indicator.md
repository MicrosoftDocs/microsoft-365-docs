---
title: Submit or Update Indicator API
description: Learn how to use the Submit or Update Indicator API to submit or update a new Indicator entity in Microsoft Defender for Endpoint.
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

# Submit or Update Indicator API

[!INCLUDE [Microsoft Defender XDR rebranding](../../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)


[!include[Microsoft Defender for Endpoint API URIs for US Government](../../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../../includes/improve-request-performance.md)]

## API description

Submits or Updates new [Indicator](ti-indicator.md) entity.

CIDR notation for IPs isn't supported.

## Limitations

1. Rate limitations for this API are 100 calls per minute and 1,500 calls per hour.
2. There's a limit of 15,000 active indicators per tenant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md).

|Permission type|Permission|Permission display name|
|:---|:---|:---|
|Application|Ti.ReadWrite|`Read and write Indicators`|
|Application|Ti.ReadWrite.All|`Read and write All Indicators`|
|Delegated (work or school account)|Ti.ReadWrite|`Read and write Indicators`|

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/indicators
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
indicatorValue|String|Identity of the [Indicator](ti-indicator.md) entity. **Required**
indicatorType|Enum|Type of the indicator. Possible values are: `FileSha1`, `FileMd5`, `CertificateThumbprint`, `FileSha256`, `IpAddress`, `DomainName`, and `Url`. **Required**
action|Enum|The action that is taken if the indicator is discovered in the organization. Possible values are: `Alert`, `Warn`, `Block`, `Audit`, `BlockAndRemediate`, `AlertAndBlock`, and `Allowed`. **Required**. The `GenerateAlert` parameter must be set to `TRUE` when creating an action with `Audit`.
application|String|The application associated with the indicator. This field only works for new indicators. It doesn't update the value on an existing indicator. **Optional**
title|String|Indicator alert title. **Required**
description|String|Description of the indicator. **Required**
expirationTime|DateTimeOffset|The expiration time of the indicator. **Optional**
severity|Enum|The severity of the indicator. Possible values are: `Informational`, `Low`, `Medium`, and `High`. **Optional**
recommendedActions|String|TI indicator alert recommended actions. **Optional**
rbacGroupNames|String|Comma-separated list of RBAC group names the indicator would be applied to. **Optional**
educateUrl|String|Custom notification/support URL. Supported for Block and Warn action types for URL indicators. **Optional**
generateAlert|Enum|**True** if alert generation is required, **False** if this indicator shouldn't generate an alert.
## Response

- If successful, this method returns 200 - OK response code and the created / updated [Indicator](ti-indicator.md) entity in the response body.
- If not successful: this method return 400 - Bad Request. Bad request usually indicates incorrect body.

## Example

### Request

Here's an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/indicators
```

```json
{
    "indicatorValue": "220e7d15b011d7fac48f2bd61114db1022197f7f",
    "indicatorType": "FileSha1",
    "title": "test",
    "application": "demo-test",
    "expirationTime": "2020-12-12T00:00:00Z",
    "action": "AlertAndBlock",
    "severity": "Informational",
    "description": "test",
    "recommendedActions": "nothing",
    "rbacGroupNames": ["group1", "group2"]
}
```

## Related article

- [Manage indicators](../manage-indicators.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../../includes/defender-mde-techcommunity.md)]
