---
title: Microsoft 365 security roadmap - Top priorities
f1.keywords:
- NOCSH
ms.author: bcarter
author: BrendaCarter
manager: laurawi
ms.date: 10/08/2018
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.collection:
- Ent_O365
- Strat_O365_IP
- M365-security-compliance
search.appverid:
- MET150
ms.assetid: 28c86a1c-e4dd-4aad-a2a6-c768a21cb352
description: "Top recommendations from Microsoft's cybersecurity team for implementing security capabilities to protect your Microsoft 365 environment. "
---

# Security roadmap - Top priorities for the first 30 days, 90 days, and beyond

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


This article includes top recommendations from Microsoft's cybersecurity team for implementing security capabilities to protect your Microsoft 365 environment. This article is adapted from a Microsoft Ignite session — [Secure Microsoft 365 like a cybersecurity pro: Top priorities for the first 30 days, 90 days, and beyond](https://www.youtube.com/watch?v=luignzNyR-o). This session was developed and presented by Mark Simos and Matt Kemelhar, Enterprise Cybersecurity Architects.

In this article:

- [Roadmap outcomes](security-roadmap.md#Roadmap)

- [30 days — powerful quick wins](security-roadmap.md#Thirdaydays)

- [90 days — enhanced protections](security-roadmap.md#Ninetydays)

- [Beyond](security-roadmap.md#Beyond)

## Roadmap outcomes
<a name="Roadmap"> </a>

These roadmap recommendations are staged across three phases in a logical order with the following goals.

****

|Time frame|Outcomes|
|---|---|
|30 days|Rapid configuration:  <br/> * Basic admin protections  <br/> * Logging and analytics  <br/> * Basic identity protections  <br/> Tenant configuration  <br/>  Prepare stakeholders|
|90 days|Advanced protections:  <br/> * Admin accounts  <br/>  * Data &amp; user accounts  <br/>  Visibility into compliance, threat, and user needs  <br/>  Adapt and implement default policies and protections|
|Beyond|Adjust and refine key policies and controls  <br/> Extend protections to on-premises dependencies  <br/> Integrate with business and security processes (legal, insider threat, etc.)|
|

## 30 days — powerful quick wins
<a name="Thirdaydays"> </a>

These tasks can be accomplished quickly and have low impact to users.

****

|Area|Tasks|
|---|---|
|Security management|* Check Secure Score and take note of your current score (<https://securescore.office.com>).  <br/>  * Turn on audit logging for Office 365. See [Search the audit log](../../compliance/search-the-audit-log-in-security-and-compliance.md).  <br/> * [Configure Microsoft 365 for increased security](tenant-wide-setup-for-increased-security.md).  <br/>  * Regularly review dashboards and reports in the Microsoft 365 security center and Cloud App Security.|
|Threat protection|[Connect Microsoft 365 to Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/connect-office-365-to-microsoft-cloud-app-security) to start monitoring using the default threat detection policies for anomalous behaviors. It takes seven days to build a baseline for anomaly detection.  <br><br/>  Implement protection for admin accounts:  <br/> *  Use dedicated admin accounts for admin activity.  <br/>  * Enforce multi-factor authentication (MFA) for admin accounts.  <br/>  * Use a [highly secure Windows 10 device](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-highly-secure) for admin activity.|
|Identity and access management|* [Enable Azure Active Directory Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection-enable).  <br/> * For federated identity environments, enforce account security (password length, age, complexity, etc.).|
|Information protection|Review example information protection recommendations. Information protection requires coordination across your organization. Get started with these resources:  <br/> * [Office 365 Information Protection for GDPR](https://aka.ms/o365gdpr) <br/> * [Configure Teams with three tiers of protection](../../solutions/configure-teams-three-tiers-protection.md) (includes sharing, classification, data loss prevention, and Azure Information Protection)|
|

## 90 days — enhanced protections
<a name="Ninetydays"> </a>

These tasks take a bit more time to plan and implement but greatly increase your security posture.

****

|Area|Task|
|---|---|
|Security management|* Check Secure Score for recommended actions for your environment ([https://securescore.office.com](https://securescore.office.com)).  <br/>  * Continue to regularly review dashboards and reports in the Microsoft 365 security center, Cloud App Security, and SIEM tools. <br/> * Look for and implement software updates. <br/> * Conduct attack simulations for spear-phishing, password-spray, and brute-force password attacks using [Attack Simulator](attack-simulator.md) (included with [Office 365 Threat Intelligence](office-365-ti.md)).  <br/> * Look for sharing risk by reviewing the built-in reports in Cloud App Security (on the Investigate tab). <br/> * Check [Compliance Manager](https://docs.microsoft.com/microsoft-365/compliance/compliance-manager) to review status for regulations that apply to your organization (such as GDPR, NIST 800-171).|
|Threat protection| Implement enhanced protections for admin accounts: <br/> * Configure [Privileged Access Workstations](https://docs.microsoft.com/windows-server/identity/securing-privileged-access/privileged-access-workstations) (PAWs) for admin activity. <br/> * Configure [Azure AD Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure). <br/> * Configure a security information and event management (SIEM) tool to collect logging data from Office 365, Cloud App Security, and other services, including AD FS. The audit log stores data for only 90 days. Capturing this data in SIEM tool allows you to store data for a longer period.|
|Identity and access management|* Enable and enforce MFA for all users. <br/> * Implement a set of [conditional access and related policies](microsoft-365-policies-configurations.md). |
|Information protection| Adapt and implement information protection policies. These resources include examples: <br/> * [Office 365 Information Protection for GDPR](https://aka.ms/o365gdpr) <br/> * [Configure Teams with three tiers of protection](../../solutions/configure-teams-three-tiers-protection.md) <br/> <br> Use data loss prevention policies and monitoring tools in Microsoft 365 for data stored in Microsoft 365 (instead of Cloud App Security). <br><br>Use Cloud App Security with Microsoft 365 for advanced alerting features (other than data loss prevention).|
|

## Beyond
<a name="Beyond"> </a>

These are important security measures that build on previous work.

****

|Area|Task|
|---|---|
|Security management|* Continue planning next actions by using Secure Score ( [https://securescore.office.com](https://securescore.office.com)). <br/> * Continue to regularly review dashboards and reports in the Microsoft 365 security center, Cloud App Security, and SIEM tools. <br/> * Continue to look for and implement software updates. <br/> * Integrate eDiscovery into your legal and threat response processes.|
|Threat protection|* Implement [Secure Privileged Access](https://docs.microsoft.com/windows-server/identity/securing-privileged-access/securing-privileged-access) (SPA) for identity components on premises (AD, AD FS). <br/> * Use Cloud App Security to monitor for insider threats. <br/> * Discover shadow IT SaaS usage by using Cloud App Security.|
|Identity and access management|* Refine policies and operational processes. <br/> * Use Azure AD Identity Protection to identify insider threats.|
|Information protection|Refine information protection policies: <br/> * Microsoft 365 and Office 365 sensitivity labels and data loss prevention (DLP), or Azure Information Protection. <br/> * Cloud App Security policies and alerts.|
|

Also see: [How to mitigate rapid cyberattacks such as Petya and WannaCrypt](https://cloudblogs.microsoft.com/microsoftsecure/2018/02/21/how-to-mitigate-rapid-cyberattacks-such-as-petya-and-wannacrypt/).
