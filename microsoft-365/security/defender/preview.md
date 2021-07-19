---
title: Preview features in Microsoft 365 Defender
description: Learn about new features in Microsoft 365 security
keywords: preview, new, m365 security, security, 365, capabilities
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

# Microsoft 365 Defender preview features

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

The Microsoft 365 Defender service is constantly being updated to include new feature enhancements and capabilities.

Learn about new features in the Microsoft 365 Defender preview release and be among the first to try upcoming features by turning on the preview experience.

For more information on new capabilities that are generally available, see [What's new in Microsoft 365 Defender](whats-new.md).

 ## What you need to know

When working with features in public preview, these features:

- May have restricted or limited functionality. For example, the feature may only apply to one platform.
- Typically go through feature changes before they're generally available (GA).
- Are fully supported by Microsoft.
- May only be available in selected geographic regions or cloud environments. For example, the feature may not exist in the government cloud.
- Individual features in preview may have more usage and support restrictions. If so, this information is typically noted in the feature documentation.
- The preview versions are provided with a standard support level, and can be used for production environments. 



## Required permissions

Accounts assigned the following Azure Active Directory (Azure AD) roles can turn on Microsoft 365 Defender Preview features:

- Global administrator
- Security administrator
- Security Operator

## Turn on preview features

You'll have access to upcoming features that you can provide feedback on to help improve the overall experience before features are generally available.

Turn on the preview experience setting to be among the first to try upcoming features.

1. In the navigation pane, select **Settings**.
2. Select **Microsoft 365 Defender**.
3. Select **Preview features** > **Turn on preview features**. 
4. Select **Save**.

You'll know you have preview features turned on when you see that the **Turn on preview features** check box is selected. 

## Preview features

The following features and enhancements are currently available on preview:

- **[View reports per threat tags](threat-analytics.md#view-reports-per-threat-tags)** - Threat tags help you focus on specific threat categories and review the most relevant reports.
- **[Streaming API](../defender-endpoint/raw-data-export.md)** - Microsoft 365 Defender supports streaming all the events available through Advanced Hunting to an Event Hubs and/or Azure storage account.
- **[Microsoft 365 Defender APIs](api-overview.md)** - The top-level Microsoft 365 Defender APIs will enable you to automate workflows based on the shared incident and advanced hunting tables. 
- **[Take action in advanced hunting](advanced-hunting-take-action.md)** - Quickly contain threats or address compromised assets that you find in [advanced hunting](advanced-hunting-overview.md).
- **[In-portal schema reference](advanced-hunting-schema-tables.md#get-schema-information-in-the-security-center)** - Get information about advanced hunting schema tables directly in the security center. In addition to table and column descriptions, this reference includes supported event types (`ActionType` values) and sample queries.
- **[DeviceFromIP() function](advanced-hunting-devicefromip-function.md)** - Get information about which devices have been assigned a specific IP address or addresses at a given time range.
