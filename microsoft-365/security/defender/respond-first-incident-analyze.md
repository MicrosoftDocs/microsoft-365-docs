---
title: Analyze your first incident in Microsoft 365 Defender
description: Investigation essentials in analysis of your first incident in Microsoft 365 Defender.
keywords: incidents, alerts, attack story, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack
search.product: eADQiWindows 10XVcnh
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
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-firstincident
  - highpri
  - tier1
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 08/04/2023
---

# Analyzing your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Today’s threats on data security - [business email compromise (BEC)](https://www.microsoft.com/en-us/security/business/security-101/what-is-business-email-compromise-bec), malware like backdoors and [ransomware](/security/ransomware), organizational breaches, and [nation-state attacks](https://www.microsoft.com/en-us/security/business/security-insider/) – require quick, intelligent, and decisive action from incident responders. Tools like [Microsoft 365 Defender](microsoft-365-defender.md) allow response teams to detect, triage, and investigate incidents through its single-pane-of-glass experience and find the information needed to make these timely decisions. 

Understanding the context that surrounds incidents is essential in analyzing attacks. Often an incident is a chain of processes created, commands, and actions that might not have coincided. Combining your expertise and experience with Microsoft 365 Defender’s features and capabilities ensures faster resolution of incidents and your organization’s safety from further attacks.

## Investigation tasks simplified

Investigations usually involve responders viewing several apps while simultaneously checking various threat intelligence sources. Sometimes investigations are extended to hunting down other threats. Documenting facts and solutions in an attack investigation is an additional important task that provides history and context for other investigators’ use or for later investigations. These investigation tasks are simplified when using Microsoft 365 Defender through the following:

- **Pivoting** – gathering information from several information-rich pages of an attack’s components (file, URL, mailbox, a user account, or device) is made easy through several views showing relationships and timeline of activities. Incident responders can drill down using timeline views of related alerts and events or across related attack components. Moreover, pivoting through important data sourced from various security services is easy as Microsoft 365 Defender aggregates all the data.

- **Hunting** – finding known and possible threats through the portal using Kusto queries. Incident responders can hunt for threats with or without guidance within the portal.

- **Insight** – where applicable, previously detected events along with the actions done to these events are available to incident responders, adding context to present investigations. Moreover, incidents and alerts are enriched by Microsoft’s threat intelligence information and from sources like the MITRE ATT&CK® framework and VirusTotal.

- **Collaboration** – security operations teams can view each team members’ decisions and actions on past and present incidents and alerts through portal features like comments, tagging, flagging, and assignment. Further collaboration with Microsoft’s managed detection and response service through Microsoft Defender Experts for XDR is also available when an organization requires an augmented response.

## Getting an attack overview

Incident responders try to answer what happened through an investigation. The attack story on the Incident page provides full context of what happened in an attack, identifies all related alerts and events to the attack, and provides an overview of the automated remediation actions taken by Microsoft 365 Defender to mitigate the attack.

From the attack story, you can dive deeper into the details of an attack by exploring the tabs available on the incident page. You can quickly remediate common attacks like phishing, password spray, and malicious app compromise through incident response playbooks accessible within the portal. These playbooks contain detection, response, and mitigation guidance that support incident investigations.

More investigation capabilities to further analyze an attack are available in the following walkthrough:

