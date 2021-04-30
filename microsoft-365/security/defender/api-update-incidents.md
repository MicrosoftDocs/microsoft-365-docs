---
title: Update incidents API
description: Learn how to update incidents using Microsoft 365 Defender API
keywords: update, api, incident
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Update incidents API

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## API description

Updates properties of existing incident. Updatable properties are: ```status```, ```determination```, ```classification```, ```assignedTo```, and ```tags```.

### Quotas, resource allocation, and other constraints

1. You can make up to 50 calls per minute or 1500 calls per hour before you hit the throttling threshold.
2. You can set the `determination` property only if `classification` is set to TruePositive.

If your request is throttled, it will return a `429` response code. The response body will indicate the time when you can begin making new calls.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Access the Microsoft 365 Defender APIs](api-access.md).

Permission type | Permission | Permission display name
-|-|-
Application | Incident.ReadWrite.All | Read and write all incidents
Delegated (work or school account) | Incident.ReadWrite | Read and write incidents

> [!NOTE]
> When obtaining a token using user credentials, the user needs to have permission to update the incident in the portal.

## HTTP request

```HTTP
PATCH /api/incidents/{id}
```

## Request headers

Name | Type | Description
-|-|-
Authorization | String | Bearer {token}. **Required**.
Content-Type | String | application/json. **Required**.

## Request body

In the request body, supply the values for the fields that should be updated. Existing properties that aren't included in the request body will maintain their values, unless they have to be recalculated due to changes to related values. For best performance, you should omit existing values that haven't changed.

Property | Type | Description
-|-|-
status | Enum | Specifies the current status of the incident. Possible values are: ```Active```, ```Resolved```, and ```Redirected```.
assignedTo | string | Owner of the incident.
classification | Enum | Specification of the incident. Possible values are: ```Unknown```, ```FalsePositive```, ```TruePositive```.
determination | Enum | Specifies the determination of the incident. Possible values are: ```NotAvailable```, ```Apt```, ```Malware```, ```SecurityPersonnel```, ```SecurityTesting```, ```UnwantedSoftware```, ```Other```.
tags | string List | List of Incident tags.

## Response

If successful, this method returns `200 OK`. The response body will contain the incident entity with updated properties. If an incident with the specified ID wasn't found, the method returns
 `404 Not Found`.

## Example

**Request**

Here's an example of the request.

```HTTP
 PATCH https://api.security.microsoft.com/api/incidents/{id}
```

**Response**

```json
{
    "status": "Resolved",
    "assignedTo": "secop2@contoso.com",
    "classification": "TruePositive",
    "determination": "Malware",
    "tags": ["Yossi's playground", "Don't mess with the Zohan"]
}
```

## Related articles

- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Learn about API limits and licensing](api-terms.md)
- [Understand error codes](api-error-codes.md)
- [Incident APIs](api-incident.md)
- [List incidents](api-list-incidents.md)
- [Incidents overview](incidents-overview.md)
