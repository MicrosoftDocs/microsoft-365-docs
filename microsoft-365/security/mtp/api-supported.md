---
title: Supported Microsoft 365 Defender APIs
description: Supported Microsoft 365 Defender APIs
keywords: MTP, APIs, api
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

# Supported Microsoft 365 Defender APIs 

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

>[!IMPORTANT] 
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


### End Point URIs:

- The service base URI is: https://api.security.microsoft.com <br>

>[!NOTE]
>For better performance, you can use server closer to your Geo location:
> - api-us.security.microsoft.com
> - api-eu.security.microsoft.com
> - api-uk.security.microsoft.com

 - The resource for token acquisition should be: https://api.security.microsoft.com

 - All the APIs under ```/api``` path are OData APIs. e.g. ```https://api.security.microsoft.com/api/incidents```

## List of available APIs:

Topic | Description
:---|:---
[Advanced Hunting API](api-advanced-hunting.md) | Run Advanced Hunting queries from API.
[Incident APIs](api-incident.md) | Run incident related API calls such as: list incidents, update incident and more.