> [!VIDEO https://youtu.be/PW_4PWul5MY]

## Investigating threats

Complex threats like adversary-in-the-middle attacks and ransomware often require manual investigation. An incident responder tackling these complicated attacks looks for the following crucial information:

- Presence of malware or suspicious use of tools and apps
- Clues about any communication channels or entry points used by any malicious or suspicious entity
- Clues pointing to possible identity compromise
- Identifying what the impact is on the organization’s data and security posture

The following Microsoft 365 Defender features aid incident response teams in investigating these complex attacks:

### Malware analysis

Responders can further investigate a malicious file related to an incident or alert by accessing the incident graph, an alert process tree, an artifact timeline, or through a device timeline. Microsoft 365 Defender can show file information, including hash, other file details, metadata, and what the file can do based on MITRE ATT&CK techniques. This removes the need to run files in a black box test or static analyses. Additional context about files and tools is also present in the portal through prevalence data.

The following resources provide details on how to use the portal’s capabilities in investigating files and tools:

- Video: Investigating malware in Microsoft 365 Defender
- Tutorial: Investigate files from a Defender for Endpoint alert

Ransomware continues to be a significant threat to organizations. Microsoft has the following resources to help you investigate and respond to ransomware attacks:

- Video: Investigating ransomware attacks in Microsoft 365 Defender
- Guides: From detection to protection: Microsoft's guide to combating ransomware attacks
- Tutorial: Ransomware investigation playbook

### Risky apps analysis and cloud-based threats prevention

Malicious actors can exploit cloud-based apps. Apps can inadvertently leak sensitive information through abuse or misuse. Incident responders investigating and protecting apps in cloud environments can use the following resources where Defender for Cloud Apps is deployed in their organizations:

- Video: Protecting cloud apps and related files through Defender for Cloud Apps
- Tutorial: Investigate malicious and compromised apps
- Tutorial: Investigate risky OAuth apps
- Tutorial: Protect cloud apps
- Tutorial: Protect apps in real time

### Breach analysis

Nation-state attacks, attacks against critical infrastructure, and organizational breaches often require an attacker to establish communication points once they are in a network. Incident responders look for clues by identifying suspicious traffic or exchanges between a source and a destination. Microsoft has the following guides for investigating communication components:

- Tutorial: Investigate domains and URLs
- Tutorial: Investigate an IP address
- Tutorial: Investigate connection events that occur behind forward proxies
- Tutorial: Investigate suspicious user and device activities through Defender for Identity
- Tutorial: Identify and investigate lateral movement paths
- Tutorial: Investigate devices in the Defender for Endpoint devices list

Attackers often use vulnerabilities to gain access to an organization. Some ransomware attacks initially take advantage of unpatched vulnerabilities like the Log4Shell vulnerability. The following resources help incident responders identify vulnerabilities and vulnerable devices in their organization through the Defender for Vulnerability Management service:

- Video: Threat and vulnerability management via Defender Vulnerability Management 
- Tutorial: Identify vulnerabilities in your organization
- Tutorial: Hunt for exposed devices
- Tutorial: Assess your organization’s risk through the Exposure score

Breaches also happen through various devices like phones and tablets that connect to your organization’s network. Incident responders can further investigate these devices within the portal. The following video talks about the top threats from mobile devices and how you can investigate these:

- Video: Mobile threat defense in Microsoft 365 Defender

### Email-based attacks analysis

Identifying and tracking modified, created, or stolen identities are essential to investigating phishing and BEC attacks. Use the following resources when investigating these attacks:

- Video: Investigating BEC and AiTM phishing in Microsoft 365 Defender
- Video: Defending against spearphishing and phishing using Defender for Office 365
- Tutorial: Investigate malicious email
- Tutorial: Investigate users
- Tutorial: Investigate a user account
- Blog: Total Identity Compromise: Microsoft Incident Response lessons on securing Active Directory
Identity compromise can also be investigated using Defender for Identity signals. The following video discusses an identity compromise and what incident responders can do to contain an attack:
- Video: Investigating identity threats using Defender for Identity 

## Enriching the investigation experience

Most incident response teams are tasked to track the threat landscape to keep attacks that can potentially incur damage to the organization at bay. Microsoft 365 Defender delivers critical information about emerging threats through Threat analytics.

The latest security research and changes from Microsoft security research teams can be accessed from:

- Latest threat intelligence stories from Microsoft
- Threat actors Microsoft tracks

Moreover, organizations can extend security operations teams’ capabilities when the need arises through the following Microsoft offerings:
- Extended incident response with Defender Experts for XDR
- Threat hunting with Defender Experts for Hunting

## Next step

Learn how to [remediate incidents](first-incident-remediate.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
