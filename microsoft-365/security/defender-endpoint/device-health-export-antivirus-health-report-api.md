---
title: Microsoft Defender Antivirus Device Health export device antivirus health reporting
description: Presents methods to retrieve Microsoft Defender Antivirus device health details.
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
- tier3
- must-keep
ms.topic: reference
ms.subservice: mde
ms.custom: api
search.appverid: met150
---

# Export device antivirus health report

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[!include[Prerelease information](../../includes/prerelease.md)]

This API has two methods to retrieve Microsoft Defender Antivirus device antivirus health details:

- **Method one:** [1 Export health reporting \(**JSON response**\)](#1-export-health-reporting-json-response)  The method pulls all data in your organization as JSON responses. This method is best for _small organizations with less than 100-K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- **Method two:** [2 Export health reporting \(**via files**\)](#2-export-health-reporting-via-files) This method enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows:
  - Call the API to get a list of download URLs with all your organization data.
  - Download all the files using the download URLs and process the data as you like.

Data that is collected using either '_JSON response_ or _via files_' is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages. See [Export device health details API methods and properties](device-health-api-methods-properties.md).

> [!IMPORTANT]
>
> Currently, only the **Antivirus Health JSON Response** is generally available. **Antivirus Health API via files** is currently only available in public preview.
>
> **Advanced Hunting custom query** is currently only available in public preview, even if the queries are still visible.

> [!IMPORTANT]
>
> For Windows&nbsp;Server&nbsp;2012&nbsp;R2 and Windows&nbsp;Server&nbsp;2016 to appear in device health reports, these devices must be onboarded using the modern unified solution package. For more information, see [New functionality in the modern unified solution for Windows Server 2012 R2 and 2016](/microsoft-365/security/defender-endpoint/configure-server-endpoints#new-windows-server-2012-r2-and-2016-functionality-in-the-modern-unified-solution).

> [!NOTE]
>
> For information about using the **Device health and antivirus compliance** reporting tool in the Microsoft 365 Security dashboard, see: [Device health and antivirus compliance report in Microsoft Defender for Endpoint](machine-reports.md).
>

## 1 Export health reporting (JSON response)

### 1.1 API method description

This API retrieves a list of Microsoft Defender Antivirus device antivirus health details. Returns a table with an entry for every unique combination of:

- DeviceId
- Device name
- AV mode
- Up-to-date status
- Scan results

#### 1.1.1 Limitations

- maximum page size is 200,000
- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

#### OData supported operators

- `$filter` on: `machineId`, `computerDnsName`, `osKind`, `osPlatform`, `osVersion`, `avMode`, `avSignatureVersion`, `avEngineVersion`, `avPlatformVersion`, `quickScanResult`, `quickScanError`, `fullScanResult`, `fullScanError`, `avIsSignatureUpToDate`, `avIsEngineUpToDate`, `avIsPlatformUpToDate`, `rbacGroupId`
- `$top` with max value of 10,000.
- `$skip`

> [!IMPORTANT]
> Note that **rbacgroupname** and **Id** are not supported filter operators.

### 1.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see Use Microsoft Defender for Endpoint APIs for details.

| Permission type | Permission | Permission display name |
|:---|:---|:---|
| Application | Machine.Read.All | 'Read all machine profiles' |
|Delegated (work or school account) | Machine.Read | 'Read machine information' |

### 1.3 URL (HTTP request)

```http
URL: GET: /api/deviceavinfo
```

#### 1.3.1 Request headers

| Name | Type | Description |
|:---|:---|:---|
| Authorization | String | Bearer {token}. Required. |

#### 1.3.2 Request body

Empty

#### 1.3.3 Response

If successful, this method returns 200 OK with a list of device health details.

### 1.4 Parameters

- Default page size is 20
- See examples at [OData queries with Microsoft Defender for Endpoint](exposed-apis-odata-samples.md).

### 1.5 Properties

See: [1.3 Export device antivirus health details API properties (JSON response)](device-health-api-methods-properties.md#13-export-device-antivirus-health-details-api-properties-json-response)

Supports [OData V4 queries](https://www.odata.org/documentation/).

### 1.6 Example

#### Request example

Here's an example request:

```http
GET https://api.securitycenter.microsoft.com/api/deviceavinfo
```

#### Response example

Here's an example response:

```json
{

    @odata.context: "https://api.securitycenter.microsoft.com/api/$metadata#DeviceAvInfo",

"value": [{

            "id": "Sample Guid",

            "machineId": "Sample Machine Guid",

            "computerDnsName": "appblockstg1",

            "osKind": "windows",

            "osPlatform": "Windows10",

            "osVersion": "10.0.19044.1865",

            "avMode": "0",

            "avSignatureVersion": "1.371.1279.0",

            "avEngineVersion": "1.1.19428.0",

            "avPlatformVersion": "4.18.2206.108",

            "lastSeenTime": "2022-08-02T19:40:45Z",

            "quickScanResult": "Completed",

            "quickScanError": "",

            "quickScanTime": "2022-08-02T18:40:15.882Z",

            "fullScanResult": "",

            "fullScanError": "",

            "fullScanTime": null,

            "dataRefreshTimestamp": "2022-08-02T21:16:23Z",

            "avEngineUpdateTime": "2022-08-02T00:03:39Z",

            "avSignatureUpdateTime": "2022-08-02T00:03:39Z",

            "avPlatformUpdateTime": "2022-06-20T16:59:35Z",

            "avIsSignatureUpToDate": "True",

            "avIsEngineUpToDate": "True",

            "avIsPlatformUpToDate": "True",

            "avSignaturePublishTime": "2022-08-02T00:03:39Z",

            "rbacGroupName": "TVM1",

            "rbacGroupId": 4415

        },

        ...

     ]

}
```

## 2 Export health reporting (via files)

> [!IMPORTANT]
> Information in this section relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

### 2.1 API method description

This API response contains all the data of Antivirus health and status per device. Returns a table with an entry for every unique combination of:

- DeviceId
- device name
- AV mode
- Up-to-date status
- Scan results

#### 2.1.2 Limitations

- Maximum page size is 200,000.
- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 2.2 Permissions

One of the following permissions is required to call this API.

| Permission type | Permission | Permission display name |
|:---|:---|:---|
| Application | Vulnerability.Read.All | 'Read "threat and vulnerability management" vulnerability information' |
| Delegated (work or school account) | Vulnerability.Read | 'Read "threat and vulnerability management" vulnerability information' |

To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details](apis-intro.md).

### 2.3 URL

```http
GET /api/machines/InfoGatheringExport
```

### 2.4 Parameters

- `sasValidHours`: The number of hours that the download URLs will be valid for (Maximum 24 hours).

### 2.5 Properties

See: [1.4 Export device antivirus health details API properties \(via files\)](device-health-api-methods-properties.md#14-export-device-antivirus-health-details-api-properties-via-files).

### 2.6 Examples

#### 2.6.1 Request example

Here's an example request:

```HTTP
GET https://api-us.securitycenter.contoso.com/api/machines/InfoGatheringExport
```

#### 2.6.2 Response example

Here's an example response:

```json
{

   "@odata.context": "https://api-us.securitycenter.windows.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",

   "exportFiles": [

       "https://tvmexportexternalprdeus.blob.core.windows.net/temp-../2022-08-02/2201/InfoGatheringExport/json/OrgId=../_RbacGroupId=../part-00055-12fc2fcd-8f56-4e09-934f-e8efe7ce74a0.c000.json.gz?sv=2020-08-04&st=2022-08-02T22%3A47%3A11Z&se=2022-08-03T01%3A47%3A11Z&sr=b&sp=r&sig=..",

       "https://tvmexportexternalprdeus.blob.core.windows.net/temp-../2022-08-02/2201/InfoGatheringExport/json/OrgId=../_RbacGroupId=../part-00055-12fc2fcd-8f56-4e09-934f-e8efe7ce74a0.c000.json.gz?sv=2020-08-04&st=2022-08-02T22%3A47%3A11Z&se=2022-08-03T01%3A47%3A11Z&sr=b&sp=r&sig=.."

   ],


   "generatedTime": "2022-08-02T22:01:00Z"


}
```

> [!TIP]
> **Performance tip** Due to a variety of factors (examples listed below) Microsoft Defender Antivirus, like other antivirus software, can cause performance issues on endpoint devices. In some cases, you might need to tune the performance of Microsoft Defender Antivirus to alleviate those performance issues. Microsoft's **Performance analyzer** is a PowerShell command-line tool that helps determine which files, file paths, processes, and file extensions might be causing performance issues; some examples are:
>
> - Top paths that impact scan time
> - Top files that impact scan time
> - Top processes that impact scan time
> - Top file extensions that impact scan time
> - Combinations – for example:
>   - top files per extension
>   - top paths per extension
>   - top processes per path
>   - top scans per file
>   - top scans per file per process
>
> You can use the information gathered using Performance analyzer to better assess performance issues and apply remediation actions. 
> See: [Performance analyzer for Microsoft Defender Antivirus](tune-performance-defender-antivirus.md).
>

## See also

[Export device health methods and properties](device-health-api-methods-properties.md)

[Device health and compliance reporting](device-health-reports.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
