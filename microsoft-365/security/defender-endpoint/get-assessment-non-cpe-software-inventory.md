---
title: Export non product code software inventory assessment per device
description: Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion for software that doesn't have a Common Platform Enumeration (CPE)
keywords: api, apis, export assessment, per device assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, secure configuration assessment, secure configuration report, software vulnerabilities assessment, software vulnerability report, vulnerability report by machine,
ms.prod: m365-security
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
ms.technology: mde
ms.custom: api
---

# Export non product code software inventory assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Different API calls get different types of data. Because the amount of data can be large, there are two ways it can be retrieved:

- [Export non product code software inventory assessment **JSON response**](#1-export-non-product-code-software-inventory-assessment-json-response) The API pulls all data in your organization as Json responses. This method is best for _small organizations with less than 100-K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- [Export non product code software inventory assessment **via files**](#2-export-non-product-code-software-inventory-assessment-via-files)  This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows:
  - Call the API to get a list of download URLs with all your organization data.
  - Download all the files using the download URLs and process the data as you like.

Data that is collected (using either _Json response_ or _via files_) is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages.

> [!NOTE]
> Unless indicated otherwise, all export assessment methods listed are **_full export_** and **_by device_** (also referred to as **_per device_**).

## 1. Export non product code software inventory assessment (JSON response)

### 1.1 API method description

This API response contains all the data of installed software that does not have a [Common Platform Enumeration(CPE)](https://nvd.nist.gov/products/cpe) per device. Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion.

#### Limitations

- Maximum page size is 200,000.
- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 1.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type|Permission|Permission display name
---|---|---
Application|Software.Read.All|\'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account)|Software.Read|\'Read Threat and Vulnerability Management vulnerability information\'

### 1.3 URL

```http
GET /api/machines/SoftwareInventoryNoProductCodeByMachine
```

### 1.4 Parameters

- pageSize (default = 50,000): Number of results in response.
- $top: Number of results to return (doesn't return @odata.nextLink and therefore doesn't pull all the data)

### 1.5 Properties

> [!NOTE]
>
> - Each record is approximately 0.5KB of data. You should take this into account when choosing the correct pageSize parameter for you.
> - The properties defined in the following table are listed alphabetically, by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in this table.
> - Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.

<br>

Property (ID)|Data type|Description|Example of a returned value
:---|:---|:---|:---
DeviceId|string|Unique identifier for the device in the service.
DeviceName|string|Fully qualified domain name (FQDN) of the device.
OSPlatform|string|Platform of the operating system running on the device. These are specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See tvm supported operating systems and platforms for details.
RbacGroupName|string|The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
RbacGroupId|string|The role-based access control (RBAC) group ID.
SoftwareLastSeenTimestamp|string|The last time this software was seen on the device.
SoftwareName|string|Name of the software product.
SoftwareVendor|string|Name of the software vendor.
SoftwareVersion|string|Version number of the software product.

### 1.6 Examples

#### 1.6.1 Request example

```http
https://api.securitycenter.microsoft.com/api/machines/SoftwareInventoryNoProductCodeByMachine?pageSize=5  &sinceTime=2021-05-19T18%3A35%3A49.924Z
```

#### 1.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetNonCpeSoftware)",
    "value": [
        {
            "deviceId": "001bc7cafeff420f9f757dc710723ad800e91938",
            "rbacGroupId": 1,
            "rbacGroupName": "UnassignedGroup",
            "deviceName": "csvm583023422gu.sys-sqlsvr.local",
            "osPlatform": "WindowsServer2022",
            "softwareVendor": null,
            "softwareName": "microsoft_edge_update",
            "softwareVersion": "1.3.161.35",
            "softwareLastSeenTimestamp": "2022-05-18 12:14:01.39"
        },
        {
            "deviceId": "001bc7cafeff420f9f757dc710723ad800e91938",
            "rbacGroupId": 1,
            "rbacGroupName": "UnassignedGroup",
            "deviceName": "csvm583023422gu.sys-sqlsvr.local",
            "osPlatform": "WindowsServer2022",
            "softwareVendor": "microsoft",
            "softwareName": "microsoft_visual_c++_2015_redistributable_(x64)_-_14.0.23506\u0000",
            "softwareVersion": "14.0.23506.0",
            "softwareLastSeenTimestamp": "2022-05-20 02:59:06.971"
        },
        {
            "deviceId": "001e63177328b3cd6f5572dbfac1c401971eb1ab",
            "rbacGroupId": 1,
            "rbacGroupName": "UnassignedGroup",
            "deviceName": "csvm404750365te.sys-sqlsvr.local",
            "osPlatform": "WindowsServer2019",
            "softwareVendor": "microsoft",
            "softwareName": "microsoft_wtt_2.6_-_client\u0000",
            "softwareVersion": "2.2.0.0",
            "softwareLastSeenTimestamp": "2022-05-17 09:10:47.891"
        },
        {
            "deviceId": "001e63177328b3cd6f5572dbfac1c401971eb1ab",
            "rbacGroupId": 1,
            "rbacGroupName": "UnassignedGroup",
            "deviceName": "csvm404750365te.sys-sqlsvr.local",
            "osPlatform": "WindowsServer2019",
            "softwareVendor": "microsoft",
            "softwareName": "microsoft_visual_studio_tools_for_applications_x64_runtime_3.0\u0000",
            "softwareVersion": "10.0.40220.0",
            "softwareLastSeenTimestamp": "2022-05-17 10:05:31.881"
        },
        {
            "deviceId": "001e63177328b3cd6f5572dbfac1c401971eb1ab",
            "rbacGroupId": 1,
            "rbacGroupName": "UnassignedGroup",
            "deviceName": "csvm404750365te.sys-sqlsvr.local",
            "osPlatform": "WindowsServer2019",
            "softwareVendor": "microsoft",
            "softwareName": "microsoft_visual_c++_2008_redistributable_-_x86_9.0.30729.4974\u0000",
            "softwareVersion": "9.0.30729.4974",
            "softwareLastSeenTimestamp": "2022-05-17 10:05:36.128"
        }
    ],
    "@odata.nextLink": "https://api.securitycenter.microsoft.com/api/machines/SoftwareInventoryNoProductCodeByMachine?pagesize=5%20%20&sincetime=2021-05-19T18%3A35%3A49.924Z&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMi0wNS0zMC8wNTAwLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}

```

## 2. Export non product code software inventory assessment (via files)

### 2.1 API method description

This API response contains all the data of installed software that does not have a [Common Platform Enumeration(CPE)](https://nvd.nist.gov/products/cpe) per device. Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion.

#### 2.1.1 Limitations

Rate limitations for this API are 5 calls per minute and 20 calls per hour.

### 2.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type|Permission|Permission display name
---|---|---
Application|Software.Read.All|\'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account)|Software.Read|\'Read Threat and Vulnerability Management vulnerability information\'

### 2.3 URL

```http
GET /api/machines/SoftwareInventoryExport
```

### Parameters

- sasValidHours: The number of hours that the download URLs will be valid for (Maximum 24 hours)

### 2.5 Properties

> [!NOTE]
>
> - The files are gzip compressed & in multiline JSON format.
> - The download URLs are only valid for 3 hours. Otherwise you can use the parameter.
> - For maximum download speed of your data, you can make sure you are downloading from the same Azure region that your data resides.

<br>

****

Property (ID)|Data type|Description|Example of a returned value
:---|:---|:---|:---
Export files|array\[string\]|A list of download URLs for files holding the current snapshot of the organization|"[Https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...1", "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...2"]
GeneratedTime|string|The time that the export was generated.|2021-05-20T08:00:00Z
|

### 2.6 Examples

#### 2.6.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/machines/SoftwareInventoryExport
```

#### 2.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Export assessment methods and properties per device](get-assessment-methods-properties.md)
- [Export secure configuration assessment per device](get-assessment-secure-config.md)
- [Export software vulnerabilities assessment per device](get-assessment-software-vulnerabilities.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Vulnerabilities in your organization](tvm-weaknesses.md)
