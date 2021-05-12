---
title: Export software inventory assessment
description: Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion.
keywords: api, apis, export assessment, per device assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, secure configuration assessment, secure configuration report, software vulnerabilities assessment, software vulnerability report, vulnerability report by machine,
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-jweston
author: jweston-1
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Export software inventory assessment

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## Full export software inventory assessment by device

### API method description - software inventory assessment by device

Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion.
The API response contains data for all software installed (not only vulnerable software) on all devices in your organization. It includes data about the software versions and their vulnerabilities (if they exist), and software metadata such as end-of-support dates.

### Limitations - software inventory assessment by device

N/A?

### Permissions - software inventory assessment by device

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Software.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Software.Read | \'Read Threat and Vulnerability Management vulnerability information\'

### URL - software inventory assessment by device

```http
GET /api/machines/SoftwareInventoryByMachine
```

### Properties - software inventory assessment by device

>[!Note]
>
>- Each record is approximately 0.5KB of data. You should take this into account when choosing the correct pageSize parameter for you.
>
>- The properties defined in the following table are listed alphanumerically, by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in these tables.
>
>- Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.
>

Property (id) | Data type | Description | Example of a returned value
:---|:---|:---|:---
DeviceId | string | Unique identifier for the device in the service. | 9eaf3a8b5962e0e6b1af9ec756664a9b823df2d1
DeviceName | string | Fully qualified domain name (FQDN) of the device. | johnlaptop.europe.contoso.com
DiskPaths | Array[string]  | Disk evidence that the product is installed on the device. | [ "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe" ]
EndOfSupportDate (optional) | string | The date in which support for this software has or will end. | 2020-12-30
EndOfSupportStatus | string | End of support status. Can contain these possible values: None, EOS Version, Upcoming EOS Version, EOS Software, Upcoming EOS Software. | Upcoming EOS
Id | string | Unique identifier for the record. | 123ABG55_573AG&mnp!
NumberOfWeaknesses | int | Number of weaknesses on this software on this device | 3
OSPlatform | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. See tvm supported operating systems and platforms for details. | Windows10
RbacGroupId | Int | ID of the RBAC group. | 70
RbacGroupName | string | The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be “Unassigned.” If the organization doesn’t contain any RBAC groups, the value will be “None.” | Servers
RegistryPaths (optional) | Array[string] | Registry evidence that the product is installed in the device. | [ "HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Google Chrome" ]
SoftwareFirstSeenTimestamp | string | The first time this software was seen on the device. | 2019-04-07 02:06:47
SoftwareName | string | Name of the software product. | chrome
SoftwareVendor | string | Name of the software vendor. | google
SoftwareVersion | string | Version number of the software product. | 81.0.4044.138

### Example - software inventory assessment by device

#### Request example - software inventory assessment by device

```http
GET https://api-us.security-center3.contoso.com/api/machines/SoftwareInventoryByMachine?pageSize=5  
```

#### Response example - software inventory assessment by device

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#Collection(contoso.windowsDefenderATP.api.AssetSoftware)",
    "value": [
        {
            "deviceId": "00044f68765bbaf712342dbe6db733b6a9c59ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18993b45912eeb224b2be2f5ea3142726e63f16a.DomainPII_21eeb80d086e79dbfa178eadfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "softwareVendor": "microsoft",
            "softwareName": "windows_10",
            "softwareVersion": "10.0.17763.1637",
            "numberOfWeaknesses": 58,
            "diskPaths": [],
            "registryPaths": [],
            "softwareFirstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "Upcoming EOS Version",
            "endOfSupportDate": "2021-05-11T00:00:00+00:00"
        },
        {
            "deviceId": "00044f68765bbaf712342dbe6db733b6a9c59ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18993b45912eeb224b2be2f5ea3142726e63f16a.DomainPII_21eeb80d086e79dbfa178eadfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "softwareVendor": "microsoft",
            "softwareName": ".net_framework",
            "softwareVersion": "4.0.0.0",
            "numberOfWeaknesses": 0,
            "diskPaths": [],
            "registryPaths": [
                "SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4.0\\Client\\Install"
            ],
            "softwareFirstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null
        },
        {
            "deviceId": "00044f68765bbaf712342dbe6db733b6a9c59ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18993b45912eeb224b2be2f5ea3142726e63f16a.DomainPII_21eed80d086e79bdfa178eadfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "softwareVendor": "microsoft",
            "softwareName": "system_center_2012_endpoint_protection",
            "softwareVersion": "4.7.214.0",
            "numberOfWeaknesses": 0,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Microsoft Security Client"
            ],
            "softwareFirstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null
        },
        {
            "deviceId": "00044f68765ddaf71234bde6bd733d6a9c59ad4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18993b45912eeb224b2be2f5ea3142726e63f16a.DomainPII_21eeb80d086e79dbfa178aedfa25e8be9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "softwareVendor": "microsoft",
            "softwareName": "configuration_manager",
            "softwareVersion": "5.0.8634.1000",
            "numberOfWeaknesses": 0,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\{B7D3A842-E826-4542-B39B-1D883264B279}"
            ],
            "softwareFirstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null
        },
        {
            "deviceId": "00044f38765bbaf712342dbe6db733b6a9c59ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18993b45912eeb224b2de2f5ea3142726e63f16a.DomainPII_21eeb80d086e79bdfa178eadfa25e8be9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "softwareVendor": "microsoft",
            "softwareName": "system_center_2012_endpoint_protection",
            "softwareVersion": "4.10.209.0",
            "numberOfWeaknesses": 0,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Microsoft Security Client"
            ],
            "softwareFirstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null
        }
    ],
    "@odata.nextLink": "https://wpatdadi-eus-stg.cloudapp.net/api/machines/SoftwareInventoryByMachine?pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0yNS8wMjAwLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## Full export Software inventory assessment to Json

### API method description - software inventory assessment to Json

The API response contains data for all software installed (not only vulnerable software) on all devices in your organization. It includes data about the software versions and their vulnerabilities (if they exist), and software metadata such as end-of-support dates.

This solution allows pulling larger amounts of data faster and more reliably. Therefore, it is recommended for large organizations.
This API allows you to download all your data from Azure Storage in the following way:

- Call the API to get a list of download URLs with all your organization data.

- Download all the files using the download URLs and process the data as you like.

### Limitations - software inventory assessment to Json

N/A?

### Permissions - software inventory assessment to Json

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Software.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Software.Read | \'Read Threat and Vulnerability Management vulnerability information\'

### URL - software inventory assessment to Json

```http
GET /api/machines/SoftwareInventoryExport
```

### Properties - software inventory assessment to Json

>[!Note]
>
>- The files are gzip compressed and in multiline Json format.
>
>- The download URLs are only valid for 1 hour.
>
>- For maximum download speed of your data, you can make sure you are downloading from the same azure region that your data resides.
>

### Example - software inventory assessment to Json

#### Request example - software inventory assessment to Json

```http
GET https://api-us.securitycenter3.contoso.com/api/machines/SoftwareInventoryExport
```

#### Response example - software inventory assessment to Json

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00393-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Export assessments methods and properties](get-assessmnt-1methods-properties.md)

- [Export secure configuration assessment](get-assessmnt-secure-cfg.md)

- [Export software vulnerabilities assessment](get-assessmnt-software-vulnerabilities.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
