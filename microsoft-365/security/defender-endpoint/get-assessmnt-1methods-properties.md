---
title: Export assessment methods and properties per device
description: Provides information about the APIs that pull "threat and vulnerability management" data. There are different API calls to get different types of data. In general, each API call contains the requisite data for devices in your organization. Since the amount of data can be very large, there are two ways it can be retrieved
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
 
# Export assessment methods and properties per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description

Provides methods and property details about the APIs that pull threat and vulnerability management data. There are different API calls to get different types of data.
In general, each API call contains the requisite data for devices in your organization. Since the amount of data can be very large, there are two ways it can be retrieved:

- The API will pull all data in your organization as a Json response.
This method is best for _small organizations with less than 100K devices_. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- The API will pull all data in your organization as download files.
This method is best for _big organizations with more than 100K devices_. The response contains URLs to download all the data from Azure storage.

>[!Note]
>The data collected is a snapshot of the current state, and does not contains historic data. In order to collect historic data, customers need to keep the data in their own data storages.

>[!Note]
>
>The properties defined in the three properties tables that follow are listed alphabetically, by property ID.  When running this API, the resulting output will not necessarily be returned in the same order listed in these tables.

## 1. Export per-device secure configurations assessment

Returns all of the configurations and their status, on a per-device basis.

### 1.1 Methods

