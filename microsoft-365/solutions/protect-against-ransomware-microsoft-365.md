---
title: "Deploy protection against ransomware with Microsoft 365"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
ms.localizationpriority: high
ms.collection:
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
- m365solution-overview
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Deploy protection against ransomware with Microsoft 365

Ransomware is a type of extortion attack that encrypts files and folders, preventing access to important data. Commodity ransomware typically spreads like a virus that infects devices and only requires malware remediation. Human-operated ransomware is the result of an active attack by cybercriminals that infiltrate an organization’s on-premises or cloud IT infrastructure, elevate their privileges, and deploy ransomware to critical data.

Once the attack is complete, an attacker demands money from victims in exchange for decryption keys or a promise not to release sensitive data to the dark web or the public internet. Human-operated ransomware can also be used to shut down critical machines or processes, such as those needed for industrial production, bringing normal business operations to a halt until the ransom is paid and the damage is corrected or the organization remediates the damage themselves.

A human-operated ransomware attack can be catastrophic to businesses of all sizes and are difficult to clean up, requiring complete adversary eviction to protect against future attacks. Unlike commodity ransomware, human-operated ransomware can continue to threaten businesses operations after the initial ransom incident.

## Ransomware prevention and mitigation capabilities provided with Microsoft 365

A ransomware attacker that has infiltrated a Microsoft 365 tenant can attempt to create financial leverage by:

- Deleting files or email
- Encrypting files
- Copying files outside the tenant (data exfiltration)

ADD: Built-in capabilities for files/email for M365 services

## What’s in this solution

This solution steps you through the deployment of Microsoft 365 protection and mitigation features, configurations, and ongoing operations to minimize the ability of a ramsomware attacker to use the critical data in your Microsoft 365 tenant as financial leverage and hold your organization at ransom.

![The steps to protecting against ransomware with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step-grid.png)

The steps in this solution are:

1. [Configure security baselines](protect-against-ransomware-microsoft-365-step1.md)
2. [Deploy attack detection and response](protect-against-ransomware-microsoft-365-step2.md)
3. [Protect identities](protect-against-ransomware-microsoft-365-step3.md)
4. [Protect devices](protect-against-ransomware-microsoft-365-step4.md)
5. [Protect information](protect-against-ransomware-microsoft-365-step5.md)

Here are the steps of the solution deployed for your Microsoft 365 tenant.

![Ransomware protection for a Microsoft 365 tenant](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture.png)


## Microsoft 365 capabilities and features

To protect your Microsoft 365 tenant from a ransomware attack, use these Microsoft 365 capabilities and features in the following categories.

### Security baseline

| Capability or feature | Description | Helps... | Licensing |
|:-------|:-----|:-------|:-------|
| Microsoft Secure Score |  Feature of Microsoft 365 Defender that measures the security posture of a Microsoft 365 tenant. | Assess your security configuration and provide suggestions to improve it | E3 or E5 |
| Attack surface reduction rules | Configuration settings to reduce your organization's vulnerability to cyberthreats and attacks. | Block suspicious activity and vulnerable content | E3 or E5 |
| Exchange email settings |  Enables services to reduce your organization's vulnerability to an email-based attack. | Initial access to your tenant  | E3 or E5 |
| Windows, Edge, and Microsoft 365 Apps for Enterprise settings | Industry-standard security configurations that are broadly known and well-tested. | Attacks based on  | E3 or E5 |

### Detection and response

| Capability or feature | Description | Helps detect and respond to... | Licensing |
|:-------|:-----|:-------|:-------|
| [Microsoft 365 Defender](/microsoft-365/security/defender) | Combines signals and orchestrates capabilities into a single solution. Enables security professionals to stitch together threat signals and determine the full scope and impact of a threat. Microsoft 365 Defender takes automatic actions to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities. | Incidents, which are the combined alerts and data that make up an attack | E5 |
| [Microsoft Defender for Identity](/defender-for-identity/what-is) |  A cloud-based security solution that uses your on-premises Active Directory Domain Services (AD DS) signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Focus on Microsoft Defender for Identity next because it protects your on-premises and cloud infrastructure, has no dependencies or prerequisites, and can provide immediate security benefits. | Credential compromise for AD DS accounts | E5 |
| [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security) | Safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. Protects against malware, phishing, spoofing, and other attack types. Configuring Microsoft Defender for Office 365 is recommended because change control, migrating settings from incumbent system, and other considerations can take longer to deploy. | Phishing attacks | E5 |
| [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint) | Helps prevent, detect, investigate, and respond to advanced threats across devices (also referred to as endpoints). | Malware installation | E5 |
| [Azure AD Identity Protection](/azure/active-directory/identity-protection/) | Automates the detection and remediation of identity-based risks and investigate those risks. | Credential compromise for Azure AD accounts and privilege escalation | E5 |
| [Microsoft Cloud App Security](/cloud-app-security) | A cloud access security broker for discovery, investigation, and governance. | Lateral movement and data exfiltration | E5 |

### Identities

