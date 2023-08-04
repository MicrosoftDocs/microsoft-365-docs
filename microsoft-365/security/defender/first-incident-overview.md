---
title: Responding to your first incident
description: The basics of responding to your first incident in Microsoft 365 Defender.
keywords: incidents, alerts, investigate, correlation, attack, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, self-study, ramp up, ramp-up, onboard, incident responder
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
ms.date: 08/03/2023
---

# Responding to your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

If you’re new to using Microsoft 365 Defender, this guide outlines what you need to do and points you to other Microsoft resources to help you confidently perform your [day-to-day incident response tasks](integrate-microsoft-365-defender-secops-services.md). The intended results of using this guide are:

- You’ll quickly learn to use Microsoft 365 Defender to respond to incidents and alerts.
- You’ll discover the portal’s features to aid incident investigation and remediation through the videos and tutorials.

Today’s threats on data security - [business email compromise (BEC)](https://www.microsoft.com/en-us/security/business/security-101/what-is-business-email-compromise-bec), malware like backdoors and [ransomware](/security/ransomware), organizational breaches, and [nation-state attacks](https://www.microsoft.com/en-us/security/business/security-insider/) – require quick, intelligent, and decisive action from incident responders. Tools like [Microsoft 365 Defender](microsoft-365-defender.md) allow response teams to detect, triage, and investigate incidents through its single-pane-of-glass experience and find the information needed to make these timely decisions. 

Microsoft 365 Defender enables you to see relevant threat events across all assets (devices, identities, mailboxes, cloud apps, and more). Consolidated signals from the [Microsoft Defender protection stack](microsoft-365-defender#microsoft-365-defender-protection), [Microsoft Sentinel](microsoft-365-defender-integration-with-azure-sentinel.md), and other [integrated security information and event management (SIEM) solutions](configure-siem-defender.md) allows you to view correlated attack information with full context in one portal, which is critical for successful defense and protection defend your network.

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]


## Start with the Incidents page

Microsoft 365 Defender has many features that you can use to respond to an incident. You can navigate the incidents by selecting **View all incidents** in the Active incidents card on the Home page or through **Incidents & alerts** on the left navigation pane.

**insert two images here**

Each incident contains automatically correlated alerts from different detection sources and might involve various endpoints, identities, or cloud apps. An incident provides a holistic picture and context of suspicious or malicious activity. A single incident gives you an attack’s complete context instead of triaging hundreds of alerts from multiple services.

### Triaging incidents

Incident prioritization varies per responder, security team, and organization. Incident response plans and security teams’ direction can mandate incident priority. Microsoft 365 Defender has various indicators like incident severity, types of users, or threat types to triage and prioritize incidents. You can use any combination of these indicators readily available through the incident queue **filters**.

An example of determining incident priority is combining the information on the following filters:

- Severity is high
- Automation investigation state is failed 
- Number of impacted assets includes 14 user accounts and 14 mailboxes
- Data sensitivity is highly confidential
- Incident status is new
- Incident is not yet assigned to any security team member

Filters like severity, investigation states, impacted assets, and incident statuses are automatically determined by Microsoft 365 Defender based on information within your organization’s network, with the additional context of important threat intelligence feeds and the automated remediation actions applied.

### Managing incidents

Individual incident responders contribute to incident management efficiency by providing essential information in incidents and alerts. The following input from when you triage and analyze each incident helps to add further context that other responders can take advantage of:

- Classifying incidents and alerts
- Naming incidents
- Adding tags
- Providing comments

Learn how to classify incidents and alerts through this video:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/<RE4LHJq>]

You can begin your incident investigation once a priority is determined.

## Investigating attacks in Microsoft 365 Defender

Understanding the context that surrounds incidents is essential in analyzing attacks. Often an incident is a chain of processes created, commands, and actions that might not have coincided. Combining your expertise and experience with Microsoft 365 Defender’s features and capabilities ensures faster resolution of incidents and your organization’s safety from further attacks.

### Investigation tasks simplified

Investigations usually involve responders viewing several apps while simultaneously checking various threat intelligence sources. Sometimes investigations are extended to hunting down other threats. Documenting facts and solutions in an attack investigation is an additional important task that provides history and context for other investigators’ use or for later investigations. These investigation tasks are simplified when using Microsoft 365 Defender through the following:

