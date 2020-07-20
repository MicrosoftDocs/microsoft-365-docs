---
title: Preview features in Microsoft Threat Protection
description:  Learn about new features in Microsoft 365 security
keywords: preview, new, m365 security, security, 365, capabilities
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

# Microsoft Threat Protection preview features

**Applies to:**
- Microsoft Threat Protection


The Microsoft Threat Protection service is constantly being updated to include new feature enhancements and capabilities.

Learn about new features in the Microsoft Threat Protection preview release and be among the first to try upcoming features by turning on the preview experience.

For more information on new capabilities that are generally available, see [What's new in Microsoft Threat Protection](whats-new.md).

## Turn on preview features
You'll have access to upcoming features which you can provide feedback on to help improve the overall experience before features are generally available.

Turn on the preview experience setting to be among the first to try upcoming features.

1. In the navigation pane, select **Settings**.

2. Select **Microsoft Threat Protection**.


3. Select **Preview features** > **Turn on preview features**. 

3. Select **Save**.

You'll know you have preview features turned on when you see that the **Turn on preview features** check box is selected. 

## Preview features
The following features and enhancements are currently available on preview:

- **[In-portal schema reference](advanced-hunting-schema-tables.md#get-schema-information-in-the-security-center)** — information about schema tables available directly in the security center. In addition to table and column descriptions, this reference provides information about supported event types (`ActionType` values) and sample queries.  

- **[Identity and app tables](advanced-hunting-schema-tables.md)** — get visibility into authentication events, Active Directory queries, and app-related activity with the [IdentityLogonEvents](advanced-hunting-identitylogonevents-table.md), [IdentityQueryEvents](advanced-hunting-identityqueryevents-table.md), and [AppFileEvents](advanced-hunting-appfileevents-table.md) tables in the advanced hunting schema.

- **[Go hunt](advanced-hunting-go-hunt.md)** — quickly pivot from investigating an incident to inspecting a specific event, a user, a device, or other entity types using query-based [advanced hunting](advanced-hunting-overview.md) capabilities.