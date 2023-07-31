---
title: Create alert from event API
description: Learn how to use the Create alert API to create a new Alert on top of Event in Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get, alert, information, id
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
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
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 12/18/2020
---

# Create alert API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description

Creates new [Alert](alerts.md) on top of **Event**.

- **Microsoft Defender for Endpoint Event** is required for the alert creation.
- You need to supply three parameters from the Event in the request: **Event Time**, **Machine ID**, and **Report ID**. See example below.
- You can use an event found in Advanced Hunting API or Portal.
- If there existing an open alert on the same Device with the same Title, the new created alert will be merged with it.
- An automatic investigation starts automatically on alerts created via the API.

## Limitations

1. Rate limitations for this API are 15 calls per minute.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type | Permission | Permission display name
:---|:---|:---
Application | Alert.ReadWrite.All | 'Read and write all alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'Alerts investigation' (For more information see [Create and manage roles](user-roles.md))
> - The user needs to have access to the device associated with the alert, based on device group settings (For more information, see [Create and manage device groups](machine-groups.md)
>
> Device Group creation is supported in both Defender for Endpoint Plan 1 and Plan 2

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/alerts/CreateAlertByReference
```

## Request headers

Name|Type|Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | String | application/json. **Required**.

## Request body

In the request body, supply the following values (all are required):

Property | Type | Description
:---|:---|:---
eventTime | DateTime(UTC) | The precise time of the event as string, as obtained from advanced hunting. e.g.,  ```2018-08-03T16:45:21.7115183Z``` **Required**.
reportId | String | The reportId of the event, as obtained from advanced hunting. **Required**.
machineId | String | Id of the device on which the event was identified. **Required**.
severity | String | Severity of the alert. The property values are: 'Low', 'Medium' and 'High'. **Required**.
title | String | Title for the alert. **Required**.
description | String | Description of the alert. **Required**.
recommendedAction| String | Security officer needs to take this action when analyzing the alert. **Required**.
category| String | Category of the alert. The property values are: "General", "CommandAndControl", "Collection", "CredentialAccess", "DefenseEvasion", "Discovery", "Exfiltration", "Exploit", "Execution", "InitialAccess", "LateralMovement", "Malware", "Persistence", "PrivilegeEscalation", "Ransomware", "SuspiciousActivity" **Required**.

## Response

If successful, this method returns 200 OK, and a new [alert](alerts.md) object in the response body. If event with the specified properties (_reportId_, _eventTime_ and _machineId_) was not found - 404 Not Found.

## Example

### Request

Here's an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/alerts/CreateAlertByReference
```

```json
{
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "severity": "Low",
    "title": "example",
    "description": "example alert",
    "recommendedAction": "nothing",
    "eventTime": "2018-08-03T16:45:21.7115183Z",
    "reportId": "20776",
    "category": "Exploit"
}
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
