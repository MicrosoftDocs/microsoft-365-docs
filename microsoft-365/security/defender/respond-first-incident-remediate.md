---
title: Remediate your first incident in Microsoft 365 Defender
description: How to get started in remediating your first incident in Microsoft 365 Defender.
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

# Remediate your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender not only provides detection and analysis capabilities but also provides containment and eradication of threats. Containment includes steps to reduce the impact of the attack while eradication ensures all traces of attacker activity are removed from the network.

Remediation in Microsoft 365 Defender can be automated or through manual actions taken by incident responders. Remediation actions can be taken on devices, files, and identities.

## Automatic remediation

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

## Manual remediation

While responding to an attack, security teams can leverage the portal’s various remediation actions to stop attacks from further incurring damage. Some actions can immediately stop a threat, while others assist in further forensic analysis. Incident responders can apply these actions to any entity depending on the Defender stack deployed within an organization.

### Actions on devices

- **Isolate the device** - This activity immediately blocks all network traffic (internet and internal) to minimize the spread of malware and allow analysts to continue analysis without a malicious actor being able to continue an attack. The only connection allowed is to the Microsoft Defender for Identity service cloud so Microsoft Defender for Identity can continue to monitor the device. 
- **Restrict app execution** - To restrict an application from running, a code integrity policy is applied that only allows files to run if they're signed by a Microsoft-issued certificate. This method of restriction can help prevent an attacker from controlling compromised devices and performing further malicious activities.
- **Run Antivirus scan** - A Microsoft Defender Antivirus scan can run alongside other antivirus solutions, whether Defender Antivirus is the active antivirus solution or not. If another antivirus vendor product is the primary endpoint protection solution, you can run Defender Antivirus in Passive mode.
- **Initiate automated investigation** - You can start a new general purpose automated investigation on the device. While an investigation is running, any other alert generated from the device will be added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.
- **Initiate live response** - Live response is a capability that gives you instantaneous access to a device by using a remote shell connection. This gives you the ability to do in-depth investigative work and take immediate response actions to promptly contain identified threats in real time. Live response is designed to enhance investigations by enabling you to collect forensic data, run scripts, send suspicious entities for analysis, remediate threats, and proactively hunt for emerging threats.
- **Collect investigation package** - As part of the investigation or response process, you can collect an investigation package from a device. By collecting the investigation package, you can identify the current state of the device and further understand the tools and techniques used by the attacker. 
- **Ask Defender Experts** (available in both Actions on devices and files) - You can consult a Microsoft Defender expert for more insights regarding potentially compromised devices or devices that are already compromised. Microsoft Defender experts can be engaged directly from within Microsoft 365 Defender for a timely and accurate response.

Other actions on devices are available through the following tutorials:

- Response actions on a device enabled through Defender for Endpoint

> [!NOTE]
> You can take actions on devices straight from the graph within the attack story.

### Actions on files

- **Stop and quarantine file** - This action includes stopping running processes, quarantining files, and deleting persistent data, such as any registry keys. This action takes effect on devices with Windows 11 or Windows 10, version 1703 or later, where the file was observed in the last 30 days. 
- **Add indicators to block or allow file** - Prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. This operation will prevent the file from being read, written, or executed on devices in your organization.
- **Download or collect file** – This action allows analysts to download a file in a password protected .zip archive file for further analysis by the organization.
- **Deep analysis** – This action executes a file in a secure, fully instrumented cloud environment. Deep analysis results show the file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IP addresses. 

## Remediating other attacks

> [!NOTE]
> These tutorials apply when other Defender workloads are enabled in your environment.

The following are specific steps and actions that can be applied to various entities when responding to and investigating attacks:

-	Tutorial: Responding to a compromised email account via Defender for Office 365
-	Tutorial: Remediating vulnerabilities with Defender for Vulnerability Management
-	Tutorial: Remediation actions for user accounts via Defender for Identity
-	Tutorial: Applying policies to control apps with Defender for Cloud Apps

## Next step

-	Simulate attacks through the attack simulation training

## See also

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
