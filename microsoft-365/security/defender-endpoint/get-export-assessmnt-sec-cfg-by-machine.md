---
title: Export secure configuration assessment by machine
description: Returns  an entry for every unique combination of DeviceId, ConfigurationId.
keywords: apis, remediation, remediation api, get, remediation tasks, 
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
---

# Export secure configuration assessment by machine

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

[Learn more about remediation activities](tvm-remediation.md).

## API method description

Returns  an entry for every unique combination of DeviceId, ConfigurationId.
The API response contains the Secure Configuration Assessment on your exposed devices. This table also includes operating system information.

## Limitations

N/A/?

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Vulnerability.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Vulnerability.Read | \'Read Threat and Vulnerability Management vulnerability information\'

## URL

```http
GET /api/machines/SecureConfigurationsAssessmentByMachine
```

## Parameters

-pageSize \(default = 50,000\) – number of results in response
-\$top – number of results to return \(doesn’t return \@odata.nextLink and therefore doesn’t pull all the data\)

## Properties

>[!Notes]
>Property id values  in this table are listed alphabetically. The Property Id values will not necessarily be returned alphabetically in the output results.
>Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.

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
RbacGroupId | Int | ID of the RBAC group. | 70
RbacGroupName | string | The role-based access control (RBAC) group. | If this device is not assigned to any RBAC group, the value will be “Unassigned.” If the organization doesn’t contain any RBAC groups, the value will be “None.” | Servers
RecommendationReference | string | A reference to the recommendation ID related to this software. | sca-_-scid-20000
Timestamp | string | Last time the configuration was seen on the device | 2020-11-03 10:13:34.8476880

## Example

**Request** example

```http
GET https://api-us.securitycenter.windows.com/api/machines/SecureConfigurationsAssessmentByMachine?pageSize=5 
```

**Response** example

```json
{
    "@odata.context": "https://wdatpapi-eus-stg.cloudapp.net/api/$metadata#Collection(microsoft.windowsDefenderATP.api.AssetConfiguration)",
    "value": [
        {
            "deviceId": "00013ee62c6b12345d10214e1801d217b50ab455c293d",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_5d69860da9c73fdd06fc8d1979e1eb73eceb8330",
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
            "deviceId": "0002a1be533813d6a8c06be739785365d4ce7910",
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
            "deviceId": "0002a1be123456a8c06be739785365d4ce7910",
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
            "deviceId": "00044f612345baf759462dbe6db733b6a9c59ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18993b45912eeb224b2be2f5ea3142726e63f16a.DomainPII_21eeb80d086e79dbfa178eadfa25e8de9acfa346.corp.contoso.com",
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
            "deviceId": "00044f612345baf759462dbe6db733b6a9c59ab4",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_18993b45912eeb224b2be2f5ea3142726e63f16a.DomainPII_21eeb80d086e79dbfa178eadfa25e8de9acfa346.corp.contoso.com",
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
    "@odata.nextLink": "https://wdatpapi-eus-stg.cloudapp.net/api/machines/SecureConfigurationsAssessmentByMachine?pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0xMS8xMTAxLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## See also

- [Export assessments per device methods and properties](get-export-assessmnt-methods-properties.md)

- [Export software inventory assessment by machine](get-export-assessmnt-inventory-software-by-machine.md)

- [Export software inventory assessment to Json](get-export-assessmnt-inventory-software-to-json.md)

- [Export secure configuration assessment to Json](get-export-assessmnt-sec-cfg-to-json.md)

- [Export software vulnerabilities assessment by machine](get-export-assessmnt-software-by-machine.md)

- [Export software vulnerabilities assessment to Json](get-export-assessmnt-software-to-json.md)

- [Export software vulnerabilities delta assessment by machine](get-export-assessmnt-software-delta.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
