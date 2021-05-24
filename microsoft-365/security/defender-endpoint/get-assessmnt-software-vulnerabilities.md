---
title: Export software vulnerabilities assessment per device
description: The API response is per device and contains vulnerable software installed on your exposed devices as well as any known vulnerabilities in these software products. This table also includes operating system information, CVE IDs, and vulnerability severity information. 
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
ms.custom: api
---
 
# Export software vulnerabilities assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]
>
>
Returns all the known vulnerabilities and their details for all devices, on a per-device basis.

There are different API calls to get different types of data. Since the amount of data can be very large, there are two ways it can be retrieved:

- [1. Export software vulnerabilities assessment \(OData\)](#1-export-software-vulnerabilities-assessment-odata): The API will pull all data in your organization as Json responses, following the OData protocol. This method is best for _small organizations with less than 100K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- [2. Export software vulnerabilities assessment \(via files\)](#2-export-software-vulnerabilities-assessment-via-files): The API will pull all data in your organization as download files. This method is best for big organizations with more than 100K devices. The response contains URLs to download all the data from Azure storage. This API allows you to download all your data from Azure Storage as follows:

- 1. Call the API to get a list of download URLs with all your organization data.
- 2. Download all the files using the download URLs and process the data as you like

The data that is collected is the current snapshot of the current state, and does not contains historic data. In order to collect historic data, customers need must the data in their own data storages.

> [!Note]
>
> Unless indicated otherwise, all assessment methods listed are _full export_ and _by device_ (also referred to as _per device_).

## 1. Export software vulnerabilities assessment (OData)

### 1.1 API method description

Returns all of the vulnerable software installed on your exposed devices as well as any known vulnerabilities in these software products. This table also includes operating system information, CVE IDs, and vulnerability severity information.

#### Limitations

>- Maximum page size is 200,000.
>
>- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 1.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Vulnerability.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Vulnerability.Read | \'Read Threat and Vulnerability Management vulnerability information\'

### 1.3 URL

```http
GET /api/machines/SoftwareVulnerabilitiesByMachine
```

### 1.4 Parameters

- pageSize (default = 50,000) – number of results in response
- $top – number of results to return (doesn’t return @odata.nextLink and therefore doesn’t pull all the data)

### 1.5 Properties
>
>[!Note]
>
>- Each record is approximately 1KB of data. You should take this into account when choosing the correct pageSize parameter for you.
>
>- Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.
>
>- The properties defined in the following table are listed alphanumerically, by property ID.  When running this API, the resulting output will not necessarily be returned in the same order listed in these tables.
>

Property (id) | Data type | Description | Example of a returned value
:---|:---|:---|:---
CveId | string | Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system. | CVE-2020-15992
CvssScore | string | The CVSS score of the CVE. | 6.2
DeviceId | string | Unique identifier for the device in the service. | 9eaf3a8b5962e0e6b1af9ec756664a9b823df2d1
DeviceName | string | Fully qualified domain name (FQDN) of the device. | johnlaptop.europe.contoso.com
DiskPaths  | Array[string] | Disk evidence that the product is installed on the device. | [ "C:\Program Files (x86)\Microsoft\Silverlight\Application\silverlight.exe" ]
ExploitabilityLevel | string | The exploitability level of this vulnerability (NoExploit, ExploitIsPublic, ExploitIsVerified, ExploitIsInKit) | ExploitIsInKit
FirstSeenTimestamp | string | First time the CVE of this product was seen on the device. | 2020-11-03 10:13:34.8476880
Id | string | Unique identifier for the record. | 123ABG55_573AG&mnp!
LastSeenTimestamp | string | Last time the CVE was seen on the device. | 2020-11-03 10:13:34.8476880
OSPlatform | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. See tvm supported operating systems and platforms for details. | Windows10
RbacGroupName  | string | The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be “Unassigned.” If the organization doesn’t contain any RBAC groups, the value will be “None.” | Servers
RecommendationReference | string | A reference to the recommendation ID related to this software. | va-_-microsoft-_-silverlight
RecommendedSecurityUpdate (optional) | string | Name or description of the security update provided by the software vendor to address the vulnerability. | April 2020 Security Updates
RecommendedSecurityUpdateId (optional) | string | Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles | 4550961
RegistryPaths  | Array[string] | Registry evidence that the product is installed in the device. | [ "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\MicrosoftSilverlight" ]
SoftwareName | string | Name of the software product. | chrome
SoftwareVendor | string | Name of the software vendor. | google
SoftwareVersion | string | Version number of the software product. | 81.0.4044.138
VulnerabilitySeverityLevel  | string | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape. | Medium

### 1.6 Examples

#### 1.6.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/machines/SoftwareVulnerabilitiesByMachine?pageSize=5
```

#### 1.6.2 Response example

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetVulnerability)",
    "value": [
        {
            "id": "00044f612345baf759462dbe6db733b6a9c59ab4_edge_10.0.17763.1637__",
            "deviceId": "00044f612345daf756462bde6bd733b9a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eed224b2de2f5ea3142726e63f16a.DomainPII_21eeb80d089e79bdfa178eabfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "edge",
            "softwareVersion": "10.0.17763.1637",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [],
            "lastSeenTimestamp": "2020-12-30 14:17:26",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-edge"
        },
        {
            "id": "00044f912345baf756462bde6db733b9a9c56ad4_.net_framework_4.0.0.0__",
            "deviceId": "00044f912345daf756462bde6db733b6a9c59ad4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eed224b2be2f5ea3142726e63f16a.DomainPII_21eeb80b086e79bdfa178eabfa25e8de6acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": ".net_framework",
            "softwareVersion": "4.0.0.0",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4.0\\Client\\Install"
            ],
            "lastSeenTimestamp": "2020-12-30 13:18:33",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-.net_framework"
        },
        {
            "id": "00044f912345baf756462dbe6db733d6a9c59ab4_system_center_2012_endpoint_protection_4.10.209.0__",
            "deviceId": "00044f912345daf756462bde6db733b6a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eed224b2be2f5ea3142726e63f16a.DomainPII_21eed80b089e79bdfa178eadfa25e8be6acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "system_center_2012_endpoint_protection",
            "softwareVersion": "4.10.209.0",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Microsoft Security Client"
            ],
            "lastSeenTimestamp": "2020-12-30 14:17:26",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-system_center_2012_endpoint_protection"
        },
        {
            "id": "00044f612345bdaf759462dbe6bd733b6a9c59ab4_onedrive_20.245.1206.2__",
            "deviceId": "00044f91234daf759492dbe6bd733b6a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_189663d45612eed224b2be2f5ea3142729e63f16a.DomainPII_21eed80b086e79bdfa178eadfa25e8de6acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "onedrive",
            "softwareVersion": "20.245.1206.2",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_USERS\\S-1-5-21-2944539346-1310925172-2349113062-1001\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\OneDriveSetup.exe"
            ],
            "lastSeenTimestamp": "2020-12-30 13:18:33",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-onedrive"
        },
        {
            "id": "00044f912345daf759462bde6db733b6a9c56ab4_windows_10_10.0.17763.1637__",
            "deviceId": "00044f912345daf756462dbe6db733d6a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eeb224d2be2f5ea3142729e63f16a.DomainPII_21eeb80d086e79bdfa178eadfa25e8de6acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "windows_10",
            "softwareVersion": "10.0.17763.1637",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [],
            "lastSeenTimestamp": "2020-12-30 14:17:26",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-windows_10"
        }
    ],
    "@odata.nextLink": "https://wdatpapi-eus-stg.cloudapp.net/api/machines/SoftwareVulnerabilitiesByMachine?pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0xMS8xMTAxLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## 2. Export software vulnerabilities assessment (via files)

### 2.1 API method description

This API response contains all the data of installed software per device. Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CVEID.

#### 2.1.2 Limitations

Rate limitations for this API are 5 calls per minute and 20 calls per hour.

### 2.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Vulnerability.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Vulnerability.Read | \'Read Threat and Vulnerability Management vulnerability information\'

### 2.3 URL

```http
GET /api/machines/SoftwareVulnerabilitiesExport
```

### 2.4 Parameters

- sasValidHours – The number of hours that the download URLs will be valid for (Maximum 24 hours)

### 2.5 Properties

>[!Note]
>
>- The files are gzip compressed & in multiline Json format.
>
>- The download URLs are only valid for 3 hours; otherwise you can use the parameter.
>
>- For maximum download speed of your data, you can make sure you are downloading from the same Azure region that your data resides.
>

>[!Note]
>
>- Each record is approximately 1KB of data. You should take this into account when choosing the correct pageSize parameter for you.
>
>- Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.
>
>- The properties defined in the following table are listed alphabetically, by property ID.  When running this API, the resulting output will not necessarily be returned in the same order listed in these tables.
>

Property (id) | Data type | Description
:---|:---|:---
Export files | List\<string\>  | A list of download URLs for files holding the current snapshot of the organization. [  “https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...1”, “https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...2”  ]
GeneratedTime | string | The time that the export was generated. | 2021-05-20T08:00:00Z

### 2.6 Examples

#### 2.6.1 Request example

```http
GET https://api-us.securitycenter.contoso.com/api/machines/SoftwareVulnerabilitiesExport
```

#### 2.6.2 Response example

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c002.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Export assessment methods and properties per device](get-assessmnt-1methods-properties.md)

- [Export secure configuration assessment per device](get-assessmnt-secure-cfg.md)

- [Export software inventory assessment per device](get-assessmnt-software-inventory.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
