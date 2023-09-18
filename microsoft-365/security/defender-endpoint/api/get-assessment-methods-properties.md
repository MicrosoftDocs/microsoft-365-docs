---
title: Export assessment methods and properties per device
description: Provides information about the APIs that pull "Microsoft Defender Vulnerability Management" data. There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization.
keywords: api, apis, export assessment, per device assessment, per machine assessment, vulnerability assessment report, device vulnerability assessment, device vulnerability report, secure configuration assessment, secure configuration report, software vulnerabilities assessment, software vulnerability report, vulnerability report by machine,
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

# Export assessment methods and properties per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender Vulnerability Management](../defender-vulnerability-management/index.yml)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## API description

Provides methods and property details about the APIs that pull vulnerability management data on a per-device basis. There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization.

> [!NOTE]
> Unless indicated otherwise, all export assessment methods listed are **_full export_** and **_by device_** (also referred to as **_per device_**).

You can use the export assessment APIs to retrieve (export) different types of information:

- [1. Export secure configurations assessment](#1-export-secure-configurations-assessment)
- [2. Export software inventory assessment](#2-export-software-inventory-assessment)
- [3. Export software vulnerabilities assessment](#3-export-software-vulnerabilities-assessment)
- [4. Export non product code software inventory assessment](#4-export-non-product-code-software-inventory-assessment)

The APIs that correspond to the export information types are described in sections 1, 2, and 3.

Each method has different API calls to get different types of data. Because the amount of data can be large, there are two ways it can be retrieved:

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
configurationCategory|String|Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls.
configurationId|String|Unique identifier for a specific configuration.
configurationImpact|String|Rated effect of the configuration to the overall configuration score (1-10).
configurationName|String|Display name of the configuration.
configurationSubcategory|String|Subcategory or subgrouping to which the configuration belongs. In many cases, specific capabilities or features.
deviceId|String|Unique identifier for the device in the service.
deviceName|String|Fully qualified domain name (FQDN) of the device.
isApplicable|Bool|Indicates whether the configuration or policy is applicable.
isCompliant|Bool|Indicates whether the configuration or policy is properly configured.
isExpectedUserImpact|Bool|Indicates whether the user gets affected if the configuration will be applied.
osPlatform|String|Platform of the operating system running on the device. Specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See [Supported operating systems, platforms and capabilities](../defender-vulnerability-management/tvm-supported-os.md) for details.
osVersion|String|Specific version of the operating system running on the device.
rbacGroupName|String|The role-based access control (RBAC) group. If the device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
rbacGroupId|String|The role-based access control (RBAC) group ID.
recommendationReference|String|A reference to the recommendation ID related to the software.
timestamp|String|Last time the configuration was seen on the device.

### 1.3 Properties (via files)

Property (ID)|Data type|Description
:---|:---|:---
Export files|array\[string\]|A list of download URLs for files holding the current snapshot of the organization.
GeneratedTime|String|The time that the export was generated.

## 2. Export software inventory assessment

Returns all of the installed software and their details on each device.

### 2.1 Methods

|Method|Data type|Description|
|:---|:---|:---|
|Export software inventory assessment **(JSON response)**|Software inventory by device collection. See: [2.2 Properties (JSON response)](#22-properties-json-response)|Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion. The API pulls all data in your organization as JSON responses. This method is best for small organizations with less than 100-K devices. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results. |
| Export software inventory assessment **(via files)**|Software inventory by device files. See: [2.3 Properties (via files)](#23-properties-via-files)|Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion. This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download data from Azure Storage as follows: <ol><li>Call the API to get a list of download URLs with your organization data</li><li>Download the files using the download URLs and process the data as you like.</li></ol> |

### 2.2 Properties (JSON response)

Property (ID)|Data type|Description
:---|:---|:---
DeviceId|String|Unique identifier for the device in the service.
DeviceName|String|Fully qualified domain name (FQDN) of the device.
DiskPaths|Array[string]|Disk evidence that the product is installed on the device.
EndOfSupportDate|String|The date in which support for this software has or will end.
EndOfSupportStatus|String|End of support status. Can contain these possible values: None, EOS Version, Upcoming EOS Version, EOS Software, Upcoming EOS Software.
NumberOfWeaknesses|Int|Number of weaknesses on this software on this device.
OSPlatform|String|Platform of the operating system running on the device; specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See [Supported operating systems, platforms and capabilities](../defender-vulnerability-management/tvm-supported-os.md) for details.
RbacGroupName|String|The role-based access control (RBAC) group. If this device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
rbacGroupId|String|The role-based access control (RBAC) group ID.
RegistryPaths|Array[string]|Registry evidence that the product is installed in the device.
SoftwareFirstSeenTimestamp|String|The first time this software was seen on the device.
SoftwareName|String|Name of the software product.
SoftwareVendor|String|Name of the software vendor.
SoftwareVersion|String|Version number of the software product.

### 2.3 Properties (via files)

Property (ID)|Data type|Description
:---|:---|:---
Export files|array\[string\]|A list of download URLs for files holding the current snapshot of the organization.
GeneratedTime|String|The time that the export was generated.

## 3. Export software vulnerabilities assessment

Returns all the known vulnerabilities on a device and their details, for all devices.

### 3.1 Methods

Method|Data type|Description
:---|:---|:---
Export software vulnerabilities assessment **(JSON response)**|Investigation collection See: [3.2 Properties (JSON response)](#32-properties-json-response)|Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CveId. The API pulls all data in your organization as JSON responses. This method is best for small organizations with less than 100-K devices. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results.
Export software vulnerabilities assessment **(via files)**|Investigation entity See: [3.3 Properties (via files)](#33-properties-via-files)|Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CveId. This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download all your data from Azure Storage as follows: <ol><li>Call the API to get a list of download URLs with all your organization data.</li><li>Download all the files using the download URLs and process the data as you like.</li></ol>
**Delta export** software vulnerabilities assessment **(JSON response)**|Investigation collection See: [3.4 Properties Delta export (JSON response)](#34-properties-delta-export-json-response)|Returns a table with an entry for every unique combination of: DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CveId, and EventTimestamp. <p> The API pulls data in your organization as JSON responses. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results. The full software vulnerabilities assessment (JSON response) is used to obtain an entire snapshot of the software vulnerabilities assessment of your organization by device. However, the delta export API call is used to fetch only the changes that have happened between a selected date and the current date (the "delta" API call). Instead of getting a full export with a large amount of data every time, you'll only get specific information on new, fixed, and updated vulnerabilities. Delta export API call can also be used to calculate different KPIs such as "how many vulnerabilities were fixed?" or "how many new vulnerabilities were added to my organization?" <p> Because the Delta export API call for software vulnerabilities returns data for only a targeted date range, it isn't considered a _full export_.

### 3.2 Properties (JSON response)

Property (ID)|Data type|Description
:---|:---|:---
CveId|String|Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system.
CvssScore|String|The CVSS score of the CVE.
DeviceId|String|Unique identifier for the device in the service.
DeviceName|String|Fully qualified domain name (FQDN) of the device.
DiskPaths|Array\[string\]|Disk evidence that the product is installed on the device.
ExploitabilityLevel|String|The exploitability level of this vulnerability (NoExploit, ExploitIsPublic, ExploitIsVerified, ExploitIsInKit)
FirstSeenTimestamp|String|First time the CVE of this product was seen on the device.
Id|String|Unique identifier for the record.
LastSeenTimestamp|String|Last time the CVE was seen on the device.
OSPlatform|String|Platform of the operating system running on the device; specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See [Supported operating systems, platforms and capabilities](../defender-vulnerability-management/tvm-supported-os.md) for details.
RbacGroupName|String|The role-based access control (RBAC) group. If this device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
rbacGroupId|String|The role-based access control (RBAC) group ID.
RecommendationReference|String|A reference to the recommendation ID related to this software.
RecommendedSecurityUpdate|String|Name or description of the security update provided by the software vendor to address the vulnerability.
RecommendedSecurityUpdateId|String|Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles.
Registry Paths|Array[string]|Registry evidence that the product is installed in the device.
SecurityUpdateAvailable|Boolean|Indicates whether a security update is available for the software.
SoftwareName|String|Name of the software product.
SoftwareVendor|String|Name of the software vendor.
SoftwareVersion|String|Version number of the software product.
VulnerabilitySeverityLevel|String|Severity level that is assigned to the security vulnerability based on the CVSS score.

### 3.3 Properties (via files)

Property (ID)|Data type|Description
:---|:---|:---
Export files|array\[string\]|A list of download URLs for files holding the current snapshot of the organization.
GeneratedTime|String|The time that the export was generated.

### 3.4 Properties (delta export JSON response)

Property (ID)|Data type|Description
:---|:---|:---
CveId |String|Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system.
CvssScore|String|The CVSS score of the CVE.
DeviceId|String|Unique identifier for the device in the service.
DeviceName|String|Fully qualified domain name (FQDN) of the device.
DiskPaths|Array[string]|Disk evidence that the product is installed on the device.
EventTimestamp|String|The time the delta event was found.
ExploitabilityLevel|String|The exploitability level of the vulnerability (NoExploit, ExploitIsPublic, ExploitIsVerified, ExploitIsInKit)
FirstSeenTimestamp|String|First time the CVE of the product was seen on the device.
Id|String|Unique identifier for the record.  
LastSeenTimestamp|String|Last time the CVE was seen on the device.
OSPlatform|String|Platform of the operating system running on the device; specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See [Supported operating systems, platforms and capabilities](../defender-vulnerability-management/tvm-supported-os.md) for details.
RbacGroupName|String|The role-based access control (RBAC) group. If this device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
RecommendationReference|String|A reference to the recommendation ID related to this software.
RecommendedSecurityUpdate |String|Name or description of the security update provided by the software vendor to address the vulnerability.
RecommendedSecurityUpdateId |String|Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles
RegistryPaths |Array[string]|Registry evidence that the product is installed in the device.
SoftwareName|String|Name of the software product.
SoftwareVendor|String|Name of the software vendor.
SoftwareVersion|String|Version number of the software product.
Status|String|**New** (for a new vulnerability introduced on a device). **Fixed** (for a vulnerability that doesn't exist anymore on the device, which means it was remediated). **Updated** (for a vulnerability on a device that has changed. The possible changes are: CVSS score, exploitability level, severity level, DiskPaths, RegistryPaths, RecommendedSecurityUpdate).
VulnerabilitySeverityLevel|String|Severity level assigned to the security vulnerability based on the CVSS score.

## 4. Export non product code software inventory assessment

Returns all of the installed software that does not have a [Common Platform Enumeration(CPE)](https://nvd.nist.gov/products/cpe) and their details on each device.

### 4.1 Methods

|Method|Data type|Description|
|:---|:---|:---|
|Export non product code software inventory assessment **(JSON response)**|Non product code software inventory by device collection. See: [4.2 Properties (JSON response)](#42-properties-json-response)|Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion. The API pulls all data in your organization as JSON responses. This method is best for small organizations with less than 100-K devices. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results. |
| Export non product code software inventory assessment **(via files)**|Non product code software inventory by device files. See: [4.3 Properties (via files)](#43-properties-via-files)|Returns a table with an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion. This API solution enables pulling larger amounts of data faster and more reliably. So, it's recommended for large organizations, with more than 100-K devices. This API pulls all data in your organization as download files. The response contains URLs to download all the data from Azure Storage. This API enables you to download data from Azure Storage as follows: <ol><li>Call the API to get a list of download URLs with your organization data</li><li>Download the files using the download URLs and process the data as you like.</li></ol> |

### 4.2 Properties (JSON response)

Property (ID)|Data type|Description
:---|:---|:---
DeviceId|string|Unique identifier for the device in the service.
DeviceName|string|Fully qualified domain name (FQDN) of the device.
OSPlatform|string|Platform of the operating system running on the device. These are specific operating systems with variations within the same family, such as Windows 10 and Windows 11. See [Supported operating systems, platforms and capabilities](../defender-vulnerability-management/tvm-supported-os.md) for details.
RbacGroupName|string|The role-based access control (RBAC) group. If this device isn't assigned to any RBAC group, the value will be "Unassigned." If the organization doesn't contain any RBAC groups, the value will be "None."
RbacGroupId|string|The role-based access control (RBAC) group ID.
SoftwareLastSeenTimestamp|string|The last time this software was seen on the device.
SoftwareName|string|Name of the software product.
SoftwareVendor|string|Name of the software vendor.
SoftwareVersion|string|Version number of the software product.

### 4.3 Properties (via files)

Property (ID)|Data type|Description
:---|:---|:---
Export files|array\[string\]|A list of download URLs for files holding the current snapshot of the organization.
GeneratedTime|String|The time that the export was generated.

## See also

- [Export secure configuration assessment per device](get-assessment-secure-config.md)
- [Export software inventory assessment per device](get-assessment-software-inventory.md)
- [Export software vulnerabilities assessment per device](get-assessment-software-vulnerabilities.md)
- [Export non cpe software inventory assessment per device](get-assessment-non-cpe-software-inventory.md)

Other related

- [Microsoft Defender Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Vulnerabilities in your organization](tvm-weaknesses.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
