---
title: Step 2. Remediate your first incident
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
ms.date: 04/20/2021
---

# Step 2. Remediate your first incident

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Microsoft 365 Defender not only provides detection and analysis capabilities but also provides containment and eradication of malware. Containment includes steps to reduce the impact of the attack while eradication ensures all traces of attacker activity are removed from the network. Microsoft 365 Defender offers several remediation actions that can be configured to [auto-remediate](m365d-autoir.md) depending on the operating system of affected devices and the attack type.

Microsoft 365 Defender offers several remediation actions that analysts can manually initiate. Actions are separated into two categories, Actions on devices and actions on files. Some actions can be used to immediately stop the threat while other actions assist in further forensic analysis.

## Actions on devices

- **Isolate the device** - This activity immediately blocks all network traffic (internet and internal) to minimize the spread of malware and allow analysts to continue analysis without a malicious actor being able to continue an attack. The only connection allowed is to the Microsoft Defender for Identity service cloud so Microsoft Defender for Identity can continue to monitor the device. 
- **Restrict app execution** - To restrict an application from running, a code integrity policy is applied that only allows files to run if they're signed by a Microsoft-issued certificate. This method of restriction can help prevent an attacker from controlling compromised devices and performing further malicious activities.
- **Run Antivirus scan** - A Microsoft Defender Antivirus scan can run alongside other antivirus solutions, whether Defender Antivirus is the active antivirus solution or not. If another antivirus vendor product is the primary endpoint protection solution, you can run Defender Antivirus in Passive mode.
- **Initiate automated investigation** - You can start a new general purpose automated investigation on the device. While an investigation is running, any other alert generated from the device will be added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.
- **Initiate live response** - Live response is a capability that gives you instantaneous access to a device by using a remote shell connection. This gives you the ability to do in-depth investigative work and take immediate response actions to promptly contain identified threats in real time. Live response is designed to enhance investigations by enabling you to collect forensic data, run scripts, send suspicious entities for analysis, remediate threats, and proactively hunt for emerging threats.
- **Collect investigation package** - As part of the investigation or response process, you can collect an investigation package from a device. By collecting the investigation package, you can identify the current state of the device and further understand the tools and techniques used by the attacker. 
- **Ask Defender Experts** (available in both Actions on devices and files) - You can consult a Microsoft Defender expert for more insights regarding potentially compromised devices or devices that are already compromised. Microsoft Defender experts can be engaged directly from within Microsoft 365 Defender for a timely and accurate response.

> [!NOTE]
> You can take actions on devices straight from the graph within the attack story.

## Actions on files

- **Stop and quarantine file** - This action includes stopping running processes, quarantining files, and deleting persistent data, such as any registry keys. This action takes effect on devices with Windows 11 or Windows 10, version 1703 or later, where the file was observed in the last 30 days. 
- **Add indicators to block or allow file** - Prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. This operation will prevent the file from being read, written, or executed on devices in your organization.
- **Download or collect file** – This action allows analysts to download a file in a password protected .zip archive file for further analysis by the organization.
- **Deep analysis** – This action executes a file in a secure, fully instrumented cloud environment. Deep analysis results show the file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IP addresses. 

Continuing the example in [Detect, triage, and analyze incidents](first-incident-analyze.md#analyze-your-first-incident), an analyst can remediate this incident with these actions:

1. Immediately reset the user account password
2. Isolate the device in Microsoft 365 Defender until deep analysis is complete
3. Ensure the malicious file was quarantined from SharePoint
4. Check which endpoints were affected by malware
5. Rebuild systems
6. Check for similar Microsoft Defender for Cloud Apps alerts for other users
7. Create a custom indicator in Microsoft Defender for Endpoint to block a Tor IP address
8. Create a governance action in Microsoft Defender for Cloud Apps for this type of alert such as those shown in the following image:

   :::image type="content" source="../../media/first-incident-remediate/first-incident-mcas-governance.png" alt-text="Governance actions in the Microsoft Defender for Cloud Apps portal" lightbox="../../media/first-incident-remediate/first-incident-mcas-governance.png":::

Most of the remediation actions can be applied and tracked in Microsoft 365 Defender.

## Using Playbooks

In addition, automated remediation can be created using playbooks. Currently, Microsoft has [Playbook templates on GitHub](https://github.com/microsoft/Microsoft-Cloud-App-Security/tree/master/Playbooks) that provide playbooks for the following scenarios:

- Remove sensitive file sharing after requesting user validation
- Auto-triage infrequent country/region alerts
- Request for manager action before disabling an account
- Disable malicious inbox rules

Playbooks use Power Automate to create custom robotic process automation flows to automate certain activities once specific criteria have been triggered. Organizations can create playbooks either from existing templates or from scratch. 

Here's an example.
 
:::image type="content" source="../../media/first-incident-remediate/first-incident-power-automate.png" alt-text="A Power Automate custom robotic process automation flow" lightbox="../../media/first-incident-remediate/first-incident-power-automate.png"::: 
 
Playbooks can also be created during [post-incident review](first-incident-post.md) to create remediation actions from resolved incidents. 

## Next step

Learn how to [perform a post-incident review of an incident](first-incident-post.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
