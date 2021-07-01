---
title: List all remediation activities
description: Returns information about all remediation activities.
keywords: apis, remediation, remediation api, get, remediation tasks, all remediation, 
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

# List all remediation activities

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Returns information about all remediation activities.

[Learn more about remediation activities](tvm-remediation.md).

**URL:** GET: /api/remediationTasks

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
:---|:---|:---
Application | RemediationTask.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | RemediationTask.Read | \'Read Threat and Vulnerability Management vulnerability information\'

## Properties

Property (id) | Data type | Description | Example of a returned value
:---|:---|:---|:---
category | String | Category of the remediation activity (Software/Security configuration) | Software
completerEmail | String | If the remediation activity was manually completed by someone, this column contains their email | null
completerId | String | If the remediation activity was manually completed by someone, this column contains their object id | null
completionMethod | String | A remediation activity can be completed “automatically” (if all the devices are patched) or “manually” by a person who selects “mark as completed” | Automatic
createdOn | DateTime | Time this remediation activity was created | 2021-01-12T18:54:11.5499478Z
description | String | Description of this remediation activity | Update Microsoft Silverlight  to a later version to mitigate known vulnerabilities affecting your devices.
dueOn | DateTime | Due date the creator set for this remediation activity | 2021-01-13T00:00:00Z
fixedDevices | . | The number of devices that have been fixed | 2
id | String | ID of this remediation activity | 097d9735-5479-4899-b1b7-77398899df92
nameId | String | Related product name | Microsoft Silverlight
priority | String | Priority the creator set for this remediation activity (High\Medium\Low) | High
productId | String | Related product ID | microsoft-_-silverlight
productivityImpactRemediationType | String | A few configuration changes could be requested only for devices with no user impact. This value indicates the selection between “all exposed devices” or “only devices with no user impact.” | AllExposedAssets
rbacGroupNames | String | Related device group names | [ "Windows Servers", "Windows 10" ]
recommendedProgram | String | Recommended program to upgrade to | null
recommendedVendor | String | Recommended vendor to upgrade to | null
recommendedVersion | String | Recommended version to update/upgrade to | null
relatedComponent | String | Related component of this remediation activity (similar to the related component for a security recommendation) | Microsoft Silverlight
requesterEmail | String | Creator email address | globaladmin@UserName.contoso.com
requesterId | String | Creator object id | r647211f-2e16-43f2-a480-16ar3a2a796r
requesterNotes | String | The notes (free text) the creator added for this remediation activity | null
scid | String | SCID of the related security recommendation | null
status | String | Remediation activity status (Active/Completed) | Active
statusLastModifiedOn | DateTime | Date when the status field was updated | 2021-01-12T18:54:11.5499487Z
targetDevices | Long | Number of exposed devices that this remediation is applicable to | 43
title | String | Title of this remediation activity | Update Microsoft Silverlight
type | String | Remediation type | Update
vendorId | String | Related vendor name | Microsoft

## Example

### Request example

```http
GET https://api-luna.securitycenter.windows.com/api/remediationtasks/
```

### Response example

```json
{
    "@odata.context": "https://wpatdadi-luna-stg.cloudapp.net/api/$metadata#RemediationTasks",
    "value": [
        {
            "id": "03942ef5-aewb-4w6e-b555-d6a97013844w",
            "title": "Update Microsoft Silverlight",
            "createdOn": "2021-02-10T13:20:36.4718166Z",
            "requesterId": "65548a1d-ef00-4a7a-8d19-1b967b5c36f4",
            "requesterEmail": "user1@contoso.com",
            "status": "Active",
            "statusLastModifiedOn": "2021-02-10T13:20:36.4719698Z",
            "description": "Update Silverlight to a later version  to mitigate 55 known vulnerabilities affecting your devices. Doing so can help lessen the security risk to your organization due to versions which have reached their end-of-support.  ",
            "relatedComponent": "Microsoft Silverlight",
            "targetDevices": 18511,
            "rbacGroupNames": [
                "UnassignedGroup",
                "hhh"
            ],
            "fixedDevices": 2866,
            "requesterNotes": "test",
            "dueOn": "2021-02-11T00:00:00Z",
            "category": "Software",
            "productivityImpactRemediationType": null,
            "priority": "Medium",
            "completionMethod": null,
            "completerId": null,
            "completerEmail": null,
            "scid": null,
            "type": "Update",
            "productId": "microsoft-_-silverlight",
            "vendorId": "microsoft",
            "nameId": "silverlight",
            "recommendedVersion": null,
            "recommendedVendor": null,
            "recommendedProgram": null
        }
    ]
}
```

## See also

- [Remediation methods and properties](get-remediation-methods-properties.md)

- [Get one remediation activity by Id](get-remediation-one-activity.md)

- [List exposed devices of one remediation activity](get-remediation-exposed-devices-activities.md)

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
