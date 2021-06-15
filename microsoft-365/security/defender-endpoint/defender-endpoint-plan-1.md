---
title: Overview of Microsoft Defender for Endpoint Plan 1
description: Get an overview of Defender for Endpoint Plan 1. Learn about the features and capabilities included in this endpoint protection subscription.
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 06/15/2021 
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: 
f1.keywords: NOCSH
---

# Overview of Microsoft Defender for Endpoint Plan 1

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help organizations like yours to prevent, detect, investigate, and respond to advanced threats. Soon, Defender for Endpoint will be available in two plans: 

- Defender for Endpoint Plan 1 (currently in preview)
- Defender for Endpoint Plan 2 (available now)

> [!TIP]
> To learn more, see [Compare Microsoft Defender for Endpoint Plan 1 to Plan 2](defender-endpoint-plan-1-2.md).

This guide focuses on Defender for Endpoint Plan 1, currently in private preview. Use this guide to:

- Get an overview of what’s included in Defender for Endpoint Plan 1.
- Learn how to set up and configure your threat protection capabilities.
- Get started using the Microsoft 365 Defender portal, where you can view incidents and alerts, manage devices, and use reports about detected threats.

Thank you for participating in our preview program! Give us feedback on your overall experience with your security features and our documentation. We’ll use your feedback to improve the quality of our content and our products/services.

> [!IMPORTANT]
> Some information in this guide relates to prereleased products/services that might be substantially modified before they are commercially released. Microsoft makes no warranties, express or implied, for the information provided here. This guide includes links to online content that might describe some features that are not included in Defender for Endpoint Plan 1.

## What's included in Defender for Endpoint Plan 1?

At a high level, Defender for Endpoint Plan 1 includes all of the following features and capabilities:

