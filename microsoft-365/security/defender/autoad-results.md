---
title: Details and results of an automatic attack disruption action
description: View the results and key findings of automatic attack disruption in Microsoft 365 Defender
keywords: automated, attack, disruption, investigation, results, analyze, details
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
- NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
ms.date: 02/22/2023
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier2
ms.topic: conceptual
ms.custom: 
- autoir
- admindeeplinkDEFENDER
ms.reviewer: evaldm, isco
---

# Details and results of an automatic attack disruption action

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

With Microsoft 365 Defender, when an automatic attack disruption triggers, details about the risk and the containment status of compromised assets are available during and after the process. You can view these on the Incident page, which provides the full details of the attack and the up-to-date status of associated assets.

## Review the incident graph

Microsoft 365 Defender automatic attack disruption is built-in in the Incident view. Reviewing the incident graph enables you to get the entire attack story and assess the attack disruption impact and status.

Here are some examples of what it looks like:

- Disrupted incidents include a tag for 'Attack Disruption' and the specific threat type identified (i.e., ransomware). If you subscribe to incident email notifications, these tags also appear in the emails.
- A highlighted notification below the incident title indicating that the incident was disrupted.
- Suspended users and contained devices appear with a label indicating their status.

To release a user account or a device from containment, click on the contained asset and click **release from containment** for a device or **enable user** for a user account.

## Track the actions in the Action center

The Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) brings together [remediation](m365d-remediation-actions.md) and response actions across your devices, email & collaboration content, and identities. Actions listed include remediation actions that were taken automatically or manually. You can view automatic attack disruption actions in the Action center.

After you mitigate the risk and complete the investigation of an incident, you can release the contained assets from the action details pane (e.g., enable a disabled user account or release a device from containment). For more information about the action center, see [Action center](m365d-action-center.md).
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
