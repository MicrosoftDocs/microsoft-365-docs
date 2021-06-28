---
title: What is Microsoft Defender for business?
description: Learn about Microsoft Defender for business, including setup, getting started, and how to use the services
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 06/23/2021
ms.prod: m365-security
ms.technology: dforbiz
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
---

# What is Microsoft Defender for business?

Microsoft Defender for business is a security solution designed to help protect the devices and data your business uses. Microsoft Defender for business includes all of the following features and capabilities:

| Symbol | Capability | Description |
| --- | --- | --- |
| ![Threat protection symbol](../../media/security/security-threat-castle-32.png) | [Threat and vulnerability management](#threat-and-vulnerability-management) | Threat & vulnerability management (TVM) provides you with actionable information that can help mitigate threats and vulnerabilities in your environment.|
| ![Next-generation protection symbol](../../media/security/security-shield-divided-32.png) | [Next-generation protection](#next-generation-protection) |Next-generation protection includes antimalware and antivirus protection—on your devices and in the cloud—to protect against threats. |
| ![Attack surface reduction symbol](../../media/security/security-shield-slash-32.png) | [Attack surface reduction](#attack-surface-reduction) | Your attack surfaces are all the places and ways that your company is vulnerable to a cyberattack. |
| ![Endpoint detection and response symbol](../../media/security/security-shield-lightning-32.png) | [Endpoint detection and response](#endpoint-detection-and-response) | Endpoint detection and response (EDR) receives security signals across your network, devices, and kernel behavior. |
| ![Automated investigation and response symbol](../../media/security/security-toolkit-32.png) | [Automated investigation and response](#automated-investigation-and-response) | Automated investigation and response (AIR) capabilities are designed to examine alerts and take immediate action to resolve breaches.|
| ![Lightbulb symbol](/office/media/icons/lightbulb-idea-capture-blue.png) | [Threat intelligence](#threat-intelligence) | Threat intelligence capabilities include indicators of compromise and threat analytics.  |
| ![Secure document symbol](/office/media/icons/secure-document-blue.png) | [Centralized management and reporting](#centralized-management-and-reporting) | Defender for Endpoint enables your security operations team to centrally manage your organization’s threat protection solution and settings.  |
| ![Connector symbol](/office/media/icons/connector-blue.png) | [Cross-platform support](#cross-platform-support) | Most organizations use a variety of devices and operating systems, such as computers running Windows, macOS, or Linux, and mobile devices running iOS or Android. |
| ![API symbol](/office/media/icons/api.png) | [APIs](#apis) (for integration)| Application programming interfaces (APIs) like the Defender for Endpoint APIs enable applications to communicate with each other. |

## Threat and vulnerability management

Threat & vulnerability management (TVM) provides you with actionable information that can help mitigate threats and vulnerabilities in your environment. TVM includes a dashboard that highlights potential threats and features to configure. 

SCREENSHOT NEEDED

Security recommendations are provided to help you set up Microsoft Defender for business correctly. Potential security issues are called to your attention so you can address them right away. 
To learn more, see Threat and vulnerability management.

## Next-generation protection

Next-generation protection includes antimalware and antivirus protection—on your devices and in the cloud—to protect against threats. Next-generation protection in Microsoft Defender for business includes:

- Behavior-based, heuristic, and real-time antivirus protection. Files or processes that have suspicious attributes or exhibit malicious behaviors are stopped in their tracks, and are analyzed immediately.
- Cloud-delivered protection, which includes near-instant detection and blocking of new and emerging threats. As threats are detected, they’re sent to the cloud for immediate analysis. If they’re determined to be malicious, they’re logged as such, and are blocked immediately. Detection, blocking, analysis, and determination happens almost instantly. Other users/customers (in addition to your organization) benefit from these capabilities, too, as the newly identified threats are now blocked on their devices.
- Dedicated protection and product updates, including updates related to Microsoft Defender Antivirus. Microsoft works continuously to deliver updates that include antimalware, antivirus, and security intelligence updates. 

To learn more, see Next-generation protection in Windows.

## Attack surface reduction

Your attack surfaces are all the places and ways that your company is vulnerable to a cyberattack. You can reduce your attack surfaces by protecting your devices and applications that your organization uses. Your attack surface reduction capabilities are described in the following sections:

- Ransomware mitigation
- Attack surface reduction rules
- Application control
- Web protection
- Network protection
- Network firewall

### Ransomware mitigation

With controlled folder access, you get ransomware mitigation. Controlled folder access allows only trusted apps to access protected folders on your devices, such as computers. Apps are added to the trusted apps list based on their prevalence and reputation. Your security operations team can add or remove apps from the trusted apps list, too. 

To learn more, see Protect important folders with controlled folder access.

### Attack surface reduction rules

Attack surface reduction rules target certain software behaviors that are considered risky. Such behaviors include:

- Launching executable files and scripts that attempt to download or run other files
- Running obfuscated or otherwise suspicious scripts
- Performing behaviors that apps don't usually initiate during normal day-to-day work

Legitimate business applications can exhibit such software behaviors; however, these behaviors are often considered risky because they are commonly abused by attackers through malware. Attack surface reduction rules can constrain risky behaviors and help keep your organization safe. 

To learn more, see Use attack surface reduction rules to prevent malware infection.

### Application control

With application control capabilities, you can configure your organization’s devices to run only authorized apps, drivers, and signed code. Formerly referred to as device control or device guard, application control requires applications to earn trust by meeting certain requirements. 

To learn more, see Windows Defender Application Control.

### Web protection

With web protection, you can protect your organization’s devices from web threats and unwanted content. Web protection includes web threat protection and web content filtering.

- Web threat protection prevents access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, and sites that you explicitly block.
- Web content filtering prevents access to certain sites based on their category. Categories can include adult content, leisure sites, legal liability sites, and more.

To learn more, see web protection.

### Network protection

With network protection, you can prevent your organization from accessing dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet. 
To learn more, see Protect your network.

### Network firewall

With network firewall protection, you can set rules that determine which network traffic is permitted to flow to or from your organization’s devices. With your network firewall and advanced security that you get with Microsoft Defender for business, you can:

- Reduce the risk of network security threats
- Safeguard sensitive data and intellectual property
- Extend your security investment

To learn more, see Windows Defender Firewall with advanced security.

## Endpoint detection and response

Endpoint detection and response (EDR) receives security signals across your network, devices, and kernel behavior. As threats are detected, alerts are created. Multiple alerts of the same type are aggregated into incidents, which makes it easier for your security operations team to investigate and respond. Microsoft Defender for business includes these EDR capabilities:

- Behavioral-based detection
- Manual response actions
- Live response

### Behavioral-based detection

Behavioral blocking and containment capabilities can help identify and stop threats, based on their behaviors and process trees even when a threat has started execution. Whenever suspicious behavior is detected, the threat is contained, alerts are created, and threats are stopped in their tracks. 

To learn more, see Behavioral blocking and containment.

### Manual response actions

Microsoft Defender for business includes certain response actions that can be taken when a device is detected as potentially compromised or having suspicious content. You can also run response actions on files that are detected as threats.

The following table the manual response actions that are available in your plan.

| File/Device | Action | Description |
|:---|:---|:---|
| Device | Run antivirus scan | Starts an antivirus scan. If any threats are detected on the device, they’re often addressed during the scan. |
| Device | Isolate device | Disconnects a device from your organization’s network while retaining connectivity to Defender for Endpoint. This action enables you to monitor the device and take further action if needed. |
| File | Stop and quarantine | Stops processes from running and quarantines associated files. |
| File |Add an indicator to block or allow a file | Block indicators prevent portable executable files from being read, written, or executed on devices. <p> Allow indicators prevent files from being blocked or remediated.  |

To learn more, see the following articles: 

- [Take response actions on a device](../defender-endpoint/respond-machine-alerts.md) 
- [Take response actions on a file](../defender-endpoint/respond-file-alerts.md)

### Live response

Live response enables your security team to connect to a device using a remote shell connection. When connected, you can use certain commands to perform tasks, such as collecting forensic data, analyzing a file, running a script, sending suspicious entities for analysis, remediating a file, and hunting proactively for threats. Live response enables you to do in-depth investigative work and take immediate response actions to promptly contain identified threats in real time. 

To learn more, see [Investigate entities on devices using live response](../defender-endpoint/live-response.md).

## Automated investigation and response

Automated investigation and response (AIR) capabilities are designed to examine alerts and take immediate action to resolve breaches. AIR capabilities significantly reduce alert volume, allowing you to focus on more sophisticated threats and other high-priority things. All remediation actions are tracked in the Action center, and most remediation actions can be undone if needed. 

To learn more, see [Overview of automated investigations](../defender-endpoint/automated-investigations.md).

## Threat intelligence

Threat intelligence capabilities include indicators of compromise and threat analytics. Together, these capabilities enable you to block or allow certain entities and learn more about current, relevant threats. 

### Indicators of compromise

Indicators of compromise (also referred as indicators) enable you to define “allow” or “block” lists of entities, such as files, URLs, and certificates. For example, suppose that a certain file that your company uses is detected as a threat, but you know that file is not actually a threat. You can create an indicator for that file so that it’s not blocked by threat protection features in Defender for Endpoint. 

The following table summarizes the entities and actions that are supported for indicators.

| Entity types | Supported actions |
|:---|:---|
| Files <br/> IP addresses <br/> URLs/domains <br/> Certificates | Allow <br/> Alert only <br/> Alert and block|

To learn more, see [Manage indicators](../defender-endpoint/manage-indicators.md).

## Threat analytics

Threat analytics is a set of reports from expert Microsoft security researchers covering the most relevant threats, including:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

Each report provides a detailed analysis of a threat and extensive guidance on how to defend against that threat. It also incorporates data from your network, indicating whether the threat is active and if you have applicable protections in place. 

To learn more, see [Track and respond to emerging threats with threat analytics](../defender-endpoint/threat-analytics.md).

## Centralized management and reporting

Defender for Endpoint enables your security operations team to centrally manage your organization’s threat protection solution and settings. With role-based access control, simplified setup and configuration, and reporting, you can manage your security solution efficiently and effectively.

### Role-based access control

Using role-based access control (RBAC) in Microsoft 365, permissions and access are granted through roles and groups. Certain roles, such as security operator, can view and address threats, whereas the security administrator role can configure your company’s threat protection features. With RBAC, you have fine-grained control over who can access the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and what they can see and do in the security center. 

To learn more, see [Manage portal access using role-based access control](../defender-endpoint/rbac.md).

### Simplified client configuration

When it comes to configuring your security features on your company’s devices, you can choose from several options:

- Use the simplified experience in the Microsoft 365 Defender portal (recommended)
- Use Microsoft Endpoint Manager (Intune)

Microsoft Defender for business is designed to save you time and effort. The streamlined experience in the Microsoft 365 Defender portal includes a default policy to protect your devices. You can keep the default settings or make changes to suit your business needs. 

To learn more, see [Setup and configuration](mdb-setup-configuration.md).

### Reporting

The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) provides easy access to information about detected threats and actions to address those threats.

- The **Home** page includes cards to show at a glance which users or devices are at risk, how many threats were detected, and what alerts/incidents were created.
- The **Incidents & alerts** section lists any incidents that were created as a result of triggered alerts. Alerts and incidents are generated as threats are detected across devices.
- The **Action center** lists remediation actions that were taken. For example, if a file is sent to quarantine, or a URL is blocked, each action is listed in the Action center on the History tab.
- The **Reports** section includes reports that show threats detected and their status. 

To learn more, see [Defender for Endpoint in the Microsoft 365 Defender portal](../defender/microsoft-365-security-center-mde.md) and [Getting started with Microsoft Defender for business](mdb-get-started.md).

## Cross-platform support

Most organizations use a variety of devices and operating systems, such as computers running Windows, macOS, or Linux, and mobile devices running iOS or Android. Initially, Microsoft Defender for business supports Windows 10 devices only; however, we are planning to support additional operating systems in the future. 

To learn more, see [Defender for Endpoint (Windows)](../defender-endpoint/microsoft-defender-endpoint.md).

## APIs

Application programming interfaces (APIs) like the Defender for Endpoint APIs enable applications to communicate with each other. Your organization can use the Defender for Endpoint APIs to automate workflows and integrate your security solution with another custom solution, should the need arise. 

To learn more, see [Defender for Endpoint APIs](../defender-endpoint/management-apis.md).

## Next steps

Now that you have an overview of Microsoft Defender for business, your next steps include:

- [Setting up and configuring Microsoft Defender for business](mdb-setup-configuration.md)

- [Getting started with Microsoft Defender for business](mdb-get-started.md)

