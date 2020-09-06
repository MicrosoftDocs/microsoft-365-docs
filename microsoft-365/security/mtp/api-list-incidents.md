---
title: List incidents API in Microsoft Threat Protection
description: Learn how to list incidents API in Microsoft Threat Protection
keywords: list, incident, incidents, api
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

# List incidents API in Microsoft Threat Protection

**Applies to:**
- Microsoft Threat Protection

## API description
The Incident API exposes a collection of incidents that were flagged from devices, email accounts, users in your network.

It will help you sort through incidents to prioritize and create an informed cybersecurity response decision.

The API returns incidents that occurred in the range of your environment retention policy, with the most recent incident showing at the top of the list, each incident contains an array of related alerts and their related entities.

<br>Supports the following **OData** operators:
<br>```$filter``` on: ```lastUpdateTime```, ```createdTime```, ```status``` and ```assignedTo``` properties.
<br>```$top``` with max value of **100**
<br>```$skip```

## Limitations


## Permissions


## HTTP request


## Request headers


## Request body


## Response

## Example

**Request**

Here is an example of the request.

```
PATCH https://api.security.microsoft.com/api/incidents?$top=10

```

## SIEM use-case
In the context of a SIEM, use the following format to query the latest incident or updated incident:
`https://api.security.microsoft.com/api/incidents?$filter=lastUpdateTime+ge+2020-06-03T18:04:29.4633333Z`