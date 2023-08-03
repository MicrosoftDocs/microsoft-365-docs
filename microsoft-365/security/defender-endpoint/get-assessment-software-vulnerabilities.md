---
title: Export software vulnerabilities assessment per device
description: The API response is per device and contains vulnerable software installed on your exposed devices and any known vulnerabilities in these software products. This table also includes operating system information, CVE IDs, and vulnerability severity information.
keywords: api, apis, export assessment, per device assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, secure configuration assessment, secure configuration report, software vulnerabilities assessment, software vulnerability report, vulnerability report by machine,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: Dansimp
ms.author: dansimp
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
ms.date: 06/04/2021
---

# Export software vulnerabilities assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Returns all known software vulnerabilities and their details for all devices, on a per-device basis.

Different API calls get different types of data. Because the amount of data can be large, there are two ways it can be retrieved:

1. [Export software vulnerabilities assessment **JSON response**](#1-export-software-vulnerabilities-assessment-json-response)  The API pulls all data in your organization as Json responses. This method is best for _small organizations with less than 100-K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

2. [Export software vulnerabilities assessment **via files**](#2-export-software-vulnerabilities-assessment-via-files) This API solution enables pulling larger amounts of data faster and more reliably. Via-files is recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows:
   - Call the API to get a list of download URLs with all your organization data.
   - Download all the files using the download URLs and process the data as you like.

3. [Delta export software vulnerabilities assessment **JSON response**](#3-delta-export-software-vulnerabilities-assessment-json-response)  Returns a table with an entry for every unique combination of: DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CveId, and EventTimestamp.
The API pulls data in your organization as Json responses. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results.

   The full "software vulnerabilities assessment (JSON response)" is used to obtain an entire snapshot of the software vulnerabilities assessment of your organization by device. However, the delta export API call is used to fetch only the changes that have happened between a selected date and the current date (the "delta" API call). Instead of getting a full export with a large amount of data every time, you'll only get specific information on new, fixed, and updated vulnerabilities. Delta export JSON response API call can also be used to calculate different KPIs such as "how many vulnerabilities were fixed?" or "how many new vulnerabilities were added to my organization?"

   Because the Delta export JSON response API call for software vulnerabilities returns data for only a targeted date range, it isn't considered a _full export_.

Data that is collected (using either _Json response_ or _via files_) is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages.

> [!NOTE]
> Unless indicated otherwise, all export assessment methods listed are **_full export_** and **_by device_** (also referred to as **_per device_**).

## 1. Export software vulnerabilities assessment (JSON response)

### 1.1 API method description

This API response contains all the data of installed software per device. Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CVEID.

#### 1.1.1 Limitations

- Maximum page size is 200,000.
- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 1.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type|Permission|Permission display name
---|---|---
Application|Vulnerability.Read.All|\'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account)|Vulnerability.Read|\'Read Threat and Vulnerability Management vulnerability information\'

### 1.3 URL

```http
GET /api/machines/SoftwareVulnerabilitiesByMachine
```

### 1.4 Parameters

- pageSize (default = 50,000): Number of results in response.
- $top: Number of results to return (doesn't return @odata.nextLink and so doesn't pull all the data).

### 1.5 Properties

> [!NOTE]
>
> - Each record is approximately 1 KB of data. You should take this into account when choosing the correct pageSize parameter for you.
> - Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.
> - The properties defined in the following table are listed alphabetically, by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in this table.

<br>

Property (ID)|Data type|Description|Example of a returned value
:---|:---|:---|:---
CveId|String|Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system.|CVE-2020-15992
CvssScore|String|The CVSS score of the CVE.|6.2
DeviceId|String|Unique identifier for the device in the service.|9eaf3a8b5962e0e6b1af9ec756664a9b823df2d1
DeviceName|String|Fully qualified domain name (FQDN) of the device.|johnlaptop.europe.contoso.com
DiskPaths|Array\[string\]|Disk evidence that the product is installed on the device.|["C:\Program Files (x86)\Microsoft\Silverlight\Application\silverlight.exe"]
ExploitabilityLevel|String|The exploitability level of this vulnerability (NoExploit, ExploitIsPublic, ExploitIsVerified, ExploitIsInKit)|ExploitIsInKit
FirstSeenTimestamp|String|First time the CVE of this product was seen on the device.|2020-11-03 10:13:34.8476880
Id|String|Unique identifier for the record.|123ABG55_573AG&mnp!
LastSeenTimestamp|String|Last time the CVE was seen on the device.|2020-11-03 10:13:34.8476880
OSPlatform|String|Platform of the operating system running on the device. This property indicates specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See Microsoft Defender Vulnerability Management supported operating systems and platforms for details.|Windows10 and Windows 11
RbacGroupName|String|The role-based access control (RBAC) group. If this device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."|Servers
RecommendationReference|String|A reference to the recommendation ID related to this software.|va-_-microsoft-_-silverlight
RecommendedSecurityUpdate (optional)|String|Name or description of the security update provided by the software vendor to address the vulnerability.|April 2020 Security Updates
RecommendedSecurityUpdateId (optional)|String|Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles|4550961
RegistryPaths|Array\[string\]|Registry evidence that the product is installed in the device.|["HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\MicrosoftSilverlight"]
SecurityUpdateAvailable|Boolean|Indicates whether a security update is available for the software.| Possible values are true or false.
SoftwareName|String|Name of the software product.|Chrome
SoftwareVendor|String|Name of the software vendor.|Google
SoftwareVersion|String|Version number of the software product.|81.0.4044.138
VulnerabilitySeverityLevel|String|Severity level assigned to the security vulnerability based on the CVSS score.|Medium
|

### 1.6 Examples

#### 1.6.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/machines/SoftwareVulnerabilitiesByMachine?pageSize=5
```

#### 1.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetVulnerability)",
    "value": [
        {
            "id": "00044f612345baf759462dbe6db733b6a9c59ab4_edge_10.0.17763.1637__",
            "deviceId": "00044f612345daf756462bde6bd733b9a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eed224b2de2f5ea3142726e63f16a.DomainPII_21eeb80d089e79bdfa178eabfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "edge",
            "softwareVersion": "10.0.17763.1637",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [],
            "lastSeenTimestamp": "2020-12-30 14:17:26",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-edge",
            "securityUpdateAvailable": true
        },
        {
            "id": "00044f912345baf756462bde6db733b9a9c56ad4_.net_framework_4.0.0.0__",
            "deviceId": "00044f912345daf756462bde6db733b6a9c59ad4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eed224b2be2f5ea3142726e63f16a.DomainPII_21eeb80b086e79bdfa178eabfa25e8de6acfa346.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": ".net_framework",
            "softwareVersion": "4.0.0.0",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4.0\\Client\\Install"
            ],
            "lastSeenTimestamp": "2020-12-30 13:18:33",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-.net_framework",
            "securityUpdateAvailable": true
        },
        {
            "id": "00044f912345baf756462dbe6db733d6a9c59ab4_system_center_2012_endpoint_protection_4.10.209.0__",
            "deviceId": "00044f912345daf756462bde6db733b6a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eed224b2be2f5ea3142726e63f16a.DomainPII_21eed80b089e79bdfa178eadfa25e8be6acfa346.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "system_center_2012_endpoint_protection",
            "softwareVersion": "4.10.209.0",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Microsoft Security Client"
            ],
            "lastSeenTimestamp": "2020-12-30 14:17:26",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-system_center_2012_endpoint_protection",
            "securityUpdateAvailable": true
        },
        {
            "id": "00044f612345bdaf759462dbe6bd733b6a9c59ab4_onedrive_20.245.1206.2__",
            "deviceId": "00044f91234daf759492dbe6bd733b6a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_189663d45612eed224b2be2f5ea3142729e63f16a.DomainPII_21eed80b086e79bdfa178eadfa25e8de6acfa346.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "onedrive",
            "softwareVersion": "20.245.1206.2",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_USERS\\S-1-5-21-2944539346-1310925172-2349113062-1001\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\OneDriveSetup.exe"
            ],
            "lastSeenTimestamp": "2020-12-30 13:18:33",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-onedrive",
            "securityUpdateAvailable": true
        },
        {
            "id": "00044f912345daf759462bde6db733b6a9c56ab4_windows_10_10.0.17763.1637__",
            "deviceId": "00044f912345daf756462dbe6db733d6a9c59ab4",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45912eeb224d2be2f5ea3142729e63f16a.DomainPII_21eeb80d086e79bdfa178eadfa25e8de6acfa346.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.17763.1637",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "windows_10" "Windows_11",
            "softwareVersion": "10.0.17763.1637",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [],
            "lastSeenTimestamp": "2020-12-30 14:17:26",
            "firstSeenTimestamp": "2020-12-30 11:07:15",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-windows_10" "va-_-microsoft-_-windows_11",
            "securityUpdateAvailable": true
        }
    ],
    "@odata.nextLink": "https://api.securitycenter.microsoft.com/api/machines/SoftwareVulnerabilitiesByMachine?pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0xMS8xMTAxLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## 2. Export software vulnerabilities assessment (via files)

### 2.1 API method description

This API response contains all the data of installed software per device. Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CVEID.

#### 2.1.2 Limitations

Rate limitations for this API are 5 calls per minute and 20 calls per hour.

### 2.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details](apis-intro.md).

Permission type|Permission|Permission display name
---|---|---
Application|Vulnerability.Read.All|\'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account)|Vulnerability.Read|\'Read Threat and Vulnerability Management vulnerability information\'

### 2.3 URL

```http
GET /api/machines/SoftwareVulnerabilitiesExport
```

### 2.4 Parameters

- sasValidHours: The number of hours that the download URLs will be valid for (Maximum 24 hours).

### 2.5 Properties

> [!NOTE]
>
> - The files are gzip compressed & in multiline Json format.
> - The download URLs are only valid for 3 hours; otherwise you can use the parameter.
> - For maximum download speed of your data, you can make sure you are downloading from the same Azure region that your data resides.
>
> - Each record is approximately 1KB of data. You should take this into account when choosing the correct pageSize parameter for you.
> - Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.

<br>

****

Property (ID)|Data type|Description|Example of a returned value
:---|:---|:---|:---
Export files|array\[string\]|A list of download URLs for files holding the current snapshot of the organization.|["https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...1", "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...2"]
GeneratedTime|String|The time that the export was generated.|2021-05-20T08:00:00Z
|

### 2.6 Examples

#### 2.6.1 Request example

```http
GET https://api-us.securitycenter.contoso.com/api/machines/SoftwareVulnerabilitiesExport
```

#### 2.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c002.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## 3. Delta export software vulnerabilities assessment (JSON response)

### 3.1 API method description

Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CveId. The API pulls data in your organization as Json responses. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results. Unlike the full software vulnerabilities assessment (JSON response) (which is used to obtain an entire snapshot of the software vulnerabilities assessment of your organization by device) the delta export JSON response API call is used to fetch only the changes that have happened between a selected date and the current date (the "delta" API call). Instead of getting a full export with a large amount of data every time, you'll only get specific information on new, fixed, and updated vulnerabilities. Delta export JSON response API call can also be used to calculate different KPIs such as "how many vulnerabilities were fixed?" or "how many new vulnerabilities were added to my organization?"

> [!NOTE]
> It is highly recommended you use the full export software vulnerabilities assessment by device API call at least once a week, and this additional export software vulnerabilities changes by device (delta) API call all the other days of the week. Unlike the other Assessments JSON response APIs, the "delta export" is not a full export. The delta export includes only the changes that have happened between a selected date and the current date (the "delta" API call).

#### 3.1.1 Limitations

- Maximum page size is 200,000.
- The sinceTime parameter has a maximum of 14 days.
- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 3.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type|Permission|Permission display name
---|---|---
Application|Vulnerability.Read.All|'Read Threat and Vulnerability Management vulnerability information'
Delegated (work or school account)|Vulnerability.Read|'Read Threat and Vulnerability Management vulnerability information'

### 3.3 URL

```http
GET /api/machines/SoftwareVulnerabilityChangesByMachine
```

### 3.4 Parameters

- sinceTime (required): The start time from which you want to see data changes. Vulnerability management generates data on new and updated vulnerabilities every 6 hours. The data returned will include all the changes captured in the 6 hour period the specified sinceTime falls into, along with the changes in any subsequent 6 hour periods up to and including the most recently generated data.
- pageSize (default = 50,000): number of results in response.
- $top: number of results to return (doesn't return @odata.nextLink and so doesn't pull all the data).

### 3.5 Properties

Each returned record contains all the data from the full export software vulnerabilities assessment by device API, plus two more fields:  _**EventTimestamp**_ and _**Status**_.

> [!NOTE]
>
> - Some additional columns might be returned in the response. These columns are temporary and might be removed, so please use only the documented columns.
> - The properties defined in the following table are listed alphabetically, by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in this table.

<br>

****

Property (ID)|Data type|Description|Example of returned value
:---|:---|:---|:---
CveId |String|Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system.|CVE-2020-15992  
CvssScore|String|The CVSS score of the CVE.|6.2  
DeviceId|String|Unique identifier for the device in the service.|9eaf3a8b5962e0e6b1af9ec756664a9b823df2d1  
DeviceName|String|Fully qualified domain name (FQDN) of the device.|johnlaptop.europe.contoso.com  
DiskPaths|Array[string]|Disk evidence that the product is installed on the device.|["C:\Program Files (x86)\Microsoft\Silverlight\Application\silverlight.exe"]  
EventTimestamp|String|The time this delta event was found.|2021-01-11T11:06:08.291Z
ExploitabilityLevel|String|The exploitability level of this vulnerability (NoExploit, ExploitIsPublic, ExploitIsVerified, ExploitIsInKit)|ExploitIsInKit  
FirstSeenTimestamp|String|First time the CVE of this product was seen on the device.|2020-11-03 10:13:34.8476880  
Id|String|Unique identifier for the record.|123ABG55_573AG&mnp!  
LastSeenTimestamp|String|Last time the CVE was seen on the device.|2020-11-03 10:13:34.8476880  
OSPlatform|String|Platform of the operating system running on the device; specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See Microsoft Defender Vulnerability Management supported operating systems and platforms for details.|Windows10 and Windows 11 
RbacGroupName|String|The role-based access control (RBAC) group. If this device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."|Servers  
RecommendationReference|string|A reference to the recommendation ID related to this software.|va--microsoft--silverlight  
RecommendedSecurityUpdate |String|Name or description of the security update provided by the software vendor to address the vulnerability.|April 2020 Security Updates  
RecommendedSecurityUpdateId |String|Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles|4550961  
RegistryPaths |Array[string]|Registry evidence that the product is installed in the device.|["HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Google Chrome"]  
SoftwareName|String|Name of the software product.|Chrome  
SoftwareVendor|String|Name of the software vendor.|Google  
SoftwareVersion|String|Version number of the software product.|81.0.4044.138  
Status|String|**New** (for a new vulnerability introduced on a device)  (1) **Fixed** (if this vulnerability doesn't exist anymore on the device, which means it was remediated). (2) **Updated** (if a vulnerability on a device has changed. The possible changes are: CVSS score, exploitability level, severity level, DiskPaths, RegistryPaths, RecommendedSecurityUpdate). |Fixed
VulnerabilitySeverityLevel|String|Severity level that is assigned to the security vulnerability. It's based on the CVSS score.|Medium
|

#### Clarifications

- If the software was updated from version 1.0 to version 2.0, and both versions are exposed to CVE-A, you'll receive two separate events:
   1. Fixed: CVE-A on version 1.0 was fixed.
   1. New: CVE-A on version 2.0 was added.

- If a specific vulnerability (for example, CVE-A) was first seen at a specific time (for example, January 10) on software with version 1.0, and a few days later that software was updated to version 2.0 which also exposed to the same CVE-A, you'll receive these two separated events:
   1. Fixed: CVE-X, FirstSeenTimestamp January 10, version 1,0.
   1. New: CVE-X, FirstSeenTimestamp January 10, version 2.0.

### 3.6 Examples

#### 3.6.1 Request example

```http
GET https://api.securitycenter.microsoft.com/api/machines/SoftwareVulnerabilityChangesByMachine?pageSize=5&sinceTime=2021-05-19T18%3A35%3A49.924Z
```

#### 3.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Collection(microsoft.windowsDefenderATP.api.DeltaAssetVulnerability)",
    "value": [
        {
            "id": "008198251234544f7dfa715e278d4cec0c16c171_chrome_87.0.4280.88__",
            "deviceId": "008198251234544f7dfa715e278b4cec0c19c171",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_1c8fee370690ca24b6a0d3f34d193b0424943a8b8.DomainPII_0dc1aee0fa366d175e514bd91a9e7a5b2b07ee8e.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.19042.685",
            "osArchitecture": "x64",
            "softwareVendor": "google",
            "softwareName": "chrome",
            "softwareVersion": "87.0.4280.88",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [
                "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
            ],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Google Chrome"
            ],
            "lastSeenTimestamp": "2021-01-04 00:29:42",
            "firstSeenTimestamp": "2020-11-06 03:12:44",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-google-_-chrome",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "00e59c61234533860738ecf488eec8abf296e41e_onedrive_20.64.329.3__",
            "deviceId": "00e56c91234533860738ecf488eec8abf296e41e",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_82c13a8ad8cf3dbaf7bf34fada9fa3aebc124116.DomainPII_21eeb80d086e79dbfa178eadfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.18363.1256",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "onedrive",
            "softwareVersion": "20.64.329.3",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_USERS\\S-1-5-21-2127521184-1604012920-1887927527-24918864\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\OneDriveSetup.exe"
            ],
            "lastSeenTimestamp": "2020-12-11 19:49:48",
            "firstSeenTimestamp": "2020-12-07 18:25:47",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-onedrive",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "01aa8c73095bb12345918663f3f94ce322107d24_firefox_83.0.0.0_CVE-2020-26971_",
            "deviceId": "01aa8c73065bb12345918693f3f94ce322107d24",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_42684eb981bea2d670027e7ad2caafd3f2b381a3.DomainPII_21eed80b086e76dbfa178eabfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.19042.685",
            "osArchitecture": "x64",
            "softwareVendor": "mozilla",
            "softwareName": "firefox",
            "softwareVersion": "83.0.0.0",
            "cveId": "CVE-2020-26971",
            "vulnerabilitySeverityLevel": "High",
            "recommendedSecurityUpdate": "193220",
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [
                "C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe"
            ],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Mozilla Firefox 83.0 (x86 en-US)"
            ],
            "lastSeenTimestamp": "2021-01-05 17:04:30",
            "firstSeenTimestamp": "2020-05-06 12:42:19",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-mozilla-_-firefox",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "026f0fcb12345fbd2decd1a339702131422d362e_project_16.0.13701.20000__",
            "deviceId": "029f0fcb13245fbd2decd1a336702131422d392e",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_a5706750acba75f15d69cd17f4a7fcd268d6422c.DomainPII_f290e982685f7e8eee168b4332e0ae5d2a069cd6.corp.contoso.com",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.19042.685",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "project",
            "softwareVersion": "16.0.13701.20000",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\ProjectProRetail - en-us"
            ],
            "lastSeenTimestamp": "2021-01-03 23:38:03",
            "firstSeenTimestamp": "2019-08-01 22:56:12",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-project",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "038df381234510b357ac19d0113ef622e4e212b3_chrome_81.0.4044.138_CVE-2020-16011_",
            "deviceId": "038df381234510d357ac19b0113ef922e4e212b3",
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_365f5c0bb7202c163937dad3d017969b2d760eb4.DomainPII_29596a43a2ef2bbfa00f6a16c0cb1d108bc63e32.DomainPII_3c5fefd2e6fda2f36257359404f6c1092aa6d4b8.net",
            "osPlatform": "Windows10" "Windows11",
            "osVersion": "10.0.18363.1256",
            "osArchitecture": "x64",
            "softwareVendor": "google",
            "softwareName": "chrome",
            "softwareVersion": "81.0.4044.138",
            "cveId": "CVE-2020-16011",
            "vulnerabilitySeverityLevel": "High",
            "recommendedSecurityUpdate": "ADV 200002",
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [
                "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
            ],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\{C4EBFDFD-0C55-3E5F-A919-E3C54949024A}"
            ],
            "lastSeenTimestamp": "2020-12-10 22:45:41",
            "firstSeenTimestamp": "2020-07-26 02:13:43",
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-google-_-chrome",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        }
    ],
    "@odata.nextLink": "https://wpatdadi-eus-stg.cloudapp.net/api/machines/SoftwareVulnerabilitiesTimeline?sincetime=2021-01-11&pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0xMS8xMTAxLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## See also

- [Export assessment methods and properties per device](get-assessment-methods-properties.md)
- [Export secure configuration assessment per device](get-assessment-secure-config.md)
- [Export software inventory assessment per device](get-assessment-software-inventory.md)

Other related

- [Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Vulnerabilities in your organization](tvm-weaknesses.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
