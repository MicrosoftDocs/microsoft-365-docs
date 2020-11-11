---
title: Incident resource type in Microsoft 365 Defender API
description: Learn about the methods and properties of the Incident resource type in Microsoft 365 Defender
keywords: incident, incidents, api
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

# Incident resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

>[!IMPORTANT] 
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## Methods

Method |Return Type |Description
:---|:---|:---
[List incidents](api-list-incidents.md) | [Incident](api-incident.md) list | Get a list of incidents.
[Update incident](api-update-incidents.md) | [Incident](api-incident.md) | Update specific incident.


## Properties

Property |    Type    |    Description
:---|:---|:---
incidentId | long | Incident unique ID.
redirectIncidentId | nullable long | The Incident ID the current Incident was merged to.
incidentName | string | The name of the Incident.
createdTime | DateTimeOffset | The date and time (in UTC) the Incident was created.
lastUpdateTime | DateTimeOffset | The date and time (in UTC) the Incident was last updated.
assignedTo | string | Owner of the Incident.
severity | Enum | Severity of the Incident. Possible values are: ```UnSpecified```, ```Informational```, ```Low```, ```Medium``` and ```High```.
status | Enum | Specifies the current status of the incident. Possible values are: ```Active```, ```Resolved``` and ```Redirected```.
classification | Enum | Specification of the incident. Possible values are: ```Unknown```, ```FalsePositive```, ```TruePositive```.
determination | Enum | Specifies the determination of the incident. Possible values are: ```NotAvailable```, ```Apt```, ```Malware```, ```SecurityPersonnel```, ```SecurityTesting```, ```UnwantedSoftware```, ```Other```.
tags | string List | List of Incident tags.
alerts | Alert List | List of related alerts. See examples at [List incidents](api-list-incidents.md) API documentation.
