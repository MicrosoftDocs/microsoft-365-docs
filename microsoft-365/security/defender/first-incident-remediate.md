---
title: Respond to your first incident-Remediate incidents
description: Respond to your first incident-Remediate incidents.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
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
# Respond to your first incident-Remediate incidents

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender not only provides detection and analysis capabilities but also provides containment and eradication of malware. Containment includes steps to reduce the impact of the attack while eradication ensures all traces of attacker activity are removed from the network.  Microsoft 365 Defender offers several remediation actions which can be configured to auto-remediate depending on your operating system and the attack type.

Microsoft 365 Defender offers several remediation actions that analysts can manually initiate. Actions are separated into two categories, Actions on devices and Actions on files. Some actions can be used to immediately stop the threat while other actions assist in further forensic analysis.

## Actions on devices

- **Isolate device** - This activity immediately blocks all network traffic (internet and internal) to minimize the spread of malware and allow analysts to continue analysis without a malicious actor being able to continue an attack. The only connection allowed is to the Microsoft Defender for Identity service cloud so Microsoft Defender for Identity can continue to monitor the device. 
- **Restrict app execution** - To restrict an application from running, a code integrity policy is applied that only allows files to run if they are signed by a Microsoft-issued certificate. This method of restriction can help prevent an attacker from controlling compromised devices and performing further malicious activities.
- **Run Antivirus scan** - A Microsoft Defender Antivirus scan can run alongside other antivirus solutions, whether Defender Antivirus is the active antivirus solution or not. If another antivirus vendor product is the primary endpoint protection solution, you can run Defender Antivirus in Passive mode.
- **Initiate automated investigation** - You can start a new general purpose automated investigation on the device. While an investigation is running, any other alert generated from the device will be added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.
- **Initiate live response** - Live response is a capability that gives you instantaneous access to a device by using a remote shell connection. This gives you the ability to do in-depth investigative work and take immediate response actions to promptly contain identified threats in real time. Live response is designed to enhance investigations by enabling you to collect forensic data, run scripts, send suspicious entities for analysis, remediate threats, and proactively hunt for emerging threats.
- **Collect investigation package** - As part of the investigation or response process, you can collect an investigation package from a device. By collecting the investigation package, you can identify the current state of the device and further understand the tools and techniques used by the attacker. 
- **Consult a threat expert** (available in both Actions on devices and files) - You can consult a Microsoft threat expert for more insights regarding potentially compromised devices or devices that are already compromised. Microsoft threat experts can be engaged directly from within the Microsoft Defender Security Center for a timely and accurate response. 

## Actions on files

- **Stop and quarantine file** - This action includes stopping running processes, quarantining files, and deleting persistent data, such as any registry keys. This action takes effect on devices with Windows 10, version 1703 or later, where the file was observed in the last 30 days. 
- **Add indicators to block or allow file** - Prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. This operation will prevent the file from being read, written, or executed on devices in your organization.
- **Download or collect file** – This action allows analysts to download a file in a password protected .zip archive file for further analysis by the organization.
- **Deep analysis** – This action executes a file in a secure, fully instrumented cloud environment. Deep analysis results show the file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IP addresses. 

Continuing the example, remediation activity for this incident can be to:

1. Immediately reset the user password
2. Isolate the device in Microsoft 365 Defender until deep analysis is complete
3. Ensure the malicious file was quarantined from SharePoint
4. Check which endpoints were affected by malware
5. Rebuild systems
6. Check for similar Microsoft Cloud App Security alerts for other users
7. Create a custom indicator in Microsoft Defender for Endpoint to block a Tor IP address
8. Create a governance action in Microsoft Cloud App Security for this type of alert such as those shown in the following image.

ADD FIGURE
 
Most of the remediation actions can be applied and tracked in Microsoft 365 Defender. 

## Using Playbooks

In addition, automated remediation can be created using playbooks. Currently, Microsoft has [Playbook templates on Github](https://github.com/microsoft/Microsoft-Cloud-App-Security/tree/master/Playbooks) that provide playbooks for the following scenarios:

- Remove sensitive file sharing after requesting user validation
- Auto-triage infrequent country alerts
- Request for manager action before disabling an account
- Disable malicious inbox rule

Playbooks use Power Automate to create custom robotic process automation flows to automate certain activities once specific criteria have been triggered. Organizations can create playbooks either from existing templates or from scratch:
 
ADD FIGURE
 
Playbooks can be created during Post-Incident Review to create remediation actions from incidents to enable faster remediation actions. Since the NIST Incident Response Framework is cyclical in nature, Post-Incident Review activity can turn into Preparation phases, enhancing the organization’s response capabilities.

## Next step

Learn how to [perform post-incident activities](first-incident-post.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Analyze incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
