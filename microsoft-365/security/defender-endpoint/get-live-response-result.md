---
title: Get live response results
description: Learn how to retrieve a specific live response command result by its index.
keywords: apis, graph api, supported apis, upload to library
search.appverid: met150
ms.service: microsoft-365-security
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
ms.collection: 
- m365-security
- tier3
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
ms.date: 06/03/2021
---

# Get live response results

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

[!include[Prerelease information](../../includes/prerelease.md)]

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Retrieves a specific live response command result by its index.

## Limitations

1. Rate limitations for this API are 100 calls per minute and 1500 calls per
    hour.

## Minimum requirements

Before you can initiate a session on a device, make sure you fulfill the following requirements:

- **Verify that you're running a supported version of Windows**.

  Devices must be running one of the following versions of Windows

  - **Windows 11**
  
  - **Windows 10**
    - [Version 1909](/windows/whats-new/whats-new-windows-10-version-1909) or later
    - [Version 1903](/windows/whats-new/whats-new-windows-10-version-1903) with [KB4515384](https://support.microsoft.com/help/4515384/windows-10-update-kb4515384)
    - [Version 1809 (RS 5)](/windows/whats-new/whats-new-windows-10-version-1809) with [with KB4537818](https://support.microsoft.com/help/4537818/windows-10-update-kb4537818)
    - [Version 1803 (RS 4)](/windows/whats-new/whats-new-windows-10-version-1803) with [KB4537795](https://support.microsoft.com/help/4537795/windows-10-update-kb4537795)
    - [Version 1709 (RS 3)](/windows/whats-new/whats-new-windows-10-version-1709) with [KB4537816](https://support.microsoft.com/help/4537816/windows-10-update-kb4537816)

  - **Windows Server 2019 - Only applicable for Public preview**
    - Version 1903 or (with [KB4515384](https://support.microsoft.com/help/4515384/windows-10-update-kb4515384)) later
    - Version 1809 (with [KB4537818](https://support.microsoft.com/help/4537818/windows-10-update-kb4537818))
    
  - **Windows Server 2022**  

## Permissions

One of the following permissions is required to call this API. To learn more,
including how to choose permissions, see [Get started](apis-intro.md).

|Permission type|Permission|Permission display name|
|---|---|---|
Application|Machine.Read.All|Read all machine profiles
Application|Machine.ReadWrite.All|Read and write all machine information
|Delegated (work or school account)|Machine.LiveResponse|Run live response on a specific machine|

## HTTP request

```HTTP
GET https://api.securitycenter.microsoft.com/api/machineactions/{machine action
id}/GetLiveResponseResultDownloadLink(index={command-index})
```

## Request headers

|Name|Type|Description|
|---|---|---|
|Authorization|String|Bearer {token}. Required.|

## Request body

Empty

## Response

If successful, this method returns 200, Ok response code with object that holds the link to the command result in the *value* property. This link is valid for 30 minutes and should be used immediately for downloading the package to a local storage. An expired link can be re-created by another call, and there's no need to run live response again.

*Runscript transcript properties:*

|Property|Description|
|---|---|
|script_name|Executed script name|
|exit_code|Executed script exit code|
|script_output|Executed script standard output|
|script_errors|Executed script standard error output|

## Example

### Request example

Here's an example of the request.

```HTTP
GET https://api.securitycenter.microsoft.com/api/machineactions/988cc94e-7a8f-4b28-ab65-54970c5d5018/GetLiveResponseResultDownloadLink(index=0)
```

### Response example

Here's an example of the response.

HTTP/1.1 200 Ok

Content-type: application/json

```JSON
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Edm.String",
    "value": "https://core.windows.net/investigation-actions-data/ID/CustomPlaybookCommandOutput/4ed5e7807ad1fe59b00b664fe06a0f07?se=2021-02-04T16%3A13%3A50Z&sp=r&sv=2019-07-07&sr=b&sig=1dYGe9rPvUlXBPvYSmr6/OLXPY98m8qWqfIQCBbyZTY%3D"
}
```

*File content:*

```JSON
{
    "script_name": "minidump.ps1",
    "exit_code": 0,
    "script_output": "Transcript started, output file is C:\\ProgramData\\Microsoft\\Windows Defender Advanced Threat Protection\\Temp\\PSScriptOutputs\\PSScript_Transcript_{TRANSCRIPT_ID}.txt
C:\\windows\\TEMP\\OfficeClickToRun.dmp.zip\n51 MB\n\u0000\u0000\u0000",
    "script_errors":""
}
```

## Related articles

- [Get machine action API](get-machineaction-object.md)
- [Cancel machine action](cancel-machine-action.md)
- [Run live response](run-live-response.md) 
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
