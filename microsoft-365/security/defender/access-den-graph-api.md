---
title: Accessing Defender Experts notifications using Graph API
ms.reviewer:
description: The method to access Defender Experts Notifications using Graph security API
ms.service: defender-experts
ms.subservice: dex-xdr
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - essentials-overview
ms.topic: conceptual
search.appverid: met150
ms.date: 04/18/2024
---

# Access Defender Experts Notifications using Graph security API

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

[Defender Experts Notifications](onboarding-defender-experts-for-hunting.md#receive-defender-experts-notifications) are incidents that have been generated from hunting conducted by Defender Experts in your environment. They contain information regarding the hunting investigation and recommended actions provided by Defender Experts. You can now access DENs using the [Microsoft Graph security API](/graph/api/resources/security-api-overview).

> [!NOTE]
> Any incident in the Microsoft Defender portal is a collection of correlated alerts. [Learn more](/graph/api/resources/security-incident)

The following Defender Experts Notification details are available in the Microsoft Defender portal:

- **Incident title** - starts with _Defender Experts_ to distinguish Defender Experts Notifications from other incidents
- **Executive summary** - provides an overview of the investigation summary
- **Recommendation summary** - lists the recommended actions from Defender Experts
- **Advanced hunting queries** - lists the converted KQL hunting queries used for the investigation

In Microsoft Graph security API, the following fields are also available:

- **Graph endpoint** -  <https://graph.microsoft.com/beta/security/incidents>
- The following **field names** that correspond to the details mentioned earlier:
  - displayName
  - description
  - recommendedActions
  - recommendedHuntingQueries
> [!NOTE]
> These fields will soon be available in Graph v1.o endpoint as well. For more details, see: [Microsoft Graph REST API v1.0](/graph/api/resources/security-incident.md)

Your approach to consuming Defender Experts Notifications from the API will vary depending on the downstream system you intend to use and your specific requirements. However, the following is a basic implementation to help you get started:

1. Get incidents from Graph security API
2. Check for new incidents where **displayName** starts with _Defender Experts_
3. Continue reading the remaining fields for such incidents
4. Synchronize the Defender Experts Notification information into your downstream tool (for example, ServiceNow).

### Next step

- [Collaborate with Experts on Demand](experts-on-demand.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
