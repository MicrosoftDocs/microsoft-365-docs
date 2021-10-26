---
title: Overview of Microsoft Defender for Business
description: Learn about Microsoft Defender for Business, including setup, getting started, and how to use the services
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: overview
ms.date: 10/26/2021
ms.prod: m365-security
ms.technology: mdb
localization_priority: Normal
ms.reviewer: inbadian, shlomiakirav
f1.keywords: NOCSH 
ms.collection: 
- SMB
- M365-security-compliance
---

# Overview of Microsoft Defender for Business

> [!IMPORTANT]
> Some information in this article relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This article includes links to online content that might describe some features that are not included in Microsoft Defender for Business (preview).

Microsoft Defender for Business is a new endpoint security solution that was designed especially for the small and medium-sized business (up to 300 employees). Defender for Business brings the power of enterprise endpoint security in an easy-to-use and cost-effective solution. With Defender for Business, you can help protect the devices and data your business uses with:

- **Enterprise-grade security**. Defender for Business brings powerful endpoint security capabilities from our industry-leading [Microsoft Defender for Endpoint](../defender-endpoint/microsoft-defender-endpoint.md) solution and optimizes those capabilities for IT administrators to support small and medium-sized businesses.

- **An easy-to-use security solution**. Defender for Business offers streamlined experiences that guide you to action with recommendations and insights into the security of your endpoints. No specialized knowledge is required, because Defender for Business offers wizard-driven configuration and default security policies that are designed to help protect your company's devices from day one.

- **Flexibility for your environment**. Defender for Business can work with your business environment, whether you are using the Microsoft Cloud, on-premises technology, or non-Microsoft productivity solutions. Defender for Business works with components that are built into Windows, and with apps for macOS, iOS, and Android devices.

- **Integration with Microsoft 365 Lighthouse**. If you're a Managed Service Provider (MSP) using [Microsoft 365 Lighthouse](../../lighthouse/m365-lighthouse-overview.md), more capabilities are available. During preview, integration with Defender for Business provides MSPs with a view of security incidents and alerts across customers who are onboarded to Microsoft 365 Lighthouse.

This guide is intended to:

- Provide you with an overview of Microsoft Defender for Business so you know what’s included and how it works.
- Walk through setting up and configuring your threat protection capabilities.
- Help you get started using your endpoint protection solution.

## What's included in Microsoft Defender for Business?

:::image type="content" source="media/mdb-offering-overview.png" alt-text="Microsoft Defender for Business features and capabilities.":::

The following table summarizes the features and capabilities available in Microsoft Defender for Business and includes links to learn more.<br/><br/>

