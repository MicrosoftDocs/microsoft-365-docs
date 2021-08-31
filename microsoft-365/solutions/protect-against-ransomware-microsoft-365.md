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

Once the attack is complete, an attacker demands money from victims in exchange for decryption keys or a promise not to release sensitive data to the dark web or the public internet. Human-operated ransomware can also be used to shut down critical machines or processes, such as those needed for industrial production, bringing normal business operations to a halt until the ransom is paid and the damage is corrected, or the organization remediates the damage themselves.

A human-operated ransomware attack can be catastrophic to businesses of all sizes and are difficult to clean up, requiring complete adversary eviction to protect against future attacks. Unlike commodity ransomware, human-operated ransomware can continue to threaten businesses operations after the initial ransom incident.

>[!Note]
>A ransomware attack assumes that the attacker has valid user account credentials for a tenant and has access to all of the files and resources that are permitted to the user account. Microsoft 365 provides default and enhanced at rest encryption for data that are not accessible to an attacker without valid user account credentials. For more information, see [Encryption and key management overview](/compliance/assurance/assurance-encryption).
>

## Ransomware mitigation and recovery capabilities provided with Microsoft 365

A ransomware attacker that has infiltrated a Microsoft 365 tenant can attempt to create financial leverage by:

- Deleting files or email
- Encrypting files in place
- Copying files outside the tenant (data exfiltration)

However, Microsoft 365 has many built-in capabilities to mitigate and recover from ransomware attacks. The following sections provide a summary. For the details, see [Malware and ransomware protection in Microsoft 365](/compliance/assurance/assurance-malware-and-ransomware-protection).

### Deleting files or email

Files in SharePoint and OneDrive for Business are protected by:

