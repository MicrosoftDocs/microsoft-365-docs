---
title: Analyze your first incident in Microsoft 365 Defender
description: Investigation essentials in analysis of your first incident in Microsoft 365 Defender.
keywords: incidents, alerts, attack story, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, incident analysis, threat analysis, threat investigation, incident investigation
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
ms.date: 08/18/2023
---

# Analyze your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Understanding the context that surrounds [incidents](incidents-overview.md) is essential in analyzing attacks.  Combining your expertise and experience with Microsoft 365 Defender's features and capabilities ensure faster resolution of incidents and your organization’s safety from further attacks.

Today's threats on data security - [business email compromise (BEC)](https://www.microsoft.com/en-us/security/business/security-101/what-is-business-email-compromise-bec), malware like backdoors and [ransomware](/security/ransomware), organizational breaches, and [nation-state attacks](https://www.microsoft.com/en-us/security/business/security-insider/) – require quick, intelligent, and decisive action from incident responders. Tools like [Microsoft 365 Defender](microsoft-365-defender.md) allow response teams to detect, triage, and investigate incidents through its single-pane-of-glass experience and find the information needed to make these timely decisions.

## Investigation tasks

Investigations usually involve responders viewing several apps while simultaneously checking various threat intelligence sources. Sometimes investigations are extended to hunting down other threats. Documenting facts and solutions in an attack investigation is an additional important task that provides history and context for other investigators’ use or for later investigations. These investigation tasks are simplified when using Microsoft 365 Defender through the following:

- **Pivoting** – gathering information from several information-rich pages of an attack’s components (file, URL, mailbox, a user account, or device) is made easy through several views showing relationships and timeline of activities. Incident responders can drill down using timeline views of related alerts and events or across related attack components. Moreover, Microsoft 365 Defender aggregates all important attack data from various security services to aid in pivoting.

- [**Hunting**](advanced-hunting-overview.md) – finding known and possible threats through the portal using Kusto queries. Incident responders can [hunt for threats with or without guidance](advanced-hunting-modes.md) within the portal.

