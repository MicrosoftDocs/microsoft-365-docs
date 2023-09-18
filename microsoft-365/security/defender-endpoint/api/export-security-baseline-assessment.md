---
title: Security baseline assessment methods and properties per device
description: Provides information about the security baselines APIs that pull "Microsoft Defender Vulnerability Management" data. There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization.
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

# Export security baselines assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization.

- **JSON response**  The API pulls all data in your organization as JSON responses. This method is best for _small organizations with less than 100-K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- **via files** This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. You can download data from Azure Storage as follows:
  - Call the API to get a list of download URLs with all your organization data.
  - Download all the files using the download URLs and process the data as you like.

Data that is collected using either '_JSON response_ or _via files_' is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages.

> [!NOTE]
> Unless indicated otherwise, all export security baseline assessment methods listed are **_full export_** and **_by device_** (also referred to as **_per device_**)

## 1. Export security baselines assessment (JSON response)

### 1.1 API method description

Returns all security baselines assessments for all devices, on a per-device basis. It returns a table with a separate entry for every unique combination of DeviceId, ProfileId, ConfigurationId.

### 1.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md) for details.

Permission type|Permission|Permission display name
:---|:---|:---
Application|SecurityBaselinesAssessment.Read.All |'Read all security baselines assessments information'
Delegated (work or school account)|SecurityBaselinesAssessment.Read|'Read security baselines assessments information'

### 1.3 Limitations

- Maximum page size is 200,000.
- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 1.4 Parameters

- pageSize (default = 50,000): Number of results in response.
- $top: Number of results to return (doesn't return @odata.nextLink and so doesn't pull all the data).

### 1.5 HTTP request

```http
GET /api/machines/baselineComplianceAssessmentByMachine
```

### 1.6 Properties (JSON response)

> [!NOTE]
> Each record is approximately 1 KB of data. You should take this into account when choosing the correct pageSize parameter.
>
> Some additional columns might be returned in the response. These columns are temporary and might be removed. Only use the documented columns.
>
> The properties defined in the following table are listed alphabetically by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in this table.

Property (ID)|Data type|Description
:---|:---|:---
|configurationId|String|Unique identifier for a specific configuration in the baseline benchmark.
|profileId|String|Unique identifier for the profile assessed.
|deviceId|String|Unique identifier for the device in the service.
|deviceName|String|Fully qualified domain name (FQDN) of the device.
|isApplicable|Boolean|Indicates whether the configuration is applicable to this device.
|isCompliant|Boolean|Indicates whether the device is compliant with configuration.
|id|String|Unique identifier for the record, which is a combination of DeviceId, ProfileId, and ConfigurationId.
|osVersion|String|Specific version of the operating system running on the device.
|osPlatform|String|Operating system platform running on the device. Specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See [MDVM supported operating systems and platforms](tvm-supported-os.md) for details.
|rbacGroupId|Int|The role-based access control (RBAC) group Id. If the device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
|rbacGroupName|String|The role-based access control (RBAC) group. If the device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
|DataCollectionTimeOffset|DateTime|The time the data was collected from the device. This field may not appear if no data was collected.
|ComplianceCalculationTimeOffset|DateTime|The time the assessment calculation was made.
|RecommendedValue|String|Set of expected values for the current device setting to be complaint.
|CurrentValue|String|Set of detected values found on the device.
|Source|String|The registry path or other location used to determine the current device setting.

## 1.7 Example

### 1.7.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/machines/BaselineComplianceAssessmentByMachine
```

### 1.7.2 Response example

```json
{
"@odata.context": " https://api.securitycenter.microsoft.com /api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetBaselineAssessment)",
"value": [
{
    "id": "0000682575d5d473e82ed4d8680425d152411251_9e1b90be-e83e-485b-a5ec-4a429412e734_1.1.1",
    "configurationId": "1.1.1",
    "deviceId": "0000682575d5d473242222425d152411251",
    "deviceName": " ComputerPII_365f5c0bb7202c163937dad3d017969b2d760eb4.DomainPII_29596 ",
    "profileId": "9e1b90be-e83e-485b-a5ec-4a429412e734",
    "osPlatform": "WindowsServer2019",
    "osVersion": "10.0.17763.2330",
    "rbacGroupId": 86,
    "rbacGroupName": "UnassignedGroup",
    "isApplicable": true,
    "isCompliant": false,
    "dataCollectionTimeOffset": "2021-12-22T00:08:02.478Z",
    "recommendedValue": [
                    "Greater than or equal '24'"
                ],
                "currentValue": [
                    "24"
                ],
                "source": [
                    "password_hist_len"
                ],
}
```

## 2. Export security baselines assessment (via files)

### 2.1 API method description

Returns all security baselines assessments for all devices, on a per-device basis. It returns a table with a separate entry for every unique combination of DeviceId, ProfileId, ConfigurationId.

### 2.2 Limitations

- Rate limitations for this API are 5 calls per minute and 20 calls per hour.

### 2.3 URL

```http
GET /api/machines/BaselineComplianceAssessmentExport
```

### 2.4 Parameters

- sasValidHours: The number of hours that the download URLs will be valid for (Maximum 24 hours).

### 2.5 Properties (via files)

> [!NOTE]
> The files are gzip compressed & in multiline Json format.
>
> The download URLs are only valid for 3 hours; otherwise you can use the parameter.
>
> To maximize download speeds, make sure you are downloading the data from the same Azure region where your data resides.
>
> Some additional columns might be returned in the response. These columns are temporary and might be removed. Only use the documented columns.

Property (ID)|Data type|Description
:---|:---|:---
|Export files|array[string]|A list of download URLs for files holding the current snapshot of the organization.
|GeneratedTime|String|The time that the export was generated.

## 2.6 Example

### 2.6.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/machines/BaselineComplianceAssessmentExport
```

### 2.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter. contoso.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles":
    [
    "https://tvmexportexternalstgeus.blob.core.windows.net/temp-1ebd3d09-d06a-4aad-ab80-ebc536cec61c/2021-12-22/0500/BaselineAssessmentExport/json/OrgId= OrgId=<Org Id>/_RbacGroupId=<Rbac Group Id>/part-00000-c09dfd00-2278-4735-b23a-71733751fcbc.c000.json.gz?sv=ABCD",
   "https://tvmexportexternalstgeus.blob.core.windows.net/temp-1ebd3d09-d06a-4aad-ab80-ebc536cec61c/2021-12-22/0500/BaselineAssessmentExport/json/OrgId=<Org Id>/_RbacGroupId=<Rbac Group Id>/part-00001-c09dfd00-2278-4735-b23a-71733751fcbc.c000.json.gz?sv= ABCD",
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Get security baselines assessment profiles](get-security-baselines-assessment-profiles.md)
- [Get security baselines assessment configurations](get-security-baselines-assessment-configurations.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
