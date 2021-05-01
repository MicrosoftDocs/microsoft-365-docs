---
title: Export software vulnerabilities delta assessment by machine
description: This API is used to get everything that has changed in the full vulnerability export of the organization (New, fixed, updated vulnerabilities). It can be used as a consecutive call after the full export or to update the state of the vulnerabilities in your organization. It can also be used to calculate different KPIs such as “how many vulnerabilities got fixed?” or “how many new vulnerabilities were added to my organization?”
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
---

# Export software vulnerabilities delta assessment by machine

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API method description

Vulnerability Assessment:

This API response is per device and contains vulnerable software installed on your exposed devices as well as any known vulnerabilities in these software products. This table also includes operating system information, CVE IDs, and vulnerability severity information.

This API has an additional call to fetch the changes between a selected date and today’s date (the “delta” API call).

The API is used to get everything that has changed in the full vulnerability export of the organization (New, fixed, updated vulnerabilities). It can be used as a consecutive call after the full export or to update the state of the vulnerabilities in your organization. It can also be used to calculate different KPIs such as “how many vulnerabilities got fixed?” or “how many new vulnerabilities were added to my organization?”

The table has an entry for every unique combination of DeviceId, SoftwareVendor, SoftwareName, SoftwareVersion, CveId, EventTimestamp.

In general, each API call contains the requisite data for devices in your organization. Since the amount of data can be very large, there are two ways it can be retrieved:

- The API will pull all data in your organization as a Json response.
This method is best for small organizations with less than 100K devices. The response is paginated, so you can use the @odata.nextLink field from the response to fetch the next results.

- The API will pull all data in your organization as download files.
This method is best for big organizations with more than 100K devices. The response contains URLs to download all the data from Azure storage.

## Limitations

Rate limitations for this API are 100 calls per minute and 1500 calls per hour.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Vulnerability.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Vulnerability.Read | \'Read Threat and Vulnerability Management vulnerability information\'

## URL

```http
GET / MIA
```

## Parameters

- pageSize (default = 50,000) \– number of results in response
- $top \– number of results to return (doesn’t return @odata.nextLink and therefore doesn’t pull all the data)
- sinceTime (required) \– The data between a selected time and today

## Properties

1. If the software was updated from version 1.0 to version 2.0, and both versions are exposed to CVE-A, you will receive 2 separate events:
a. Fixed – CVE-A on version 1.0 was fixed
b. New – CVE-A on version 2.0 was added

2. If a specific vulnerability (e.g. CVE-A) was first seen at a specific time (e.g, January 10) on software with version 1.0, and a few days later that software was updated to version 2.0 which also exposed to the same CVE-A, you will receive these two separated events:
a. Fixed – CVE-X, FirstSeenTimestamp January 10, version 1,0.
a. New – CVE-X, FirstSeenTimestamp January 10, version 2.0.

**FirstSeenTimestamp** doesn’t change and goes by the first time the device and the software were exposed to that CVE.

>[!Note]
>
>Some additional columns might be returned in the response. These columns are temporary and might be removed, please use only the documented columns.
-Each returned record contains all the data from the full export API, and \- in addition \- the following fields:

Property (id) | Data type | Description | Example of a returned value
:---|:---|:---|:---
EventTimestamp | String | The time this delta event was found. | 2020-11-17
Status | String | \- **New** (for a new vulnerability introduced on a device) \- **Fixed** (if this vulnerability doesn’t exist anymore on the device, which means it was remediated) \- **Updated** (if a vulnerability on a device has changed. The possible changes are: CVSS score, exploitability level, severity level, end-of-support status and end-of-support date).| null

## Example

**Request** example

```http
GET DeltaExport endpoint
```