| Capability | Description |
|---|---|
| [Next-generation protection](#next-generation-protection) |Next-generation protection includes antimalware and antivirus protection—on your devices and in the cloud—to protect against threats. |
| [Endpoint detection and response](#endpoint-detection-and-response) | Endpoint detection and response (EDR) receives security signals across your network, devices, and kernel behavior. EDR capabilities include: <br/>- [Behavioral-based detection](#behavioral-based-detection) <br/>- [Manual response actions](#manual-response-actions) <br/>- [Live response](#live-response) |
| [Threat & vulnerability management](#threat-and-vulnerability-management) (TVM) | TVM provides you with actionable information that can help mitigate threats and vulnerabilities in your environment.|
| [Attack surface reduction](#attack-surface-reduction) | Your attack surfaces are all the places and ways that your company is vulnerable to a cyberattack. Attack surface reduction capabilities include: <br/>- [Ransomware mitigation](#ransomware-mitigation)  <br/>- [Attack surface reduction rules](#attack-surface-reduction-rules) <br/>- [Application control](#application-control) <br/>- [Web protection](#web-protection) <br/>- [Network protection](#network-protection) <br/>- [Network firewall](#network-firewall) |
| [Automated investigation and response](#automated-investigation-and-response) | Automated investigation and response (AIR) capabilities are designed to examine alerts and take immediate action to resolve breaches. AIR can save your security team much time and effort. All remediation actions are tracked, and you can undo actions if needed. |
| [Centralized management and reporting](#centralized-management-and-reporting) | Defender for Endpoint enables your security operations team to centrally manage your organization’s threat protection solution and settings. Your centralized management and reporting capabilities include: <br/>- [Several setup and configuration options](#setup-and-configuration-options) <br/>- [Role-based access control](#role-based-access-control)<br/>- [Reports](#reporting)  |
| [APIs](#apis) (for integration)| Application programming interfaces (APIs) like the Defender for Endpoint APIs enable applications to communicate with each other. To learn more, see [APIs](#apis). |

The following sections provide more details about what's included in Microsoft Defender for Business.

## Next-generation protection

Next-generation protection includes antimalware and antivirus protection—on your devices and in the cloud—to protect against threats. Next-generation protection in Microsoft Defender for Business includes:

- Behavior-based, heuristic, and real-time antivirus protection. Files or processes that have suspicious attributes or exhibit malicious behaviors are stopped in their tracks, and are analyzed immediately.
- Cloud-delivered protection, which includes near-instant detection and blocking of new and emerging threats. As threats are detected, they’re sent to the cloud for immediate analysis. If they’re determined to be malicious, they’re logged as such, and are blocked immediately. Detection, blocking, analysis, and determination happens almost instantly. Other users/customers (in addition to your organization) benefit from these capabilities, too, as the newly identified threats are now blocked on their devices.
- Dedicated protection and product updates, including updates related to Microsoft Defender Antivirus. Microsoft works continuously to deliver updates that include antimalware, antivirus, and security intelligence updates. 

To learn more, see [Next-generation protection](../defender-endpoint/next-generation-protection.md).

## Endpoint detection and response

Endpoint detection and response (EDR) receives security signals across your network, devices, and kernel behavior. As threats are detected, alerts are created. Multiple alerts of the same type are aggregated into incidents, which makes it easier for your security operations team to investigate and respond. Microsoft Defender for Business includes these EDR capabilities:

- [Behavioral-based detection](#behavioral-based-detection)
- [Manual response actions](#manual-response-actions)
- [Live response](#live-response)

### Behavioral-based detection

Behavioral blocking and containment capabilities can help identify and stop threats, based on their behaviors and process trees even when a threat has started execution. Whenever suspicious behavior is detected, the threat is contained, alerts are created, and threats are stopped in their tracks. 

To learn more, see [Behavioral blocking and containment](../defender-endpoint/behavioral-blocking-containment.md).

### Manual response actions

Microsoft Defender for Business includes certain [response actions](../defender-endpoint/respond-machine-alerts.md) that can be taken when a device is detected as potentially compromised or having suspicious content. You can also run [response actions on files](../defender-endpoint/respond-file-alerts.md) that are detected as threats.

The following table the manual response actions that are available in your plan.

| File/Device | Response action | Description |
|:---|:---|:---|
| Device | Run antivirus scan | Starts an antivirus scan. If any threats are detected on the device, they’re often addressed during the scan. |
| Device | Isolate device | Disconnects a device from your organization’s network while retaining connectivity to Microsoft Defender for Business. This action enables you to monitor the device and take further action if needed. |
| File | Stop and quarantine | Stops processes from running and quarantines associated files. |
| File | Add an indicator to block or allow a file | *Block* indicators prevent portable executable files from being read, written, or executed on devices. <p> *Allow* indicators prevent files from being blocked or remediated.  |

To learn more, see the following articles: 

- [Take response actions on a device](../defender-endpoint/respond-machine-alerts.md) 
- [Take response actions on a file](../defender-endpoint/respond-file-alerts.md)

### Live response

Live response enables your security team to connect to a device using a remote shell connection. When connected, you can use certain commands to perform tasks, such as collecting forensic data, analyzing a file, running a script, sending suspicious entities for analysis, remediating a file, and hunting proactively for threats. Live response enables you to do in-depth investigative work and take immediate response actions to promptly contain identified threats in real time. 

To learn more, including a list of basic commands, see [Investigate entities on devices using live response](../defender-endpoint/live-response.md).

## Threat and vulnerability management

Threat & vulnerability management (TVM) provides you with actionable information that can help mitigate threats and vulnerabilities in your environment. TVM includes a dashboard that highlights potential threats and features to configure. 

Security recommendations are provided to help you set up Microsoft Defender for Business correctly. Potential security issues are called to your attention so you can address them right away. 

To learn more, see [Threat and vulnerability management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md).

## Attack surface reduction

Your attack surfaces are all the places and ways that your company is vulnerable to a cyberattack. You can reduce your attack surfaces by protecting your devices and applications that your organization uses. Your attack surface reduction capabilities are described in the following sections:

- [Ransomware mitigation](#ransomware-mitigation)
- [Attack surface reduction rules](#attack-surface-reduction-rules)
- [Application control](#application-control)
- [Web protection](#web-protection)
- [Network protection](#network-protection)
- [Network firewall](#network-firewall)

### Ransomware mitigation

With controlled folder access, you get ransomware mitigation. Controlled folder access allows only trusted apps to access protected folders on your devices, such as computers. Apps are added to the trusted apps list based on their prevalence and reputation. Your security operations team can add or remove apps from the trusted apps list, too. 

To learn more, see [Protect important folders with controlled folder access](../defender-endpoint/controlled-folders.md).

### Attack surface reduction rules

Attack surface reduction rules target certain software behaviors that are considered risky. Such behaviors include:

- Launching executable files and scripts that attempt to download or run other files
- Running obfuscated or otherwise suspicious scripts
- Performing behaviors that apps don't usually initiate during normal day-to-day work

Legitimate business applications can exhibit such software behaviors; however, these behaviors are often considered risky because they are commonly abused by attackers through malware. Attack surface reduction rules can constrain risky behaviors and help keep your organization safe. 

To learn more, see [Use attack surface reduction rules to prevent malware infection](../defender-endpoint/attack-surface-reduction.md).

### Application control

With application control capabilities, you can configure your organization’s devices to run only authorized apps, drivers, and signed code. Formerly referred to as device control or device guard, application control requires applications to earn trust by meeting certain requirements.

To learn more, see [Windows Defender Application Control](/windows/security/threat-protection/windows-defender-application-control/wdac-and-applocker-overview).

### Web protection

With web protection, you can protect your organization’s devices from web threats and unwanted content. Web protection includes web threat protection and web content filtering.

- [Web threat protection](../defender-endpoint/web-threat-protection.md) prevents access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, and sites that you explicitly block.
- [Web content filtering](../defender-endpoint/web-content-filtering.md) prevents access to certain sites based on their category. Categories can include adult content, leisure sites, legal liability sites, and more.

To learn more, see [web protection](../defender-endpoint/web-protection-overview.md).

### Network protection

With network protection, you can prevent your organization from accessing dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet.

To learn more, see [Protect your network](../defender-endpoint/network-protection.md).

### Network firewall

With network firewall protection, you can set rules that determine which network traffic is permitted to flow to or from your organization’s devices. With your network firewall and advanced security that you get with Microsoft Defender for Business, you can:

- Reduce the risk of network security threats
- Safeguard sensitive data and intellectual property
- Extend your security investment

To learn more, see [Windows Defender Firewall with advanced security](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security).

## Automated investigation and response

Automated investigation and response (AIR) capabilities are designed to examine alerts and take immediate action to resolve breaches. AIR capabilities significantly reduce alert volume, allowing you to focus on more sophisticated threats and other high-priority things. All remediation actions are tracked in the Action center, and most remediation actions can be undone if needed. 

To learn more, see [Overview of automated investigations](../defender-endpoint/automated-investigations.md).

## Centralized management and reporting

Microsoft Defender for Business enables you to manage your company’s security settings efficiently and effectively. The Microsoft 365 Defender portal provides you with [up-to-date reports](#reporting) and a [simplified setup experience](#setup-and-configuration-options). You can also control who in your company accesses the Microsoft 365 Defender portal with [role-based access control](#role-based-access-control). The next few sections provide more details about your centralized management and reporting features in Microsoft Defender for Business.

### Setup and configuration options

When it comes to setting up and configuring Microsoft Defender for Business, you can choose from several options, as listed in the following table: <br/><br/>

| Method | Description |
|:---|:---|
| The simplified experience in the Microsoft 365 Defender portal<br/><br/>(This option is recommended for most customers) | Microsoft Defender for Business is designed to save you time and effort with a streamlined experience in the Microsoft 365 Defender portal. Microsoft Defender for Business includes default policies that protect your devices as soon as those devices are onboarded. The default policy settings are based on best practices and are designed to help you be productive while working more securely. And you're not limited to the default settings; you can keep your default settings, or make changes to suit your business needs.<br/><br/> To learn more, see [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md). |
| Microsoft Endpoint Manager | [Endpoint Manager](/mem/endpoint-manager-overview) helps deliver modern workplace and management to keep your data secure, in the cloud and on-premises. Endpoint Manager includes services and tools to manage and monitor mobile devices, desktop computers, virtual machines, embedded devices, and servers. Endpoint Manager includes Microsoft Intune, Configuration Manager, Desktop Analytics, co-management, and Windows Autopilot. These services are part of the Microsoft 365 stack to help secure access, protect data, and respond to and manage risk. <br/><br/>If you are already using Endpoint Manager to manage your devices and security settings, you can continue to use Endpoint Manager with Defender for Business. | 
| Non-Microsoft device management solution | If you are using a non-Microsoft device management solution, such as Jamf for macOS or ANsible for Linux, you can use your solution with Defender for Business. In general, devices that are supported in Defender for Endpoint are supported in Defender for Business. <br/><br/>To learn more, see [Defender for Endpoint: Onboard non-Windows devices](../defender-endpoint/configure-endpoints-non-windows.md).  |

To learn more about the setup and configuration process, see [Setup and configuration](mdb-setup-configuration.md).

### Role-based access control

With role-based access control (RBAC), permissions and access are granted through roles and groups. Certain roles, such as security operator, can view and address threats, whereas the security administrator role can configure your company’s threat protection features. RBAC gives you fine-grained control over who can access the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), and what they can see and do in the portal. 

To learn more, see [Manage portal access using role-based access control](../defender-endpoint/rbac.md).

### Reporting

The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) provides you with easy access to current information. At a glance, you'll learn about any detected threats and actions to address those threats.

- The **Home** page includes cards to show at a glance which users or devices are at risk, how many threats were detected, and what alerts/incidents were created.
- The **Incidents** section lists any incidents that were created as a result of triggered alerts. Alerts are generated and incidents are created as threats are detected on the devices your company is using.
- The **Action center** lists remediation actions that were taken. For example, if a file is sent to quarantine, or a URL is blocked, each action is listed in the Action center on the History tab.
- The **Reports** section includes reports that show threats detected and their status. 

To learn more, see [Getting started with Microsoft Defender for Business](mdb-get-started.md).

## APIs

Application programming interfaces (APIs) enable applications to communicate with each other. Your company can use Microsoft Defender for Endpoint APIs to automate workflows and integrate your security solution with another custom solution. 

To learn more, see [Defender for Endpoint APIs](../defender-endpoint/management-apis.md).

## Next steps

Now that you have an overview of Microsoft Defender for Business, your next steps include:

- [Setting up and configuring Microsoft Defender for Business](mdb-setup-configuration.md)

- [Getting started with Microsoft Defender for Business](mdb-get-started.md)

