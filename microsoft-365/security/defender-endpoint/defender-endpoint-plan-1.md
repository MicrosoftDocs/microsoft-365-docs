---
title: Overview of Microsoft Defender for Endpoint Plan 1
description: Get an overview of Defender for Endpoint Plan 1. Learn about the features and capabilities included in this endpoint protection subscription.
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.service: microsoft-365-security
ms.subservice: mde
ms.localizationpriority: medium
ms.date: 06/29/2023
ms.reviewer: shlomiakirav
f1.keywords: NOCSH
ms.collection: 
- m365-security
- tier1
ms.custom: intro-overview
---

# Overview of Microsoft Defender for Endpoint Plan 1

**Applies to**

- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help organizations like yours to prevent, detect, investigate, and respond to advanced threats. We are pleased to announce that Defender for Endpoint is now available in two plans: 

- **Defender for Endpoint Plan 1**, described in this article; and 
- **[Defender for Endpoint Plan 2](microsoft-defender-endpoint.md)**, generally available, and formerly known as [Defender for Endpoint](microsoft-defender-endpoint.md).

The green boxes in the following image depict what's included in Defender for Endpoint Plan 1:

:::image type="content" source="../../media/mde-p1/mde-p1-overview-diagram.png" alt-text="What's inculded with Defender for Endpoint Plan 1" lightbox="../../media/mde-p1/mde-p1-overview-diagram.png":::

Use this guide to:

