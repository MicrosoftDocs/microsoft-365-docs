---
title: Supported Microsoft Threat Protection APIs
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
search.appverid: 
- MOE150
- MET150
---

# Supported Microsoft Threat Protection APIs 
**Applies to:**
- Microsoft Threat Protection

## End Point URI and Versioning

### End Point URI: 

> The service base URI is: https://api.security.microsoft.com
> 
> The queries based OData have the '/api' prefix. For example, to get incidents you can send GET request to https://api.security.microsoft.com/api/incidents

### Versioning:

> The API supports versioning.
> 
> The current version is **V1.0**.
> 
> To use a specific version, use this format: https://api.security.microsoft.com/api/{Version}. For example: https://api.security.microsoft.com/api/v1.0/incidents
> 
> If you don't specify any version (e.g. https://api.security.microsoft.com/api/alerts ) you will get to the latest version.

Learn more about the individual supported entities where you can run API calls to and details such as HTTP request values, request headers and expected responses.

## In this section

Topic | Description
:---|:---
Advanced Hunting | Run queries from API.
List incidents | Run API calls to list incidents.
Update incidents | Run API calls to update incidents.
