---
title: Security baselines assessment configurations
description: Provides information about the security baselines assessment configurations that pull "Microsoft Defender Vulnerability Management" data. There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization.
keywords: api, apis, export assessment, per device assessment, per machine assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, secure configuration assessment, secure configuration report, software vulnerabilities assessment, software vulnerability report, vulnerability report by machine,
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
ms.topic: conceptual
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 05/02/2022
---

# List security baselines assessment configurations

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

## 1. Get all security baselines assessment configurations

This API retrieves a list of all the possible security baselines assessment configurations and settings for all the available benchmarks.

### 1.1 Parameters

- Supports OData V4 queries
- OData supported operators:
  - `$filter` on: `id`, `category`, `name`, `CCE`
  - `$top` with max value of 10,000
  - `$skip`

### 1.2 HTTP request

```http
GET /api/baselineConfigurations 
```

### 1.3 Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

### 1.4 Response

If successful, this method returns 200 OK with the list of baseline configurations in the body.

### 1.5 Properties

|Property | Type | Description |
|:---|:---|:---|
|uniqueId | String | Identifier for the specific configuration across baseline benchmarks.
|Id | String | Identifier of the specific configuration in the baseline benchmark.
|benchmarkName| String | The name of the benchmark.
|name | String | The configuration name at it appears in the benchmark.
|description | String | The configuration description as it appears in the benchmark.
|category | String | The configuration  category as it appears in the benchmark.
|complianceLevels|String|The compliance level of the benchmark where this configuration appears.
|`cce`|Int|The CCE for this configuration as it appears in the benchmark.
|rationale |String|The rationale for this configuration as it appears in the benchmark. For STIG benchmark this isn't supplied for this configuration.
|source|String| The registry path or other location used to determine the current device setting.
|recommendedValue|String| The recommended value for each of the source inputs in ‘source’ property (by the same order)
|remediation|String| The recommended steps to remediate.
|isCustom|Boolean| True if the configuration is customized, false if not.

## 1.6 Example

### 1.5.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/baselineConfigurations
```

### 1.6.2 Response example

```json
{
    "@odata.context": " https://api-df.securitycenter.microsoft.com/api/$metadata#BaselineConfigurations ", 
    "value": [
        {
            "uniqueId": "Microsoft_1.0-windows_11-10.0.22000_1.6",
            "id": "1.6",
            "benchmarkName": "Microsoft",
            "benchmarkVersion": "1.0-windows_11-10.0.22000",

            "name": "Configuration title'",
            "description": "Description of the risk",
            "complianceLevels": [
                "level1",
                "level2"
            ],
            "cce": "",
            "rationale": "Why you should configure this",
            "remediation": "Remediation steps",
            "recommendedValue": [ 
                "Equals '1'" 
            ], 
            "source": [
                "hkey_local_machine\\software\\policies\\microsoft\\fve\\disableexternaldmaunderlock"
            ],
            "isCustom": false
        }, 
    ] 
} 
```

## See also

- [Export security baselines assessment](export-security-baseline-assessment.md)
- [Get security baselines assessment profiles](get-security-baselines-assessment-profiles.md)