- Versioning 

   Microsoft 365 retains a minimum of 500 versions of a file by default and can be configured to retain more. 

   To minimize the burden on your security and helpdesk staff, train your users on how to [restore previous versions of files](https://support.microsoft.com/office/restore-a-previous-version-of-an-item-or-file-in-sharepoint-f66dbda0-81f4-4d1e-b08c-793265c58934).

- Recycle bin

   If the ransomware creates a new encrypted copy of the file, and deletes the old file, customers have 93 days to restore it from the recycle bin. After 93 days, there is a 14-day window where Microsoft can still recover the data. 
  
   To minimize the burden on your security and helpdesk staff, train your users on how to [restore files from the recycle bin](https://support.microsoft.com/en-us/office/restore-deleted-items-from-the-site-collection-recycle-bin-5fa924ee-16d7-487b-9a0a-021b9062d14b).

- Preservation Hold library

   Files stored in SharePoint or OneDrive sites can be retained by applying retention settings. When a document with versions is subject to retention settings, versions get copied to the Preservation Hold library and exist as a separate item. If a user suspects their files have been compromised, they can investigate file changes by reviewing the retained copy. File Restore can then be used to recover files within the last 30 days.

   To minimize the burden on your security and IT helpdesk staff, train your users on [retention for SharePoint and OneDrive](/microsoft-365/compliance/retention-policies-sharepoint).


For OneDrive and SharePoint data, Microsoft can roll back to a previous point in time for up to 14 days if you are hit by a mass attack.

[Files Restore](https://techcommunity.microsoft.com/t5/microsoft-onedrive-blog/announcing-new-onedrive-for-business-feature-files-restore/ba-p/147436) is a complete self-service recovery solution for OneDrive that allows administrators and end users to restore files from any point in time during the last 30 days.

Email is protected by:

- Single item recovery and mailbox retention, in which you can recover items in a mailbox upon inadvertent or malicious premature deletion. You can rollback mail messages deleted within 14 days by default, configurable up to 30 days.

- Retention policies allow you to retain immutable copies of email for up to 10 years.

### Encrypting files in place

As previously described, files in SharePoint and OneDrive for Business are protected from malicious encryption by:

- Versioning
- Recycle bin
- Preservation Hold library

For additional details, see [Dealing with data corruption in Microsoft 365](/compliance/assurance/assurance-dealing-with-data-corruption).

### Copying files outside your tenant 

You can prevent a ransomware attacker from copying files outside your tenant with:

- [Data Loss Prevention (DLP)](/microsoft-365/compliance/dlp-learn-about-dlp) policies

    Detect, warn, and block risky, inadvertent, or inappropriate sharing of data containing personal or confidential information, both internally and externally:

    - Personal information such as personally identifying information (PII) for compliance with regional privacy regulations.

    - Confidential information based on sensitivity labels

- [Microsoft Cloud App Security](/cloud-app-security/what-is-cloud-app-security)

    Block downloads of sensitive information such as files. 

    You can also use session policies for [Microsoft Cloud App Security Conditional Access App Control](/cloud-app-security/tutorial-dlp#how-to-discover-and-protect-sensitive-information-in-your-organization) to monitor the flow of information between a user and an application in real time.

## What’s in this solution

This solution steps you through the deployment of Microsoft 365 protection and mitigation features, configurations, and ongoing operations to minimize the ability of a ransomware attacker to use the critical data in your Microsoft 365 tenant as financial leverage and hold your organization for ransom.

![The steps to protecting against ransomware with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step-grid.png)

The steps in this solution are:

1. [Configure security baselines](protect-against-ransomware-microsoft-365-step1.md)
2. [Deploy attack detection and response](protect-against-ransomware-microsoft-365-step2.md)
3. [Protect identities](protect-against-ransomware-microsoft-365-step3.md)
4. [Protect devices](protect-against-ransomware-microsoft-365-step4.md)
5. [Protect information](protect-against-ransomware-microsoft-365-step5.md)

Here are the five steps of the solution deployed for your Microsoft 365 tenant.

![Ransomware protection for a Microsoft 365 tenant](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture.png)


## Microsoft 365 capabilities and features

To protect your Microsoft 365 tenant from a ransomware attack, use these Microsoft 365 capabilities and features in the following categories.

### 1. Security baseline

| Capability or feature | Description | Helps... | Licensing |
|:-------|:-----|:-------|:-------|
| Microsoft Secure Score |  Feature of Microsoft 365 Defender that measures the security posture of a Microsoft 365 tenant. | Assess your security configuration and provide suggestions to improve it | Microsoft 365 E3 or Microsoft 365 E5 |
| Attack surface reduction rules | Configuration settings to reduce your organization's vulnerability to cyberthreats and attacks. | Block suspicious activity and vulnerable content | Microsoft 365 E3 or Microsoft 365 E5 |
| Exchange email settings |  Enables services to reduce your organization's vulnerability to an email-based attack. | Prevent initial access to your tenant through phishing and other email-based attacks  | Microsoft 365 E3 or Microsoft 365 E5 |
| Windows, Edge, and Microsoft 365 Apps for Enterprise settings | Industry-standard security configurations that are broadly known and well-tested. | Prevent attacks through Windows, Edge, and Microsoft 365 Apps for Enterprise | Microsoft 365 E3 or Microsoft 365 E5 |
|

### 2. Detection and response

| Capability or feature | Description | Helps detect and respond to... | Licensing |
|:-------|:-----|:-------|:-------|
| Microsoft 365 Defender | Combines signals and orchestrates capabilities into a single solution. Enables security professionals to stitch together threat signals and determine the full scope and impact of a threat. Microsoft 365 Defender takes automatic actions to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities. | Incidents, which are the combined alerts and data that make up an attack | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
| Microsoft Defender for Identity |  A cloud-based security solution that uses your on-premises Active Directory Domain Services (AD DS) signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Focus on Microsoft Defender for Identity next because it protects your on-premises and cloud infrastructure, has no dependencies or prerequisites, and can provide immediate security benefits. | Credential compromise for AD DS accounts | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
| Microsoft Defender for Office 365 | Safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. Protects against malware, phishing, spoofing, and other attack types. Configuring Microsoft Defender for Office 365 is recommended because change control, migrating settings from incumbent system, and other considerations can take longer to deploy. | Phishing attacks | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
| Microsoft Defender for Endpoint | Helps prevent, detect, investigate, and respond to advanced threats across devices (also referred to as endpoints). | Malware installation | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
| Azure AD Identity Protection | Automates the detection and remediation of identity-based risks and investigate those risks. | Credential compromise for Azure AD accounts and privilege escalation | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
| Microsoft Cloud App Security | A cloud access security broker for discovery, investigation, and governance. | Lateral movement and data exfiltration | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
|

### 3. Identities

| Capability or feature | Description | Helps prevent... | Licensing |
|:-------|:-----|:-------|:-------|
|MFA enforced with Conditional Access|Require MFA based on the properties of the sign-in with Conditional Access policies.|Credential compromise and access|Microsoft 365 E3 or Microsoft 365 E5|
|MFA enforced with risk-based Conditional Access|Require MFA based on the risk of the user sign-in with Azure AD Identity protection.|Credential compromise and access|Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on|
|

### 4. Devices

For device and app management:

| Capability or feature | Description | Helps prevent... | Licensing |
|:-------|:-----|:-------|:-------|
| Microsoft Intune | Manage devices and the applications that run on them. | Device or app compromise and access. | Microsoft 365 E3 or E5 |
|  |  |  |  |

For Windows 10 devices:

| Capability or feature | Description | Helps... | Licensing |
|:-------|:-----|:-------|:-------|
| Microsoft Defender Firewall | A host-based firewall.  | Prevent attacks from inbound, unsolicited network traffic. | Microsoft 365 E3 or Microsoft 365 E5 |
| Microsoft Defender Antivirus | Antimalware solution that uses machine learning, big-data analysis, in-depth threat resistance research, and the Microsoft cloud infrastructure to protect devices (or endpoints) in your organization. | Prevent installation and running of malware. | Microsoft 365 E3 or Microsoft 365 E5 |
| Microsoft Defender SmartScreen | Protects against phishing or malware websites and applications, and the downloading of potentially malicious files. | To block or warn when checking sites, downloads, apps, and files. | Microsoft 365 E3 or Microsoft 365 E5 |
| Microsoft Defender for Endpoint | Helps prevent, detect, investigate, and respond to advanced threats across devices (also referred to as endpoints). | With tampering protection and network protection | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
|  |  |  |  |

### 5. Information

| Capability or feature | Description | Helps... | Licensing |
|:-------|:-----|:-------|:-------|
| Controlled folder access | Protects your data by checking apps against a list of known, trusted apps. | Prevent files from being altered or encrypted by ransomware. | Microsoft 365 E3 or Microsoft 365 E5 |
| Microsoft Information Protection | Sensitivity labels can be applied them to ransomable information. | Prevent use of exfiltrated resources. | Microsoft 365 E3 or Microsoft 365 E5 |
| Data loss prevention (DLP) | Protects sensitive data and reduces risk by preventing users from inappropriately sharing it. | Prevent data exfiltration. | Microsoft 365 E3 or Microsoft 365 E5 |
| Microsoft Cloud App Security | A cloud access security broker for discovery, investigation, and governance. | Prevent lateral movement and data exfiltration. | Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on |
|

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

Microsoft 365 E5 subscription (paid or trial version)
Microsoft 365 E3 subscription + the Microsoft 365 E5 Compliance add-on
Microsoft 365 E3 subscription + the Microsoft 365 E5 Insider Risk Management add-on
Microsoft 365 A5 subscription (paid or trial version)
Microsoft 365 A3 subscription + the Microsoft 365 A5 Compliance add-on
Microsoft 365 A3 subscription + the Microsoft 365 A5 Insider Risk Management add-on
Microsoft 365 G5 subscription (paid or trial version)
Microsoft 365 G5 subscription + the Microsoft 365 G5 Compliance add-on
Microsoft 365 G5 subscription + the Microsoft 365 G5 Insider Risk Management add-on
Office 365 Enterprise E5 subscription (paid or trial version)
Office 365 A5 subscription (paid or trial version)
Office 365 Enterprise E3 subscription + the Office 365 Advanced Compliance add-on (no longer available for new subscriptions)

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

Deploying additional security features and requirements to your Microsoft 365 tenant can impact your users. For example, you may impose a new security policy that requires users to create new teams for specific uses with a list of user accounts as members, instead of more easily creating a team for all users in the organization. This can help prevent a ransomware attacker from exploring teams that are not available from the attacker's compromised user account and targeting them in the attack.

This solution will identify when a new configuration or recommended security policy can impact your users so you can implement the required change management.

## Next steps

Use these steps to deploy comprehensive protection for your Microsoft 365 tenant:

1. [Configure security baselines](protect-against-ransomware-microsoft-365-step1.md)
2. [Deploy attack detection and response](protect-against-ransomware-microsoft-365-step2.md)
3. [Protect identities](protect-against-ransomware-microsoft-365-step3.md)
4. [Protect devices](protect-against-ransomware-microsoft-365-step4.md)
5. [Protect information](protect-against-ransomware-microsoft-365-step5.md)

[![Step 1 for ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step1.png)](protect-against-ransomware-microsoft-365-step1.md)
