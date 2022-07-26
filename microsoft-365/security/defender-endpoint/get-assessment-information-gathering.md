---
title: Export information gathering assessment
description: Returns a table with an entry for every unique combination of DeviceId, DeviceName, Additional fields.
keywords: api, apis, export assessment, per device assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, information gathering assessment
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

# Information gathering assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

This API response contains the data for the information gathering assessment per device. It returns a table with an entry for every unique combination of DeviceId, DeviceName, AdditionalDetails.

- [Export information gathering assessment **via files**](#1-export-browser-extension-assessment-via-files) This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows:
  - Call the API to get a list of download URLs with all your organization data.
  - Download all the files using the download URLs and process the data as you like.

Data that is collected (using _via files_) is the current snapshot of the current state. It doesn't contain historic data. To collect historic data, customers must save the data in their own data storages.

> [!NOTE]
> Unless indicated otherwise, all export assessment methods listed are **_full export_** and **_by device_** (also referred to as **_per device_**).

## 1. Export information gathering assessment (via files)

### 2.1 API method description

This API response contains the data for the information gathering assessment per device. It returns a table with an entry for every unique combination of DeviceId, DeviceName, AdditionalDetails.

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
GET /api/Machines/InfoGatheringExport
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
GET https://api.securitycenter.microsoft.com/api/machines/InfoGatheringExport?$sasValidHours=1
```

#### 2.6.2 Response example

```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-43b2fdb7-c985-4f14-bed5-ae66959a95a5/2022-07-26/1001/InfoGatheringExport/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=0/part-00001-42240b35-4a40-45f7-9b46-96a5ce6d23b8.c000.json.gz?sv=2020-08-04&st=2022-07-26T13%3A36%3A30Z&se=2022-07-26T16%3A36%3A30Z&sr=b&sp=r&sig=9GVFFNbgkLc69u32nO944SosmcTUj0usPJqkJwx5iow%3D",
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-43b2fdb7-c985-4f14-bed5-ae66959a95a5/2022-07-26/1001/InfoGatheringExport/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=1/part-00002-42240b35-4a40-45f7-9b46-96a5ce6d23b8.c000.json.gz?sv=2020-08-04&st=2022-07-26T13%3A36%3A30Z&se=2022-07-26T16%3A36%3A30Z&sr=b&sp=r&sig=BJ3SfwcyI7JnoTVhHAgiyvqWviA%2BUKdF80KeVIUc%2FIU%3D",
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-43b2fdb7-c985-4f14-bed5-ae66959a95a5/2022-07-26/1001/InfoGatheringExport/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=1001/part-00005-42240b35-4a40-45f7-9b46-96a5ce6d23b8.c000.json.gz?sv=2020-08-04&st=2022-07-26T13%3A36%3A30Z&se=2022-07-26T16%3A36%3A30Z&sr=b&sp=r&sig=6ZsI%2FysPufyNgx234GX8A5xVuz%2FtCtq%2FQ42R2P%2F3XO4%3D",
        "https://tvmexportexternalprdcanc.blob.core.windows.net/temp-43b2fdb7-c985-4f14-bed5-ae66959a95a5/2022-07-26/1001/InfoGatheringExport/json/OrgId=47d41a0c-188d-46d3-bbea-a93dbc0bfcaa/_RbacGroupId=12275/part-00010-42240b35-4a40-45f7-9b46-96a5ce6d23b8.c000.json.gz?sv=2020-08-04&st=2022-07-26T13%3A36%3A30Z&se=2022-07-26T16%3A36%3A30Z&sr=b&sp=r&sig=iqJUkdUsR%2FvGL6hSA2Vqnv02%2BkRJtDhUReJHYd5TOdM%3D"
    ],
    "generatedTime": "2022-07-26T10:01:00Z"
}
```

## Other related

- [DeviceTvmInfoGathering](../defender/advanced-hunting-devicetvminfogathering-table.md)
- [DeviceTvmInfoGatheringKB](../defender/advanced-hunting-devicetvmsoftwarevulnerabilitieskb.md)
- [Vulnerability management](../defender-vulnerability-management/defender-vulnerability-management.md)
- [Vulnerabilities in your organization](../defender-vulnerability-management/tvm-weaknesses.md)