---
title: Microsoft 365 Defender incidents APIs and the incidents resource type
description: Learn about the methods and properties of the Incidents resource type in Microsoft 365 Defender
keywords: incident, incidents, api
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

# Microsoft 365 Defender incidents API and the incidents resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft 365 Defender](/fwlink/?linkid=2118804)

> [!NOTE]
> **Try our new APIs using MS Graph security API**. Find out more at: [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview?view=graph-rest-1.0&preserve-view=true).

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

An [incident](incidents-overview.md) is a collection of related alerts that help describe an attack. Events from different entities in your organization are automatically aggregated by Microsoft 365 Defender. You can use the incidents API to programatically access your organization's incidents and related alerts.

## Quotas and resource allocation

You can request up to 50 calls per minute or 1500 calls per hour. Each method also has its own quotas. For more information on method-specific quotas, see the respective article for the method you want to use.

A `429` HTTP response code indicates that you've reached a quota, either by number of requests sent, or by allotted running time. The response body will include the time until the quota you reached will be reset.

## Permissions

The incidents API requires different kinds of permissions for each of its methods. For more information about required permissions, see the respective method's article.

## Methods

Method | Return Type | Description
-|-|-
[List incidents](api-list-incidents.md) | [Incident](api-incident.md) list | Get a list of incidents.
[Update incident](api-update-incidents.md) | [Incident](api-incident.md) | Update a specific incident.
[Get incident](api-get-incident.md) | [Incident](api-incident.md) | Get a single incident.

## Request body, response, and examples

Refer to the respective method articles for more details on how to construct a request or parse a response, and for practical examples.

## Common properties

Property | Type | Description
-|-|-
incidentId | long | Incident unique ID.
redirectIncidentId | nullable long | The Incident ID the current Incident was merged to.
incidentName | string | The name of the Incident.
createdTime | DateTimeOffset | The date and time (in UTC) the Incident was created.
lastUpdateTime | DateTimeOffset | The date and time (in UTC) the Incident was last updated.
assignedTo | string | Owner of the Incident.
severity | Enum | Severity of the Incident. Possible values are: `UnSpecified`, `Informational`, `Low`, `Medium`, and `High`.
status | Enum | Specifies the current status of the incident. Possible values are: `Active`, `InProgress`, `Resolved`, and `Redirected`.
classification | Enum | Specification of the incident. Possible values are: `TruePositive`, `Informational, expected activity`, and `FalsePositive`.
determination | Enum | Specifies the determination of the incident. <p>Possible determination values for each classification are: <br><li> <b>True positive</b>: `Multistage attack` (MultiStagedAttack), `Malicious user activity` (MaliciousUserActivity), `Compromised account` (CompromisedUser) – consider changing the enum name in public api accordingly, `Malware` (Malware), `Phishing` (Phishing), `Unwanted software` (UnwantedSoftware), and `Other` (Other). <li> <b>Informational, expected activity:</b> `Security test` (SecurityTesting), `Line-of-business application` (LineOfBusinessApplication), `Confirmed activity` (ConfirmedUserActivity) - consider changing the enum name in public api accordingly, and `Other` (Other). <li>  <b>False positive:</b> `Not malicious` (Clean) - consider changing the enum name in public api accordingly, `Not enough data to validate` (InsufficientData), and `Other` (Other).
tags | string list | List of Incident tags.
comments | List of incident comments | Incident Comment object contains: comment string, createdBy string, and createTime date time.
alerts | alert list | List of related alerts. See examples at [List incidents](api-list-incidents.md) API documentation.

> [!NOTE]
> Around August 29, 2022, previously supported alert determination values ('Apt' and 'SecurityPersonnel') will be deprecated and no longer available via the API.

## Related articles

- [Use the Microsoft Graph security API - Microsoft Graph | Microsoft Learn](/graph/api/resources/security-api-overview)

- [Microsoft 365 Defender APIs overview](api-overview.md)
- [Incidents overview](incidents-overview.md)
- [List incidents API](api-list-incidents.md)
- [Update incident API](api-update-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
