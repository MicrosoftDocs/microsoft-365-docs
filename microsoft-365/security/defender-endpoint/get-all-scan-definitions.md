---
title: Get scan definitions
description: Learn how to use the Get all scan definition APIs
keywords: apis, graph api, supported apis, scan, authenticated scan
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

# Get scan definitions

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

> Want to experience Microsoft Defender Vulnerability Management? Find out how to [sign up for a free trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

[!Include[Prerelease information](../../includes/prerelease.md)]

[!Include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!Include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Retrieves a list of all scan definitions.

## Limitations

1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md).

Permission type|Permission|Permission display name
:---|:---|:---
Application|Machine.Read.All| Read all scan information.
Delegated (work or school account)|Machine.Read.All|Read all scan information.

> [!NOTE]
> When obtaining a token using user credentials:
>
> - To view data the user needs to have at least the following role permission: 'ViewData' or 'TvmViewData' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request

```http
GET /api/DeviceAuthenticatedScanDefinitions
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

## Request body

Empty

## Response

If successful, this method returns 200 - OK response code with a list of authenticated scan definitions.

## Example

### Request example

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/DeviceAuthenticatedScanDefinitions
```

### Response example

Here is an example of the response.

```json
{
"@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#DeviceAuthenticatedScanDefinitions",
    "value": [
    {
    "id": "60c4vv57-asdf-3454-a456-2e45t9d79ec9d",
    "scanType": "Windows",
    "scanName": "Test Windows scan",
    "isActive": true,
    "target": "127.0.0.1",
    "orgId": "47d21a0c-cccd-45d3-bffa-a93dbc0bfcaa",
    "intervalInHours": 1,
    "createdBy": "test@contoso.com",
    "targetType": "Ip",
    "scanAuthenticationParams": {
        "@odata.type": "#microsoft.windowsDefenderATP.api.WindowsAuthParams",
        "type": "Kerberos",
        "username": "username",
        "domain": "password",
        "isGmsaUser": true
        },
    "scannerAgent": {
        "id": "47d41a0c-xxx-46d3-bbea-93dbc0bfcaa_1bc268a79eedf14c4b90f77",
        "machineId": "eb663asadf345dfg4bc268a79eedf14c4b90f77",
        "machineName": "DESKTOP-TEST",
        "lastSeen": "2021-12-19T20:29:04.8242449Z",
        "AssignedApplicationId": "9E0FA0EB-0A51-4357-9C87-C21BFBE07571",
        "ScannerSoftwareVersion": "7.1.1",
        "LastCommandExecutionTimestamp": "2021-12-19T20:29:04.8242449Z",
        "mdeClientVersion": "10.8295.22621.1195"
        },
    "latestScan": {
        "status": "Fail",
        "failureReason": null,
        "executionDateTime": "2021-12-19T20:06:55.2295854Z"
       },
    {
    "id": "60c4aa57-ioi3-1290-7ff6-09fr14792a92",
    "scanType": "Network",
    "scanName": "Network-test-scan",
    "isActive": true,
    "target": "127.0.0.1",
    "orgId": "asdf781a0c-792d-46d3-bbea-a93dbc0bfcaa",
    "intervalInHours": 1,
    "createdBy": "test@contoso.com",
    "targetType": "Ip",
    "scanAuthenticationParams": {
    "@odata.type": "#microsoft.windowsDefenderATP.api.SnmpAuthParams"",
        type": "AuthPriv",
        "username": "username",
        "authProtocol": "authProtocol",
        "authPassword": "authPassword",
        "privProtocol": "privProtocol",
        "privPassword": "privPassword",
        "communityString": "community-string"
            },
    "scannerAgent": {
        "id": "4asdff0c-3344-46d3-bxxe-a9334rtgfcaa_eb6df89dfdf9032f61eedf14c4b90f77",
        "machineId": "eb663a27676kjhj61bc268a79eedf14c4t78u7",
        "machineName": "DESKTOP-Test",
        "lastSeen": "2022-12-21T14:34:19.5698988Z",
        "AssignedApplicationId": "9E0FA0EB-0A51-4357-9C87-C21BFBE07571",
        "ScannerSoftwareVersion": "7.1.1",
        "LastCommandExecutionTimestamp": "2022-12-21T14:34:19.5698988Z",
        "mdeClientVersion": "10.8295.22621.1195"
                },
    "latestScan": {
    "status": "Fail",
    "failureReason": null,
    "executionDateTime": "2022-12-21T14:35:55.6702703Z"
        }
    },
     }
    ]
}
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
