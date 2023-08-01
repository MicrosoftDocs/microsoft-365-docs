---
title: Indicator resource type
description: Specify the entity details and define the expiration of the indicator using Microsoft Defender for Endpoint.
keywords: apis, supported apis, get, TiIndicator, Indicator, recent
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

# Indicator resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

- See the corresponding [Indicators page](https://securitycenter.windows.com/preferences2/custom_ti_indicators/files) in the portal.

Method|Return Type|Description
:---|:---|:---
[List Indicators](get-ti-indicators-collection.md)|[Indicator](ti-indicator.md) Collection|List [Indicator](ti-indicator.md) entities.
[Submit Indicator](post-ti-indicator.md)|[Indicator](ti-indicator.md)|Submit or update [Indicator](ti-indicator.md) entity.
[Import Indicators](import-ti-indicators.md)|[Indicator](ti-indicator.md) Collection|Submit or update [Indicators](ti-indicator.md) entities.
[Delete Indicator](delete-ti-indicator-by-id.md)|No Content|Deletes [Indicator](ti-indicator.md) entity.

## Properties

Property|Type|Description
:---|:---|:---
id|String|Identity of the [Indicator](ti-indicator.md) entity.
indicatorValue|String|The value of the [Indicator](ti-indicator.md).
indicatorType|Enum|Type of the indicator. Possible values are: "FileSha1", "FileSha256", "FileMd5", "CertificateThumbprint", "IpAddress", "DomainName" and "Url".
application|String|The application associated with the indicator.
action|Enum|The action that is taken if the indicator will be discovered in the organization. Possible values are: "Warn", "Block", "Audit", "Alert", "AlertAndBlock", "BlockAndRemediate" and "Allowed".
|externalID|String|Id the customer can submit in the request for custom correlation.|
sourceType|Enum|"User" in case the Indicator created by a user (for example, from the portal), "AadApp" in case it submitted using automated application via the API.
createdBySource|string|The name of the user/application that submitted the indicator.
createdBy|String|Unique identity of the user/application that submitted the indicator.
lastUpdatedBy|String|Identity of the user/application that last updated the indicator.
creationTimeDateTimeUtc|DateTimeOffset|The date and time when the indicator was created.
expirationTime|DateTimeOffset|The expiration time of the indicator.
lastUpdateTime|DateTimeOffset|The last time the indicator was updated.
severity|Enum|The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High".
title|String|Indicator title.
description|String|Description of the indicator.
recommendedActions|String|Recommended actions for the indicator.
rbacGroupNames|List of strings|RBAC device group names where the indicator is exposed and active. Empty list in case it exposed to all devices.
rbacGroupIds|List of strings|RBAC device group IDs where the indicator is exposed and active. Empty list in case it exposed to all devices.
generateAlert|Enum|**True** if alert generation is required, **False** if this indicator shouldn't generate an alert.

## Indicator Types

The indicator action types supported by the API are:

- Allowed
- Audit
- Block
- BlockAndRemediate
- Warn (Defender for Cloud Apps only)

For more information on the description of the response action types, see [Create indicators](manage-indicators.md).

> [!Note]
>
> The prior response actions (AlertAndBlock, and Alert) will be supported until January 2022. After this date, all customers must be use one of the action types listed above.

## Json representation

```json
{
    "id": "994",
    "indicatorValue": "881c0f10c75e64ec39d257a131fcd531f47dd2cff2070ae94baa347d375126fd",
    "indicatorType": "FileSha256",
    "action": "AlertAndBlock",
    "application": null,
    "source": "user@contoso.onmicrosoft.com",
    "sourceType": "User",
    "createdBy": "user@contoso.onmicrosoft.com",
    "severity": "Informational",
    "title": "Michael test",
    "description": "test",
    "recommendedActions": "nothing",
    "creationTimeDateTimeUtc": "2019-12-19T09:09:46.9139216Z",
    "expirationTime": null,
    "lastUpdateTime": "2019-12-19T09:09:47.3358111Z",
    "lastUpdatedBy": null,
    "rbacGroupNames": ["team1"]
}
```

## See also

- [Exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)

[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
