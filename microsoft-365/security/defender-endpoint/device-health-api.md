---
title: Microsoft Defender Antivirus Device Health details API
description: Retrieves a list of Microsoft Defender Antivirus (MDAV) device health details. 
keywords: apis, graph api, supported apis, get, device health api, Microsoft Defender for Endpoint report api microsoft defender reports api, microsoft defender for endpoint reporting api, windows defender reporting api, defender for endpoint reporting api, windows defender report api 
ms.prod: m365-security 
ms.mktglfcycl: deploy 
ms.sitesec: library 
ms.pagetype: security 
ms.author: julihdolmont 
author: julih 
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
<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>OData supported operators:
<br>```$filter``` on: ```id```, ```productName```, ```vendor```, ```recommendedVersion```, ```recommendationCategory```, ```subCategory```, ```severityScore```, ```remediationType```, ```recommendedProgram```, ```recommendedVendor```, and ```status``` properties.
<br>```$top``` with max value of 10,000.
<br>```$skip```.
<br>See examples at [OData queries with Microsoft Defender for Endpoint.](exposed-apis-odata-samples.md]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md) for details.

| Permission type | Permission | Permission display name |
|:----|:----|:----|
| Application | SecurityRecommendation.Read.All | 'Read Threat and Vulnerability Management security recommendation information' |
| Delegated (work or school account) | SecurityRecommendation.Read | 'Read Threat and Vulnerability Management security recommendation information' |

## HTTP request

```http
GET /api/recommendations 
```

## Request headers

| Name | Type | Description |
|:----|:----|:----|
| Authorization | String | Bearer {token}. Required |

## Request body

_Empty_

## Response

If successful, this method returns 200 OK with the list of security recommendations in the body.

## Example

### Example request

Here is an example of the request:

```http
GET https://api.securitycenter.microsoft.com/api/recommendations 
```

### Example response

Here is an example of the response:

```json
{ 
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Recommendations", 
    "value": [ 
        { 
            "id": "va-_-microsoft-_-windows_10" "va-_-microsoft-_-windows_11", 
            "productName": "windows_10" "Windows_11", 
            "recommendationName": "Update Windows 10" "Update Windows 11", 
            "weaknesses": 397, 
            "vendor": "microsoft", 
            "recommendedVersion": "", 
            "recommendationCategory": "Application", 
            "subCategory": "", 
            "severityScore": 0, 
            "publicExploit": true, 
            "activeAlert": false, 
            "associatedThreats": [ 
                "3098b8ef-23b1-46b3-aed4-499e1928f9ed", 
                "40c189d5-0330-4654-a816-e48c2b7f9c4b", 
                "4b0c9702-9b6c-4ca2-9d02-1556869f56f8", 
                "e8fc2121-3cf3-4dd2-9ea0-87d7e1d2b29d", 
                "94b6e94b-0c1d-4817-ac06-c3b8639be3ab" 
            ], 
            "remediationType": "Update", 
            "status": "Active", 
            "configScoreImpact": 0, 
            "exposureImpact": 7.674418604651163, 
            "totalMachineCount": 37, 
            "exposedMachinesCount": 7, 
            "nonProductivityImpactedAssets": 0, 
            "relatedComponent": "Windows 10" "Windows 11" 
        } 
        ... 
     ] 
} 
```

## See also

[Device health and compliance report in Microsoft Defender for Endpoint](machine-reports.md)

