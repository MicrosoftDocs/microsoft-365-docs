---
title: View and organize the Microsoft Defender for Endpoint Alerts queue
description: Learn about how the Microsoft Defender for Endpoint alerts queues work, and how to sort and filter lists of alerts.
keywords: alerts, queues, alerts queue, sort, order, filter, manage alerts, new, in progress, resolved, newest, time in queue, severity, time period, microsoft threat experts alerts
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 03/27/2020
ms.technology: mde
---

# View and organize the Microsoft Defender for Endpoint Alerts queue

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/?linkid=2154037)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-alertsq-abovefoldlink)

The **Alerts** shows a list of alerts that were flagged from devices in your network. The most recent alerts are showed at the top of the list helping you see the most recent alerts first.

> [!NOTE]
> The alerts are significantly reduced with automated investigation and remediation, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. When an alert contains a supported entity for automated investigation (for example, a file) in a device that has a supported operating system for it, an automated investigation and remediation can start. For more information on automated investigations, see [Overview of Automated investigations](automated-investigations.md).

There are several options you can choose from to customize the alerts view.

On the top navigation you can:

- Customize columns to add or remove columns
- Apply filters
- Display the alerts for a particular duration like 1 Day, 3 Days, 1 Week, 30 Days, and 6 Months
- Export the alerts list to excel
- Manage Alerts

:::image type="content" source="images/alerts-filters.png" alt-text="Image of list of alerts" lightbox="images/alerts-filters.png":::

## Sort and filter alerts 

You can apply the following filters to limit the list of alerts and get a more focused view of the alerts.

### Severity

You can filter the alerts based on their Severity.  

|Alert severity|Description|
|---|---|
|High <br> (Red)|Alerts commonly seen associated with advanced persistent threats (APT). These alerts indicate a high risk because of the severity of damage they can inflict on devices. Some examples are: credential theft tools activities, ransomware activities not associated with any group, tampering with security sensors, or any malicious activities indicative of a human adversary.|
|Medium <br> (Orange)|Alerts from endpoint detection and response post-breach behaviors that might be a part of an advanced persistent threat (APT). This includes observed behaviors typical of attack stages, anomalous registry change, execution of suspicious files, and so forth. Although some might be part of internal security testing, it requires investigation as it might also be a part of an advanced attack.|
|Low <br> (Yellow)|Alerts on threats associated with prevalent malware. For example, hack-tools, non-malware hack tools, such as running exploration commands, clearing logs, etc., that often do not indicate an advanced threat targeting the organization. It could also come from an isolated security tool testing by a user in your organization.|
|Informational <br> (Grey)|Alerts that might not be considered harmful to the network but can drive organizational security awareness on potential security issues.|

#### Understanding alert severity

Microsoft Defender Antivirus (Microsoft Defender AV) and Defender for Endpoint alert severities are different because they represent different scopes.

The Microsoft Defender Antivirus threat severity represents the absolute severity of the detected threat (malware), and is assigned based on the potential risk to the individual device, if infected.

The Defender for Endpoint alert severity represents the severity of the detected behavior, the actual risk to the device but more importantly the potential risk to the organization.

So, for example:

- The severity of a Defender for Endpoint alert about a Microsoft Defender Antivirus detected threat that was completely prevented and did not infect the device is categorized as "Informational" because there was no actual damage.
- An alert about a commercial malware was detected while executing, but blocked and remediated by Microsoft Defender AV, is categorized as "Low" because it may have caused some damage to the individual device but poses no organizational threat.
- An alert about malware detected while executing which can pose a threat not only to the individual device but to the organization, regardless if it was eventually blocked, may be ranked as "Medium" or "High".
- Suspicious behavioral alerts, which weren't blocked or remediated will be ranked "Low", "Medium" or "High" following the same organizational threat considerations.

### Status

You can choose to filter the list of alerts based on their Status.

### Categories

