---
title: Incidents overview in Microsoft 365 Defender
description: Investigate incidents seen across devices, users, and mailboxes.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
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
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---

# Incidents overview in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender

> Want to experience Microsoft 365 Defender? You can [evaluate it in a lab environment](https://aka.ms/mtp-trial-lab) or [run your pilot project in production](https://aka.ms/m365d-pilotplaybook).
>


Incidents are based on related alerts. Alerts are created when a malicious event or activity is seen on your network. Individual alerts provide valuable clues about an on-going attack. However, attacks typically employ various vectors and techniques to carry out a breach. Piecing individual clues together can be challenging and time-consuming.

This short video gives an overview of incidents in Microsoft 365 Defender.
<br>

>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4Bzwz?]

An incident is a collection of correlated alerts that make up the story of an attack. Malicious and suspicious events that are found in different device, user, and mailbox entities in the network are automatically aggregated by Microsoft 365 Defender. Grouping related alerts into an incident gives security defenders a comprehensive view of an attack. 

For instance, security defenders can see where the attack started, what tactics were used, and how far the attack has gone into the network. They can also see the scope of the attack, like how many devices, users, and mailboxes were impacted, how severe the impact was, and other details about affected entities.

If enabled, Microsoft 365 Defender can automatically investigate and resolve the individual alerts through automation and artificial intelligence. Security defenders can also perform additional remediation steps to resolve the attack straight from the incidents view. 

Incidents from the last 30 days are shown in the incident queue. From here, security defenders can see which incidents should be prioritized based on risk level and other factors. 

Security defenders can also rename incidents, assign them to individual analysts, classify, and add tags to incidents for a better and more customized incident management experience.



## See also
- [Prioritize incidents](incident-queue.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
