---
title: Export browser extensions assessment
description: Returns a table with an entry for every unique combination of DeviceId, BrowserName, ExtensionID.
keywords: api, apis, export assessment, per device assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, browser extension assessment
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
ms.date: 06/01/2022
---

# Export browser extensions assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink).

> Want to experience Microsoft Defender Vulnerability Management? Learn more about how you can sign up to the [Microsoft Defender Vulnerability Management public preview trial](../defender-vulnerability-management/get-defender-vulnerability-management.md).

Returns all known installed browser extensions and their details for all devices, on a per-device basis.

Different API calls get different types of data. Because the amount of data can be large, there are two ways it can be retrieved:

- [Export browser extensions assessment **JSON response**](#1-export-browser-extensions-assessment-json-response) The API pulls all data in your organization as Json responses. This method is best for _small organizations with less than 100-K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- [Export browser extensions assessment **via files**](#2-export-browser-extension-assessment-via-files) This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows:
  - Call the API to get a list of download URLs with all your organization data.
  - Download all the files using the download URLs and process the data as you like.

Data that is collected (using either _Json response_ or _via files_) is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages.

> [!NOTE]
> Unless indicated otherwise, all export assessment methods listed are **_full export_** and **_by device_** (also referred to as **_per device_**).

## 1. Export browser extensions assessment (JSON response)

### 1.1 API method description

This API response contains all the data for installed browser extensions per device. Returns a table with an entry for every unique combination of DeviceId, BrowserName, ExtensionId.

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
GET /api/Machines/BrowserExtensionsInventoryByMachine
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

****

Property (ID)|Data type|Description
:---|:---|:---
BrowserName|string|Name of the browser where the extension is installed.
DeviceId|string|Unique identifier for the device.
DeviceName|string|Fully qualified domain name (FQDN) of the device.
ExtensionDescription|string| Description of a specific browser extension.
ExtensionId|string|Unique identifier for a specific browser extension.
ExtensionName|string|Name of a specific browser extension.
ExtensionRisk|string|The highest risk level generated by the browser extension. Possible values are: "None", "Low", "Medium", "High", "Critical".
ExtensionVersion|string|Version number of a specific browser extension.
IsActivated|Boolean|Indicates whether a browser extension is active.
RbacGroupId|integer|The role-based access control (RBAC) group ID.
RbacGroupName|string|The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
InstallationTime|string|The time the browser extension was installed.
Permissions|Array[string]|The set of permissions requested by a specific browser extension.

### 1.6 Examples

#### 1.6.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/Machines/BrowserExtensionsInventoryByMachine?pageSize=5  &sinceTime=2021-05-19T18%3A35%3A49.924Z
```

#### 1.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Collection(contoso.windowsDefenderATP.api.AssetSoftware)",
    "value": [
        {
            "DeviceId": "1c32162b42e9efa1f5de42f951775f22f435c997",
            "DeviceName": "computerpii_1363c2e016e2225cb03974df58f14e6968067aa8.domainpii_f260e982985f7e8eee198b4332e0ae5b2a069cd6.corp.microsoft.com",
            "RbacGroupId": 86,
            "RbacGroupName": "UnassignedGroup",
            "InstallationTime": "2022-05-26T18:46:27.000Z",
            "BrowserName": "chrome",
            "ExtensionId": "dkpejdfnpdkhifgbancbammdijojoffk",
            "ExtensionName": "Logitech Smooth Scrolling",
            "ExtensionDescription": "Buttery-smooth scrolling for Logitech mice and touchpads.",
            "ExtensionVersion": "6.65.62",
            "ExtensionRisk": "High",
            "IsActivated": true,
            "Permissions": [
                        {
                                    "Id": "tabs",
                                    "IsRequired": true,
                                    "Risk": "High"
                        },
                        {
                                    "Id": http://*/*,
                                    "IsRequired": true,
                                    "Risk": "High"
                        },
                        {
                                    "Id": https://*/*,
                                    "IsRequired": true,
                                    "Risk": "High"
                        }
            ]
}
    ],
    "@odata.nextLink": "https://api.securitycenter.microsoft.com/api/Machines/BrowserExtensionsInventoryByMachine?pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0yNS8wMjAwLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## 2. Export browser extension assessment (via files)

### 2.1 API method description

This API response contains all the data for installed browser extensions per device. Returns a table with an entry for every unique combination of DeviceId, BrowserName, ExtensionId.

#### 2.1.1 Limitations

Rate limitations for this API are 5 calls per minute and 20 calls per hour.

### 2.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type|Permission|Permission display name
:---|:---|:---
Application|Software.Read.All|'Read Threat and Vulnerability Management software information'
Delegated (work or school account)|Software.Read|'Read Threat and Vulnerability Management software information'

### 2.3 URL

```http
GET /api/machines/browserextensionsinventoryExport
```

### 2.4 Parameters

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

### 2.6 Examples

#### 2.6.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/machines/browserextensionsinventoryExport
```

#### 2.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/BrowserExtensions/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/BrowserExtensions/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/BrowserExtensions/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Get browser extensions permission info](get-browser-extensions-permission-info.md)
- [Browser extensions assessment](../defender-vulnerability-management/tvm-browser-extensions.md)

## Other related

- [Vulnerability management](../defender-vulnerability-management/defender-vulnerability-management.md)
- [Vulnerabilities in your organization](../defender-vulnerability-management/tvm-weaknesses.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
