---
title: Microsoft Defender Antivirus export device antivirus health details API methods and properties
description: "Learn how to export a list of Microsoft Defender Antivirus device health details." 
keywords: apis, graph api, supported apis, get, device health api, Microsoft Defender for Endpoint report api microsoft defender reports api, microsoft defender for endpoint reporting api, windows defender reporting api, defender for endpoint reporting api, windows defender report api 
ms.service: microsoft-365-security
ms.mktglfcycl: deploy 
ms.sitesec: library 
ms.pagetype: security 
ms.author: dansimp 
author: dansimp
ms.localizationpriority: medium 
ms.date: 11/03/2022
manager: dansimp 
audience: ITPro 
ms.collection:
 - m365-security
 - must-keep
 - tier3
ms.topic: reference 
ms.subservice: mde 
ms.custom: api 
search.appverid: met150
---

# Export device antivirus health details API methods and properties

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

## Export device antivirus health details API description

Retrieves a list of Microsoft Defender Antivirus device health details. This API has different API calls (methods) to get different types of data. Because the amount of data can be large, there are two ways it can be retrieved:

- **JSON response**  The API pulls all data in your organization as JSON responses. This method is best for _small organizations with less than 100-K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- **via files** This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows:
  - Call the API to get a list of download URLs with all your organization data.
  - Download all the files using the download URLs and process the data as you like.

Data that is collected using either '_JSON response_ or _via files_' is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages.

> [!IMPORTANT]
>
> Currently, only the **Antivirus Health JSON Response** is generally available. **Antivirus Health API via files** is currently only available in public preview.
>
> **Advanced Hunting custom query** is currently only available in public preview, even if the queries are still visible.
>
> For Windows Server 2012 R2 and Windows Server 2016 to appear in device health reports, these devices must be onboarded using the modern unified solution package. For more information, see [New functionality in the modern unified solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution).
>
> For information about using the **Device health and antivirus compliance** reporting tool in the Microsoft 365 Security dashboard, see: [Device health and antivirus report in Microsoft Defender for Endpoint](device-health-reports.md).

### 1.1 Export device antivirus health details API methods

Method|Data type|Description
:---|:---|:---
**(JSON response)**|Microsoft Defender Antivirus health per device collection. See: [1.2 Export device antivirus health details API properties (JSON response)](#13-export-device-antivirus-health-details-api-properties-json-response)|Returns a table with an entry for every unique combination of DeviceId, ConfigurationId. | The API pulls all data in your organization as JSON responses. This method is best for small organizations with less than 100-K devices. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results.
**(via files)**|Microsoft Defender Antivirus health per device collection. See: [1.3 Export device antivirus health details API properties \(via files\)](#14-export-device-antivirus-health-details-api-properties-via-files)|Returns a table with an entry for every unique combination of DeviceId, ConfigurationId. |This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows: <ol><li>Call the API to get a list of download URLs with all your organization data.</li><li>Download all the files using the download URLs and process the data as you like.</li></ol>

### 1.2 Limitations

- Maximum page size: 200,000
- Rate limitations for this API: 30 calls per minute and 1,000 calls per hour

### 1.3 Export device antivirus health details API properties (JSON response)

> [!NOTE]
>
> - The properties defined in the following table are listed alphabetically, by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in this table.
> - Note that **rbacgroupname** and **Id** are not supported filter operators.
> - Some additional columns might be returned in the response. These columns can be temporary and might be removed; use only the documented columns.

| Property (ID) | Data type | Description | Example of a returned value |
|:----|:----|:----|:----|
| avEngineUpdateTime | DateTimeOffset | Datetime when AV engine was last updated on device | "2022-08-04T12:44:02Z" |
| avEngineVersion | String | Antivirus engine version | "1.1.19400.3" |
| avIsEngineUpToDate | String | Up-to-date status of AV engine | "True", "False", "Unknown" |
| avIsPlatformUpToDate | String | Up-to-date status of AV platform | "True", "False", "Unknown" |
| avIsSignatureUpToDate | String | Up-to-date status of AV signature | "True", "False", "Unknown" |
| avMode | String | Antivirus mode. | Each mode will be a string typed integer value ranging from 0 to 5. Refer to the mapping below to see its value's meaning: <ul><li>'' = Other</li><li> '0' = Active</li><li> '1' = Passive</li><li> '2' = Disabled</li><li> '3' = Other</li><li> '4' = EDRBlocked</li><li>'5' = PassiveAudit</li></ul> |
| avPlatformUpdateTime | DateTimeOffset | Datetime when AV platform was last updated on device | "2022-08-04T12:44:02Z" |
| avPlatformVersion | String | Antivirus platform version | "4.18.2203.5" |
| avSignaturePublishTime | DateTimeOffset | Datetime when AV security intelligence build was released | "2022-08-04T12:44:02Z" |
| avSignatureUpdateTime | DateTimeOffset | Datetime when AV security intelligence was last updated on device | "2022-08-04T12:44:02Z" |
| avSignatureVersion | String | Antivirus security intelligence version | "1.371.1323.0" |
| computerDnsName | String | DNS name | "SampleDns" |
| dataRefreshTimestamp | DateTimeOffset | Datetime when data is refreshed for this report | "2022-08-04T12:44:02Z" |
| fullScanError | String | Error codes from full scan | "0x80508023" |
| fullScanResult | String | Full scan result of this device | "Completed" <br> "Canceled" <br>"Failed" |
| fullScanTime | DateTimeOffset | Datetime when full scan has completed | "2022-08-04T12:44:02Z" |
| id | String | Machine GUID | "30a8fa2826abf24d24379b23f8a44d471f00feab" |
| lastSeenTime | DateTimeOffset | Last seen datetime of this machine | "2022-08-04T12:44:02Z" |
| machineId | String | Machine GUID | "30a8fa2826abf24d24379b23f8a44d471f00feab" |
| osKind | String | Operating system kind | "windows", "mac", "linux" |
| osPlatform | String | Operating system major version name | Windows 10, macOs |
| osVersion | String | Operating system version | 10.0.18363.1440, 12.4.0.0 |
| quickScanError | String | Error codes from quick scan | "0x80508023" |
| quickScanResult | String | Quick scan result of this device | "Completed" <br>"Canceled" <br>"Failed" |
| quickScanTime | DateTimeOffset | Datetime when quick scan has completed | "2022-08-04T12:44:02Z" |
| rbacGroupId | Long | Device group ID that this machine belongs to | 712 |
| rbacGroupName | String | Name of device group that this machine belongs to | "SampleGroup" |

### 1.4 Export device antivirus health details API properties (via files)

> [!IMPORTANT]
> Information in this section relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

> [!NOTE]
>
> - The files are gzip compressed & in multiline Json format.
> - The download URLs are only valid for 3 hours; otherwise you can use the parameter.
> - For maximum download speed of your data, you can make sure you are downloading from the same Azure region that your data resides.
> - Each record is approximately 1KB of data. You should take this into account when choosing the correct pageSize parameter for you.
> - Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.

| Property (ID) | Data type | Description | Example of a returned value |
|:----|:----|:----|:----|
| Export files | array[string] | A list of download URLs for files holding the current snapshot of the organization. | ["https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...1", "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export...2"] |
| GeneratedTime | String | The time that the export was generated. | 2022-05-20T08:00:00Z |

> [!NOTE]
> In each of the Export files a property "DeviceGatheredInfo" containing the data about Antivirus information can be found. Each of its attributes can provide you with information on the device's health and its status.

## See also

[Export device antivirus health report](device-health-export-antivirus-health-report-api.md)

[Device health and compliance reporting](device-health-reports.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
