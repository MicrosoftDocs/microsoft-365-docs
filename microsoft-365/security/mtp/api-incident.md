---
title: Incident resource type in Microsoft Threat Protection API
description: Learn about the methods and properties of the Incident resource type in Microsoft Threat Protection
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

**Applies to:**
- Microsoft Threat Protection

## Methods

Method |Return Type |Description
:---|:---|:---
[Get alert](get-alert-info-by-id.md) | [Alert](alerts.md) | Get a single [alert](alerts.md) object.
[List alerts](get-alerts.md) | [Alert](alerts.md) collection | List [alert](alerts.md) collection.
[Update alert](get-alerts.md) | [Alert](update-alert.md) | Update specific [alert](alerts.md).
[Create alert](create-alert-by-reference.md)|[Alert](alerts.md)|Create an alert based on event data obtained from [Advanced Hunting](run-advanced-query-api.md).
[List related domains](get-alert-related-domain-info.md)|Domain collection| List URLs associated with the alert.
[List related files](get-alert-related-files-info.md) | [File](files.md) collection |  List the [file](files.md) entities that are associated with the [alert](alerts.md).
[List related IPs](get-alert-related-ip-info.md) | IP collection | List IPs that are associated with the alert.
[Get related machines](get-alert-related-machine-info.md) | [Machine](machine.md) | The [machine](machine.md) that is associated with the [alert](alerts.md).
[Get related users](get-alert-related-user-info.md) | [User](user.md) | The [user](user.md) that is associated with the [alert](alerts.md).


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
status | Enum | Specifies the current status of the alert. Possible values are: ```Active```, ```Resolved``` and ```Redirected```.
classification | Enum | Specification of the alert. Possible values are: ```Unknown```, ```FalsePositive```, ```TruePositive```.
determination | Enum | Specifies the determination of the alert. Possible values are: ```NotAvailable```, ```Apt```, ```Malware```, ```SecurityPersonnel```, ```SecurityTesting```, ```UnwantedSoftware```, ```Other```.
tags | string List | List of Incident tags.
