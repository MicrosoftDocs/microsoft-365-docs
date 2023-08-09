---
title: Mobile threat defense capabilities in Microsoft Defender for Business            
description: Get an overview of mobile threat defense in Defender for Business. Learn about what's included and how to onboard devices.            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 07/19/2023
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium 
ms.collection: 
- SMB
- m365-security
- m365-initiative-defender-business
- tier1
ms.reviewer: nehabha
search.appverid: MET150
f1.keywords: NOCSH 
audience: Admin
---

# Mobile threat defense capabilities in Microsoft Defender for Business

Microsoft Defender for Business provides advanced threat protection capabilities for devices, such as Windows and Mac clients. **Defender for Business capabilities now include mobile threat defense**! Mobile threat defense capabilities help protect Android and iOS devices, without requiring you to use Microsoft Intune to onboard mobile devices.

In addition, mobile threat defense capabilities integrate with [Microsoft 365 Lighthouse](../../lighthouse/m365-lighthouse-overview.md), where Cloud Solution Providers (CSPs) can view information about vulnerable devices and help mitigate detected threats. 

## What's included in mobile threat defense?

The following table summarizes the capabilities that are included in mobile threat defense in Defender for Business:

| Capability | Android | iOS |
|:---|:---|:---|
| **Web Protection** <br/>Anti-phishing, blocking unsafe network connections, and support for custom indicators. <br/>Web protection is turned on by default with [web content filtering](mdb-web-content-filtering.md). | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included checkmark."::: | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included checkmark."::: |
| **Malware protection** (Android-only) <br/>Scanning for malicious apps. | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included checkmark."::: | No |
| **Jailbreak detection** (iOS-only) <br/>Detection of jailbroken devices. | No | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included checkmark."::: |
| **Microsoft Defender Vulnerability Management**<br/>Vulnerability assessment of onboarded mobile devices. Includes vulnerability assessments for operating systems and apps for Android and iOS. <br/>See [Use your vulnerability management dashboard in Microsoft Defender for Business](mdb-view-tvm-dashboard.md). | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included checkmark."::: |  See note 1 (below) |
| **Network Protection** <br/>Protection against rogue Wi-Fi related threats and rogue certificates. <br/>Network protection is turned on by default with [next-generation protection](mdb-next-generation-protection.md). <br/>As part of mobile threat defense, network protection also includes the ability to allow root certification authority and private root certification authority certificates in Intune. It also establishes trust with endpoints. | See note 2 (below) | See note 2 (below) |
| **Unified alerting** <br/>Alerts from all platforms are listed in the unified Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)). In the navigation pane, choose **Incidents**). <br/>See [View and manage incidents in Microsoft Defender for Business](mdb-view-manage-incidents.md) | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included checkmark."::: | :::image type="content" source="../../media/d238e041-6854-4a78-9141-049224df0795.png" alt-text="Included checkmark."::: |
| **Conditional Access** and **conditional launch** <br/>[Conditional Access](/mem/intune/protect/conditional-access) and [conditional launch](/mem/intune/apps/app-protection-policies-access-actions) block risky devices from accessing corporate resources.<br/>-  Conditional Access policies require certain criteria to be met before a user can access company data on their mobile device. <br/>- Conditional launch policies enable your security team to block access or wipe devices that don't meet certain criteria.<br/>Defender for Business risk signals can also be added to app protection policies. | Requires Intune <br/>(see note 3 below) | Requires Intune <br/>(see note 3 below) |
| **Privacy controls** <br/>Configure privacy in threat reports by controlling the data sent by Defender for Business. Privacy controls are available for admin and end users, and for both enrolled and unenrolled devices. | Requires Intune (see note 3 below) | Requires Intune (see note 3 below) |
| **Integration with Microsoft Tunnel** <br/>Integration with [Microsoft Tunnel](/mem/intune/protect/microsoft-tunnel-overview), a VPN gateway solution for Intune. | Requires Intune VPN Tunnel <br/>(see note 4 below) | Requires Intune VPN Tunnel <br/>(see note 4 below) |

> [!NOTE]
> 1. Intune is required for software/app vulnerabilities to be reported. Operating system vulnerabilities are included by default.
> 
> 2. Intune is required to configure or manage an allow list of root certification authority and private root certification authority certificates.
> 
> 3. Intune is included in [Microsoft 365 Business Premium](../../business-premium/index.md). Intune can be added on to Defender for Business.
> 
> 4. See [Prerequisites for the Microsoft Tunnel in Intune](/mem/intune/protect/microsoft-tunnel-prerequisites).
>

## How to get mobile threat defense capabilities

Mobile threat defense capabilities are now generally available to [Defender for Business](get-defender-business.md) customers. Here's how to get these capabilities for your organization:

1. Make sure that Defender for Business has finished provisioning. In the [Microsoft 365 Defender portal](https://security.microsoft.com), go to **Assets** > **Devices**.

   - If you see a message that says, "Hang on! We're preparing new spaces for your data and connecting them," it means that Defender for Business hasn't finished provisioning. This process is happening now, and can take up to 24 hours to complete. 
   - If you see a list of devices, or you're prompted to onboard devices, it means Defender for Business provisioning has completed. 

2. Review, and if necessary, edit your [next-generation protection policies](mdb-next-generation-protection.md).

3. Review, and if necessary, edit your [firewall policies and custom rules](mdb-firewall.md).

4. Review, and if necessary, edit your [web content filtering](mdb-web-content-filtering.md) policy.

5. To onboard mobile devices, see the "Use the Microsoft Defender app" procedures in [Onboard devices to Microsoft Defender for Business](mdb-onboard-devices.md).

## See also

- [Set up and configure Microsoft Defender for Business](mdb-setup-configuration.md)
- [View and edit security policies and settings in Microsoft Defender for Business](mdb-configure-security-settings.md)
- [What's new in Microsoft 365 Business Premium and Microsoft Defender for Business](../../business-premium/m365bp-mdb-whats-new.md)