---
title: "Empower remote workers with Microsoft 365"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- remotework
- m365solution-remotework
- m365solution-overview
- M365initiative-coredeploy
ms.custom: seo-marvel-jun2020
description: Make sure you have enabled all features in Microsoft 365 to maximize remote worker productivity and maintain secure access to your servers, data, and cloud.
---

# Empower remote workers with Microsoft 365

Your business may need to enable your workers to have secure access to your organization's on-premises and cloud-based information, tools, and resources from their homes. Allowing workers to work away from the office is important for many organizations to:

- Save on office space.
- Hire and retain workers who are unwilling to relocate.
- Reduce worker commuting, leaving them with more time to be productive and for stress-reducing activities outside of work.

Microsoft 365 has the capabilities to empower your workers to work remotely.

![Empower your remote workers with Microsoft 365](../media/empower-people-to-work-remotely/2-m365-remoteworker-solution-businessoverview.png)

Watch this video for an overview of the deployment process.
<br>
> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4F1af]

This solution provides these key capabilities.

- Connected

  From anywhere in the world and at any time, remote workers are able to access: 

  - Cloud-based services and data in your Microsoft 365 subscription. 

  - Organization resources, such those offered by on-premises application datacenters.

- Secure

  Sign-ins are secured with multi-factor authentication (MFA) and built-in security features of Microsoft 365 and Windows 10 protect against malware, malicious attacks, and data loss.

- Managed

  Your remote worker's devices can be managed from the cloud with security settings, allowed apps, and to require compliance with system health.

- Collaborative and productive

  Your remote workers can be as productive as on-premises in a highly collaborative way with:

  - Online meetings and chat sessions with Teams. 

  - Shared workspaces for cloud-based file storage with global accessibility and real-time collaboration with SharePoint and OneDrive.

  - Shared tasks and workflows to divide up the work and get things done. 

For a seamless sign-in experience, your on-premises Active Directory Domain Services (AD DS) user accounts should be synchronized with Azure Active Directory (Azure AD). To protect your Windows 10 devices, they should be enrolled in Intune. Here is a high-level view of the infrastructure.

![The basic infrastructure for remote workers with Microsoft 365](../media/empower-people-to-work-remotely/remote-workers-basic-infrastructure.png)

To enable the capabilities of Microsoft 365 for your remote workers, use these Microsoft 365 features.

| Capability or feature | Description | Licensing |
|:-------|:-----|:-------|
| MFA enforced with security defaults	| Protect against compromised identities and devices by requiring a second form of authentication for sign-ins. Security defaults requires MFA for all user accounts.	| Microsoft 365 E3 or E5 |
| MFA enforced with Conditional Access| Require MFA based on the properties of the sign-in with Conditional Access policies.	| Microsoft 365 E3 or E5 | 
| MFA enforced with risk-based Conditional Access	| Require MFA based on the risk of the user sign-in with Microsoft Defender for Identity. | Microsoft 365 E5 or E3 with Azure AD Premium P2 licenses | 
| Self-Service Password Reset (SSPR)	| Allow your users to reset or unlock their passwords or accounts.	| Microsoft 365 E3 or E5 |
| Azure AD Application Proxy	| Provide secure remote access for web-based applications hosted on intranet servers.	| Requires separate paid Azure subscription |
| Azure Point-to-Site VPN	| Create a secure connection from a remote worker’s device to your intranet through an Azure virtual network.	| Requires separate paid Azure subscription |
| Windows Virtual Desktop	| Support remote workers who can only use their personal and unmanaged devices with virtual desktops running in Azure. | Requires separate paid Azure subscription |
| Remote Desktop Services (RDS)	| Allow employees to connect into Windows-based computers on your intranet.	| Microsoft 365 E3 or E5 | 
| Remote Desktop Services Gateway	| Encrypt communications and prevent the RDS hosts from being directly exposed to the Internet.	| Requires separate Windows Server licenses |
| Microsoft Intune | Manage devices and applications.	| Microsoft 365 E3 or E5 | 
| Configuration Manager	| Manage software installations, updates, and settings on your devices | Requires separate Configuration Manager licenses |
| Desktop Analytics	| Determine the update readiness of your Windows clients.	| Requires separate Configuration Manager licenses |
| Windows Autopilot	| Set up and pre-configure new Windows 10 devices for productive use.	| Microsoft 365 E3 or E5 |
| Microsoft Teams, Exchange Online, SharePoint Online and OneDrive, Microsoft 365 Apps, Microsoft Power Platform, and Yammer | Create, communicate, and collaborate. | Microsoft 365 E3 or E5 |
||||

For security and compliance criteria, see [Deploy security and compliance for remote workers](empower-people-to-work-remotely-security-compliance.md).

<a name="poster"></a>
For a 2-page summary of this solution, see the [Empower remote workers poster](../downloads/empower-remote-workers.pdf).

[![Empower remote workers poster](../media/empower-people-to-work-remotely/empower-remote-workers-poster.png)](../downloads/empower-remote-workers.pdf)

You can also download this poster in [PDF](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/downloads/empower-remote-workers.pdf) and print it on letter, legal, or tabloid (11 x 17) size paper.

Use these steps to secure and optimize access to your organization's servers and cloud services and maximize your remote worker's productivity.

1. [Increase sign-in security with MFA](empower-people-to-work-remotely-secure-sign-in.md)
2. [Provide remote access to on-premises apps and services](empower-people-to-work-remotely-remote-access.md)
3. [Deploy security and compliance services](empower-people-to-work-remotely-security-compliance.md)
4. [Deploy endpoint management for your devices, PCs, and other endpoints](empower-people-to-work-remotely-manage-endpoints.md)
5. [Deploy remote worker productivity apps and services](empower-people-to-work-remotely-teams-productivity-apps.md)
6. [Train remote workers and address usage feedback](empower-people-to-work-remotely-train-monitor-usage.md)

[![The steps to empower remote workers with Microsoft 365](../media/empower-people-to-work-remotely/remote-workers-step-grid.png)](empower-people-to-work-remotely-secure-sign-in.md)

For the latest information from Microsoft about supporting remote workers, see the [Enabling hybrid work
with Microsoft Teams site](https://resources.techcommunity.microsoft.com/enabling-hybrid-work/).

To see how a fictional but representative multi-national organization empowered its remote workers, see [Contoso's COVID-19 response and infrastructure for a hybrid workforce](contoso-hybrid-workforce.md).
