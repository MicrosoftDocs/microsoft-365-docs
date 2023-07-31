---
title: Remediation activity methods and properties
description: The API response contains Microsoft Defender Vulnerability Management remediation activities created in your tenant. You can request all the remediation activities, only one remediation activity, or information about exposed devices for a selected remediation task.
keywords: apis, remediation, remediation api, get, remediation tasks, remediation methods, remediation properties,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: Dansimp
ms.author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 04/24/2021
---

# Remediation activity methods and properties

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

[!Include[Prerelease information](../../includes/prerelease.md)]

[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../includes/improve-request-performance.md)]

The API response contains [Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md) remediation activities that have been created in your tenant.

## Methods

Method|Data type|Description
:---|:---|:---
[List all remediation activities](get-remediation-all-activities.md)|Investigation collection|Returns information about all remediation activities.
[List exposed devices of one remediation activity](get-remediation-exposed-devices-activities.md)|Investigation entity|Returns information about exposed devices for the specified remediation activity.
[Get one remediation activity by ID](get-remediation-one-activity.md)|Investigation entity|Returns information for the specified remediation activity.

Learn more about [remediation activities](tvm-remediation.md).

## Properties

Property ID|Data type|Description
:---|:---|:---
Category|String|Category of the remediation activity (Software/Security configuration)
completerEmail|String|If the remediation activity was manually completed by someone, this column contains their email
completerId|String|If the remediation activity was manually completed by someone, this column contains their object ID
completionMethod|String|A remediation activity can be completed "automatically" (if all the devices are patched) or "manually" by a person who selects "mark as completed."
createdOn|DateTime|Time this remediation activity was created
Description|String|Description of this remediation activity
dueOn|DateTime|Due date the creator set for this remediation activity
fixedDevices||The number of devices that have been fixed
ID|String|ID of this remediation activity
nameId|String|Related product name
Priority|String|Priority the creator set for this remediation activity (High\Medium\Low)
productId|String|Related product ID
productivityImpactRemediationType|String|A few configuration changes could be requested only for devices that don't affect users. This value indicates the selection between "all exposed devices" or "only devices with no user impact."
rbacGroupNames|String|Related device group names
recommendedProgram|String|Recommended program to upgrade to
recommendedVendor|String|Recommended vendor to upgrade to
recommendedVersion|String|Recommended version to update/upgrade to
relatedComponent|String|Related component of this remediation activity (similar to the related component for a security recommendation)
requesterEmail|String|Creator email address
requesterId|String|Creator object ID
requesterNotes|String|The notes (free text) the creator added for this remediation activity
Scid|String|SCID of the related security recommendation
Status|String|Remediation activity status (Active/Completed)
statusLastModifiedOn|DateTime|Date when the status field was updated
targetDevices|Long|Number of exposed devices that this remediation is applicable to
Title|String|Title of this remediation activity
Type|String|Remediation type
vendorId|String|Related vendor name

## See also

- [Get one remediation activity by ID](get-remediation-one-activity.md)

- [List all remediation activities](get-remediation-all-activities.md)

- [List exposed devices of one remediation activity](get-remediation-exposed-devices-activities.md)

- [Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
