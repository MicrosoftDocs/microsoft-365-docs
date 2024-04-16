---
title: Step 6. Identify SOC maintenance tasks
description: Identify SOC maintenance tasks when integrating Microsoft Defender XDR into your security operations.
ms.service: defender-xdr
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - zerotrust-solution
  - msftsolution-secops
  - tier2
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 07/15/2021
---

# Step 6. Identify SOC maintenance tasks

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Defender XDR

Here are the periodic or as-needed tasks to maintain your SOC for Microsoft Defender XDR.

|Activity|Description|Cadence|Team assigned|
|---|---|---|---|
|Service administration collaboration with SOC Teams|Administration of peripheral services such as asset tracking (CMDB), application licensing (new SaaS licenses), device purchases (upgrades or renew device deployments),  and other Microsoft 365 tenant-wide changes (Intune, Microsoft 365, and others) that may affect deployment of Microsoft Defender XDR products.|Weekly and as needed|Engineering & SecOps|
|Update anti-phishing and data loss prevention campaigns|Incorporate SOC use case and lessons learned with extended organization (HR, legal, training, and others).|Monthly and as needed|SOC Oversight|
|Deploy automation scripts and services where appropriate|Download and test automation scripts and configuration files from approved Microsoft sites to improve Microsoft Defender XDR operations.|Weekly and as needed|Engineering and SecOps|
|Portal or license management|Check announcements and the Microsoft Messaging Center for Microsoft Defender portal or licensing needs based on Microsoft updates and new features.|Weekly|SOC Oversight|
|Update SOC escalation tickets|All SOC teams update escalation tickets (such as Sentinel, ServiceNow tickets) assigned to them.|Daily|All SOC teams|
|Track Microsoft Defender Vulnerability Management (MDVM) remediation activity|Generate MDVM Secure Score remediation activity and report to asset owners through an intranet portal.|Daily|Monitoring|
|Generate Secure Score report|Monitoring team tracks and reports Secure Score improvements.|Weekly SOC|Monitoring|
|Run IR tabletop exercise|Test SOC team playbooks in tabletop exercise.|As needed|All SOC teams|

Integrate these tasks into your current SOC processes.

## Next steps

You should review the guides referred to in this content and in the [Microsoft Defender XDR library](/microsoft-365/security/defender) to determine how your own implementation of Microsoft Defender XDR should be structured and integrated.
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
