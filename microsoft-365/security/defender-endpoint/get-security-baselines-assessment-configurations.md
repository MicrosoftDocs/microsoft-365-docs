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
ms.collection: M365-security-compliance
ms.topic: article
ms.subservice: mde
ms.custom: api
search.appverid: met150
---

# List security baselines assessment configurations

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

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
|Id | String | Unique identifier for the specific configuration in the baseline benchmark.
|name | String | The configuration name at it appears in the benchmark.
|description | String | The configuration description as it appears in the benchmark.
|category | String | The configuration  category as it appears in the benchmark.
|complianceLevel|String|The compliance level of the benchmark where this configuration appears.
|`cce`|Int|The CCE for this configuration as it appears in the benchmark.
|rationale |String|The rationale for this configuration as it appears in the benchmark. For STIG benchmark this isn't supplied for this configuration.

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
            "id": "1.1.8", 
            "name": "(L1) Ensure 'Allow importing of payment info' is set to 'Disabled'",
            "description": "<p xmlns:xhtml=\"http://www.w3.org/1999/xhtml\">This policy setting controls whether users are able to import payment information from another browser into Microsoft Edge as well as whether payment information is imported on first use.</p>",
            "category": "Microsoft Edge",
            "complianceLevels": [
                "Level 1 (L1) - Corporate/Enterprise Environment (general use)",
                "Level 2 (L2) - High Security/Sensitive Data Environment (limited functionality)"
            ],
            "cce": "",
            "rationale": "<p xmlns:xhtml=\"http://www.w3.org/1999/xhtml\">Having payment information automatically imported or allowing users to import payment data from another browser into Microsoft Edge could allow for sensitive data to be imported into Edge.</p>",
            "remediation": "<div xmlns:xhtml=\"http://www.w3.org/1999/xhtml\">\r\n  <p>\r\n    <p>\r\nTo establish the recommended configuration via GP, set the following UI path to                 <span class=\"inline_block\">Disabled</span></p>\r\n    <code class=\"code_block\">Computer Configuration\\Policies\\Administrative Templates\\Microsoft Edge\\Allow importing of payment info\r\n</code>\r\n    <p>\r\n      <strong>Note:</strong>\r\n This Group Policy path may not exist by default. It is provided by the Group Policy template                 <span class=\"inline_block\">MSEdge.admx/adml</span>\r\n that can be downloaded from Microsoft                 <a href=\"https://www.microsoft.com/en-us/edge/business/download\">here</a>\r\n.              </p>\r\n    <p class=\"bold\">Impact:</p>\r\n    <p>\r\n      <p>Users will be unable to perform a payment information import from other browsers into Microsoft Edge.</p>\r\n    </p>\r\n  </p>\r\n</div>",
            "benchmarkName": "CIS"
"recommendedValue": [ 
                "Equals '0'" 
            ], 
            "source": [ 
                "hkey_local_machine\\software\\policies\\microsoft\\windows\\eventlog\\security\\retention" 
            ]
        }, 
    ] 
} 
```

## See also

- [Export security baselines assessment](export-security-baseline-assessment.md)
- [Get security baselines assessment profiles](get-security-baselines-assessment-profiles.md)
