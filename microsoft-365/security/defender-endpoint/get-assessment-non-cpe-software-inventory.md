---
title: Export non product code software inventory assessment per device
description: Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion for software that doesn't have a Common Platform Enumeration (CPE)
keywords: api, apis, export assessment, per device assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, secure configuration assessment, secure configuration report, software vulnerabilities assessment, software vulnerability report, vulnerability report by machine,
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
ms.date: 05/27/2022
---

# Export non product code software inventory assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This API returns all the data for installed software that doesn't have a [Common Platform Enumeration(CPE)](https://nvd.nist.gov/products/cpe), on a per-device basis. The information returned by this API, along with the information returned by the [Export software inventory assessment](get-assessment-non-cpe-software-inventory.md) API, for software that does have a CPE, gives you full visibility into the software installed across your organization and the devices it's installed on.

> [!NOTE]
> Software products without a CPE are not supported by vulnerability management. They will be shown in the software inventory page, but because CPEs are used by vulnerability management to identify the software and any vulnerabilities, information like, exploits, number of exposed devices, and weaknesses won't be available for them. For more information, see [Software inventory](../defender-vulnerability-management/tvm-software-inventory.md).

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
Application|Software.Read.All|\'Read Threat and Vulnerability Management software information\'
Delegated (work or school account)|Software.Read|\'Read Threat and Vulnerability Management software information\'

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

Property (ID)|Data type|Description
:---|:---|:---
DeviceId|string|Unique identifier for the device in the service.
DeviceName|string|Fully qualified domain name (FQDN) of the device.
OSPlatform|string|Platform of the operating system running on the device. These are specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See [Supported operating systems, platforms and capabilities](../defender-vulnerability-management/tvm-supported-os.md) for details.
RbacGroupName|string|The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
RbacGroupId|string|The role-based access control (RBAC) group ID.
SoftwareLastSeenTimestamp|string|The last time this software was seen on the device.
SoftwareName|string|Name of the software product.
SoftwareVendor|string|Name of the software vendor.
SoftwareVersion|string|Version number of the software product.

### 1.6 Examples

#### 1.6.1 Request example

```http
https://api.securitycenter.microsoft.com/api/machines/SoftwareInventoryNoProductCodeByMachine?pageSize=3  &sinceTime=2021-05-19
```

#### 1.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetNonCpeSoftware)",
    "value": [
        {
           "deviceId": "1234512345123451234512345",
            "rbacGroupId": 11,
            "rbacGroupName": "London",
            "deviceName": "Device1",
            "osPlatform": "Windows11",
            "softwareVendor": "microsoft",
            "softwareName": "vs_communitymsi",
            "softwareVersion": "11.11.31111.1",
            "softwareLastSeenTimestamp": "2021-01-30 11:31:12.271"
        },
        {
            "deviceId": "232323232323232322323232323",
            "rbacGroupId": 23,
            "rbacGroupName": "Tokyo",
            "deviceName": "Device23",
            "osPlatform": "Windows10",
            "softwareVendor": "intel",
            "softwareName": "intel®_software_installer",
            "softwareVersion": "22.20.2.2",
            "softwareLastSeenTimestamp": "2022-05-30 15:35:12.271"
        },
        {
            "deviceId": "6565656565",
            "rbacGroupId": 65,
            "rbacGroupName": "Center",
            "deviceName": "Device56",
            "osPlatform": "Windows10",
            "softwareVendor": "Lob Apps",
            "softwareName": "Headtrax",
            "softwareVersion": "60.273.3",
            "softwareLastSeenTimestamp": "2022-05-05 15:35:12.271"
        },
    ],
        "@odata.nextLink": "https://api.securitycenter.microsoft.com/api/machines/SoftwareInventoryNoProductCodeByMachine?pagesize=3%20%20&sincetime=2021-05-19&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMi0wNS0zMC8xMTAxLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
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
Application|Software.Read.All|\'Read Threat and Vulnerability Management software information\'
Delegated (work or school account)|Software.Read|\'Read Threat and Vulnerability Management software information\'

### 2.3 URL

```http
GET /api/machines/SoftwareInventoryNonCpeExport
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
GET https://api.securitycenter.microsoft.com/api/machines/SoftwareInventoryNonCpeExport
```

#### 2.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-ffd80447-7b3d-4ad2-b366-f0979b129662/2022-05-30/1101/NonCpeSoftwareInventory/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=1/part-00337-5e15412b-5c85-4896-ac60-b7b3ab8da096.c000.json.gz?sv=2020-08-04&st=2022-05-30T13%3A41%3A59Z&se=2022-05-30T16%3A41%3A59Z&sr=b&sp=r&sig=aHnmuOKlIvpR0PsdamYfmCCDZ1nhpuXBzK2%2FkJ9xTpg%3D",
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-ffd80447-7b3d-4ad2-b366-f0979b129662/2022-05-30/1101/NonCpeSoftwareInventory/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=1/part-00338-5e15412b-5c85-4896-ac60-b7b3ab8da096.c000.json.gz?sv=2020-08-04&st=2022-05-30T13%3A41%3A59Z&se=2022-05-30T16%3A41%3A59Z&sr=b&sp=r&sig=0fQg%2Ft469x26KvPLmvctLl0g6DC38CNM3lXYi9dnFfo%3D",
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-ffd80447-7b3d-4ad2-b366-f0979b129662/2022-05-30/1101/NonCpeSoftwareInventory/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=1/part-00339-5e15412b-5c85-4896-ac60-b7b3ab8da096.c000.json.gz?sv=2020-08-04&st=2022-05-30T13%3A41%3A59Z&se=2022-05-30T16%3A41%3A59Z&sr=b&sp=r&sig=P6HGHoLXXipMauBpLueoQVrwHL7qmvLoCjcij6ERx8o%3D",
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-ffd80447-7b3d-4ad2-b366-f0979b129662/2022-05-30/1101/NonCpeSoftwareInventory/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=1/part-00340-5e15412b-5c85-4896-ac60-b7b3ab8da096.c000.json.gz?sv=2020-08-04&st=2022-05-30T13%3A41%3A59Z&se=2022-05-30T16%3A41%3A59Z&sr=b&sp=r&sig=VnpVct%2F8vdiIFTf2xXP9DF7ngWv1Zqew30q2jBPVghg%3D",
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-ffd80447-7b3d-4ad2-b366-f0979b129662/2022-05-30/1101/NonCpeSoftwareInventory/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=1/part-00341-5e15412b-5c85-4896-ac60-b7b3ab8da096.c000.json.gz?sv=2020-08-04&st=2022-05-30T13%3A41%3A59Z&se=2022-05-30T16%3A41%3A59Z&sr=b&sp=r&sig=GY0zxMfEmr9v9fZBWYyKEtT2k%2F0ELQIlOP0ct%2B6SdGU%3D",
    ],
    "generatedTime": "2022-05-30T11:01:00Z"
}
```

## See also

- [Export software assessment per device](get-assessment-software-inventory.md)
- [Export assessment methods and properties per device](get-assessment-methods-properties.md)
- [Export secure configuration assessment per device](get-assessment-secure-config.md)
- [Export software vulnerabilities assessment per device](get-assessment-software-vulnerabilities.md)

Other related
- [Microsoft Defender Vulnerability Management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
- [Vulnerabilities in your organization](tvm-weaknesses.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
