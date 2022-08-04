---
title: Microsoft Defender Antivirus Export Device Health details API methods and properties
description: Retrieves a list of Microsoft Defender Antivirus (MDAV) device health details. 
keywords: apis, graph api, supported apis, get, device health api, Microsoft Defender for Endpoint report api microsoft defender reports api, microsoft defender for endpoint reporting api, windows defender reporting api, defender for endpoint reporting api, windows defender report api 
ms.prod: m365-security 
ms.mktglfcycl: deploy 
ms.sitesec: library 
ms.pagetype: security 
ms.author: v-jweston 
author: jweston-1
ms.localizationpriority: medium 
manager: dansimp 
audience: ITPro 
ms.collection: M365-security-compliance 
ms.topic: article 
MS.technology: mde 
ms.custom: api 
--- 

# Export device health details API methods and properties

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

## API description

Retrieves a list of Microsoft Defender Antivirus device health details. This API has different API calls (methods) to get different types of data. Because the amount of data can be large, there are two ways it can be retrieved:

- **JSON response**  The API pulls all data in your organization as JSON responses. This method is best for _small organizations with less than 100-K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- **via files** This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows:
  - Call the API to get a list of download URLs with all your organization data.
  - Download all the files using the download URLs and process the data as you like.

Data that is collected using either '_JSON response_ or _via files_' is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages.

> [!NOTE]
>
> For Windows&nbsp;Server&nbsp;2012&nbsp;R2 and Windows&nbsp;Server&nbsp;2016 to appear in device health reports, these devices must be onboarded using the modern unified solution package. For more information, see [New functionality in the modern unified solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution).

## 1. Export secure configurations assessment

Returns all of the configurations and their status, on a per-device basis.

### 1.1 Methods

Method|Data type|Description
:---|:---|:---
Export secure configuration assessment **(JSON response)**|Secure configuration by device collection. See: [1.2 Properties (JSON response)](#12-properties-json-response)|Returns a table with an entry for every unique combination of DeviceId, ConfigurationId. The API pulls all data in your organization as JSON responses. This method is best for small organizations with less than 100-K devices. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results.
Export secure configuration assessment **(via files)**|Secure configuration by device collection. See: [1.3 Properties (via files)](#13-properties-via-files)|Returns a table with an entry for every unique combination of DeviceId, ConfigurationId. This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows: <ol><li>Call the API to get a list of download URLs with all your organization data.</li><li>Download all the files using the download URLs and process the data as you like.</li></ol>

### 1.2 Properties (JSON response)

> [!NOTE]
>
> - The properties defined in the following table are listed alphabetically, by property ID. When running this API, the resulting output will not necessarily be returned in the same order listed in this table.
> - Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.

| Property (ID) | Data type | Description | Example of a returned value |
|:----|:----|:----|:----|
| avEngineUpdateTime | DateTimeOffset |   | 2022-08-04T12:44:02Z |
| avEngineVersion | String |   | 1.1.19400.3 |
| avIsEngineUpToDate | String |   | “True”, “False”, “Unknown” |
| avMode | String | Antivirus mode | Each mode will be a string typed integer value ranging from 0 to 5. Refer to the mapping below to see its value’s meaning: <ul><li>'' = Other</li><li> '0' = Active</li><li> '1' = Passive</li><li> '2' = Disabled</li><li> '3' = Other</li><li> '4' = EDRBlocked</li><li>'5' = PassiveAudit</li></ul>
| avIsPlatformUpToDate | String |   | “True”, “False”, “Unknown” |
| avIsSignatureUpToDate | String |   | “True”, “False”, “Unknown” |
| avPlatformVersion | String |   | 4.18.2203.5 |
| avPlatformUpdateTime | DateTimeOffset |   | 2022-08-04T12:44:02Z |
| avSignaturePublishTime | DateTimeOffset |   | 2022-08-04T12:44:02Z |
| avSignatureUpdateTime | DateTimeOffset |   | 2022-08-04T12:44:02Z |
| avSignatureVersion | String |   | 1.371.1323.0 |
| computerDnsName | String | DNS name | SampleDns |
| dataRefreshTimestamp | DateTimeOffset |   | 2022-08-04T12:44:02Z |
| fullScanResult | String |   |   |
| fullScanError | String |   |    |
| fullScanTime | DateTimeOffset |   | 2022-08-04T12:44:02Z |
| id | String | Machine GUID | 30a8fa2826abf24d24379b23f8a44d471f00feab |
| lastSeenTime | DateTimeOffset |   | 2022-08-04T12:44:02Z |
| machineId | String | Machine GUID | 30a8fa2826abf24d24379b23f8a44d471f00feab |

### 1.3 Properties (via files)

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
> In each of the Export files a property “DeviceGatheredInfo” containing the data about Antivirus information can be found. Each of its attributes can provide you with information on the device's health and its status.

## See also

[Export device health report](device-health-export-health-report-api.md)

[Device health and compliance reporting](machine-reports.md)
