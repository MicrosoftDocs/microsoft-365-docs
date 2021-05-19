---
title: Export secure configuration assessment per device
description: Returns  an entry for every unique combination of DeviceId, ConfigurationId.
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
 
# Export secure configuration assessment per device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## 1. Full export per device secure configuration assessment

### 1.1 API method description

Returns  an entry for every unique combination of DeviceId, ConfigurationId.
The API response contains the Secure Configuration Assessment on your exposed devices. This table also includes operating system information.

### 1.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Vulnerability.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Vulnerability.Read | \'Read Threat and Vulnerability Management vulnerability information\'

### Limitations

>- Maximum page size is 200,000.
>
>- Rate limitations for this API are 30 calls per minute and 1000 calls per hour.

### 1.3 URL

```http
GET /api/machines/SecureConfigurationsAssessmentByMachine
```

### 1.4 Parameters

- pageSize \(default = 50,000\) – number of results in response

- \$top – number of results to return \(doesn’t return \@odata.nextLink and therefore doesn’t pull all the data\)

### 1.5 Properties

>[!Note]
>
>The properties defined in the following table are listed alphanumerically, by property ID.  When running this API, the resulting output will not necessarily be returned in the same order listed in these tables.
>
>Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.
>

Property (id) | Data type | Description | Example of a returned value
:---|:---|:---|:---
ConfigurationCategory | string | Category or grouping to which the configuration belongs: Application, OS, Network, Accounts, Security controls | Security controls
ConfigurationId | string | Unique identifier for a specific configuration | scid-10000
ConfigurationImpact | string | Rated impact of the configuration to the overall configuration score (1-10) | 9
ConfigurationName | string | Display name of the configuration | Onboard devices to Microsoft Defender for Endpoint
ConfigurationSubcategory | string | Subcategory or subgrouping to which the configuration belongs. In many cases, this describes specific capabilities or features. | Onboard Devices
DeviceId | string | Unique identifier for the device in the service. | 9eaf3a8b5962e0e6b1af9ec756664a9b823df2d1
DeviceName | string | Fully qualified domain name (FQDN) of the device. | johnlaptop.europe.contoso.com
IsApplicable | bool | Indicates whether the configuration or policy is applicable | true
IsCompliant | bool | Indicates whether the configuration or policy is properly configured | false
IsExpectedUserImpact | bool | Indicates whether there will be user impact if the configuration will be applied | true
OSPlatform | string | Platform of the operating system running on the device. This indicates specific operating systems, including variations within the same family, such as Windows 10 and Windows 7. See tvm supported operating systems and platforms for details. | Windows10
RbacGroupName | string | The role-based access control (RBAC) group. If this device is not assigned to any RBAC group, the value will be “Unassigned.” If the organization doesn’t contain any RBAC groups, the value will be “None.” | Servers
RecommendationReference | string | A reference to the recommendation ID related to this software. | sca-_-scid-20000
Timestamp | string | Last time the configuration was seen on the device | 2020-11-03 10:13:34.8476880

### 1.6 Examples

#### 1.6.1 Request example

```http
GET https://api-us.securitycenter3.windows.com/api/machines/SecureConfigurationsAssessmentByMachine?pageSize=5 
```