We've redefined the alert categories to align to the [enterprise attack tactics](https://attack.mitre.org/tactics/enterprise/) in the [MITRE ATT&CK matrix](https://attack.mitre.org/). New category names apply to all new alerts. Existing alerts will keep the previous category names.

The table below lists the current categories and how they generally map to previous categories.

You can choose to filter the alerts based on the following Categories.

|New category|API category name|Detected threat activity or component|
|---|---|---|
|Collection|Collection|Locating and collecting data for exfiltration.|
|Command and control|CommandAndControl|Connecting to attacker-controlled network infrastructure to relay data or receive commands.|
|Credential access|CredentialAccess|Obtaining valid credentials to extend control over devices and other resources in the network.|
|Defense evasion|DefenseEvasion|Avoiding security controls by, for example, turning off security apps, deleting implants, and running rootkits.|
|Discovery|Discovery|Gathering information about important devices and resources, such as administrator computers, domain controllers, and file servers.|
|Execution|Execution|Launching attacker tools and malicious code, including RATs and backdoors.|
|Exfiltration|Exfiltration|Extracting data from the network to an external, attacker-controlled location.|
|Impact| |Trying to manipulate, interrupt, or destroy your systems and data|
|Information governance| | |
|Initial access|InitialAccess|Gaining initial entry to the target network, usually involving password-guessing, exploits, or phishing emails.|
|Lateral movement|LateralMovement|Moving between devices in the target network to reach critical resources or gain network persistence.|
|Malware|Malware|Backdoors, trojans, and other types of malicious code.|
|Persistence|Persistence|Creating autostart extensibility points (ASEPs) to remain active and survive system restarts.|
|Privilege escalation|PrivilegeEscalation|Obtaining higher permission levels for code by running it in the context of a privileged process or account.|
|Ransomware|Ransomware|Malware that encrypts files and extorts payment to restore access.|
|Suspicious activity|SuspiciousActivity|Atypical activity that could be malware activity or part of an attack.|
|Threat management| | |
|Unwanted software|UnwantedSoftware|Low-reputation apps and apps that impact productivity and the user experience; detected as potentially unwanted applications (PUAs).|

### Service sources

Microsoft Threat Experts preview participants can now filter and see detections from the new threat experts-managed hunting service.

Filter the alerts based on the following Service sources:

- Microsoft Defender for Identity
- Microsoft Defender for Cloud Apps
- Microsoft Defender for Endpoint
- Microsoft 365 Defender
- Microsoft Defender for Office 365
- App Governance
- AAD Identity Protection

> [!NOTE]
> The Antivirus filter will only appear if devices are using Microsoft Defender Antivirus as the default real-time protection antimalware product.

### Tags

You can filter the alerts based on Tags assigned to alerts.

### Entities

You can filter the alerts based on Entity name or ID. 

### Automated investigation state

You can choose to filter the alerts based on their Automated investigation state.

### Policy 

You can filter the alerts based on the following policies:

- Activity from infrequent country
- Admin Submission Result Completed
- Admin triggered manual investigation of email
- Admin triggered user compromise investigation
- Anomalous Token 
- Atypical travel
- Creation of forwarding/redirect rule
- Email messages containing malicious URL removed after delivery
- Email messages containing malicious file removed after delivery
- Email reported by user as malware or phish
- Password Spray
- Remediation action taken by admin on emails or URL or sender
- Suspicious service creation 
- Unfamiliar sign-in properties

## Related topics

- [Manage Microsoft Defender for Endpoint alerts](manage-alerts.md)
- [Investigate Microsoft Defender for Endpoint alerts](investigate-alerts.md)
- [Investigate a file associated with a Microsoft Defender for Endpoint alert](investigate-files.md)
- [Investigate devices in the Microsoft Defender for Endpoint Devices list](investigate-machines.md)
- [Investigate an IP address associated with a Microsoft Defender for Endpoint alert](investigate-ip.md)
- [Investigate a domain associated with a Microsoft Defender for Endpoint alert](investigate-domain.md)
- [Investigate a user account in Microsoft Defender for Endpoint](investigate-user.md)