- **Pivoting** – gathering information from several information-rich pages of an attack’s components (file, URL, mailbox, a user account, or device) is made easy through several views showing relationships and timeline of activities. Incident responders can drill down using timeline views of related alerts and events or across related attack components. Moreover, pivoting through important data sourced from various security services is easy as Microsoft 365 Defender aggregates all the data.

- **Hunting** – finding known and possible threats through the portal using Kusto queries. Incident responders can hunt for threats with or without guidance within the portal.

- **Insight** – where applicable, previously detected events along with the actions done to these events are available to incident responders, adding context to present investigations. Moreover, incidents and alerts are enriched by Microsoft’s threat intelligence information and from sources like the MITRE ATT&CK® framework and VirusTotal.

- **Collaboration** – security operations teams can view each team members’ decisions and actions on past and present incidents and alerts through portal features like comments, tagging, flagging, and assignment. Further collaboration with Microsoft’s managed detection and response service through Microsoft Defender Experts for XDR is also available when an organization requires an augmented response.

### Getting an attack overview
Incident responders try to answer what happened through an investigation. The attack story on the Incident page provides full context of what happened in an attack, identifies all related alerts and events to the attack, and provides an overview of the automated remediation actions taken by Microsoft 365 Defender to mitigate the attack.

From the attack story, you can dive deeper into the details of an attack by exploring the tabs available on the incident page. You can quickly remediate common attacks like phishing, password spray, and malicious app compromise through incident response playbooks accessible within the portal. These playbooks contain detection, response, and mitigation guidance that support incident investigations.

More investigation capabilities to further analyze an attack are available in the following walkthrough:

> [!VIDEO https://youtu.be/PW_4PWul5MY]


### Investigating threats

Complex threats like adversary-in-the-middle attacks and ransomware often require manual investigation. An incident responder tackling these complicated attacks looks for the following crucial information:

- Presence of malware or suspicious use of tools and apps
- Clues about any communication channels or entry points used by any malicious or suspicious entity
- Clues pointing to possible identity compromise
- Identifying what the impact is on the organization’s data and security posture

The following Microsoft 365 Defender features aid incident response teams in investigating these complex attacks:

#### Malware analysis

Responders can further investigate a malicious file related to an incident or alert by accessing the incident graph, an alert process tree, an artifact timeline, or through a device timeline. Microsoft 365 Defender can show file information, including hash, other file details, metadata, and what the file can do based on MITRE ATT&CK techniques. This removes the need to run files in a black box test or static analyses. Additional context about files and tools is also present in the portal through prevalence data.

The following resources provide details on how to use the portal’s capabilities in investigating files and tools:

- Video: Investigating malware in Microsoft 365 Defender
- Tutorial: Investigate files from a Defender for Endpoint alert

Ransomware continues to be a significant threat to organizations. Microsoft has the following resources to help you investigate and respond to ransomware attacks:

- Video: Investigating ransomware attacks in Microsoft 365 Defender
- Guides: From detection to protection: Microsoft's guide to combating ransomware attacks
- Tutorial: Ransomware investigation playbook

#### Risky apps analysis and cloud-based threats prevention

Malicious actors can exploit cloud-based apps. Apps can inadvertently leak sensitive information through abuse or misuse. Incident responders investigating and protecting apps in cloud environments can use the following resources where Defender for Cloud Apps is deployed in their organizations:

- Video: Protecting cloud apps and related files through Defender for Cloud Apps
- Tutorial: Investigate malicious and compromised apps
- Tutorial: Investigate risky OAuth apps
- Tutorial: Protect cloud apps
- Tutorial: Protect apps in real time

#### Breach analysis

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

#### Email-based attacks analysis

Identifying and tracking modified, created, or stolen identities are essential to investigating phishing and BEC attacks. Use the following resources when investigating these attacks:

- Video: Investigating BEC and AiTM phishing in Microsoft 365 Defender
- Video: Defending against spearphishing and phishing using Defender for Office 365
- Tutorial: Investigate malicious email
- Tutorial: Investigate users
- Tutorial: Investigate a user account
- Blog: Total Identity Compromise: Microsoft Incident Response lessons on securing Active Directory
Identity compromise can also be investigated using Defender for Identity signals. The following video discusses an identity compromise and what incident responders can do to contain an attack:
- Video: Investigating identity threats using Defender for Identity 

## Remediating attacks

### Automatic remediation

Microsoft 365 Defender leverages its threat intelligence and the signals within your network to combat the most disruptive attacks. Ransomware, BEC, and AiTM phishing are some of the most complex attacks that can be contained immediately through automatic attack disruption capability. Once an attack has been disrupted, incident responders can take over and fully investigate an attack and apply the required remediation.

Learn how automatic attack disruption helps in incident response:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/<RW10OoF>]