- [Get an overview of what's included in Defender for Endpoint Plan 1](#defender-for-endpoint-plan-1-capabilities)
- [Compare Defender for Endpoint Plan 1 to Plan 2](defender-endpoint-plan-1-2.md)
- [Learn how to set up and configure Defender for Endpoint Plan 1](mde-p1-setup-configuration.md)
- [Get started using the Microsoft 365 Defender portal, where you can view incidents and alerts, manage devices, and use reports about detected threats](mde-plan1-getting-started.md)
- [Get an overview of maintenance and operations](manage-mde-post-migration.md)

> [!TIP]
> [Learn more about the differences between Defender for Endpoint Plan 1 and Plan 2](defender-endpoint-plan-1-2.md).

## Defender for Endpoint Plan 1 capabilities

Defender for Endpoint Plan 1 includes the following capabilities:

- **[Next-generation protection](#next-generation-protection)** that includes industry-leading, robust antimalware and antivirus protection
- **[Manual response actions](#manual-response-actions)**, such as sending a file to quarantine, that your security team can take on devices or files when threats are detected
- **[Attack surface reduction capabilities](#attack-surface-reduction)** that harden devices, prevent zero-day attacks, and offer granular control over endpoint access and behaviors
- **[Centralized configuration and management](#centralized-management)** with the Microsoft 365 Defender portal and integration with Microsoft Intune
- **[Protection for a variety of platforms](#cross-platform-support)**, including Windows, macOS, iOS, and Android devices

The following sections provide more details about these capabilities. 

## Next-generation protection

Next-generation protection includes robust antivirus and antimalware protection. With next-generation protection, you get: 

- Behavior-based, heuristic, and real-time antivirus protection 
- Cloud-delivered protection, which includes near-instant detection and blocking of new and emerging threats 
- Dedicated protection and product updates, including updates related to Microsoft Defender Antivirus 

To learn more, see [Next-generation protection overview](next-generation-protection.md).

## Manual response actions

Manual response actions are actions that your security team can take when threats are detected on endpoints or in files. Defender for Endpoint includes certain [manual response actions that can be taken on a device](respond-machine-alerts.md) that is detected as potentially compromised or has suspicious content. You can also run [response actions on files](respond-file-alerts.md) that are detected as threats. The following table summarizes the manual response actions that are available in Defender for Endpoint Plan 1. <br/><br/>

| File/Device | Action | Description |
|:---|:---|:---|
| Device | Run antivirus scan | Starts an antivirus scan. If any threats are detected on the device, those threats are often addressed during an antivirus scan. |
| Device | Isolate device | Disconnects a device from your organization's network while retaining connectivity to Defender for Endpoint. This action enables you to monitor the device and take further action if needed. |
| File | Stop and quarantine |Stops processes from running and quarantines associated files. |
| File | Add an indicator to block or allow a file | Block indicators prevent portable executable files from being read, written, or executed on devices. <p>Allow indicators prevent files from being blocked or remediated. |

To learn more, see the following articles:

- [Take response actions on devices](respond-machine-alerts.md) 
- [Take response actions on files](respond-file-alerts.md)

## Attack surface reduction

Your organization's attack surfaces are all the places where you're vulnerable to cyberattacks. With Defender for Endpoint Plan 1, you can reduce your attack surfaces by protecting the devices and applications that your organization uses. The attack surface reduction capabilities that are included in Defender for Endpoint Plan 1 are described in the following sections.

- [Attack surface reduction rules](#attack-surface-reduction-rules)
- [Ransomware mitigation](#ransomware-mitigation)
- [Device control](#device-control)
- [Web protection](#web-protection)
- [Network protection](#web-protection)
- [Network firewall](#network-firewall)
- [Application control](#application-control)

To learn more about attack surface reduction capabilities in Defender for Endpoint, see [Overview of attack surface reduction](overview-attack-surface-reduction.md).

### Attack surface reduction rules

Attack surface reduction rules target certain software behaviors that are considered risky. Such behaviors include:

- Launching executable files and scripts that attempt to download or run other files
- Running obfuscated or otherwise suspicious scripts
- Initiating behaviors that apps don't usually initiate during normal work

Legitimate business applications can exhibit such software behaviors; however, these behaviors are often considered risky because they are commonly abused by attackers through malware. Attack surface reduction rules can constrain risky behaviors and help keep your organization safe.

To learn more, see [Use attack surface reduction rules to prevent malware infection](attack-surface-reduction.md).

### Ransomware mitigation

With controlled folder access, you get ransomware mitigation. Controlled folder access allows only trusted apps to access protected folders on your endpoints. Apps are added to the trusted apps list based on their prevalence and reputation. Your security operations team can add or remove apps from the trusted apps list, too.

To learn more, see [Protect important folders with controlled folder access](controlled-folders.md).

### Device control

Sometimes threats to your organization's devices come in the form of files on removable drives, such as USB drives. Defender for Endpoint includes capabilities to help prevent threats from unauthorized peripherals from compromising your devices. You can configure Defender for Endpoint to block or allow removable devices and files on removable devices. 

To learn more, see [Control USB devices and removable media](control-usb-devices-using-intune.md).

### Web protection

With web protection, you can protect your organization's devices from web threats and unwanted content. Web protection includes web threat protection and web content filtering.

- [Web threat protection](web-threat-protection.md) prevents access to phishing sites, malware vectors, exploit sites, untrusted or low-reputation sites, and sites that you explicitly block.
- [Web content filtering](web-content-filtering.md) prevents access to certain sites based on their category. Categories can include adult content, leisure sites, legal liability sites, and more.

To learn more, see [web protection](web-protection-overview.md).

### Network protection

With network protection, you can prevent your organization from accessing dangerous domains that might host phishing scams, exploits, and other malicious content on the Internet. 

To learn more, see [Protect your network](network-protection.md).

### Network firewall

With network firewall protection, you can set rules that determine which network traffic is permitted to flow to or from your organization's devices. With your network firewall and advanced security that you get with Defender for Endpoint, you can:

- Reduce the risk of network security threats
- Safeguard sensitive data and intellectual property
- Extend your security investment

To learn more, see [Windows Defender Firewall with advanced security](/windows/security/threat-protection/windows-firewall/windows-firewall-with-advanced-security).

### Application control

Application control protects your Windows endpoints by running only trusted applications and code in the system core (kernel). Your security team can define application control rules that consider an application's attributes, such as its codesigning certificates, reputation, launching process, and more. Application control is available in Windows 10 or later.

To learn more, see [Application control for Windows](/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control).

## Centralized management

Defender for Endpoint Plan 1 includes the Microsoft 365 Defender portal, which enables your security team to view current information about detected threats, take appropriate actions to mitigate threats, and centrally manage your organization's threat protection settings.

To learn more, see [Microsoft 365 Defender portal overview](portal-overview.md).

### Role-based access control

Using role-based access control (RBAC), your security administrator can create roles and groups to grant appropriate access to the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). With RBAC, you have fine-grained control over who can access the Defender for Cloud, and what they can see and do. 

To learn more, see [Manage portal access using role-based access control](rbac.md).

### Reporting

The Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)) provides easy access to information about detected threats and actions to address those threats. 

- The **Home** page includes cards to show at a glance which users or devices are at risk, how many threats were detected, and what alerts/incidents were created.
- The **Incidents & alerts** section lists any incidents that were created as a result of triggered alerts. Alerts and incidents are generated as threats are detected across devices.
- The **Action center** lists remediation actions that were taken. For example, if a file is sent to quarantine, or a URL is blocked, each action is listed in the Action center on the **History** tab.
- The **Reports** section includes reports that show threats detected and their status. 

To learn more, see [Get started with Microsoft Defender for Endpoint Plan 1](mde-plan1-getting-started.md).

### APIs

With the Defender for Endpoint APIs, you can automate workflows and integrate with your organization's custom solutions. 

To learn more, see [Defender for Endpoint APIs](management-apis.md). 

## Cross-platform support

Most organizations use various devices and operating systems. Defender for Endpoint Plan 1 supports the following operating systems:

- Windows 10 and 11
- Windows 7 ([ESU required](/troubleshoot/windows-client/windows-7-eos-faq/windows-7-extended-security-updates-faq)) Pro or Enterprise 
- Windows 8.1 Pro, Enterprise, and Pro Education 
- macOS (the three most recent releases are supported)
- iOS
- Android OS

Servers require an additional license, such as:

- **Microsoft Defender for Servers Plan 1 or Plan 2** (*recommended for enterprise customers*) as part of the [Defender for Cloud](/azure/defender-for-cloud/defender-for-cloud-introduction) offering. To learn more. see [Overview of Microsoft Defender for Servers](/azure/defender-for-cloud/defender-for-servers-introduction).
- **Microsoft Defender for Endpoint for Servers** (*recommended for enterprise customers*). To learn more, see [Defender for Endpoint onboarding Windows Server](onboard-windows-server.md).
- **Microsoft Defender for Business servers** (*for small and medium-sized businesses who have [Microsoft Defender for Business](../defender-business/mdb-overview.md)*). To learn more, see [How to get Microsoft Defender for Business servers](../defender-business/get-defender-business.md#how-to-get-microsoft-defender-for-business-servers).

See [Microsoft licensing and product terms](https://www.microsoft.com/en-us/licensing/product-licensing/products).

## Next steps

- [Compare Microsoft Defender for Endpoint Plan 1 to Plan 2](defender-endpoint-plan-1-2.md)
- [Set up and configure Defender for Endpoint Plan 1](mde-p1-setup-configuration.md)
- [Get started with Defender for Endpoint Plan 1](mde-plan1-getting-started.md)
- [Manage Defender for Endpoint Plan 1](manage-mde-post-migration.md)
- [Learn about exclusions for Microsoft Defender for Endpoint and Microsoft Defender Antivirus](defender-endpoint-antivirus-exclusions.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
