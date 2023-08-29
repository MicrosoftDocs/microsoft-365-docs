---
title: Update incident API
description: Learn how to update incidents using Microsoft 365 Defender API
keywords: update, api, incident
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
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
ms.collection: 
 - m365-security
 - tier3
 - must-keep
ms.topic: reference
search.appverid:
  - MOE150
  - MET150
ms.custom: api
ms.date: 02/08/2023
---

# Update incidents API

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview). For information about the new _update incident_ API using MS Graph security API, see [Update incident](/graph/api/resources/security-incident-update).

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## API description

Updates properties of existing incident. Updatable properties are: `status`, `determination`, `classification`, `assignedTo`, `tags`, and `comments`.

### Quotas, resource allocation, and other constraints

1. You can make up to 50 calls per minute or 1500 calls per hour before you hit the throttling threshold.
2. You can set the `determination` property only if `classification` is set to TruePositive.

If your request is throttled, it will return a `429` response code. The response body will indicate the time when you can begin making new calls.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Access the Microsoft 365 Defender APIs](api-access.md).

Permission type|Permission|Permission display name
---|---|---
Application|Incident.ReadWrite.All|Read and write all incidents
Delegated (work or school account)|Incident.ReadWrite|Read and write incidents

> [!NOTE]
> When obtaining a token using user credentials, the user needs to have permission to update the incident in the portal.

## HTTP request

```HTTP
PATCH /api/incidents/{id}
```

## Request headers

Name|Type|Description
---|---|---
Authorization|String|Bearer {token}. **Required**.
Content-Type|String|application/json. **Required**.

## Request body

In the request body, supply the values for the fields that should be updated. Existing properties that aren't included in the request body will maintain their values, unless they have to be recalculated due to changes to related values. For best performance, you should omit existing values that haven't changed.

Property|Type|Description
---|---|---
status|Enum|Specifies the current status of the incident. Possible values are: `Active`, `Resolved`, and `Redirected`.
assignedTo|string|Owner of the incident.
classification|Enum|Specification of the incident. Possible values are: `TruePositive`, `Informational, expected activity`, and `FalsePositive`.
determination|Enum|Specifies the determination of the incident. <p>Possible determination values for each classification are: <br><li> <b>True positive</b>: `Multistage attack` (MultiStagedAttack), `Malicious user activity` (MaliciousUserActivity), `Compromised account` (CompromisedUser) – consider changing the enum name in public api accordingly, `Malware` (Malware), `Phishing` (Phishing), `Unwanted software` (UnwantedSoftware), and `Other` (Other). <li> <b>Informational, expected activity:</b> `Security test` (SecurityTesting), `Line-of-business application` (LineOfBusinessApplication), `Confirmed activity` (ConfirmedUserActivity) - consider changing the enum name in public api accordingly, and `Other` (Other). <li>  <b>False positive:</b> `Not malicious` (Clean) - consider changing the enum name in public api accordingly, `Not enough data to validate` (InsufficientData), and `Other` (Other).
tags|string list|List of Incident tags.
comment|string|Comment to be added to the incident.

> [!NOTE]
> Around August 29, 2022, previously supported alert determination values ('Apt' and 'SecurityPersonnel') will be deprecated and no longer available via the API.

## Response

If successful, this method returns `200 OK`. The response body will contain the incident entity with updated properties. If an incident with the specified ID wasn't found, the method returns
 `404 Not Found`.

## Example

### Request example

Here's an example of the request.

```HTTP
 PATCH https://api.security.microsoft.com/api/incidents/{id}
```

### Response example

```json
{
    "status": "Resolved",
    "assignedTo": "secop2@contoso.com",
    "classification": "TruePositive",
    "determination": "Malware",
    "tags": ["Yossi's playground", "Don't mess with the Zohan"],
    "comments": [
          {
              "comment": "pen testing",
              "createdBy": "secop2@contoso.com",
              "createdTime": "2021-05-02T09:34:21.5519738Z"
          },
          {
              "comment": "valid incident",
              "createdBy": "secop2@contoso.comt",
              "createdTime": "2021-05-02T09:36:27.6652581Z"
          }
      ]
}
```

## Related articles

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)

- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Learn about API limits and licensing](api-terms.md)
- [Understand error codes](api-error-codes.md)
- [Incident APIs](api-incident.md)
- [List incidents](api-list-incidents.md)
- [Incidents overview](incidents-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
