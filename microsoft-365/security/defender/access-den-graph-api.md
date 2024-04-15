---
title: Accessing Defender Experts notifications via Graph API
ms.reviewer:
description: The method to access Defender Experts Notifications via Graph security API
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
ms.date: 04/15/2024
---

# Access Defender Experts Notifications using Graph API

**Applies to:**

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

Defender Experts Notifications (DENs) are incidents in Microsoft Defender portal that have been generated from hunting conducted by Defender Experts in your tenant.

> [!NOTE]
> Any incident in the Microsoft Defender portal is a collection of correlated alerts. [Learn more](/graph/api/resources/security-incident.md)

DENs contain information provided by Defender Experts regarding the hunting investigation and recommended actions in the following fields. The below fields are available in Microsoft Defender portal. [Learn more](/../../onboarding-defender-experts-for-hunting#receive-defender-experts-notifications) about that experience here.

- **Incident Title**- starts with _Defender Experts_ to identify which incidents are DENs
- **Executive Summary**- lists investigation summary
- **Recommendation Summary**- list recommended actions
- **AHQs**- lists converted KQL queries that were used in hunting

The following fields are also available in Graph Security API.

- **Graph endpoint** -  https://graph.microsoft.com/beta/security/incidents 
- **Fields names** - corresponding to above mentioned fields

1. displayName
2. description
3. recommendedActions
4. recommendedHuntingQuries

Your approach to consuming DENs from the API will vary depending on the downstream system you intend to use and your specific requirements. However, below is a basic implementation to help you get started.

- Get incidents from Graph Security API
- Check for new incidents where displayName starts with _Defender Experts_ to identify DENs
- Read the rest of the fields for such incidents
- Sync the DEN information into your downstream tool (such as ServiceNow, etc.)
