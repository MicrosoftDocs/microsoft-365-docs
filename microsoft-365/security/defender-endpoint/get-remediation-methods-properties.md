---
title: Remediation activity methods and properties
description: The API response contains threat & vulnerability management remediation activities created in your tenant. You can request all the remediation activities, only one remediation activity, or information about exposed devices for a selected remediation task.
keywords: apis, remediation, remediation api, get, remediation tasks, remediation methods, remediation properties,
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-jweston
author: jweston-1
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
MS.technology: mde
ms.custom: api
---

# Remediation activity methods and properties

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

The API response contains [Threat & vulnerability management](next-gen-threat-and-vuln-mgt.md) remediation activities that have been created in your tenant.  

## Methods

Method | Data type | Description
:---|:---|:---
[List all remediation activities](get-remediation-all-activities.md) | Investigation collection | Returns information about all remediation activities.
[List exposed devices of one remediation activity](get-remediation-exposed-devices-activities.md) | Investigation entity | Returns information about exposed devices for the specified remediation activity.
[Get one remediation activity by Id](get-remediation-one-activity.md) | Investigation entity | Returns information for the specified remediation activity.

Learn more about [remediation activities](tvm-remediation.md).

## Properties

Property id | Data type | Description
:---|:---|:---
category | String | Category of the remediation activity (Software/Security configuration)
completerEmail | String | If the remediation activity was manually completed by someone, this column contains their email
completerId | String | If the remediation activity was manually completed by someone, this column contains their object id
completionMethod | String | A remediation activity can be completed “automatically” (if all the devices are patched) or “manually” by a person who selects “mark as completed.”
createdOn | DateTime | Time this remediation activity was created
description | String | Description of this remediation activity
dueOn | DateTime | Due date the creator set for this remediation activity
fixedDevices |  | The number of devices that have been fixed
id | String | ID of this remediation activity
nameId | String | Related product name
priority | String | Priority the creator set for this remediation activity (High\Medium\Low)
productId | String | Related product ID
productivityImpactRemediationType | String | A few configuration changes could be requested only for devices with no user impact. This value indicate the selection between “all exposed devices” or “only devices with no user impact.”
rbacGroupNames | String | Related device group names
recommendedProgram | String | Recommended program to upgrade to
recommendedVendor | String | Recommended vendor to upgrade to
recommendedVersion | String | Recommended version to update/upgrade to
relatedComponent | String | Related component of this remediation activity (similar to the related component for a security recommendation)
requesterEmail | String | Creator email address
requesterId | String | Creator object id
requesterNotes | String | The notes (free text) the creator added for this remediation activity
scid | String | SCID of the related security recommendation
status | String | Remediation activity status (Active/Completed)
statusLastModifiedOn | DateTime | Date when the status field was updated
targetDevices | Long | Number of exposed devices that this remediation is applicable to
title | String | Title of this remediation activity
type | String | Remediation type
vendorId | String | Related vendor name

## See also

- [Get one remediation activity by Id](get-remediation-one-activity.md)

- [List all remediation activities](get-remediation-all-activities.md)

- [List exposed devices of one remediation activity](get-remediation-exposed-devices-activities.md)

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
