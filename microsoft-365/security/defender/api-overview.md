---
title: Overview of Microsoft 365 Defender APIs
description: Learn about the available APIs in Microsoft 365 Defender
keywords: api, apis, overview, incident, incidents, threat hunting, microsoft 365 defender
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

# Overview of  Microsoft 365 Defender APIs

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Microsoft 365 Defender is built on top of an integration-ready platform.

Use the Microsoft 365 Defender APIs to automate workflows based on the shared incident and advanced hunting tables.

- **[Combined incidents queue](api-incident.md)** - Focus on what's critical by grouping the full attack scope and all impacted assets together under the incident API.

- **[Cross-product threat hunting](api-advanced-hunting.md)** - Leverage your security team's organizational knowledge to hunt for signs of compromise, by creating your own custom queries to sift over raw data collected across multiple protection products.

Use the [Streaming API](../defender-endpoint/raw-data-export.md) to ship real-time events and alerts from instances as they occur within a single data stream.


Along with these Microsoft 365 Defender-specific APIs, each of our other security products expose [additional APIs](api-articles.md) to help you take advantage of their unique capabilities.


> [!NOTE]
> The transition to the unified portal should not affect the PowerBi dashboards based on Microsoft Defender for Endpoint APIs. You can continue to work with the existing APIs regardless of the interactive portal transition.


## Learn more

| **Understand how to access the APIs** |
|-|
| [Learn about API quotas and licensing](api-terms.md) |
| [Access the Microsoft 365 Defender APIs](api-access.md) |
| **Build apps** |
| [Create a 'Hello world' app](api-hello-world.md) |
| [Create an app to access Microsoft 365 Defender APIs on behalf of a user](api-create-app-user-context.md) |
| [Create an app to access Microsoft 365 Defender without a user](api-create-app-web.md) |
| [Create an app with multi-tenant partner access to Microsoft 365 Defender APIs](api-partner-access.md) |
| **Troubleshoot and maintain your apps** |
| [Understand API error codes](api-error-codes.md) |
| [Manage secrets in your apps with Azure Key Vault](/learn/modules/manage-secrets-with-azure-key-vault/) |
| [Implement OAuth 2.0 authorization for user sign in](/azure/active-directory/develop/active-directory-v2-protocols-oauth-code) |