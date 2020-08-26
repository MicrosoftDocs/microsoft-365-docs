---
title: Update incidents API
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Update incidents API

**Applies to:**
- Microsoft Threat Protection

## API description
Updates properties of existing alerts.
<br>Submission of **comment** is available with or without updating properties.
<br>Updatable properties are: ```status```, ```determination```, ```classification``` and ```assignedTo```.


## Limitations
1. You can update alerts that available in the API. 
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Supported Microsoft Threat Protection APIs](api-supported.md).

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alerts.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

>[!NOTE]
> When obtaining a token using user credentials:
>- The user needs to have at least 'Alerts investigation' permission.
>- The user needs to have access to the device associated with the alert, based on device group settings. 


## HTTP request

```
PATCH /api/alerts/{id}
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
status | String | Specifies the current status of the alert. The property values are: 'New', 'InProgress' and 'Resolved'.
assignedTo | String | Owner of the alert
classification | String | Specifies the specification of the alert. The property values are: 'Unknown', 'FalsePositive', 'TruePositive'. 
determination | String | Specifies the determination of the alert. The property values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'
comment | String | Comment to be added to the alert.



## Response
If successful, this method returns 200 OK, and the alert entity in the response body with the updated properties. If alert with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
PATCH https://api.securitycenter.windows.com/api/alerts/121688558380765161_2136280442
Content-Type: application/json

{
    "status": "Resolved",
	"assignedTo": "secop2@contoso.com",
    "classification": "FalsePositive",
    "determination": "Malware",
    "comment": "Resolve my alert and assign to secop2"
}
```