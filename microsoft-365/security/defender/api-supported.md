---
title: Supported Microsoft 365 Defender APIs
description: Supported Microsoft 365 Defender APIs
keywords: Microsoft 365 Defender, APIs, api
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Supported Microsoft 365 Defender APIs 

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

## List of available APIs

Article | Description
-|-
[Advanced Hunting API](api-advanced-hunting.md) | Run Advanced Hunting queries.
[Incident APIs](api-incident.md) | List and update incidents, along with other practical tasks.

### Endpoint URIs

The base URI for both of the main APIs is: https://api.security.microsoft.com. For better performance, use a server closer to your geolocation:

- The United States: api-us.security.microsoft.com
- Europe: api-eu.security.microsoft.com
- The United Kingdom: api-uk.security.microsoft.com

Tokens can be acquired by accessing https://api.security.microsoft.com.

All APIs along the `/api` path use the [OData](/odata/overview) Protocol; for example, https://api.security.microsoft.com/api/incidents.

## Related articles

- [Microsoft 365 Defender APIs overview](api-overview.md)
- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Learn about API limits and licensing](api-terms.md)
- [Understand error codes](api-error-codes.md)