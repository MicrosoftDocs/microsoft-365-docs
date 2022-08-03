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

## 1. Export secure configurations assessment

Returns all of the configurations and their status, on a per-device basis.

### 1.1 Methods

Method|Data type|Description
:---|:---|:---
Export secure configuration assessment **(JSON response)**|Secure configuration by device collection. See: [1.2 Properties (JSON response)](#12-properties-json-response)|Returns a table with an entry for every unique combination of DeviceId, ConfigurationId. The API pulls all data in your organization as JSON responses. This method is best for small organizations with less than 100-K devices. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results.
Export secure configuration assessment **(via files)**|Secure configuration by device collection. See: [1.3 Properties (via files)](#13-properties-via-files)|Returns a table with an entry for every unique combination of DeviceId, ConfigurationId. This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows: <ol><li>Call the API to get a list of download URLs with all your organization data.</li><li>Download all the files using the download URLs and process the data as you like.</li></ol>

### 1.2 Properties (JSON response)

Property (ID)|Data type|Description
:---|:---|:---

### 1.3 Properties (via files)

Property (ID)|Data type|Description
:---|:---|:---

## See also

[Device health and compliance report](machine-reports.md)
[Export device health report](device-health-export-health-report-api.md)