| Capability or feature | Description | Helps prevent... | Licensing |
|:-------|:-----|:-------|:-------|
|MFA enforced with Conditional Access|Require MFA based on the properties of the sign-in with Conditional Access policies.|Credential compromise and access|Microsoft 365 E3 or E5|
|MFA enforced with risk-based Conditional Access|Require MFA based on the risk of the user sign-in with Azure AD Identity protection.|Credential compromise and access|Microsoft 365 E5 or E3 with Azure AD Premium P2 licenses|

### Devices

For device and app management:

| Capability or feature | Description | Helps prevent... | Licensing |
|:-------|:-----|:-------|:-------|
| Microsoft Intune | Manage devices and the applications that run on them. | Device or app compromise and access. | Microsoft 365 E3 or E5 |
|  |  |  |  |

For Windows 10 devices:

| Capability or feature | Description | Helps... | Licensing |
|:-------|:-----|:-------|:-------|
| Microsoft Defender Firewall | A host-based firewall.  | Prevent attacks from inbound, unsolicited network traffic. | E3 and E5 |
| Microsoft Defender Antivirus | Antimalware solution that uses machine learning, big-data analysis, in-depth threat resistance research, and the Microsoft cloud infrastructure to protect devices (or endpoints) in your organization. | Prevent installation and running of malware. | E3 and E5 |
| Microsoft Defender SmartScreen | Protects against phishing or malware websites and applications, and the downloading of potentially malicious files. | To block or warn when checking sites, downloads, apps and files. | E3 and E5 |
| Microsoft Defender for Endpoint | Helps prevent, detect, investigate, and respond to advanced threats across devices (also referred to as endpoints). | With tampering protection and network protection | E5 |
|  |  |  |  |

### Information

| Capability or feature | Description | Helps... | Licensing |
|:-------|:-----|:-------|:-------|
| Insider risk management | Define specific policies to identify risk indicators and to take action to mitigate these risks. | Identify, triage, and act on risky user activity. | E5 |
| Privileged access management | Limits standing access to sensitive data or access to critical configuration settings | Prevent an attacker from performan adminstration tasks. | E5 |
| Data loss prevention (DLP) | Protects sensitive data and reduces risk by preventing users from inappropriately sharing it. | Prevent data exfiltration. | E3 and E5 |


<!--

These features of information protection and compliance cannot provide protection against ransomware attackers if the attackers have the appropriate user credentials. This is why it is so important to lock down permmissions for your ransomable resources.

| Capability or feature | Description | Licensing |
|:-------|:-----|:-------|:-------|
| Sensitivity labels |  |  |
| Double Key Encryption (DKE) |  |  |
| Office 365 Message Encryption (OME) |  |  |
| Office 365 Advanced Message Encryption |  |  |
| Customer key |  |  |
| BYOK/HYOK |  |  |

- Microsoft 365 E5 subscription (paid or trial version)
- Microsoft 365 E3 subscription + the Microsoft 365 E5 Compliance add-on
- Microsoft 365 E3 subscription + the Microsoft 365 E5 Insider Risk Management add-on
- Microsoft 365 A5 subscription (paid or trial version)
- Microsoft 365 A3 subscription + the Microsoft 365 A5 Compliance add-on
- Microsoft 365 A3 subscription + the Microsoft 365 A5 Insider Risk Management add-on
- Microsoft 365 G5 subscription (paid or trial version)
- Microsoft 365 G5 subscription + the Microsoft 365 G5 Compliance add-on
- Microsoft 365 G5 subscription + the Microsoft 365 G5 Insider Risk Management add-on
- Office 365 Enterprise E5 subscription (paid or trial version)
- Office 365 A5 subscription (paid or trial version)
- Office 365 Enterprise E3 subscription + the Office 365 Advanced Compliance add-on (no longer available for new subscriptions)

| Capability or feature | Description | Helps prevent... | Licensing |
|:-------|:-----|:-------|:-------|
| Retention policies and labels |  |  |  |
| Information barriers |  |  |  |
| Communication compliance |  |  |  |
| Customer Lockbox |  |  | E5 |
| eDiscovery |  |  |  |
| Advanced eDiscovery |  |  | E5 |

--> 


## Impact on users and change management

Deploying additional security features and policies to your Microsoft 365 tenant can impact your users. For example, you may impose a new security policy that requires users to create new teams for specific uses with a list of user accounts as members, instead of more easily creating a team for all users in the organization. This can help prevent a ransomware attacker from exploring teams that are not available from the attacker's compromised user account and targeting them in the attack.

This solution will identify when a new configuration or recommended security policy can impact your users so you can implement the required change management.

## Next steps

[![Step 1 for ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step1.png)](protect-against-ransomware-microsoft-365-step1.md)

Use these steps:

1. [Configure security baselines](protect-against-ransomware-microsoft-365-step1.md)
2. [Deploy attack detection and response](protect-against-ransomware-microsoft-365-step2.md)
3. [Protect identities](protect-against-ransomware-microsoft-365-step3.md)
4. [Protect devices](protect-against-ransomware-microsoft-365-step4.md)
5. [Protect information](protect-against-ransomware-microsoft-365-step5.md)
