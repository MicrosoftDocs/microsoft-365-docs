---
title: Get baseline profile configurations
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
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
ms.date: 05/02/2022
---

# List configurations in active baseline profiles

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

## 1.API description

This API retrieves a list of the configurations being assessed in active baseline profiles.

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
|recommendedValue|Array [String]|Array of the recommended value for each source returned in the 'source' property array (values returned in the same order as the source property array).
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
            "id": "9.3.9",
            "uniqueId": "CIS_1.4.0-windows_server_2016_9.3.9",
            "benchmarkName": "CIS",
            "benchmarkVersion": "1.4.0-windows_server_2016",
            "name": "(L1) Ensure 'Windows Firewall: Public: Logging: Log dropped packets' is set to 'Yes'",
            "description": "<p xmlns:xhtml=\"http://www.w3.org/1999/xhtml\">  Use this option to log when Windows Firewall with Advanced Security discards an inbound packet for any reason. The log records why and when the packet was dropped. Look for entries with the word             <span class=\"inline_block\">DROP</span>   in the action column of the log.          </p>",
            "category": "Public Profile",
            "complianceLevels": [
                "Level 1 - Domain Controller",
                "Level 1 - Member Server",
                "Level 2 - Domain Controller",
                "Level 2 - Member Server"
            ],
            "cce": "CCE-35116-3",
            "rationale": "<p xmlns:xhtml=\"http://www.w3.org/1999/xhtml\">If events are not recorded it may be difficult or impossible to determine the root cause of system problems or the unauthorized activities of malicious users.</p>",
            "remediation": "<div xmlns:xhtml=\"http://www.w3.org/1999/xhtml\">    <p>      <p>  To establish the recommended configuration via GP, set the following UI path to                 <span class=\"inline_block\">Yes</span>  :              </p>      <code class=\"code_block\">Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Windows Firewall with Advanced Security\\Windows Firewall with Advanced Security\\Windows Firewall Properties\\Public Profile\\Logging Customize\\Log dropped packets  </code>      <p class=\"bold\">Impact:</p>      <p>        <p>Information about dropped packets will be recorded in the firewall log file.</p>      </p>    </p>  </div>",
            "recommendedValue": [
                "Equals '1'"
            ],
            "source": [
                "hkey_local_machine\\software\\policies\\microsoft\\windowsfirewall\\publicprofile\\logging\\logdroppedpackets"
            ],
            "isCustom": false
        },
    ] 
} 
```

## See also

- [Export security baselines assessment](export-security-baseline-assessment.md)
- [Get security baselines assessment profiles](get-security-baselines-assessment-profiles.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
