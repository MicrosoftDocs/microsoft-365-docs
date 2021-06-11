---
title: Update machine entity API
description: Learn how to update machine tags by using this API. You can update the tags and devicevalue properties.
keywords: apis, graph api, supported apis, get, alert, information, id
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
MS.technology: mde
ms.custom: api
---

# Update machine 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Updates properties of existing [Machine](machine.md).
<br>Submission of **comment** is available with or without updating properties.
<br>Updatable properties are: ```machineTags``` and ```deviceValue```.


## Limitations
1. You can update alerts that available in the API. See [List Alerts](get-alerts.md) for more information.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alerts.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Alerts investigation' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the device associated with the alert, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```
PATCH /api/machines/{machineId}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | String | application/json. **Required**.


## Request body
In the request body, supply the values for the relevant fields that should be updated.
<br>Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. 
<br>For best performance you shouldn't include existing values that haven't change.

Property | Type | Description
:---|:---|:---
machineTags | String collection | Set of [machine](machine.md) tags.
deviceValue | Nullable Enum | The [value of the device](tvm-assign-device-value.md). Possible values are: 'Normal', 'Low' and 'High'.

## Response
If successful, this method returns 200 OK, and the [machine](machine.md) entity in the response body with the updated properties. If machine with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```http
PATCH https://api.securitycenter.microsoft.com/api/machines/121688558380765161_2136280442
```

```json
{
    "healthStatus": "Active",
    "deviceValue": "Normal",
    "rbacGroupId": 0,
    "rbacGroupName": null,
    "riskScore": "Medium",
    "exposureLevel": "Medium",
    "isAadJoined": true,
    "aadDeviceId": "11c7d91a-4728-484e-82cc-220d280fe29c",
    "machineTags": [
                     "Demo Device",
                     "Generic User Machine - Attack Source",
                     "Windows 10",
                     "Windows Insider - Fast"
    ],
    "defenderAvStatus": "Updated",
    "onboardingStatus": "Onboarded",

}
```