#### 1.6.2 Response example

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetConfiguration)",
    "value": [
        {
            "deviceId": "00013ee62c6b12345b10214e1801b217b50ab455c293d",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_5d96860d69c73fdd06fc8d1679e1eb73eceb8330",
            "osPlatform": "Windows10",
            "osVersion": "NT kernel 6.x",
            "timestamp": "2021-01-11 09:47:58.854",
            "configurationId": "scid-10000",
            "configurationCategory": "Network",
            "configurationSubcategory": "",
            "configurationImpact": 5,
            "isCompliant": true,
            "isApplicable": true,
            "isExpectedUserImpact": false,
            "configurationName": "Disable insecure administration protocol – Telnet",
            "recommendationReference": "sca-_-scid-10000"
        },
        {
            "deviceId": "0002a1be533813b9a8c6de739785365bce7910",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": null,
            "osPlatform": "Windows10",
            "osVersion": "10.0",
            "timestamp": "2021-01-11 09:47:58.854",
            "configurationId": "scid-20000",
            "configurationCategory": "Security controls",
            "configurationSubcategory": "Onboard Devices",
            "configurationImpact": 9,
            "isCompliant": false,
            "isApplicable": true,
            "isExpectedUserImpact": false,
            "configurationName": "Onboard devices to Microsoft Defender for Endpoint",
            "recommendationReference": "sca-_-scid-20000"
        },
        {
            "deviceId": "0002a1de123456a8c06de736785395d4ce7610",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": null,
            "osPlatform": "Windows10",
            "osVersion": "10.0",
            "timestamp": "2021-01-11 09:47:58.854",
            "configurationId": "scid-10000",
            "configurationCategory": "Network",
            "configurationSubcategory": "",
            "configurationImpact": 5,
            "isCompliant": true,
            "isApplicable": true,
            "isExpectedUserImpact": false,
            "configurationName": "Disable insecure administration protocol – Telnet",
            "recommendationReference": "sca-_-scid-10000"
        },
        {
            "deviceId": "00044f912345bdaf756492dbe6db733b6a9c59ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663d45912eed224b2be2f5ea3142726e63f16a.DomainPII_21eeb80b086e76bdfa178eadfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.17763.1637",
            "timestamp": "2021-01-11 09:47:58.854",
            "configurationId": "scid-39",
            "configurationCategory": "OS",
            "configurationSubcategory": "",
            "configurationImpact": 5,
            "isCompliant": true,
            "isApplicable": true,
            "isExpectedUserImpact": false,
            "configurationName": "Enable 'Domain member: Digitally sign secure channel data (when possible)'",
            "recommendationReference": "sca-_-scid-39"
        },
        {
            "deviceId": "00044f912345daf759462bde6bd733d6a9c56ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18663b45612eeb224d2de2f5ea3142726e63f16a.DomainPII_21eed80d086e76dbfa178eadfa25e8be9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.17763.1637",
            "timestamp": "2021-01-11 09:47:58.854",
            "configurationId": "scid-6093",
            "configurationCategory": "Security controls",
            "configurationSubcategory": "Antivirus",
            "configurationImpact": 5,
            "isCompliant": false,
            "isApplicable": false,
            "isExpectedUserImpact": false,
            "configurationName": "Enable Microsoft Defender Antivirus real-time behavior monitoring for Linux",
            "recommendationReference": "sca-_-scid-6093"
        }
    ],
    "@odata.nextLink": "https://wpatdadi-eus-stg.cloudapp.net/api/machines/SecureConfigurationsAssessmentByMachine?pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0xMS8xMTAxLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## 2. Full export per-device secure configuration assessment via files

### 2.1 API method description

The API response contains the Secure Configuration Assessment on your exposed devices. This table also includes operating system information.

Full export to Json files.
This solution allows pulling larger amounts of data faster and more reliably. Therefore, it is recommended for large organizations. This API allows you to download all your data from Azure Storage in the following way:

1. Call the API to get a list of download URLs with all your organization data.
2. Download all the files using the download URLs and process the data as you like.

### 2.2 Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Software.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Software.Read | \'Read Threat and Vulnerability Management vulnerability information\'

### Limitationss

Rate limitations for this API are 5 calls per minute and 20 calls per hour.

### 2.3 URL

```http
GET /api/machines/SecureConfigurationsAssessmentExport
```

### 2.5 Properties

>[!Note]
>
>- The files are gzip compressed & in multiline Json format.
>
>- The download URLs are only valid for 1 hour.
>
>- For maximum download speed of your data, you can make sure you are downloading from the same azure region that your data resides.
>

### 2.6 Examples

#### 2.6.1 Request example

```http
GET https://api-us.securitycenter3.contoso.com/api/machines/SecureConfigurationsAssessmentExport
```

#### 2.6.2 Response example

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#contoso.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/ScaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00393-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/ScaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/ScaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Export assessment methods and properties per device](get-assessmnt-1methods-properties.md)

- [Export software inventory assessment per device](get-assessmnt-software-inventory.md)

- [Export software vulnerabilities assessment per device](get-assessmnt-software-vulnerabilities.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
