---
title: Supported Microsoft Defender for Endpoint APIs
ms.reviewer: 
description: Learn about the specific supported Microsoft Defender for Endpoint entities where you can create API calls to.
keywords: apis, supported apis, actor, alerts, device, user, domain, ip, file, advanced queries, advanced hunting
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Supported Microsoft Defender for Endpoint APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

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
> If you don't specify any version (e.g. `https://api.securitycenter.microsoft.com/api/alerts` ) you will get to the latest version.

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

Learn more about the individual supported entities where you can run API calls to and details such as HTTP request values, request headers and expected responses.

## In this section

Topic | Description
:---|:---
[Advanced Hunting](run-advanced-query-api.md) | Run queries from API.
[Alert methods and properties](alerts.md) | Run API calls such as \- get alerts, create alert, update alert and more.
[Automated Investigation methods and properties](investigation.md) | Run API calls such as \- get collection of Investigation.
[Get domain related alerts](get-domain-related-alerts.md) | Run API calls such as \- get domain-related devices, domain statistics and more.
[File methods and properties](files.md) | Run API calls such as \- get file information, file related alerts, file related devices, and file statistics.
[Indicators methods and properties](ti-indicator.md) | Run API call such as \- get Indicators, create Indicator, and delete Indicators.
[Get IP related alerts](get-ip-related-alerts.md) | Run API calls such as \- get IP-related alerts and get IP statistics.
[Machine methods and properties](machine.md) | Run API calls such as \- get devices, get devices by ID, information about logged on users, edit tags and more.
[Machine Action methods and properties](machineaction.md) | Run API call such as \- Isolation, Run anti-virus scan and more.
[Recommendation methods and properties](recommendation.md) | Run API calls such as \- get recommendation by ID.
[Remediation activity methods and properties](get-remediation-methods-properties.md) | Run API call such as \- get all remediation tasks, get exposed devices remediation task and get one remediation task by id.
[Score methods and properties](score.md) | Run API calls such as \- get exposure score or get device secure score.
[Software methods and properties](software.md) | Run API calls such as \- list vulnerabilities by software.
[User methods](user.md) | Run API calls such as \- get user-related alerts and user-related devices.
[Vulnerability methods and properties](vulnerability.md) | Run API calls such as \- list devices by vulnerability.

## See also

- [Microsoft Defender for Endpoint APIs](apis-intro.md)

- [Microsoft Defender for Endpoint API release notes](api-release-notes.md)
