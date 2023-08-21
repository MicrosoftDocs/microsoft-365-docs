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
ms.date: 08/21/2023
---

# Analyze your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Understanding the context that surrounds [incidents](incidents-overview.md) is essential in analyzing attacks.  Combining your expertise and experience with Microsoft 365 Defender's features and capabilities ensure faster resolution of incidents and your organization’s safety from cyber attacks.

Today's threats on data security - [business email compromise (BEC)](https://www.microsoft.com/security/business/security-101/what-is-business-email-compromise-bec), malware like backdoors and [ransomware](/security/ransomware), organizational breaches, and [nation-state attacks](https://www.microsoft.com/security/business/security-insider/) – require quick, intelligent, and decisive action from incident responders. Tools like [Microsoft 365 Defender](microsoft-365-defender.md) allow response teams to detect, triage, and investigate incidents through its single-pane-of-glass experience and find the information needed to make these timely decisions.

## Investigation tasks

Investigations usually involve responders viewing several apps while simultaneously checking various threat intelligence sources. Sometimes investigations are extended to hunting down other threats. Documenting facts and solutions in an attack investigation is an additional important task that provides history and context for other investigators’ use or for later investigations. These investigation tasks are simplified when using Microsoft 365 Defender through the following:

- **Pivoting** – the portal aggregates important attack information contextualized across the Defender workloads enabled in your organization. The portal consolidates all information across a single attack’s components (file, URL, mailbox, a user account, or device), showing relationships and timeline of activities. With all the information available in a page, the portal allows incident responders to pivot across related entities and events to find the information they need to make decisions.

- **Hunting** – threat hunters can find known and possible threats within an organization through the portal's [advanced hunting](advanced-hunting-overview.md) capability using Kusto queries. If you're new to Kusto, use the [guided mode](advanced-hunting-modes.md) to hunt for threats.

