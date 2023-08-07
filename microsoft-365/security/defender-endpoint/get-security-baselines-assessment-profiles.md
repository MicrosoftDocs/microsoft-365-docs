---
title: Security baselines assessment profiles
description: Provides information about the security baselines assessment profiles APIs that pull "Microsoft Defender Vulnerability Management" data. There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization.
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

# List all security baselines assessment profiles

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

## 1. Get security baselines assessment profiles

This API retrieves a list of all security baselines assessment profiles created by the organization.

### 1.1 Parameters

- Supports OData V4 queries.
- OData supported operators:
  - $filter on : id,name, operatingSystem, operatingSystemVersion, status, settingsNumber, passedDevices, totalDevices
  - $top with max value of 10,000.
  - $skip.

### 1.2 HTTP request

```http
GET:/api/baselineProfiles
```

### 1.3 Request headers

Name|Type|Description
:---|:---|:---
Authorization|String|Bearer {token}. **Required**.

### 1.4 Properties

|Property | Type | Description |
|:---|:---|:---|
|Id | String | Unique identifier for the specific baseline profile.
|name | String | The profile name.
|description | String | The profile description.
|benchmark | String | The profile benchmark.
|version | String | The profile version.
|operatingSystem|String|The profile applicable operating system.
|operatingSystemVersion|String|The profile applicable operating system version.
|status|Boolean|Indicates whether the profile is active or not
|complianceLevel|String|The compliance level chosen for the profile.
|settingsNumber|Int|Number of selected configurations in the profile.
|createdBy|String|The user that created this profile.
|lastUpdatedBy|DateTime|The last user to modify this profile.
|createdOnTimeOffset|DateTime|The date and time the profile was created.
|lastUpdateTimeOffset|DateTime|The date and time the profile was last updated.
|passedDevices|Int|The number of devices applicable to this profile that are compliant with all of the profile configurations.
|totalDevices|Int|Number of devices applicable to this profile.

## 1.5 Example

### 1.5.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/baselineProfiles
```

### 1.6.2 Response example

```json
{
    "@odata.context": "https:// api.securitycenter.microsoft.com/api/$metadata#Collection(microsoft.windowsDefenderATP.api.PublicBaselineProfileDto)",
    "value":
    [
        {
            "id": "02bcbb9d-d197-479e-811e-1cd5a6f9f8fa",
            "name": "Windows 10 build 1909 CIS profile",
            "description": "important",
            "benchmark": "CIS",
            "version": "1.0.0",
            "operatingSystem": "Windows 10",
            "operatingSystemVersion": "1909",
            "status": true,
            "complianceLevel": "Level 1 (L1) - Corporate/Enterprise Environment (general use)",
            "settingsNumber": 51,
            "createdBy": "user@org.net",
            "lastUpdatedBy": null,
            "createdOnTimestampUTC": "0001-01-01T00:00:00Z",
            "lastUpdateTimestampUTC": "0001-01-01T00:00:00Z",
            "passedDevices": 0,
            "totalDevices": 10
        }
     ]
}
```

## See also

- [Export security baselines assessment](export-security-baseline-assessment.md)
- [Get security baselines assessment configurations](get-security-baselines-assessment-configurations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
