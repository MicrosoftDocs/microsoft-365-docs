---
title: Stop and quarantine file API
description: Learn how to stop running a file on a device and delete the file in Microsoft Defender for Endpoint. See an example.
keywords: apis, graph api, supported apis, stop and quarantine file
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

# Stop and quarantine file API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Stop execution of a file on a device and delete it.

## Limitations

1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

[!include[Device actions note](../../includes/machineactionsnote.md)]

> [!IMPORTANT]
> You can only take this action if:
>
> - The device you're taking the action on is running Windows 10, version 1703 or later, or Windows 11
> - The file does not belong to trusted third-party publishers or is not signed by Microsoft
> - Microsoft Defender Antivirus must at least be running on Passive mode. For more information, see [Microsoft Defender Antivirus compatibility](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility).


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Machine.StopAndQuarantine|'Stop And Quarantine'
Application|Machine.Read.All|'Read all machine profiles'
Application|Machine.ReadWrite.All|'Read and write all machine information'
Delegated (work or school account)|Machine.StopAndQuarantine|'Stop And Quarantine'

> [!NOTE]
> When obtaining a token using user credentials:
>
> - The user needs to have at least the following role permission: 'Active remediation actions' (See [Create and manage roles](user-roles.md) for more information)
> - The user needs to have access to the device, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)
>
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.  

## HTTP request

```http
POST https://api.securitycenter.microsoft.com/api/machines/{id}/StopAndQuarantineFile
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
Comment|String|Comment to associate with the action. **Required**.
Sha1|String|Sha1 of the file to stop and quarantine on the device. **Required**.

## Response

If successful, this method returns 201 - Created response code and [Machine Action](machineaction.md) in the response body.

## Example

### Request

Here is an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/StopAndQuarantineFile 
```

```json
{
  "Comment": "Stop and quarantine file on machine due to alert 441688558380765161_2136280442",
  "Sha1": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9"
}
```
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
