---
title: Mobile threat defense capabilities in Microsoft Defender for Business            
description: Get an overview of mobile threat defense in Defender for Business. Learn about what's included and how to onboard devices.            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 03/23/2023
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
ms.reviewer: jomaun
search.appverid: MET150
f1.keywords: NOCSH 
audience: Admin
---

# Mobile threat defense capabilities in Microsoft Defender for Business

Microsoft Defender for Business provides advanced threat protection capabilities for devices, such as Windows and Mac clients. Defender for Business capabilities are extending to mobile devices, with mobile threat defense now in preview! Mobile threat defense capabilities help protect Android and iOS devices, without requiring you to use Microsoft Intune to onboard mobile devices.

In addition, mobile threat defense capabilities integrate with [Microsoft 365 Lighthouse](../../lighthouse/m365-lighthouse-overview.md), where Cloud Solution Providers (CSPs) can view information about vulnerable devices and help mitigate detected threats. 

## What's included in mobile threat defense?

The following table summarizes the capabilities that are included in mobile threat defense (preview) in Defender for Business:

| Capability | Android | iOS |
|:---|:---|:---|
| **Web Protection** <br/>Anti-phishing, blocking unsafe network connections, and support for custom indicators. Web protection is turned on by default with [web content filtering](mdb-configure-security-settings.md#set-up-web-content-filtering) | Yes | Yes |
| **Malware protection** (Android-only) <br/>Scanning for malicious apps. | Yes | No |
| **Jailbreak detection** (iOS-only) <br/>Detection of jailbroken devices. | No | Yes |
| **Microsoft Defender Vulnerability Management** (MDVM) <br/>Vulnerability assessment of onboarded mobile devices. Includes OS and Apps vulnerabilities assessment for both Android and iOS. See [Use your vulnerability management dashboard in Microsoft Defender for Business](mdb-view-tvm-dashboard.md). | Yes |  See note <sup>[[a](#fna)]</sup>|
| **Network Protection** <br/>Protection against rogue Wi-Fi related threats and rogue certificates. Network protection is turned on by default with [next-generation protection](mdb-configure-security-settings.md#view-or-edit-your-next-generation-protection-policies). As part of mobile threat defense, network protection also includes the ability to allow root certification authority and private root certification authority certificates in Intune. It also establishes trust with endpoints. | See note <sup>[[b](#fnb)]</sup> | See note <sup>[[b](#fnb)]</sup> |
| **Unified alerting** <br/>Alerts from all platforms in the unified Microsoft 365 Defender portal. | Yes | Yes |
| **Conditional Access** and **conditional launch** <br/>Conditional Access policies require certain criteria to be met before a user can access company data on their mobile device. Conditional launch policies enable your security team to block access or wipe Blocking risky devices from accessing corporate resources. Defender for Business risk signals can also be added to app protection policies (MAM). | Requires Intune <sup>[[c](#fnc)]</sup> | Requires Intune <sup>[[c](#fnc)]</sup> |
| **Privacy controls** <br/>Configure privacy in the threat reports by controlling the data sent by Microsoft Defender for Endpoint. Privacy controls are available for admin and end users. It's there for enrolled and unenrolled devices as well. | Requires Intune | Requires Intune |
| **Integration with Microsoft Tunnel** <br/>Integration with Microsoft Tunnel, a VPN gateway solution. | Requires Intune VPN Tunnel | Requires Intune VPN Tunnel |

(<a id="fna">a</a>) Intune is required for software/app vulnerabilities to be reported. Operating system vulnerabilities are included by default.

(<a id="fnb">b</a>) Intune is required to configure or manage an allow list of root certification authority and private root certification authority certificates.

(<a id="fnc">c</a>) Intune is included in [Microsoft 365 Business Premium](../../business-premium/index.md). Intune can be added on to Defender for Business.