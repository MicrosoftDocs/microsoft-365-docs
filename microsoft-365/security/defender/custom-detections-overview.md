---
title: Overview of custom detections in Microsoft Defender XDR
description: Understand how you can use advanced hunting to create custom detections and generate alerts
keywords: advanced hunting, threat hunting, cyber threat hunting, Microsoft Defender XDR, microsoft 365, m365, search, query, telemetry, custom detections, schema, kusto
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: defender-xdr
ms.subservice: adv-hunting
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: maccruz
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: m
    - m365-security
    - tier2
ms.topic: conceptual
ms.date: 02/16/2021
---

# Custom detections overview

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft Defender XDR

With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured endpoints. This is made possible by customizable detection rules that automatically trigger alerts as well as response actions.

Custom detections work with [advanced hunting](advanced-hunting-overview.md), which provides a powerful, flexible query language that covers a broad set of event and system information from your network. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

Custom detections provide:
- Alerts for rule-based detections built from advanced hunting queries
- Automatic response actions

## See also
- [Create and manage custom detection rules](custom-detection-rules.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
- [Migrate advanced hunting queries from Microsoft Defender for Endpoint](advanced-hunting-migrate-from-mde.md)
- [Microsoft Graph security API for custom detections](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#custom-detections)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
