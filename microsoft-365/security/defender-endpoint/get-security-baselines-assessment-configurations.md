---
title: Baseline profile configurations in use
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

# List configurations in use in active baseline profiles

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

## 1. Get a list of the configuration settings in use in active baseline profiles

This API retrieves a list of the configuration settings being assessed in active baseline profiles.

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
|benchmarkVersion| String | The version of the benchmark. May contain operating system details.
|name | String | The configuration name at it appears in the benchmark.
|description | String | The configuration description as it appears in the benchmark.
|category | String | The configuration  category as it appears in the benchmark.
|complianceLevels|String|The compliance level of the benchmark where this configuration appears.
|`cce`|Int|The CCE for this configuration as it appears in the benchmark.
|rationale |String|The rationale for this configuration as it appears in the benchmark. For STIG benchmark this isn't supplied for this configuration.
|source|Array [String]| Array of the registry paths or other locations used to determine the current device setting.
|recommendedValue|Array [String]|Array of the recommended value for each source returned in the ‘source’ property array (values returned in the same order as the source property array).
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
            "UniqueId": "STIG_2.002-windows_10-10.0.19042_SV-220826r569187",
            "Id": "SV-220826r569187",
            "BenchmarkName": "STIG",
            "BenchmarkVersion": "2.002-windows_10-10.0.19042",
            "Name": "The Application Compatibility Program Inventory must be prevented from collecting data and sending the information to Microsoft",
            "Description": "Some features may communicate with the vendor, sending system information or downloading data or components for the feature. Turning off this capability will prevent potentially sensitive information from being sent outside the enterprise and uncontrolled updates to the system. This setting will prevent the Program Inventory from collecting data about a system and sending the information to Microsoft.",
            "Category": "SRG-OS-000095-GPOS-00049",
            "complianceLevels": [
                "CAT III", 
                "All"
            ],
            "cce": "",
            "rationale": "Not available",
            "remediation": "Configure the policy value for Computer Configuration > Administrative Templates > Windows Components > Application Compatibility > \"Turn off Inventory Collector\" to \"Enabled\".",
            "recommendedValue": [ 
                "Equals '1'" 
            ], 
            "source": [
                "hkey_local_machine\\software\\policies\\microsoft\\windows\\appcompat\\disableinventory"
            ],
            "isCustom": false
        }, 
    ] 
} 
```

## See also

- [Export security baselines assessment](export-security-baseline-assessment.md)
- [Get security baselines assessment profiles](get-security-baselines-assessment-profiles.md)
