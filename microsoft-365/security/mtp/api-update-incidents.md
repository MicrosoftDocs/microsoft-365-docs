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
Updates properties of existing incident.
<br>Updatable properties are: ```status```, ```determination```, ```classification```, ```assignedTo``` and ```tags```.


## Limitations
1. Rate limitations for this API are 50 calls per minute and 1500 calls per hour.
2. You can set the ```determination``` only if the classification is TruePositive.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Access the Microsoft Threat Protection APIs](api-access.md).

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Incident.ReadWrite.All |	'Read and write all incidents'
Delegated (work or school account) | Incident.ReadWrite | 'Read and write incidents'

>[!NOTE]
> When obtaining a token using user credentials:
>- The user needs to have permission to update the incident in the portal.


## HTTP request

```
PATCH /api/incidents/{id}
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
status | Enum | Specifies the current status of the alert. Possible values are: ```Active```, ```Resolved``` and ```Redirected```.
assignedTo | string | Owner of the incident.
classification | Enum | Specification of the alert. Possible values are: ```Unknown```, ```FalsePositive```, ```TruePositive```.
determination | Enum | Specifies the determination of the alert. Possible values are: ```NotAvailable```, ```Apt```, ```Malware```, ```SecurityPersonnel```, ```SecurityTesting```, ```UnwantedSoftware```, ```Other```.
tags | string List | List of Incident tags.



## Response
If successful, this method returns 200 OK, and the incident entity in the response body with the updated properties. If incident with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```json; PATCH https://api.security.microsoft.com/api/incidents/{id}
{
    "status": "Resolved",
    "assignedTo": "secop2@contoso.com",
    "classification": "TruePositive",
    "determination": "Malware",
    "tags": ["Yossi's playground", "Don't mess with the Zohan"]
}
```


## Related topic
- [Incident APIs](api-incident.md)
- [List incidents](api-list-incidents.md)