---
title: Hardware and firmware assessment methods and properties per device
description: Provides information about the Firmware and Hardware APIs that pull "Microsoft Defender Vulnerability Management" data. There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization.
keywords: api, apis, export assessment, per device assessment, per machine assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, secure configuration assessment, secure configuration report, software vulnerabilities assessment, software vulnerability report, vulnerability report by machine, firmware and hardware assessment 
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
ms.date: 11/24/2022
---

# Export Hardware and firmware assessment inventory per device

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
> Unless indicated otherwise, all export hardware and firmware assessment assessment methods listed are **_full export_** and **_by device_** (also referred to as **_per device_**)

## 1. Export hardware and firmware assessment (JSON response)

### 1.1 API method description

Returns all hardware and firmware assessments for all devices, on a per-device basis. It returns a table with a separate entry for every unique combination of deviceId and componentType.

#### 1.1.1 Limitations

- Maximum page size is 200,000.
- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 1.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Software.Read.All|'Read Threat and Vulnerability Management software information'
Delegated (work or school account)|Software.Read|'Read Threat and Vulnerability Management software information'

### 1.3 URL


```http
GET api/machines/HardwareFirmwareInventoryByMachine
```

### 1.4 Parameters

- pageSize (default = 50,000): Number of results in response.
- $top: Number of results to return (doesn't return @odata.nextLink and so doesn't pull all the data).

### 1.5 Properties (JSON response)

> [!NOTE]
> Each record is approximately 1 KB of data. You should take this into account when choosing the correct pageSize parameter.
>
> Some additional columns might be returned in the response. These columns are temporary and might be removed. Only use the documented columns.
>
> The properties defined in the following table are listed alphabetically by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in this table.

Property (ID)|Data type|Description
:---|:---|:---
deviceId|String|Unique identifier for the device in the service.
|rbacGroupId|Int|The role-based access control (RBAC) group Id. If the device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
|rbacGroupName|String|The role-based access control (RBAC) group. If the device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
|deviceName|String|Fully qualified domain name (FQDN) of the device.
|componentType|String|Type of hardware or firmware component.
|manufacturer|String|Manufacturer of a specific hardware or firmware component.
|componentName|String|Name of a specific hardware or firmware component.
|componentVersion|String|Version of a specific hardware or firmware component.
|additionalFields|String|Additional information about the components in JSON array format.

## 1.6 Example

### 1.6.1 Request example


```http
GET https://api.security.microsoft.com/api/machines/HardwareFirmwareInventoryByMachine
```

### 1.6.2 Response example

```json
      {
        "@odata.context": "https://api-df.securitycenter.microsoft.com/api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetHardwareFirmware)",
        "value":[
        {
            "deviceId": "49126b9e4a5473b5229c73799e9e55c48668101b",
            "rbacGroupId": 39,
            "rbacGroupName": "testO6343398Gq31",
            "deviceName": "testmachine5",
            "componentType": "Hardware",
            "manufacturer": "razer",
            "componentName": "blade_15_advanced_model_(mid_2021)_-_rz09-0409",
            "componentVersion": "7.04",
            "additionalFields": "{\"SystemSKU\":\"RZ09-0409CE53\",\"BaseBoardManufacturer\":\"Razer\",\"BaseBoardProduct\":\"CH570\",\"BaseBoardVersion\":\"4\",\"DeviceFamily\":\"Workstation\"}"
          }  
        ]  
      },
    
```

## 2. Export hardware and firmware assessment (via files)

### 2.1 API method description

Returns all hardware and firmware assessments for all devices, on a per-device basis. It returns a table with a separate entry for every unique combination of DeviceId, ComponentType and  ComponentName.

#### 2.1.1 Limitations

- Rate limitations for this API are 5 calls per minute and 20 calls per hour.

### 2.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Software.Read.All|'Read Threat and Vulnerability Management software information'
Delegated (work or school account)|Software.Read|'Read Threat and Vulnerability Management software information'

### 2.3 URL

```http
GET /api/machines/HardwareFirmwareInventoryExport
```

### 2.4 Parameters

- sasValidHours: The number of hours that the download URLs will be valid for (Maximum 24 hours).

### 2.5 Properties (JSON response)

> [!NOTE]
> The files are gzip compressed & in multiline Json format.
>
> The download URLs are only valid for 3 hours; otherwise, you can use the parameter.
>
> To maximize download speeds, make sure you are downloading the data from the same Azure region where your data resides.
>
> Each record is approximately 1KB of data. You should take this into account when choosing the pageSize parameter that works for you.
>
> Some additional columns might be returned in the response. These columns are temporary and might be removed. Only use the documented columns.

Property (ID)|Data type|Description
:---|:---|:---
|Export files|String[array]|A list of download URLs for files holding the current snapshot of the organization.
|GeneratedTime|DateTime|The time the export was generated.



## 2.6 Example

### 2.6.1 Request example

```http
GET https://api.security.microsoft.com/api/machines/HardwareFirmwareInventoryExport
```

### 2.6.2 Response example

```json
    {
        "@odata.context":"https://api-df.securitycenter.microsoft.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrprdcane.blob.core.windows.net/tvm-firmware-export/2022-07-11/1101/FirmwareHardwareExport/json/OrgId=d7c7c745-195f-4223-9c7a-99fb420fd000/_RbacGroupId=39/part-00999-71eea973-1bb1-4d0a-829d-80cb07aff5d8.c000.json.gz?sv=2020-08-04&st=2022-07-11T13%3A10%3A06Z&se=2022-07-11T16%3A10%3A06Z&sr=b&sp=r&sig=muN8Sq6rVN6bFMtR0u3S5Wzh3D9qNPgN5vpU7lWvULg%3D",
        "https://tvmexportstrprdcane.blob.core.windows.net/tvm-firmware-export/2022-07-11/1101/FirmwareHardwareExport/json/OrgId=d7c7c745-195f-4223-9c7a-99fb420fd000/_RbacGroupId=9/part-00968-71eea973-1bb1-4d0a-829d-80cb07aff5d8.c000.json.gz?sv=2020-08-04&st=2022-07-11T13%3A10%3A06Z&se=2022-07-11T16%3A10%3A06Z&sr=b&sp=r&sig=%2BA0%2B4qOOBCS5E4UenJPbMdLM%2FkbXHnz%2F1pvfSOCq%2F2s%3D",
        "https://tvmexportstrprdcane.blob.core.windows.net/tvm-firmware-export/2022-07-11/1101/FirmwareHardwareExport/json/OrgId=d7c7c745-195f-4223-9c7a-99fb420fd000/_RbacGroupId=9/part-00969-71eea973-1bb1-4d0a-829d-80cb07aff5d8.c000.json.gz?sv=2020-08-04&st=2022-07-11T13%3A10%3A06Z&se=2022-07-11T16%3A10%3A06Z&sr=b&sp=r&sig=sZUgYMwSr5zk6BZvS%2BoYIWlHJWk2oJ7YjiC8R26S1X4%3D"
    ],
    "generatedTime": "2022-07-11T11:01:00Z"

   }
```

