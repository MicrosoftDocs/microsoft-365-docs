---
title: Export software vulnerabilities assessment to Json
description: This solution allows pulling larger amounts of data faster and more reliably. Therefore, it is recommended for large organizations.
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

# Export software vulnerabilities assessment to Json

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API method description

This API solution allows pulling larger amounts of data faster and more reliably. Therefore, it is recommended for large organizations.
This API allows you to download all your data from Azure Storage in the following way:

- Call the API to get a list of download URLs with all your organization data.

- Download all the files using the download URLs and process the data as you like.

In general, each API call contains the requisite data for devices in your organization. Since the amount of data can be very large, there are two ways it can be retrieved:

- The API will pull all data in your organization as a json response.
This method is best for small organizations with less than 100K devices. The response is paginated, so you can use the \@odata.nextLink field from the response to fetch the next results.

- The API will pull all data in your organization as download files.
This method is best for big organizations with more than 100K devices. The response contains URLs to download all the data from Azure storage.

## Limitations

N/A?

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Vulnerability.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Vulnerability.Read | \'Read Threat and Vulnerability Management vulnerability information\'

## URL

```http
GET /api/machines/SoftwareVulnerabilitiesExpor
```

## Parameters

- pageSize (default = 50,000) – number of results in response
- $top – number of results to return (doesn’t return @odata.nextLink and therefore doesn’t pull all the data)
- sinceTime (required) – The data between a selected time and today

## Properties

>[!Note]
>
>- The files are gzip compressed & in multiline json format.
>
>- The download URLs are only valid for 1 hour.
>
>- For maximum download speed of your data, you can make sure you are downloading from the same azure region that your data resides.

Property (id) | Data type | Description | Example of a returned value
:---|:---|:---|:---
category | String | Category of the remediation activity (Software/Security configuration) | Software
completerEmail | String | If the remediation activity was manually completed by someone, this column contains their email | null
completerId | String | If the remediation activity was manually completed by someone, this column contains their object id | null
title | String | Title of this remediation activity | Update Google Chrome
type | String | Remediation type | Update
vendorId | String | Related vendor name | google

## Example

### Request example

```http
GET https://api-us.securitycenter.windows.com/api/machines/SoftwareVulnerabilitiesExport
```

### Response example

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/VaExport/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00393-bcc26c4f-e531-48db-9892-c93ac5d72d5c.c002.json.gz?sv=2019-12-12&st=2021-01-11T11%3A35%3A13Z&se=2021-01-11T14%3A35%3A13Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Assessment exports per device methods and properties](get-export-assessmnt-methods-properties.md)

- [Export software inventory assessment by machine](get-export-assessmnt-inventory-software-by-machine.md)

- [Export software inventory assessment to Json](get-export-assessmnt-inventory-software-to-json.md)

- [Export secure configuration assessment by machine](get-export-assessmnt-sec-cfg-by-machine.md)

- [Export secure configuration assessment to Json](get-export-assessmnt-sec-cfg-to-json.md)

- [Export software vulnerabilities assessment by machine](get-export-assessmnt-software-by-machine.md)

- [Export software vulnerabilities assessment to Json](get-export-assessmnt-software-to-json.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
