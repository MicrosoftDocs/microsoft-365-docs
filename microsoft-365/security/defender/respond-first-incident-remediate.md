---
title: Remediate your first incident in Microsoft 365 Defender
description: How to get started in remediating your first incident in Microsoft 365 Defender.
keywords: incidents, alerts, attack story, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, incident response, remediation, remediate attack, remediate incident
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

# Remediate your first incident in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

Microsoft 365 Defender provides detection and analysis capabilities to ensure containment and eradication of threats. Containment includes steps to reduce the impact of the attack while eradication ensures all traces of attacker activity are removed from the network.

Remediation in Microsoft 365 Defender can be automated or through manual actions taken by incident responders. Remediation actions can be taken on devices, files, and identities.

## Automatic remediation

Microsoft 365 Defender leverages its threat intelligence and the signals within your network to combat the most disruptive attacks. Ransomware, business email compromise (BEC), and adversary-in-the-middle (AiTM) phishing are some of the most complex attacks that can be contained immediately through [automatic attack disruption](automatic-attack-disruption.md) capability. Once an attack has been disrupted, incident responders can take over and fully investigate an attack and apply the required remediation.

Learn how automatic attack disruption helps in incident response:

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RW10OoF]

Meanwhile, Microsoft 365 Defender’s [automated investigation and response](m365d-autoir.md) capabilities can automatically investigate and apply remediation actions to malicious and suspicious items. These capabilities scale investigation and resolution to threats, freeing incident responders to focus their efforts on high-impact attacks.

You can [configure](m365d-configure-auto-investigation-response.md) and [manage](m365d-autoir-actions.md) automated investigation and response capabilities. You can also view all past and pending actions through the [Action center](m365d-action-center.md).

> [!NOTE]
> You can undo automatic actions after review.

To speed up some of your investigation tasks, you can [triage alerts with Power Automate](investigate-alerts.md#use-power-automate-to-triage-alerts). In addition, automated remediation can be created using automation and playbooks. Microsoft has [playbook templates on GitHub](https://github.com/microsoft/Microsoft-Cloud-App-Security/tree/master/Playbooks) for the following scenarios:

- Remove sensitive file sharing after requesting user validation
- Auto-triage infrequent country alerts
- Request for manager action before disabling an account
- Disable malicious inbox rules

Playbooks use Power Automate to create custom robotic process automation flows to automate certain activities once specific criteria have been triggered. Organizations can create playbooks either from existing templates or from scratch. Playbooks can also be created during post-incident review to create remediation actions from resolved incidents.

Learn how Power Automate can help you automate your incident response through this video:

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWFIRn]

## Manual remediation

While responding to an attack, security teams can leverage the portal's manual remediation actions to stop attacks from further incurring damage. Some actions can immediately stop a threat, while others assist in further forensic analysis. You can apply these actions to any entity depending on the Defender workloads deployed within your organization.

### Actions on devices

- [**Isolate the device**](/microsoft-365/security/defender-endpoint/respond-machine-alerts#isolate-devices-from-the-network) - isolates an affected device by disconnecting the device from the network. The device remains connected to the Defender for Endpoint service for continued monitoring. 
- [**Restrict app execution**](/microsoft-365/security/defender-endpoint/respond-machine-alerts#restrict-app-execution) - restricts an application by applying a code integrity policy that only allows files to run if they're signed by a Microsoft-issued certificate.
- [**Run Antivirus scan**](/microsoft-365/security/defender-endpoint/respond-machine-alerts#run-microsoft-defender-antivirus-scan-on-devices) - initiates a Defender Antivirus scan remotely for a device. The scan can run alongside other antivirus solutions, whether Defender Antivirus is the active antivirus solution or not.
- [**Collect investigation package**](/microsoft-365/security/defender-endpoint/respond-machine-alerts#collect-investigation-package-from-devices) - you can collect an investigation package from a device as part of the investigation or response process. By collecting the investigation package, you can identify the current state of the device and further understand the tools and techniques used by the attacker.
- [**Initiate automated investigation**](/microsoft-365/security/defender-endpoint/respond-machine-alerts#initiate-automated-investigation) - starts a new general purpose automated investigation on the device. While an investigation is running, any other alert generated from the device will be added to an ongoing automated investigation until that investigation is completed. In addition, if the same threat is seen on other devices, those devices are added to the investigation.
- [**Initiate live response**](/microsoft-365/security/defender-endpoint/respond-machine-alerts#initiate-live-response-session) -  gives you instantaneous access to a device by using a remote shell connection so you can do in-depth investigative work and take immediate response actions to promptly contain identified threats in real time. Live response is designed to enhance investigations by enabling you to collect forensic data, run scripts, send suspicious entities for analysis, remediate threats, and proactively hunt for emerging threats.
 
- [**Ask Defender Experts**](/microsoft-365/security/defender-endpoint/respond-machine-alerts#consult-a-threat-expert) - you can consult a Microsoft Defender expert for more insights regarding potentially compromised or already compromised devices. Microsoft Defender experts can be engaged directly from within the portal for a timely and accurate response. This action is available for both devices and files.

Other actions on devices are available through the following tutorial:

- [Response actions on a device enabled through Defender for Endpoint](/microsoft-365/security/defender-endpoint/respond-machine-alerts)

> [!NOTE]
> You can take actions on devices straight from the graph within the attack story.

### Actions on files

- [**Stop and quarantine file**](/microsoft-365/security/defender-endpoint/respond-file-alerts#stop-and-quarantine-files-in-your-network) - includes stopping running processes, quarantining files, and deleting persistent data like registry keys.
- [**Add indicators to block or allow file**](/microsoft-365/security/defender-endpoint/respond-file-alerts#add-indicator-to-block-or-allow-a-file) - prevents an attack from spreading further by banning potentially malicious files or suspected malware. This operation prevents the file from being read, written, or executed on devices in your organization.
- [**Download or collect file**](/microsoft-365/security/defender-endpoint/respond-file-alerts#download-or-collect-file) – allows analysts to download a file in a password protected .zip archive file for further analysis by the organization.
- [**Deep analysis**](/microsoft-365/security/defender-endpoint/respond-file-alerts#deep-analysis) – executes a file in a secure, fully instrumented cloud environment. Deep analysis results show the file's activities, observed behaviors, and associated artifacts, such as dropped files, registry modifications, and communication with IP addresses.

## Remediating other attacks

> [!NOTE]
> These tutorials apply when other Defender workloads are enabled in your environment.

The following tutorials enumerate steps and actions that you can apply when investigating entities or responding to specific threats:

-	[Responding to a compromised email account via Defender for Office 365](/microsoft-365/security/office-365-security/responding-to-a-compromised-email-account.md)
-	[Remediating vulnerabilities with Defender for Vulnerability Management](/microsoft-365/security/defender-vulnerability-management/tvm-remediation.md)
-	[Remediation actions for user accounts via Defender for Identity](/defender-for-identity/remediation-actions)
-	[Applying policies to control apps with Defender for Cloud Apps](/defender-cloud-apps/control-cloud-apps-with-policies)

## Next steps

-	[Simulate attacks through the attack simulation training](eval-defender-investigate-respond-simulate-attack.md)
- Explore Microsoft 365 Defender through the [Virtual Ninja training](https://adoption.microsoft.com/ninja-show/)

## See also

- [Investigate incidents](investigate-incidents.md)
- Learn the portal's features and functions through the [Microsoft 365 Defender Ninja training](https://techcommunity.microsoft.com/t5/microsoft-365-defender/become-a-microsoft-365-defender-ninja/ba-p/1789376)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