- [Next-generation protection](#next-generation-protection) (includes antimalware and antivirus)
- [Attack surface reduction](#attack-surface-reduction)
- [Manual response actions](#manual-response-actions)
- [Centralized management](#centralized-management)
- [Support for Windows devices and iOS devices](#cross-platform-support)

The features and capabilities in Defender for Endpoint Plan 1 are described in the following sections.

## Next-generation protection

Your next-generation protection in Defender for Endpoint Plan 1 includes Microsoft Defender Antivirus and robust antimalware protection. With this protection, you get:

- Behavior-based, heuristic, and real-time antivirus protection
- Cloud-delivered protection, which includes near-instant detection and blocking of new and emerging threats
- Dedicated protection and product updates, including updates related to Microsoft Defender Antivirus

To learn more, see [Next-generation protection in Windows](microsoft-defender-antivirus-in-windows-10.md).

## Attack surface reduction

Your organization’s attack surfaces are all the places where you’re vulnerable to cyberattacks. With Defender for Endpoint Plan 1, you can reduce your attack surfaces by protecting the devices and applications that your organization uses. The attack surface reduction capabilities in Defender for Endpoint Plan 1 are described in the following sections.

- [Ransomware mitigation](#ransomware-mitigation)
- [Attack surface reduction rules](#attack-surface-reduction-rules)
- [Device control](#device-control)
- [Web protection](#web-protection)
- [Network protection](#web-protection)
- [Network firewall](#network-firewall)

To learn more about attack surface reduction capabilities in Defender for Endpoint, see [Overview of attack surface reduction](overview-attack-surface-reduction.md).

### Ransomware mitigation

With controlled folder access, you get ransomware mitigation. Controlled folder access allows only trusted apps to access protected folders on your endpoints. Apps are added to the trusted apps list based on their prevalence and reputation. Your security operations team can add or remove apps from the trusted apps list, too.

To learn more, see [Protect important folders with controlled folder access](controlled-folders.md).

### Attack surface reduction rules

Attack surface reduction rules target certain software behaviors that are considered risky. Such behaviors include:

- Launching executable files and scripts that attempt to download or run other files
- Running obfuscated or otherwise suspicious scripts
- Initiating behaviors that apps don't usually initiate during normal work

Legitimate business applications can exhibit such software behaviors; however, these behaviors are often considered risky because they are commonly abused by attackers through malware. Attack surface reduction rules can constrain risky behaviors and help keep your organization safe.

To learn more, see [Use attack surface reduction rules to prevent malware infection](attack-surface-reduction.md).

### Device control

Sometimes threats to your organization’s devices come in the form of files on removable drives, such as USB drives. Defender for Endpoint includes capabilities to help prevent threats from unauthorized peripherals from compromising your devices. You can configure Defender for Endpoint to block or allow removable devices and files on removable devices. 

To learn more, see [Control USB devices and removable media](control-usb-devices-using-intune.md).

### Web protection

With web protection, you can protect your organization’s devices from web threats and unwanted content. Web protection includes web threat protection and web content filtering.

- [Web threat protection](web-threat-protection.md) prevents access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, and sites that you explicitly block.
- [Web content filtering](web-content-filtering.md) prevents access to certain sites based on their category. Categories can include adult content, leisure sites, legal liability sites, and more.

To learn more, see [web protection](web-protection-overview.md).

### Network protection

With network protection, you can prevent your organization from accessing dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet. 

To learn more, see [Protect your network](network-protection.md).

### Network firewall

With network firewall protection, you can set rules that determine which network traffic is permitted to flow to or from your organization’s devices. With your network firewall and advanced security that you get with Defender for Endpoint, you can:

- Reduce the risk of network security threats
- Safeguard sensitive data and intellectual property
- Extend your security investment

To learn more, see [Windows Defender Firewall with advanced security](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security).

## Manual response actions

Defender for Endpoint includes certain [response actions that can be taken when a device is detected as potentially compromised](respond-machine-alerts.md) or having suspicious content. You can run [response actions on files that are detected as threats](respond-file-alerts.md). The following table lists the manual response actions that are available in Defender for Endpoint Plan 1. 

| File/Device |	Action | Description |
|:---|:---|:---|
| Device | Run antivirus scan | Starts an antivirus scan. If any threats are detected on the device, those threats are often addressed during an antivirus scan. |
| Device | Isolate device | Disconnects a device from your organization’s network while retaining connectivity to Defender for Endpoint. This action enables you to monitor the device and take further action if needed. |
| File | Stop and quarantine |Stops processes from running and quarantines associated files. |
| File | Add an indicator to block or allow a file | Block indicators prevent portable executable files from being read, written, or executed on devices. <p>--- or --- <p>Allow indicators prevent files from being blocked or remediated. |

To learn more, see: 

- [Take response actions on devices](respond-machine-alerts.md) 
- [Take response actions on files](respond-file-alerts.md)

## Centralized management

Defender for Endpoint enables your security operations team to centrally manage your organization’s threat protection solution and settings. Defender for Endpoint integrates with Microsoft Endpoint Manager and other Microsoft solutions. Choose from several methods to configure and manage Defender for Endpoint:

- Microsoft Endpoint Manager (this includes Intune and Microsoft Endpoint Configuration Manager)
- Group Policy Objects
- … and more!
 
To learn more, see Manage Defender for Endpoint.

### Role-based access control

Using role-based access control (RBAC), your security administrator can create roles and groups to grant appropriate access to the Microsoft 365 security center (https://security.microsoft.com). With RBAC, you have fine-grained control over who can access the security center, and what they can see and do. 
To learn more, see Manage portal access using role-based access control.

### Reporting

The Microsoft 365 security center (https://security.microsoft.com) provides easy access to information about detected threats and actions to address those threats. 

- The Home page includes cards to show at a glance which users or devices are at risk, how many threats were detected, and what alerts/incidents were created.
- The Incidents & alerts section lists any incidents that were created as a result of triggered alerts. Alerts and incidents are generated as threats are detected across devices.
- The Action center lists remediation actions that were taken. For example, if a file is sent to quarantine, or a URL is blocked, each action is listed in the Action center on the History tab.
- The Reports section includes reports that show threats detected and their status. 

To learn more, see the Getting started section in this guide.

### APIs

With the Defender for Endpoint APIs, you can automate workflows and integrate with your organization’s custom solutions. To learn more, see Defender for Endpoint APIs. 

## Cross-platform support

Most organizations use a variety of devices and operating systems, such as computers running Windows, macOS, or Linux, and mobile devices running iOS or Android. Defender for Endpoint Plan 1 provides threat protection across your organization’s Windows and iOS devices (with plans to support other operating systems soon). 

To learn more, see the following resources:

- Defender for Endpoint on Windows
- Defender for Endpoint on iOS

## See also

- [Compare Microsoft Defender for Endpoint Plan 1 to Plan 2](defender-endpoint-plan-1-2.md)
- [Microsoft Defender for Endpoint](microsoft-defender-endpoint.md)