---
title: Microsoft 365 Defender integration with Microsoft Sentinel
description: Use Microsoft Sentinel as the SIEM for Microsoft 365 Defender incident and events.
keywords: incidents, alerts, investigate, analyze, response, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier3
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 02/22/2023
---

# Microsoft 365 Defender integration with Microsoft Sentinel

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

The Microsoft 365 Defender connector for Microsoft Sentinel sends all Microsoft 365 Defender incidents and alerts information to Microsoft Sentinel and keeps the incidents synchronized. 

Once you add the connector, Microsoft 365 Defender incidents&mdash;which include all associated alerts, entities, and relevant information received from Microsoft Defender for Endpoint, Microsoft Defender for Identity, Microsoft Defender for Office 365, and Microsoft Defender for Cloud Apps&mdash;are streamed to Microsoft Sentinel as security information and event management (SIEM) data, providing you with context to perform triage and incident response with Microsoft Sentinel. 

Once in Microsoft Sentinel, incidents remain bi-directionally synchronized with Microsoft 365 Defender, allowing you to take advantage of the benefits of both the Microsoft 365 Defender portal and Microsoft Sentinel in the Azure portal for incident investigation and response.

Watch this short overview of Microsoft Sentinel integration with Microsoft 365 Defender (4 minutes).

<br>

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWFIRo]


Here's how it works.

:::image type="content" source="../../media/microsoft-365-defender-integration-with-azure-sentinel/microsoft-365-defender-integration-with-azure-sentinel.png" alt-text="The flow and sharing of incident data for the Microsoft 365 Defender and Microsoft Sentinel portals" lightbox="../../media/microsoft-365-defender-integration-with-azure-sentinel/microsoft-365-defender-integration-with-azure-sentinel.png":::

## Next steps

1. Get a deeper understanding of [Microsoft 365 Defender integration with Microsoft Sentinel](/azure/sentinel/microsoft-365-defender-sentinel-integration).
2. [Connect data from Microsoft 365 Defender to Microsoft Sentinel](/azure/sentinel/connect-microsoft-365-defender).

## See also

- [Overview of incidents in Microsoft 365 Defender](incidents-overview.md)
- [Investigate incidents with Microsoft Sentinel](/azure/sentinel/tutorial-investigate-cases)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
