---
title: Add, update or delete a scan definition
description: Learn how to use the Add, update or delete scan definitions.
keywords: apis, graph api, supported apis, scans, network scans, authenticated scan
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: siosulli
author: siosulli
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
ms.date: 12/14/2022
---

# Add, update or delete a scan definition

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

[!Include[Prerelease information](../../includes/prerelease.md)]

[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

API to add, update or delete an authenticated scan.

## Limitations

Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

You can post on machines last seen according to your configured retention period.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Defender for Endpoint APIs](apis-intro.md).

Permission type|Permission|Permission display name
:---|:---|:---
Application|Machine.ReadWrite.All| Read and write all scan information.
Delegated (work or school account)|Machine.Read.Write|Read and write all scan information.

> [!NOTE]
> When obtaining a token using user credentials:
>
> - To view data the user needs to have at least the following role permission: 'ViewData' or 'TvmViewData' (See [Create and manage roles](user-roles.md) for more information)
> - To edit data the user needs to have at least the following role permission: 'ManageSecurity' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.
Content-Type|string|application/json. **Required**.

## Request body

In the request body, supply a JSON object with the following parameters:

Parameter|Type|Description
:---|:---|:---
scanType|Enum|The type of scan. Possible values are: "Windows", "Network".  **Required**.
scanName|String|Name of the scan.  **Required**.
isActive|Boolean|Status of whether the scan actively running.  **Required**.
target|String| A comma separated list of targets to scan, either IP addresses or hostnames. **Required**.
intervalInHours|Int|The interval at which the scan runs.  **Required**.
targetType|String|The target type in the target field. Possible types are "IP Address" or "Hostname". Default value is IP Address. **Required**.
scannerAgent|Object|machine Id. **Required**.
scanAuthenticationParams|Object|An object representing the authentication parameters, see [Authentication parameters object properties](./get-authenticated-scan-properties.md#authentication-parameters-object-properties) for expected fields. This property is mandatory when creating a new scan and is optional when updating a scan.

## Response

If successful, this method returns 200 - Ok response code and the new or updated scan definition in the response body.

## Example request to add a new scan

Here's an example of a request that adds a new scan.

```http
POST https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions
```

```json
 {
"scanType": "Windows", 
"scanName": "Test Windows scan", 
"isActive": true, 
"target": "127.0.0.1", 
"intervalInHours": 1, 
"targetType": "Ip",
"scannerAgent": {
    "machineId": "eb663a27ae9d032f61bc268a79eedf14c4b90f77",
},
"scanAuthenticationParams": { 
    "@odata.type": "#microsoft.windowsDefenderATP.api.WindowsAuthParams", 
    "type": "Kerberos", 
    "username": "username", 
    "domain": "password",
    "isGmsaUser": true
    }
}
```

## Example response

Here's an example of the response.

```json
 {
"@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#DeviceAuthenticatedScanDefinitions/$entity",
    "id": "289224fb-1686-472c-9751-5555960854ca",
    "scanType": "Windows",
    "scanName": "Test Windows scan",
    "isActive": true,
    "target": "127.0.0.1",
    "orgId": "0335a792-18d2-424b-aeed-559567054570",
    "intervalInHours": 1,
    "createdBy": "username@test.com",
    "targetType": "Ip",
    "scanAuthenticationParams": null,
    "scannerAgent": {
        "id": "0335a792-18d2-424b-aeed-559567054570_ eb663a27ae9d032f61bc268a79eedf14c4b90f77",
        "machineId": "eb663a27ae9d032f61bc268a79eedf14c4b90f77",
        "machineName": "DESKTOP-TEST",
        "lastSeen": "2023-01-04T09:40:03.2787058Z",
        "assignedApplicationId": "ae4a5cde-b4a1-4b76-8635-458b2cf15752",
        "scannerSoftwareVersion": "7.6.0.0",
        "lastCommandExecutionTimestamp": "2023-01-04T09:33:16Z",
        "mdeClientVersion": "10.8295.22621.1010"
    },
    "latestScan": {
        "status": null,
        "failureReason": null,
        "executionDateTime": null
    }

}
```

## Example request to update a scan

Here's an example of a request that updates a scan.

```http
PATCH  https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions/289224fb-1686-472c-9751-5555960854ca 
```

```json
{
"scanName": "Test Update Windows scan", 
"isActive": false, 
"target": "127.0.0.2,127.0.0.3", 
"intervalInHours": 1, 
"targetType": "Ip",
"scanAuthenticationParams": { 
    "@odata.type": "#microsoft.windowsDefenderATP.api.WindowsAuthParams", 
    "type": "Kerberos", 
    "username": "username", 
    "domain": "password",
    "isGmsaUser": true
    }
 }

```

## Response example

Here's an example of the response.

```json
{
    "@odata.context": "https://localhost:1059/api/$metadata#DeviceAuthenticatedScanDefinitions/$entity",
    "id": "289224fb-1686-472c-9751-5555960854ca",
    "scanType": "Windows",
    "scanName": "Test Update Windows scan",
    "isActive": false,
    "target": "127.0.0.2,127.0.0.3",
    "orgId": "0335a792-18d2-424b-aeed-559567054570",
    "intervalInHours": 1,
    "createdBy": "userName@microsoft.com",
    "targetType": "Ip",
    "scanAuthenticationParams": null,
    "scannerAgent": {
        "id": "0335a792-18d2-424b-aeed-559567054570_eb663a27ae9d032f61bc268a79eedf14c4b90f77",
        "machineId": "eb663a27ae9d032f61bc268a79eedf14c4b90f77",
        "machineName": "DESKTOP-TEST",
        "lastSeen": "2023-01-04T09:40:03.2787058Z",
        "assignedApplicationId": "ae4a5cde-b4a1-4b76-8635-458b2cf15752",
        "scannerSoftwareVersion": "7.6.0.0",
        "lastCommandExecutionTimestamp": "2023-01-04T09:33:16Z",
        "mdeClientVersion": "10.8295.22621.1010"
    },
    "latestScan": {
        "status": null,
        "failureReason": null,
        "executionDateTime": null
    }
}

```

## Example request to delete scans

Here's an example of a request that deletes scans.

```http
POST https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions/BatchDelete
```

```json
{
  "ScanDefinitionIds": ["td32f17af-5cc2-4e4e-964a-4c4ef7d216e2", "ab32g20af-5dd2-4a5e-954a-4c4ef7d216e2"],
}
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