Method | Data type | Description
:---|:---|:---
[Full export secure configuration assessment](get-assessmnt-secure-cfg.md#1-full-export-secure-configuration-assessment) | Investigation collection | _Full export:_ Returns  a table has an entry for every unique combination of DeviceId, ConfigurationId.
[Full export secure configuration assessment via files](get-assessmnt-secure-cfg.md#2-full-export-secure-configuration-assessment-via-files) | Investigation entity | _Full export:_ This API solution allows pulling larger amounts of data faster and more reliably . Therefore, it is recommended for large organizations. This API allows you to download all your data from Azure Storage in the following way: 1. Call the API to get a list of download URLs with all your organization data. 2. Download all the files using the download URLs and process the data as you like.

### 1.2 Properties

Property (id) | Data type | Description
:---|:---|:---
ConfigurationCategory | string | Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls
ConfigurationId | string | Unique identifier for a specific configuration
ConfigurationImpact | string | Rated impact of the configuration to the overall configuration score (1-10)
ConfigurationName | string | Display name of the configuration
ConfigurationSubcategory | string | Subcategory or subgrouping to which the configuration belongs. In many cases, this describes specific capabilities or features.
DeviceId | string | Unique identifier for the device in the service.
DeviceName | string | Fully qualified domain name (FQDN) of the device.
IsApplicable | bool | Indicates whether the configuration or policy is applicable
IsCompliant | bool | Indicates whether the configuration or policy is properly configured
IsExpectedUserImpact | bool | Indicates whether there will be user impact if the configuration will be applied
OSPlatform | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. See tvm supported operating systems and platforms for details.
RbacGroupName | string | The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be “Unassigned.” If the organization doesn’t contain any RBAC groups, the value will be “None.”
RecommendationReference | string | A reference to the recommendation ID related to this software.
Timestamp | string | Last time the configuration was seen on the device

## 2. Export per-device software inventory assessment

Returns all the installed software and their details on each device

### 2.1 Methods

Method | Data type | Description
:---|:---|:---
[Full export software inventory assessment](get-assessmnt-software-inventory.md#1-full-export-software-inventory-assessment) | Investigation collection | _Full export:_ This table has an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion.
[Full export software inventory assessment via files](get-assessmnt-software-inventory.md#2-full-export-software-inventory-assessment-via-files) | Investigation entity | _Full export:_ This solution allows pulling larger amounts of data faster and more reliably. Therefore, it is recommended for large organizations. This API allows you to download all your data from Azure Storage in the following way: 1. Call the API to get a list of download URLs with all your organization data. 2. Download all the files using the download URLs and process the data as you like.

### 2.2 Properties

Property (id) | Data type | Description
:---|:---|:---
DeviceId | string | Unique identifier for the device in the service.
DeviceName | string | Fully qualified domain name (FQDN) of the device.
DiskPaths | Array[string]  | Disk evidence that the product is installed on the device.
EndOfSupportDate (optional) | string | The date in which support for this software has or will end.
EndOfSupportStatus | string | End of support status. Can contain these possible values: None, EOS Version, Upcoming EOS Version, EOS Software, Upcoming EOS Software.
Id | string | Unique identifier for the record.
NumberOfWeaknesses | int|Number of weaknesses on this software on this device
OSPlatform | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. See tvm supported operating systems and platforms for details.
RbacGroupName | string | The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be “Unassigned.” If the organization doesn’t contain any RBAC groups, the value will be “None.”
RegistryPaths (optional) | Array[string] | Registry evidence that the product is installed in the device.
SoftwareFirstSeenTimestamp | string | The first time this software was seen on the device.
SoftwareName | string | Name of the software product.
SoftwareVendor | string | Name of the software vendor.
SoftwareVersion | string | Version number of the software product.

## 3. Export per-device software vulnerabilities assessment

Returns all the known vulnerabilities on a device and their details, for all the devices.

### 3.1 Methods

Method | Data type | Description
:---|:---|:---
[Full export software vulnerabilities assessment](get-assessmnt-software-vulnerabilities.md#1-full-export-software-vulnerabilities-assessment) | Investigation collection | _Full export:_ This API returns a table has an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CveId.
[Full export software vulnerabilities assessment via files](get-assessmnt-software-vulnerabilities.md#2-full-export-software-vulnerabilities-assessment-via-files) | Investigation entity| _Full export:_ This API solution enables pulling larger amounts of data faster and more reliably. Therefore, it is recommended for large organizations. This API enables you to download all your data from Azure Storage in the following way: 1. Call the API to get a list of download URLs with all your organization data. 2. Download all the files using the download URLs and process the data as you like.

### 3.2 Properties

Property (id) | Data type | Description
:---|:---|:---
CveId | string | Unique identifier assigned to the security vulnerability under the Common Vulnerabilities and Exposures (CVE) system.
CvssScore | string | The CVSS score of the CVE.
DeviceId | string | Unique identifier for the device in the service.
DeviceName | string | Fully qualified domain name (FQDN) of the device.
ExploitabilityLevel | string | The exploitability level of this vulnerability (NoExploit, ExploitIsPublic, ExploitIsVerified, ExploitIsInKit)
FirstSeenTimestamp | string | First time the CVE of this product was seen on the device.
Id | string | Unique identifier for the record.
LastSeenTimestamp | string | Last time the CVE was seen on the device.
OSPlatform | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. See tvm supported operating systems and platforms for details.
RbacGroupName | string | The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be “Unassigned.” If the organization doesn’t contain any RBAC groups, the value will be “None.”
RecommendationReference | string | A reference to the recommendation ID related to this software.
RecommendedSecurityUpdate (optional) | string | Name or description of the security update provided by the software vendor to address the vulnerability.
RecommendedSecurityUpdateId (optional) | string | Identifier of the applicable security updates or identifier for the corresponding guidance or knowledge base (KB) articles
SoftwareName | string | Name of the software product.
SoftwareVendor | string | Name of the software vendor.
SoftwareVersion | string | Version number of the software product.
VulnerabilitySeverityLevel | string | Severity level assigned to the security vulnerability based on the CVSS score and dynamic factors influenced by the threat landscape.

## See also

- [Export secure configuration assessment per device](get-assessmnt-secure-cfg.md)

- [Export software inventory assessment per device](get-assessmnt-software-inventory.md)

- [Export software vulnerabilities assessment per device](get-assessmnt-software-vulnerabilities.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
