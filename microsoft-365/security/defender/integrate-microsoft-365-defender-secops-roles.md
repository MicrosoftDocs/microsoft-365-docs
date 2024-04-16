---
title: Step 4. Define Microsoft Defender XDR roles, responsibilities, and oversight
description: The basics of defining roles, responsibilities, and oversight when integrating Microsoft Defender XDR into your security operations.
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

# Step 4. Define Microsoft Defender XDR roles, responsibilities, and oversight

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft Defender XDR

Your organization must establish ownership and accountability of the Microsoft Defender XDR licenses, configurations, and administration as initial tasks before any operational roles can be defined. Typically, the ownership of the licenses, subscription costs, and administration of Microsoft 365 and Enterprise Security + Mobility (EMS) services (which may include Microsoft Defender XDR) fall outside the Security Operations Center (SOC) teams. SOC teams should work with those individuals to ensure proper oversight of Microsoft Defender XDR. 

Many modern SOCs assign its team members to categories based on their skillsets and functions. For example:

- A threat intelligence team assigned to tasks related to lifecycle management of threat and analytics functions.
- A monitoring team comprised of SOC analysts responsible for maintaining logs, alerts, events, and monitoring functions.
- An engineering & operations team assigned to engineer and optimize security devices.

SOC team roles and responsibilities for Microsoft Defender XDR would naturally integrate into these teams.

The following table breaks out each SOC team's roles and responsibilities and how their roles integrate with Microsoft Defender XDR.

| SOC team | Roles and responsibilities | Microsoft Defender XDR tasks  |
|:-------|:-----|:-------|
| SOC Oversight | <ul><li>Performs SOC governance</li><li>Establishes daily, weekly, monthly processes</li><li>Provides training and awareness</li><li>Hires staff, participates in peer groups and meetings</li><li>Conducts Blue, Red, Purple team exercises</ul>  | <ul><li>Microsoft Defender portal access controls</li><li>Maintains feature/URL and licensing update register</li><li>Maintains communication with IT, legal, compliance, and privacy stakeholders</li><li>Participates in change control meetings for new Microsoft 365 or Microsoft Azure initiatives</ul> |
| Threat Intelligence & Analytics  | <ul><li>Threat intel feed management</li><li>Virus and malware attribution</li><li>Threat modeling & threat event categorizations</li><li>Insider threat Attribute development </li><li>Threat Intel Integration with Risk Management program</li><li>Integrates data insights with data science, BI, and analytics across HR, legal, IT, and security teams<ul> | <ul><li>Maintains Microsoft Defender for Identity threat modeling</li><li>Maintains Microsoft Defender for Office 365 threat modeling</li><li>Maintains Microsoft Defender for Endpoint threat modeling</ul> |
| Monitoring | <ul><li>Tier 1, 2, 3 analysts</li><li>Log source maintenance and engineering</li><li>Data source ingestion </li><li>SIEM parsing, alerting, correlation, optimization</li><li>Event and alert generation</li><li>Event and alert analysis</li><li>Event and alert reporting</li><li>Ticketing system maintenance</ul> | Uses: <ul><li>Security & Compliance Center</li><li>Microsoft Defender portal</ul> |
| Engineering & SecOps | <ul><li>Vulnerability management for apps, systems, and endpoints</li><li>XDR/SOAR automation</li><li>Compliance testing</li><li>Phishing and DLP engineering</li><li>Engineering</li><li>Coordinates change control</li><li>Coordinates runbook updates</li><li>Penetration testing<ul> | <ul><li>Microsoft Defender for Cloud Apps</li><li>Defender for Endpoint</li><li>Defender for Identity</ul> |
| Computer Security Incident Response Team (CSIRT) | <ul><li>Investigates and responds to cyber incidents</li><li>Performs forensics</li><li>**May often be isolated from SOC**</ul> | Collaborate and maintain Microsoft Defender XDR incident response  playbooks |
||||


## Next step

[Step 5. Develop and test use cases](integrate-microsoft-365-defender-secops-use-cases.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
