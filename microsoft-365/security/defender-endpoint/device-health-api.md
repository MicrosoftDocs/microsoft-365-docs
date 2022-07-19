---
title: Microsoft Defender Antivirus Device Health details API
description: Retrieves a list of Microsoft Defender Antivirus (MDAV) device health details. 
keywords: apis, graph api, supported apis, get, device health api, Microsoft Defender for Endpoint report api microsoft defender reports api, microsoft defender for endpoint reporting api, windows defender reporting api, defender for endpoint reporting api, windows defender report api 
ms.prod: m365-security 
ms.mktglfcycl: deploy 
ms.sitesec: library 
ms.pagetype: security 
ms.author: v-jweston 
author: jweston-1
ms.localizationpriority: medium 
manager: dansimp 
audience: ITPro 
ms.collection: M365-security-compliance 
ms.topic: article 
MS.technology: mde 
ms.custom: api 
--- 

# Microsoft Defender Antivirus Device Health details API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

## API description

Retrieves a list of Microsoft Defender Antivirus device health details.
URL: GET: /api/public/avdeviceshealth
<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>OData supported operators:
<br>```$filter``` on: ```machineId```, ```computerDnsName```, ```osKind```, ```osPlatform```, ```osVersion```, a```vMode```, ```avSignatureVersion```, ```avEngineVersion```, ```avPlatformVersion```, ```quickScanResult```, ```quickScanError```, ```fullScanResult```, ```fullScanError```, ```avIsSignatureUpToDate```, ```avIsEngineUpToDate```, ```vIsPlatformUpToDate```, ```rbacGroupId```
<br>```$top``` with max value of 10,000.
<br>```$skip```.
<br>See examples at [OData queries with Microsoft Defender for Endpoint.](exposed-apis-odata-samples.md]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md) for details.

| Permission type | Permission | Permission display name |
|:----|:----|:----|
| Application | Machine.Read.All | 'Read all machine profiles' |
| Application | Machine.ReadWrite.All | 'Read and write all machine information' |
| Delegated (work or school account) | Machine.Read | 'Read machine information' |
| Delegated (work or school account) | Macine.ReadWrite | 'Read and write machine information' |

## HTTP request

```http
GET /api/public/avdeviceshealth
```

## Request headers

| Name | Type | Description |
|:----|:----|:----|
| Authorization | String | Bearer {token}. **Required** |

## Request body

_Empty_

## Response

If successful, this method returns 200 OK with a list of device health details.

## Example

### Example request

Here is an example of the request:

```http
GET https://api.securitycenter.microsoft.com/api/public/avdeviceshealth 
```

### Example response

Here is an example of the response:

```json
{ 

    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#avdeviceshealth", 

    "value": [ 

        { 

           "id": "sampleId", 

           "machineId": "sampleMachineId", 

           "computerDnsName": "sampleDnsName", 

           "osKind": "mac", 

           "osPlatform": "macOS", 

           "osVersion": "11.6.5.0", 

           "avMode": "0", 

           "avSignatureVersion": "87523", 

           "avEngineVersion": "3.0", 

           "avPlatformVersion": "101.61.69", 

           "lastSeenTime": "2022-04-02T06:12:07+00:00", 

           "quickScanResult": "-", 

           "quickScanError": "-", 

           "fullScanResult": "-", 

           "fullScanError": "-", 

           "dataRefreshTimestamp": "2022-04-06T21:50:48+00:00", 

           "avSignatureUpdateTime": "2022-04-01T01:31:58+00:00", 

           "avIsSignatureUpToDate": "Unknown", 

           "avIsEngineUpToDate": "Unknown", 

           "avIsPlatformUpToDate": "Unknown", 

           "rbacGroupId": 86 

        }, 

        ... 

     ] 

}  
```

## See also

[Device health and compliance report in Microsoft Defender for Endpoint](machine-reports.md)
