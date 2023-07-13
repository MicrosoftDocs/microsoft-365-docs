---
title: Step 1. Plan for Microsoft 365 Defender operations readiness
description: The basics of planning for Microsoft 365 Defender operations readiness when integrating Microsoft 365 Defender into your security operations.
keywords: incidents, alerts, investigate, correlation, attack, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, secops, security operations, soc
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
  - zerotrust-solution
  - msftsolution-secops
  - tier2
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 07/15/2021
---

# Step 1. Plan for Microsoft 365 Defender operations readiness

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Whatever the current maturity of your security operations, it's important for you to align with your Security Operations Center (SOC). While there's no single model that fits every organization, there are certain aspects that are more common than others.

The following sections describe the core functions of the SOC.

## Provide situational awareness of modern threats

A SOC team prepares for and hunts new and incoming threats so that they can work with the organization to establish countermeasures and responses. Your SOC team should have personnel that are highly trained in modern attack methods and techniques and understand threat actors. Shared threat intelligence and frameworks like the [Cyber Kill Chain](https://www.microsoft.com/security/blog/2016/11/28/disrupting-the-kill-chain/) or [MITRE ATT&CK framework](https://attack.mitre.org/) can empower your staff of threat analysts and threat hunters.

## Provide first, second, and potentially third level responses to cyber incidents and events

The SOC is the frontline of defense to security events and incidents. When an event, threat, attack, policy violation, or audit finding triggers an alert or call to action, the SOC team makes an assessment to triage and contain it or escalate it for investigation. Therefore, the SOC first line responders must have broad technical knowledge of security events and indicators.

## Centralize monitoring and logging of your organization's security sources

Usually, the SOC team's core function is to make sure all security devices such as firewalls, intrusion prevention systems, data loss prevention systems, vulnerability management systems, and identity systems are functioning correctly and being monitored. The SOC teams work with the broader network operations such as identity, DevOps, cloud, application, data science, and other business teams to ensure the analysis of security information is centralized and secured. Additionally, the SOC team is responsible for maintaining logs of the data in useable and readable formats, which could include parsing and normalizing disparate formats.

## Establish Red, Blue, and Purple team operational readiness

Every SOC team should test its preparedness in responding to a cyber incident. Testing can be done via training exercises, such as table-tops and practice runs with various individuals in IT, security, and at the business level. Individual training exercise teams are created based on representative roles and are either playing the role of a defender (Blue Team), an attacker (Red Team), or as observers seeking to improve methods and techniques of both the Blue and Red teams through strengths and weakness that is uncovered during the exercise (Purple Team).

## Next step

[Step 2. Perform a SOC integration readiness assessment using the Zero Trust Framework](integrate-microsoft-365-defender-secops-readiness.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