- **Insight** – where applicable, previously detected events along with the actions done to these events are available to incident responders, adding context to present investigations. Moreover, incidents and alerts are enriched by Microsoft’s threat intelligence information and from sources like the [MITRE ATT&CK®](https://attack.mitre.org/) framework and [VirusTotal](https://www.virustotal.com/gui/home/upload).

- **Collaboration** – security operations teams can view each team members’ decisions and actions on past and present incidents and alerts through portal features like comments, tagging, flagging, and assignment. Further collaboration with Microsoft’s managed detection and response service through [Microsoft Defender Experts for XDR](dex-xdr-overview.md) is also available when an organization requires an augmented response.

## Attack overview

Incident responders try to answer what happened through an investigation. The [attack story](investigate-incidents.md#attack-story) on an incident page provides full context of what happened in an attack, identifies all related alerts and events to the attack, and provides an overview of the automated remediation actions taken by Microsoft 365 Defender to mitigate the attack.

From the attack story, you can dive deeper into the details of an attack by exploring the tabs available on the [incident page](investigate-incidents.md). You can quickly remediate common attacks like phishing, password spray, and malicious app compromise through [incident response playbooks](/security/operations/incident-response-playbooks) accessible within the portal. These playbooks contain detection, response, and mitigation guidance that support incident investigations.

More investigation capabilities to further analyze an attack are available in the following walkthrough:

> [!VIDEO https://youtu.be/PW_4PWul5MY]

## Investigating threats

Complex threats like [adversary-in-the-middle attacks](https://www.microsoft.com/en-us/security/blog/2023/03/13/dev-1101-enables-high-volume-aitm-campaigns-with-open-source-phishing-kit/) and ransomware often require manual investigation. An incident responder tackling these complicated attacks looks for the following crucial information:

- Presence of malware or suspicious use of tools and apps
- Clues about any communication channels or entry points used by any malicious or suspicious entity
- Clues pointing to possible identity compromise
- Identifying what the impact is on the organization’s data and security posture

The following Microsoft 365 Defender features aid incident response teams in investigating these complex attacks:

### Malware analysis

Responders can further investigate a malicious file related to an incident or alert by accessing the incident graph, an alert process tree, an artifact timeline, or through a device timeline. Microsoft 365 Defender can show file information, including hash, other file details, metadata, and what the file can do based on MITRE ATT&CK techniques. This removes the need to run files in a black box test or static analyses. Additional context about files and tools is also present in the portal through prevalence data.

The following resources provide details on how to use the portal’s capabilities in investigating files and tools:

- **Tutorial**: [Investigate files](/microsoft-365/security/defender-endpoint/investigate-files)
- **Video**: Investigating malware in Microsoft 365 Defender
> [!VIDEO https://youtu.be/TTqFlnlwch0]

Ransomware continues to be a significant threat to organizations. Microsoft has the following resources to help you investigate and respond to ransomware attacks:

- **Guides**: [From detection to protection: Microsoft's guide to combating ransomware attacks](/security/ransowmare)
- **Tutorial**: [Ransomware investigation playbook](/security/operations/incident-response-playbook-dart-ransomware-approach)
- **Video**: Investigating ransomware attacks in Microsoft 365 Defender
> [!VIDEO https://www.youtube.com/watch?v=eLCrGe4-Zzc]

### Risky apps analysis and cloud-based threats prevention

Malicious actors can exploit cloud-based apps. Apps can inadvertently leak sensitive information through abuse or misuse. Incident responders investigating and protecting apps in cloud environments can use the following resources where Defender for Cloud Apps is deployed in their organizations:

- **Tutorial**: [Investigate malicious and compromised apps](/security/operations/incident-response-playbook-compromised-malicious-app)
- **Tutorial**: [Investigate risky OAuth apps](/defender-cloud-apps/investigate-risky-oauth)
- **Tutorial**: [Protect cloud apps](/defender-cloud-apps/tutorial-ueba#phase-1-connect-to-the-apps-you-want-to-protect)
- **Tutorial**: Protect apps in real time

To protect your cloud apps in real time, you can use the following resource:
- **Video**: Protecting cloud apps and related files through Defender for Cloud Apps
> [!VIDEO https://www.microsoft.com/videoplayer/embed/<RE5d0tz>]

### Breach analysis

Nation-state attacks, attacks against critical infrastructure, and organizational breaches often require an attacker to establish communication points once they are in a network. Incident responders look for clues by identifying suspicious traffic or exchanges between a source and a destination. Microsoft has the following tutorials for investigating communication components:

- [Investigate domains and URLs](/microsoft-365/security/defender-endpoint/investigate-domain)
- [Investigate an IP address](/microsoft-365/security/defender-endpoint/investigate-ip)
- [Investigate connection events that occur behind forward proxies](/microsoft-365/security/defender-endpoint/investigate-behind-proxy)
- [Investigate suspicious user and device activities through Defender for Identity](/defender-for-identity/investigate-assets)
- [Identify and investigate lateral movement paths in Defender for Identity](/defender-for-identity/understand-lateral-movement-paths)
- [Investigate devices in the Defender for Endpoint devices list](/microsoft-365/security/defender-endpoint/investigate-machines)

Attackers often use vulnerabilities to gain access to an organization. Some ransomware attacks initially take advantage of unpatched vulnerabilities like the [Log4Shell vulnerability](/microsoft-365/security/defender-vulnerability-management/tvm-manage-log4shell-guidance). The following resources help incident responders identify vulnerabilities and vulnerable devices in their organization through the Defender for Vulnerability Management service:

- **Tutorial**: [Identify vulnerabilities in your organization](/microsoft-365/security/defender-vulnerability-management/tvm-weaknesses)
- **Tutorial**: [Hunt for exposed devices](/microsoft-365/security/defender-vulnerability-management/tvm-hunt-exposed-devices)
- **Tutorial**: [Assess your organization’s risk through the Exposure score](/microsoft-365/security/defender-vulnerability-management/tvm-exposure-score)
- **Video**: Threat and vulnerability management via Defender Vulnerability Management
> [!VIDEO https://www.microsoft.com/videoplayer/embed/<RE4XTiJ>]

Breaches also happen through various devices like phones and tablets that connect to your organization’s network. Incident responders can further investigate these devices within the portal. The following video talks about the top threats from mobile devices and how you can investigate these:

- Mobile threat defense in Microsoft 365 Defender
> [!VIDEO https://www.microsoft.com/videoplayer/embed/<RW10icV>]

### Email-based attacks analysis

Identifying and tracking modified, created, or stolen identities are essential to investigating phishing and BEC attacks. Use the following resources when investigating these attacks:

- **Tutorial**: [Investigate malicious email](//microsoft-365/security/office-365-security/investigate-malicious-email-that-was-delivered)
- **Tutorial**: [Investigate users](investigate-users.md)
- **Tutorial**: [Investigate a user account](//microsoft-365/security/defender-endpoint/investigate-user)
- **Blog**: [Total Identity Compromise: Microsoft Incident Response lessons on securing Active Directory
Identity compromise can also be investigated using Defender for Identity signals.](https://techcommunity.microsoft.com/t5/microsoft-security-experts-blog/total-identity-compromise-microsoft-incident-response-lessons-on/ba-p/3753391)

The following videos discuss how to investigate phishing and BEC attacks in Microsoft 365 Defender:
- **Video**: Investigating BEC and AiTM phishing in Microsoft 365 Defender
> [!VIDEO https://youtu.be/h9YEr9XwALU]

- **Video**: Defending against spearphishing and phishing using Defender for Office 365
> [!VIDEO https://www.microsoft.com/videoplayer/embed/<RE5bzVE>]

The following video discusses an identity compromise and what incident responders can do to contain an attack:
- Investigating identity threats using Defender for Identity
> [!VIDEO https://youtu.be/RSVmgcQLv38?t=533]

## Resources for threat intelligence and hunting

Most incident response teams are tasked to track the threat landscape to keep attacks that can potentially incur damage to the organization at bay. Microsoft 365 Defender delivers critical information about emerging threats through [Threat analytics](threat-analytics.md).

The latest security research and changes from Microsoft security research teams can be accessed from:

- [Microsoft Security blog](https://www.microsoft.com/en-us/security/blog/topic/threat-intelligence/?sort-by=newest-oldest&date=any)
- [Microsoft threat actor information](/microsoft-365/security/intelligence/microsoft-threat-actor-naming)

Moreover, organizations can extend security operations teams’ capabilities through the following Microsoft offerings:
- [Defender Experts for XDR](dex-xdr-overview.md)
- [Threat hunting with Defender Experts for Hunting](defender-experts-for-hunting.md)

## Next step

- [Remediate your first incident](respond-first-incident-remediate.md)
- [Learn Microsoft 365 Defender's features and functions through the Ninja training](https://techcommunity.microsoft.com/t5/microsoft-365-defender/become-a-microsoft-365-defender-ninja/ba-p/1789376)

## See also

- [Understand incidents](respond-first-incident-365-defender.md)
- [Investigate incidents](investigate-incidents.md)
- [Investigate alerts](investigate-alerts.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]