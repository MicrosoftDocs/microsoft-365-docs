---
title: Overview of Microsoft 365 Defender APIs
description: Learn about the available APIs in Microsoft 365 Defender
keywords: api, apis, overview, incident, incidents, threat hunting
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

# Overview of Microsoft 365 Defender APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Microsoft 365 Defender is built on top of an integration-ready platform.

Use the Microsoft 365 Defender APIs to automate workflows based on the shared incident and advanced hunting tables.

- **[Combined incidents queue](api-incident.md)** - Focus on what's critical by ensuring that the full attack scope and all impacted assets are grouped together under the incident API.

- **[Cross-product threat hunting](api-advanced-hunting.md)** - Leverage your security team's organizational knowledge to hunt for signs of compromise, by creating your own custom queries to sift over raw data collected across multiple protection products.

In addition to these APIs which are specific to Microsoft 365 Defender, each of our other security products expose [additional APIs](api-articles.md) to help you take advantage of their unique capabilities.

## Related articles

- [Supported Microsoft 365 Defender APIs](api-supported.md)
- [Access the Microsoft 365 Defender APIs](api-access.md)
- [Learn about API limits and licensing](api-terms.md)
- [Create a 'Hello world' application](api-hello-world.md)
- [Understand error codes](api-error-codes.md)
