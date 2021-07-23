---
title: "Step 3: Prevent attacker access"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection:
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Step 3: Prevent attacker access

Three common ways that a ransomware attacker can access your Microsoft 365 tenant are through:

- User accounts
- Email and other collaboration tools
- Endpoints (devices)

## User accounts

### Prevent: Attacker can’t compromise a user account

Enforce strong MFA or passwordless sign-in for all users. Start with administrator and priority accounts using one or more of:

- Passwordless authentication with Windows Hello or the Microsoft Authenticator app.
- Azure Multi-Factor Authentication.
- Third-party MFA solution.

Increase password security:

- For Azure AD accounts, use Azure AD Password Protection to detect and block known weak passwords and additional weak terms that are specific to your organization.
- For on-premises Active Directory Domain Services (AD DS) accounts, extend Azure AD Password Protection to AD DS accounts.

### Mitigate: Detect compromised user credentials and remove the account

Ways to prevent detect compromised user credentials:

- Azure AD Identity Protection
- Microsoft Defender for Identity

## Email and collaboration

### Prevent: Attacker can't get past Microsoft 365 security features

Ways to prevent an attacker from using Microsoft 365 security features that have not been enabled:

- Enable AMSI for Office VBA.
- Implement Advanced Email security using Defender for Office 365.
- Enable attack surface reduction (ASR) rules to block common attack techniques including:

   - Endpoint abuse such as credential theft, ransomware activity, and suspicious use of PsExec and WMI.

   - Weaponized Office document activity such as advanced macro activity, executable content, process creation, and process injection initiated by Office applications.

### Mitigate: Detect breaches based on Microsoft 365 security features

Ways to detect breaches based on Microsoft 365 security features:

- Microsoft Defender for Office 365
- Microsoft 365 Defender

## Endpoints

### Prevent: Attacker can't get past Windows 10 security features

Ways to prevent an attacker from using Windows 10 security features that have not been enabled:

- Block known threats with attack surface reduction rules, tamper protection, and block at first site.
- Apply Security Baselines to harden internet-facing Windows servers and clients and Office applications.

- Maintain your software so that it is:

  - Updated: Rapidly deploy critical security updates for operating systems, browsers, & email clients (Install ongoing updates for Windows 10, Microsoft 365 Apps, Teams, Edge)

  - Supported: Upgrade operating systems and software for versions supported by your vendors. (Upgrade Windows 7 and 8.1 and old versions of Office, remove Internet Explorer)

- Isolate, disable, or retire insecure systems and protocols, including unsupported operating systems and legacy protocols (Block apps using legacy authentication with Conditional Access)
- Block unexpected traffic with host-based firewall and network defenses (Windows Firewall with Advanced Security for Windows 10).

### Mitigate: Detect breaches based on built-in Windows 10 security features and remove endpoint

Ways to detect breaches based on built-in Windows 10 security features:

- Microsoft Defender for Endpoint
- Microsoft 365 Defender

<!--

[![The steps to set up ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-step-grid.png)](protect-against-ransomware-microsoft-365-phase3.md)

--> 


