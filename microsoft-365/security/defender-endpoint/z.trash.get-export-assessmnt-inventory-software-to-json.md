---
title: Export software inventory assessment to Json
description: This solution allows pulling larger amounts of data faster and more reliably . Therefore, it is recommended for large organizations.
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

# Export software inventory assessment to Json

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API method description

The API response contains data for all software installed (not only vulnerable software) on all devices in your organization. It includes data about the software versions and their vulnerabilities (if they exist), and software metadata such as end-of-support dates.

This solution allows pulling larger amounts of data faster and more reliably. Therefore, it is recommended for large organizations.
This API allows you to download all your data from Azure Storage in the following way:

- Call the API to get a list of download URLs with all your organization data.

- Download all the files using the download URLs and process the data as you like.

## Limitations

N/A?

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs for details.](apis-intro.md)

Permission type | Permission | Permission display name
---|---|---
Application | Software.Read.All | \'Read Threat and Vulnerability Management vulnerability information\'
Delegated (work or school account) | Software.Read | \'Read Threat and Vulnerability Management vulnerability information\'

## URL

```http
GET /api/machines/SoftwareInventoryExport
```

## Properties

>[!Note]
>
>- The files are gzip compressed and in multiline Json format.
>
>- The download URLs are only valid for 1 hour.
>
>- For maximum download speed of your data, you can make sure you are downloading from the same azure region that your data resides.
>

## Example

### Request example

```http
GET https://api-us.securitycenter3.contoso.com/api/machines/SoftwareInventoryExport
```

### Response example

```json
{
    "@odata.context": "https://wpatdadi-eus-stg.cloudapp.net/api/$metadata#microsoft.windowsDefenderATP.api.ExportFilesResponse",
    "exportFiles": [
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00393-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c000.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=...",
        "https://tvmexportstrstgeus.blob.core.windows.net/tvm-export/2021-01-11/1101/SoftwareInventory/json/OrgId=12345678-195f-4223-9c7a-99fb420fd000/_RbacGroupId=1337/part-00394-e423630d-4c69-4490-8769-a4f5468c4f25.c001.json.gz?sv=2019-12-12&st=2021-01-11T11%3A55%3A51Z&se=2021-01-11T14%3A55%3A51Z&sr=b&sp=r&sig=..."
    ],
    "generatedTime": "2021-01-11T11:01:00Z"
}
```

## See also

- [Assessment exports per device methods and properties](get-export-assessmnt-methods-properties.md)

- [Export secure configuration assessment by machine](get-export-assessmnt-sec-cfg-by-machine.md)

- [Export secure configuration assessment to Json](get-export-assessmnt-sec-cfg-to-json.md)

- [Export software inventory assessment by machine](get-export-assessmnt-inventory-software-by-machine.md)

- [Export software vulnerabilities assessment by machine](get-export-assessmnt-software-by-machine.md)

- [Export software vulnerabilities assessment to Json](get-export-assessmnt-software-to-json.md)

- [Export software vulnerabilities delta assessment by machine](get-export-assessmnt-software-delta.md)

Other related

- [Risk-based threat & vulnerability management](next-gen-threat-and-vuln-mgt.md)

- [Vulnerabilities in your organization](tvm-weaknesses.md)
