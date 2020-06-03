---
title: "Empower remote workers with Microsoft 365"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
ms.date: 06/03/2020
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
- remotework
- M365solutions
ms.custom: 
description: Configure the security and service infrastructure that allows your workers to work remotely from anywhere and at any time.
---

# Empower remote workers with Microsoft 365

Your business may need to enable your workers to have secure access to your organization's on-premises and cloud-based information, tools, and resources from their homes. Allowing workers to work away from the office seamlessly and securely is important for many organizations to:

- Save on office space.
- Hire and retain workers who are unwilling to relocate.
- Reduce worker commuting, leaving them with more time to be productive and for stress-reducing activities outside of work.

Remote working, also known as teleworking, can span a spectrum that includes:

- workers that are occasionally away from the office for conferences or client meetings.
- Some workers that work remotely full-time.
- A fully remote organization in which there is no office and all workers are remote.

From anywhere in the world and at any time, remote workers must be able to access:

- Organization resources, such those offered by on-premises application datacenters.
- Cloud-based services and data in your Microsoft 365 subscription, such as Teams, Exchange Online, SharePoint, and OneDrive.

For a seamless sign-in experience, your Active Directory Domain Services (AD DS) user accounts should be synchronized with Azure Active Directory (Azure AD). To protect your Windows 10 devices, they should be enrolled in Intune. Here is a high-level view of the infrastructure.

![The basic infrastructure for remote workers with Microsoft 365](../media/empower-people-to-work-remotely/remote-workers-basic-infrastructure.png)


To support remote workers, for example in response to the COVID-19 crisis, a combination of features in Microsoft 365 enables your remote workers in a highly collaborative way, such as:

- Online meetings and chat sessions.
- Shared workspaces for cloud-based file storage with global accessibility and real-time collaboration.
- Shared tasks and workflows to divide up the work and get things done.

For strong security, Microsoft 365 includes:

- Enforced authentication requirements, detecting and responding to high-risk sign-ins, and blocking selected apps and non-compliant devices.
- Encrypted connections and digital assets in the cloud.
- Permissions to define who can do what with files.
- Comprehensive security features to protect Windows 10 devices.

To meet these criteria for remote workers, use these Microsoft 365 capabilities and features.

| Capability or feature | Description | Licensing |
|:-------|:-----|:-------|
| MFA enforced with security defaults	| Protect against compromised identities and devices by requiring a second form of authentication for sign-ins. Security defaults requires MFA for all user accounts.	| Microsoft 365 E3 and E5 |
| MFA enforced with Conditional Access| Require MFA based on the properties of the sign-in with Conditional Access policies.	| Microsoft 365 E3 and E5 | 
| MFA enforced with risk-based Conditional Access	| Require MFA based on the risk of the user sign-in with Azure Advanced Threat Protection. | Microsoft 365 E5 or E3 with Azure AD Premium P2 licenses | 
| Self-Service Password Reset (SSPR)	| Allow your users to reset or unlock their passwords or accounts.	| Microsoft 365 E3 and E5 |
| Azure AD Application Proxy	| Provide secure remote access for web-based applications hosted on intranet servers.	| Requires separate paid Azure subscription |
| Azure Point-to-Site VPN	| Create a secure connection from a remote worker’s device to your intranet through an Azure virtual network.	| Requires separate paid Azure subscription |
| Windows Virtual Desktop	| Support remote workers who can only use their personal and unmanaged devices with virtual desktops running in Azure. | Requires separate paid Azure subscription |
| Remote Desktop Services (RDS)	| Allow employees to connect into Windows-based computers on your intranet.	| Microsoft 365 E3 and E5 | 
| Remote Desktop Services Gateway	| Encrypt communications and prevent the RDS hosts from being directly exposed to the Internet.	| Requires separate Windows Server license |
| Microsoft Intune | Manage devices and applications.	| Microsoft 365 E3 and E5 | 
| Configuration Manager	| Manage software installations, updates, and settings on your devices | Requires separate Configuration Manager licenses |
| Desktop Analytics	| Determine the update readiness of your Windows clients.	| Requires separate Configuration Manager licenses |
| Windows Autopilot	| Set up and pre-configure new Windows 10 devices for productive use.	| Microsoft 365 E3 and E5 |
| Microsoft Teams, Exchange Online, SharePoint Online and OneDrive, Microsoft 365 Apps, Microsoft Power Platform, Yammer, Power Apps | Create, communicate, and collaborate. | Microsoft 365 E3 and E5 |
||||

Use these steps to secure and optimize access to your organization's servers, data, and cloud services and enable maximum worker productivity.

1. [Increase sign-in security with MFA](empower-people-to-work-remotely-secure-sign-in.md)
2. [Provide remote access to on-premises apps and services](empower-people-to-work-remotely-remote-access.md)
3. [Deploy endpoint management for your devices, PCs, and other endpoints](empower-people-to-work-remotely-manage-endpoints.md)
4. [Deploy remote worker productivity apps and services](empower-people-to-work-remotely-teams-productivity-apps.md)
5. [Create communication venues](empower-people-to-work-remotely-communication-venues.md)
6. [Train remote workers and address usage feedback](empower-people-to-work-remotely-train-monitor-usage.md)

![The steps to empower remote workers with Microsoft 365](../media/empower-people-to-work-remotely/remote-workers-step-grid.png)

For the latest information from Microsoft about supporting remote workers, see the [Enabling remote work Tech Community site](https://resources.techcommunity.microsoft.com/enabling-remote-work/).