- **Insight** – where applicable, incident responders can view actions to previously detected event and alerts to aid present investigations. Additional insights are also automatically added to events and alerts through Microsoft’s own threat intelligence efforts and from sources like the [MITRE ATT&CK®](https://attack.mitre.org/) framework and [VirusTotal](https://www.virustotal.com/gui/home/upload).

- **Collaboration** – security operations teams can view each team members’ decisions and actions on past and present incidents and alerts through portal features like comments, tagging, flagging, and assignment. Further collaboration with Microsoft’s managed detection and response service through [Defender Experts for XDR](dex-xdr-overview.md) and [Defender Experts for Hunting](defender-experts-for-hunting.md) are also available when an organization requires an augmented response.

## Attack overview

The [attack story](investigate-incidents.md#attack-story) provides incident responders a full, contextualized overview what happened in an attack. Responders can view all related alerts and events, including the automated remediation actions taken by Microsoft 365 Defender to mitigate an attack.

From the attack story, you can dive deeper into the details of an attack by exploring the tabs available on the [incident page](investigate-incidents.md). You can quickly remediate common attacks like phishing, password spray, and malicious app compromise through [incident response playbooks](/security/operations/incident-response-playbooks) accessible within the portal. These playbooks contain detection, response, and mitigation guidance that support incident investigations.

This video of [how to investigate an attack in Microsoft 365 Defender](https://youtu.be/PW_4PWul5MY) and how to use the portal's features in your investigation walks you through the attack story and the incident page.

## Investigating threats

Complex threats like [adversary-in-the-middle attacks](https://www.microsoft.com/security/blog/2023/03/13/dev-1101-enables-high-volume-aitm-campaigns-with-open-source-phishing-kit/) and ransomware often require manual investigation. An incident responder tackling these complicated attacks looks for the following crucial information:

- Presence of malware or suspicious use of tools and apps
- Clues about any communication channels or entry points used by any malicious or suspicious entity
- Clues pointing to possible identity compromise
- Identifying what the impact is on the organization’s data and security posture

The following sections contain tutorials and videos of Microsoft 365 Defender features that aid incident response teams in investigating various complex attacks.

### Ransomware investigations

Ransomware continues to be a significant threat to organizations. Microsoft has the following resources to help you investigate and respond to ransomware attacks:

- **Guides**: [From detection to protection: Microsoft's guide to combating ransomware attacks](/security/ransowmare)
- **Tutorial**: [Ransomware investigation playbook](/security/operations/incident-response-playbook-dart-ransomware-approach)
- **Video**: [Investigating ransomware attacks in Microsoft 365 Defender (part 1)](https://youtu.be/eLCrGe4-Zzc)
- **Video**: [Investigating ransomware attacks in Microsoft 365 Defender (part 2)](https://youtu.be/q1s7lm3O9Sc)

### Email-based attacks analysis

Identifying and tracking modified, created, or stolen identities are essential to investigating phishing and BEC attacks. Use the following resources when investigating these attacks:

- **Tutorial**: [Investigate malicious email](//microsoft-365/security/office-365-security/investigate-malicious-email-that-was-delivered)
- **Tutorial**: [Investigate users](investigate-users.md)
- **Tutorial**: [Investigate a user account](//microsoft-365/security/defender-endpoint/investigate-user)
- **Blog**: [Total Identity Compromise: Microsoft Incident Response lessons on securing Active Directory
Identity compromise can also be investigated using Defender for Identity signals.](https://techcommunity.microsoft.com/t5/microsoft-security-experts-blog/total-identity-compromise-microsoft-incident-response-lessons-on/ba-p/3753391)
- **Tutorial**: [Example of a phishing email attack](first-incident-path-phishing.md)
- **Tutorial**: [Example of an identity-based attack](first-incident-path-identity.md)

The following videos discuss how to investigate phishing and BEC attacks in Microsoft 365 Defender:

- **Video**: [Investigating BEC and AiTM phishing in Microsoft 365 Defender](https://youtu.be/h9YEr9XwALU)
- **Video**: Defending against spearphishing and phishing using Defender for Office 365

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE5bzVE]

Investigate an identity compromise and know what you can do to contain an attack through this video:

- [Investigating identity threats using Defender for Identity](https://youtu.be/RSVmgcQLv38?t=533)

### Malware analysis

A malicious file's information and capabilities are key to investigating malware. Microsoft 365 Defender, in most cases, can detonate the file to show critical data including hash, metadata, prevalence within the organization, and file capabilities based on MITRE ATT&CK® techniques. This removes the need to do black box testing or static analysis of files. You can view file information from the incident graph, or by viewing an alert process tree, an artifact timeline, or a device timeline.

The following resources provide details on how to use the portal’s capabilities in investigating files:

- **Tutorial**: [Investigate files](/microsoft-365/security/defender-endpoint/investigate-files)
- **Video**: [Investigating malware in Microsoft 365 Defender](https://youtu.be/TTqFlnlwch0)

### Risky apps analysis and cloud-based threats prevention

Malicious actors can exploit cloud-based apps. Apps can inadvertently leak sensitive information through abuse or misuse. Incident responders investigating and protecting apps in cloud environments can use the following resources where Defender for Cloud Apps is deployed in their organizations:

- **Tutorial**: [Investigate malicious and compromised apps](/security/operations/incident-response-playbook-compromised-malicious-app)
- **Tutorial**: [Investigate risky OAuth apps](/defender-cloud-apps/investigate-risky-oauth)
- **Tutorial**: [Protect cloud apps](/defender-cloud-apps/tutorial-ueba#phase-1-connect-to-the-apps-you-want-to-protect)
- **Tutorial**: Protect apps in real time

Discover how you can protect your cloud apps in real time with this video of the Defender for Cloud Apps workload:

- **Video**: Protecting cloud apps and related files through Defender for Cloud Apps

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE5d0tz]

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

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4XTiJ]

Breaches also happen through various devices like phones and tablets that connect to your organization’s network. Incident responders can further investigate these devices within the portal. The following video talks about the top threats from mobile devices and how you can investigate these:

- Mobile threat defense in Microsoft 365 Defender

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RW10icV]

## Resources for threat intelligence and hunting

Microsoft 365 Defender's built-in threat intelligence capabilities and hunting aid incident response teams in performing proactive protection against emerging threats and attacks. You have direct access to the latest information on emerging threats and attacks through the portal's [Threat analytics](threat-analytics.md).

:::image type="content" source="../../media/first-incident/m365d-threat-analytics.png" alt-text="Threat analytics home page" lightbox="../../media/first-incident/m365d-threat-analytics.png":::

Use the intelligence in Threat analytics to deep dive into new threats with the following video:

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWwJfU]

Proactively hunt for threats within the organization using the portal's built-in [advanced hunting](advanced-hunting-overview.md) capability.

:::image type="content" source="../../media/first-incident/m365d-advancedhunting.png" alt-text="Advanced hunting page in Microsoft 365 Defender" lightbox="../../media/first-incident/m365d-advancedhunting.png":::

The following resources provide more information on how to use advanced hunting:

- [Learn the Kusto query language](advanced-hunting-query-language.md)
- [Build hunting queries using the guided mode](advanced-hunting-query-builder.md)
- [Hunt for threats across entities](advanced-hunting-query-emails-devices.md)

Extend your threat intelligence with the latest security research and changes from Microsoft security research teams:

- [Microsoft Security blog](https://www.microsoft.com/security/blog/topic/threat-intelligence/?sort-by=newest-oldest&date=any)
- [Microsoft threat actor information](/microsoft-365/security/intelligence/microsoft-threat-actor-naming)

Collaborate with Microsoft's experts for incident response and threat hunting to enhance your security operations teams' capabilities. Know more about our experts and how to engage them in the following resources:

- [Defender Experts for XDR](dex-xdr-overview.md)
- [Threat hunting with Defender Experts for Hunting](defender-experts-for-hunting.md)

## Next step

- [Remediate your first incident](respond-first-incident-remediate.md)
- Explore the portal's features through video demos in the [Microsoft 365 Defender Virtual Ninja Training](https://adoption.microsoft.com/en-us/ninja-show/)

## See also

- [Understand incidents](respond-first-incident-365-defender.md)
- [Investigate incidents](investigate-incidents.md)
- [Investigate alerts](investigate-alerts.md)
- Learn the portal's features and functions through the [Microsoft 365 Defender Ninja training](https://techcommunity.microsoft.com/t5/microsoft-365-defender/become-a-microsoft-365-defender-ninja/ba-p/1789376)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]