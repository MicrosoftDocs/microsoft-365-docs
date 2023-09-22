---
title: Supported Microsoft Defender for Endpoint APIs
ms.reviewer: 
description: Learn about the specific supported Microsoft Defender for Endpoint entities where you can create API calls to.
keywords: apis, supported apis, actor, alerts, device, user, domain, ip, file, advanced queries, advanced hunting
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 01/25/2023
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

# Supported Microsoft Defender for Endpoint APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:** 

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/index.yml)

> [!IMPORTANT]
> Advanced hunting capabilities are not included in Defender for Business. See [Compare Microsoft Defender for Business to Microsoft Defender for Endpoint Plans 1 and 2](../defender-business/compare-mdb-m365-plans.md#compare-defender-for-business-to-defender-for-endpoint-plan-1-and-plan-2).


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

## Endpoint URI and versioning

### Endpoint URI

> The service base URI is: [https://api.securitycenter.microsoft.com](https://api.securitycenter.microsoft.com)
>
> The queries based OData have the '/api' prefix. For example, to get Alerts you can send GET request to [https://api.securitycenter.microsoft.com/api/alerts](https://api.securitycenter.microsoft.com/api/alerts)

### Versioning

> The API supports versioning.
>
> The current version is **V1.0**.
>
> To use a specific version, use this format: `https://api.securitycenter.microsoft.com/api/{Version}`. For example: `https://api.securitycenter.microsoft.com/api/v1.0/alerts`
>
> If you don't specify any version (e.g. `https://api.securitycenter.microsoft.com/api/alerts`) you will get to the latest version.

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

Learn more about the individual supported entities where you can run API calls to and details such as HTTP request values, request headers and expected responses.

## In this section

Topic | Description
:---|:---
[**Advanced Hunting** methods](run-advanced-query-api.md) | Run queries from API.
[**Alert** methods and properties](alerts.md) | Run API calls such as \- get alerts, create alert, update alert and more.
[Export **Assessment** per-device methods and properties](get-assessment-methods-properties.md) | Run API calls to gather vulnerability assessments on a per-device basis, such as: \- export secure configuration assessment, export software inventory assessment,  export software vulnerabilities assessment, and delta export software vulnerabilities assessment.
[**Automated investigation** methods and properties](investigation.md) | Run API calls such as \- get collection of Investigation.
[Export device health methods and properties](device-health-api-methods-properties.md) | Run API Calls such as \- GET /api/public/avdeviceshealth.
[**Domain**-related alerts](get-domain-related-alerts.md) | Run API calls such as \- get domain-related devices, domain statistics and more.
[**File** methods and properties](files.md) | Run API calls such as \- get file information, file related alerts, file related devices, and file statistics.
[**Indicators** methods and properties](ti-indicator.md) | Run API call such as \- get Indicators, create Indicator, and delete Indicators.
[**IP**-related alerts](get-ip-related-alerts.md) | Run API calls such as \- get IP-related alerts and get IP statistics.
[**Machine** methods and properties](machine.md) | Run API calls such as \- get devices, get devices by ID, information about logged on users, edit tags and more.
[**Machine Action** methods and properties](machineaction.md) | Run API call such as \- Isolation, Run anti-virus scan and more.
[**Recommendation** methods and properties](recommendation.md) | Run API calls such as \- get recommendation by ID.
[**Remediation activity** methods and properties](get-remediation-methods-properties.md) | Run API call such as \- get all remediation tasks, get exposed devices remediation task and get one remediation task by id.
[**Score** methods and properties](score.md) | Run API calls such as \- get exposure score or get device secure score.
[**Software** methods and properties](software.md) | Run API calls such as \- list vulnerabilities by software.
[**User** methods and properties](user.md) | Run API calls such as \- get user-related alerts and user-related devices.
[**Vulnerability** methods and properties](vulnerability.md) | Run API calls such as \- list devices by vulnerability.

## See also

- [Microsoft Defender for Endpoint APIs](apis-intro.md)

- [Microsoft Defender for Endpoint API release notes](api-release-notes.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