Meanwhile, Microsoft 365 Defender’s automated investigation and response capabilities can automatically investigate and apply remediation actions to malicious and suspicious items. These capabilities scale investigation and resolution to threats, freeing incident responders to focus their efforts on high-impact attacks.

Automated investigation and response capabilities can be configured, managed, and viewed within the portal. Incident responders can check and roll back the automatic actions taken when deemed inappropriate.

In addition, automated remediation can be created using playbooks. Currently, Microsoft has Playbook templates on GitHub that provide playbooks for the following scenarios:

- Remove sensitive file sharing after requesting user validation
- Auto-triage infrequent country alerts
- Request for manager action before disabling an account
- Disable malicious inbox rules

Playbooks use Power Automate to create custom robotic process automation flows to automate certain activities once specific criteria have been triggered. Organizations can create playbooks either from existing templates or from scratch. Playbooks can also be created during post-incident review to create remediation actions from resolved incidents.

### Manual remediation

While responding to an attack, security teams can leverage the portal’s various remediation actions to stop attacks from further incurring damage. Some actions can immediately stop a threat, while others assist in further forensic analysis. Incident responders can apply these actions to any entity depending on the Defender stack deployed within an organization. 

#### Actions on devices
- Isolate the device - This activity immediately blocks all network traffic (internet and internal) to minimize the spread of malware and allow analysts to continue analysis without a malicious actor being able to continue an attack. The only connection allowed is to the Microsoft Defender for Identity service cloud so Microsoft Defender for Identity can continue to monitor the device.
- Restrict app execution - To restrict an application from running, a code integrity policy is applied that only allows files to run if they're signed by a Microsoft-issued certificate. This method of restriction can help prevent an attacker from controlling compromised devices and performing further malicious activities.
- Run Antivirus scan - A Microsoft Defender Antivirus scan can run alongside other antivirus solutions, whether Defender Antivirus is the active antivirus solution or not. If another antivirus vendor product is the primary endpoint protection solution, you can run Defender Antivirus in Passive mode.
- Initiate automated investigation - You can start a new general purpose automated investigation on the device. While an investigation is running, any other alert generated from the device will be added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.
- Collect investigation package - As part of the investigation or response process, you can collect an investigation package from a device. By collecting the investigation package, you can identify the current state of the device and further understand the tools and techniques used by the attacker.

Other actions on devices are available through the following tutorials:

- Response actions on a device enabled through Defender for Endpoint

#### Actions on files

- Stop and quarantine file - This action includes stopping running processes, quarantining files, and deleting persistent data, such as any registry keys. This action takes effect on devices with Windows 11 or Windows 10, version 1703 or later, where the file was observed in the last 30 days.
- Add indicators to block or allow file - Prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. This operation will prevent the file from being read, written, or executed on devices in your organization.
- Download or collect file – This action allows analysts to download a file in a password protected .zip archive file for further analysis by the organization.
- Deep analysis – This action executes a file in a secure, fully instrumented cloud environment. Deep analysis results show the file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IP addresses.

#### Actions for other entities

The following are specific steps and actions that can be applied to various entities when responding to and investigating attacks:

-	Tutorial: Responding to a compromised email account via Defender for Office 365
-	Tutorial: Remediating vulnerabilities with Defender for Vulnerability Management
-	Tutorial: Remediation actions for user accounts via Defender for Identity
-	Tutorial: Applying policies to control apps with Defender for Cloud Apps

## Enriching the investigation experience

Most incident response teams are tasked to track the threat landscape to keep attacks that can potentially incur damage to the organization at bay. Microsoft 365 Defender delivers critical information about emerging threats through Threat analytics.

The latest security research and changes from Microsoft security research teams can be accessed from:

- Latest threat intelligence stories from Microsoft
- Threat actors Microsoft tracks

Moreover, organizations can extend security operations teams’ capabilities when the need arises through the following Microsoft offerings:
- Extended incident response with Defender Experts for XDR
- Threat hunting with Defender Experts for Hunting

## Next steps
-	Learn Microsoft 365 Defender’s features and functions through the Ninja training
-	Simulate attacks through the attack simulation training

## See also
-	Integrate Microsoft 365 Defender into your security operations