**Response** example

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#Collection(microsoft.windowsDefenderATP.api.DeltaAssetVulnerability)",
    "value": [
        {
            "id": "008198251234544f7dfa715e278d4cec0c16c171_chrome_87.0.4280.88__",
            "deviceId": "008198251234544f7dfa715e278b4cec0c19c171",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_1c8fee370690ca24b6a0d3f34d193b0424943a8b8.DomainPII_0dc1aee0fa366d175e514bd91a9e7a5b2b07ee8e.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.19042.685",
            "osArchitecture": "x64",
            "softwareVendor": "google",
            "softwareName": "chrome",
            "softwareVersion": "87.0.4280.88",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [
                "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
            ],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Google Chrome"
            ],
            "lastSeenTimestamp": "2021-01-04 00:29:42",
            "firstSeenTimestamp": "2020-11-06 03:12:44",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-google-_-chrome",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "00e59c61234533860738ecf488eec8abf296e41e_onedrive_20.64.329.3__",
            "deviceId": "00e56c91234533860738ecf488eec8abf296e41e",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_82c13a8ad8cf3dbaf7bf34fada9fa3aebc124116.DomainPII_21eeb80d086e79dbfa178eadfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.18363.1256",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "onedrive",
            "softwareVersion": "20.64.329.3",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_USERS\\S-1-5-21-2127521184-1604012920-1887927527-24918864\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\OneDriveSetup.exe"
            ],
            "lastSeenTimestamp": "2020-12-11 19:49:48",
            "firstSeenTimestamp": "2020-12-07 18:25:47",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-onedrive",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "01aa8c73095bb12345918663f3f94ce322107d24_firefox_83.0.0.0_CVE-2020-26971_",
            "deviceId": "01aa8c73065bb12345918693f3f94ce322107d24",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_42684eb981bea2d670027e7ad2caafd3f2b381a3.DomainPII_21eed80b086e76dbfa178eabfa25e8de9acfa346.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.19042.685",
            "osArchitecture": "x64",
            "softwareVendor": "mozilla",
            "softwareName": "firefox",
            "softwareVersion": "83.0.0.0",
            "cveId": "CVE-2020-26971",
            "vulnerabilitySeverityLevel": "High",
            "recommendedSecurityUpdate": "193220",
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [
                "C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe"
            ],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Mozilla Firefox 83.0 (x86 en-US)"
            ],
            "lastSeenTimestamp": "2021-01-05 17:04:30",
            "firstSeenTimestamp": "2020-05-06 12:42:19",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-mozilla-_-firefox",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "026f0fcb12345fbd2decd1a339702131422d362e_project_16.0.13701.20000__",
            "deviceId": "029f0fcb13245fbd2decd1a336702131422d392e",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_a5706750acba75f15d69cd17f4a7fcd268d6422c.DomainPII_f290e982685f7e8eee168b4332e0ae5d2a069cd6.corp.contoso.com",
            "osPlatform": "Windows10",
            "osVersion": "10.0.19042.685",
            "osArchitecture": "x64",
            "softwareVendor": "microsoft",
            "softwareName": "project",
            "softwareVersion": "16.0.13701.20000",
            "cveId": null,
            "vulnerabilitySeverityLevel": null,
            "recommendedSecurityUpdate": null,
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\ProjectProRetail - en-us"
            ],
            "lastSeenTimestamp": "2021-01-03 23:38:03",
            "firstSeenTimestamp": "2019-08-01 22:56:12",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-microsoft-_-project",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        },
        {
            "id": "038df381234510b357ac19d0113ef622e4e212b3_chrome_81.0.4044.138_CVE-2020-16011_",
            "deviceId": "038df381234510d357ac19b0113ef922e4e212b3",
            "rbacGroupId": 1337,
            "rbacGroupName": "hhh",
            "deviceName": "ComputerPII_365f5c0bb7202c163937dad3d017969b2d760eb4.DomainPII_29596a43a2ef2bbfa00f6a16c0cb1d108bc63e32.DomainPII_3c5fefd2e6fda2f36257359404f6c1092aa6d4b8.net",
            "osPlatform": "Windows10",
            "osVersion": "10.0.18363.1256",
            "osArchitecture": "x64",
            "softwareVendor": "google",
            "softwareName": "chrome",
            "softwareVersion": "81.0.4044.138",
            "cveId": "CVE-2020-16011",
            "vulnerabilitySeverityLevel": "High",
            "recommendedSecurityUpdate": "ADV 200002",
            "recommendedSecurityUpdateId": null,
            "recommendedSecurityUpdateUrl": null,
            "diskPaths": [
                "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
            ],
            "registryPaths": [
                "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\{C4EBFDFD-0C55-3E5F-A919-E3C54949024A}"
            ],
            "lastSeenTimestamp": "2020-12-10 22:45:41",
            "firstSeenTimestamp": "2020-07-26 02:13:43",
            "endOfSupportStatus": "None",
            "endOfSupportDate": null,
            "exploitabilityLevel": "NoExploit",
            "recommendationReference": "va-_-google-_-chrome",
            "status": "Fixed",
            "eventTimestamp": "2021-01-11T11:06:08.291Z"
        }
    ],
    "@odata.nextLink": "https://wpatdadi-eus-stg.cloudapp.net/api/machines/SoftwareVulnerabilitiesTimeline?sincetime=2021-01-11&pagesize=5&$skiptoken=eyJFeHBvcnREZWZpbml0aW9uIjp7IlRpbWVQYXRoIjoiMjAyMS0wMS0xMS8xMTAxLyJ9LCJFeHBvcnRGaWxlSW5kZXgiOjAsIkxpbmVTdG9wcGVkQXQiOjV9"
}
```

## See also

- [Assessment exports per device methods and properties](get-export-assessmnt-methods-properties.md)

- [Export secure configuration assessment by machine](get-export-assessmnt-sec-cfg-by-machine.md)

- [Export secure configuration assessment to Json](get-export-assessmnt-sec-cfg-to-json.md)

- [Export software inventory assessment by machine](get-export-assessmnt-inventory-software-by-machine.md)

- [Export software inventory assessment to Json](get-export-assessmnt-inventory-software-to-json.md)

- [Export software vulnerabilities assessment by machine](get-export-assessmnt-software-by-machine.md)

- [Export software vulnerabilities delta assessment by machine](get-export-assessmnt-software-delta.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
