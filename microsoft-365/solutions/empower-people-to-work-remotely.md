---
title: "Set up your infrastructure for hybrid work with Microsoft 365"
f1.keywords:
- NOCSH
author: brendacarter
ms.author: bcarter
manager: dansimp
ms.date: 04/22/2024
audience: ITPro
ms.topic: solution-overview
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- M365-security-compliance
- Strat_O365_Enterprise
- remotework
- m365solution-remotework
- m365solution-overview
- M365initiative-coredeploy
ms.custom: seo-marvel-jun2020
keywords: work from home, work-from-home, hybrid, remote worker, hybrid work, remote employees, hybrid connectivity, remote access, telecommuting, telework, teleworking, mobile work, remote job, work from anywhere, flexible workplace
description: Step through the layers of infrastructure so your hybrid workers can securely access on-premises and Microsoft 365 resources.
---

# Set up your infrastructure for hybrid work with Microsoft 365

To secure and optimize your worker’s productivity and collaboration, you need to allow on-site and remote workers to access your organization's on-premises and cloud-based information, tools, and resources easily and securely. This solution steps through the deployment of key layers of infrastructure that empower your workers to do their best work, wherever they are.

Hybrid workers can work on-site or remotely in a combination of locations. Allowing workers to work away from a traditional office is important for many organizations to:

- Hire and retain workers who are unwilling to relocate or require a flexible work environment.
- Reduce worker commuting, leaving workers with more time to be productive and for stress-reducing activities outside of work.
- Save office space.

Microsoft 365 has the capabilities to empower your hybrid workers to work either on-site or remotely.

![Empower your hybrid workers with Microsoft 365.](../media/empower-people-to-work-remotely/2-m365-remoteworker-solution-businessoverview.png)

> [!NOTE]
> If you are new to Microsoft 365, see [these resources](https://www.microsoft.com/microsoft-365).

For IT professionals managing onsite and cloud-based infrastructure to enable hybrid worker productivity, this solution provides these key capabilities:

- Connected

  From anywhere in the world and at any time, your workers are able to access:

  - Cloud-based services and data in your Microsoft 365 subscription.

  - Organization resources, such those offered by on-premises application datacenters.

- Secure

  Sign-ins are secured with multi-factor authentication (MFA) and built-in security features of Microsoft 365 and Windows 11 or 10 protect against malware, malicious attacks, and data loss.

- Managed

  Your hybrid worker's devices can be managed from the cloud with security settings, allowed apps, and to require compliance with system health.

- Collaborative and productive

  Your hybrid workers can be as productive as on-premises in a highly collaborative way with:

  - Online meetings and chat sessions with Teams.

  - Shared workspaces for cloud-based file storage with global accessibility and real-time collaboration with SharePoint and OneDrive.

  - Shared tasks and workflows to divide up the work and get things done.

For a seamless sign-in experience, your on-premises Active Directory Domain Services (AD DS) user accounts should be synchronized with Microsoft Entra ID. To protect your Windows 11 or 10 devices, they should be enrolled in Intune. Here is a high-level view of the infrastructure.

To enable the capabilities of Microsoft 365 for your hybrid workers, use these Microsoft 365 features.

|Capability or feature|Description|Licensing|
|---|---|---|
|MFA enforced with security defaults|Protect against compromised identities and devices by requiring a second form of authentication for sign-ins. Security defaults requires MFA for all user accounts.|Microsoft 365 E3 or E5|
|MFA enforced with Conditional Access|Require MFA based on the properties of the sign-in with Conditional Access policies.|Microsoft 365 E3 or E5|
|MFA enforced with risk-based Conditional Access|Require MFA based on the risk of the user sign-in with Microsoft Entra ID Protection.|Microsoft 365 E5 or E3 with Microsoft Entra ID P2 licenses|
|Self-Service Password Reset (SSPR)|Allow your users to reset or unlock their passwords or accounts.|Microsoft 365 E3 or E5|
|Microsoft Entra application proxy|Provide secure remote access for web-based applications hosted on intranet servers.|Requires separate paid Azure subscription|
|Azure Point-to-Site VPN|Create a secure connection from a remote worker’s device to your intranet through an Azure virtual network.|Requires separate paid Azure subscription|
|Windows 365|Support remote workers who can only use their personal and unmanaged devices with Windows 365 Cloud PCs.|Requires separate paid Azure subscription|
|Remote Desktop |Allow employees to connect into Windows-based computers on your intranet.|Microsoft 365 E3 or E5|
|Remote Desktop Services Gateway|Encrypt communications and prevent the RDS hosts from being directly exposed to the Internet.|Requires separate Windows Server licenses|
|Microsoft Intune|Manage devices and applications.|Microsoft 365 E3 or E5|
|Configuration Manager|Manage software installations, updates, and settings on your devices|Requires separate Configuration Manager licenses|
|Endpoint Analytics|Determine the update readiness of your Windows clients.|Requires separate Configuration Manager licenses|
|Windows Autopilot|Set up and pre-configure new Windows 11 or 10 devices for productive use.|Microsoft 365 E3 or E5|
|Microsoft Teams, Exchange Online, SharePoint Online and OneDrive, Microsoft 365 Apps, Microsoft Power Platform, and Viva Engage|Create, communicate, and collaborate.|Microsoft 365 E3 or E5 and Microsoft Teams Enterprise |
||||

For security and compliance criteria, see [Deploy security and compliance for remote workers](empower-people-to-work-remotely-security-compliance.md).

## Provide hybrid working for all of your workers

You can enable all of your workers to stay productive from anywhere with these devices:

- A modern device, such as a Surface laptop and Windows 11 or 10, which has the features, security, and performance to access Microsoft 365 cloud apps and services directly over the web.

- Any device including older laptops or desktops used from home, which can access Microsoft 365 cloud apps and services indirectly through a [Windows 365 Cloud PC](empower-people-to-work-remotely-remote-access.md#deploy-windows-365-to-provide-remote-access-for-remote-workers-using-personal-devices). This option provides high performance, strong security, and simplified IT management.

## Next steps

Use these steps to secure and optimize access to your organization's servers and cloud services and maximize your hybrid worker's productivity.

1. [Increase sign-in security with MFA](empower-people-to-work-remotely-secure-sign-in.md)
2. [Provide remote access to on-premises apps and services](empower-people-to-work-remotely-remote-access.md)
3. [Deploy security and compliance services](empower-people-to-work-remotely-security-compliance.md)
4. [Deploy endpoint management for your devices, PCs, and other endpoints](empower-people-to-work-remotely-manage-endpoints.md)
5. [Deploy hybrid worker productivity apps and services](empower-people-to-work-remotely-teams-productivity-apps.md)
6. [Train your workers and address usage feedback](empower-people-to-work-remotely-train-monitor-usage.md)

[![The steps to set up your infrastructure for hybrid work with Microsoft 365.](../media/empower-people-to-work-remotely/remote-workers-step-grid.png)](empower-people-to-work-remotely-secure-sign-in.md)

To see how a fictional but representative multi-national organization set up its infrastructure for hybrid work, see [Contoso's COVID-19 response and infrastructure for hybrid work](contoso-remote-onsite-work.md).
