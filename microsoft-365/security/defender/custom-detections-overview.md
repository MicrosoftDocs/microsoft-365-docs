---
title: Overview of custom detections in Microsoft 365 Defender
description: Understand how you can use advanced hunting to create custom detections and generate alerts
keywords: advanced hunting, threat hunting, cyber threat hunting, microsoft threat protection, microsoft 365, mtp, m365, search, query, telemetry, custom detections, schema, kusto, microsoft 365, Microsoft Threat Protection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: lomayor
author: lomayor
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: m365d
---

# Custom detections overview

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured endpoints. This is made possible by customizable detection rules that automatically trigger alerts as well as response actions.

Custom detections work with [advanced hunting](advanced-hunting-overview.md), which provides a powerful, flexible query language that covers a broad set of event and system information from your network. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

Custom detections provide:
- Alerts for rule-based detections built from advanced hunting queries
- Automatic response actions

## See also
- [Create and manage custom detection rules](custom-detection-rules.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Migrate advanced hunting queries from Microsoft Defender for Endpoint](advanced-hunting-migrate-from-mdatp.md)
