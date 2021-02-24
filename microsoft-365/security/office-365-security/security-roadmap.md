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

localization_priority: Normal
ms.collection: 
  - Ent_O365
  - Strat_O365_IP
  - M365-security-compliance
search.appverid: 
  - MET150
ms.assetid: 28c86a1c-e4dd-4aad-a2a6-c768a21cb352
description: Top recommendations from Microsoft's cybersecurity team for implementing security capabilities to protect your Microsoft 365 environment.
ms.technology: mdo
ms.prod: m365-security
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
|30 days|Rapid configuration: <ul><li>Basic admin protections.</li><li>Logging and analytics.</li><li>Basic identity protections.</li></ul> <p> Tenant configuration. <p> Prepare stakeholders.|
|90 days|Advanced protections: <ul><li>Admin accounts.</li><li>Data and user accounts.</li></ul> <p> Visibility into compliance, threat, and user needs. <p> Adapt and implement default policies and protections.|
|Beyond|Adjust and refine key policies and controls. <p> Extend protections to on-premises dependencies. <p> Integrate with business and security processes (legal, insider threat, etc.).|
|

## 30 days — powerful quick wins
<a name="Thirdaydays"> </a>

These tasks can be accomplished quickly and have low impact to users.

****

|Area|Tasks|
|---|---|
|Security management|<ul><li>Check Secure Score and take note of your current score (<https://securescore.office.com>).</li><li>Turn on audit logging for Office 365. See [Search the audit log](../../compliance/search-the-audit-log-in-security-and-compliance.md).</li><li>[Configure Microsoft 365 for increased security](tenant-wide-setup-for-increased-security.md).</li><li>Regularly review dashboards and reports in the Microsoft 365 security center and Cloud App Security.</li></ul>|
|Threat protection|[Connect Microsoft 365 to Microsoft Cloud App Security](https://docs.microsoft.com/cloud-app-security/connect-office-365-to-microsoft-cloud-app-security) to start monitoring using the default threat detection policies for anomalous behaviors. It takes seven days to build a baseline for anomaly detection. <p>  Implement protection for admin accounts:<ul><li>Use dedicated admin accounts for admin activity.</li><li>Enforce multi-factor authentication (MFA) for admin accounts.</li><li>Use a [highly secure Windows 10 device](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-highly-secure) for admin activity.</li></ul>|
|Identity and access management|<ul><li>[Enable Azure Active Directory Identity Protection](https://docs.microsoft.com/azure/active-directory/active-directory-identityprotection-enable).</li><li>For federated identity environments, enforce account security (password length, age, complexity, etc.).</li></ul>|
|Information protection|Review example information protection recommendations. Information protection requires coordination across your organization. Get started with these resources:<ul><li>[Office 365 Information Protection for GDPR](https://docs.microsoft.com/compliance/regulatory/gdpr)</li><li>[Configure Teams with three tiers of protection](../../solutions/configure-teams-three-tiers-protection.md) (includes sharing, classification, data loss prevention, and Azure Information Protection)</li></ul>|
|

## 90 days — enhanced protections
<a name="Ninetydays"> </a>

These tasks take a bit more time to plan and implement but greatly increase your security posture.

****

|Area|Task|
|---|---|
|Security management|<ul><li>Check Secure Score for recommended actions for your environment (<https://securescore.office.com>).</li><li>Continue to regularly review dashboards and reports in the Microsoft 365 security center, Cloud App Security, and SIEM tools.</li><li>Look for and implement software updates.</li><li>Conduct attack simulations for spear-phishing, password-spray, and brute-force password attacks using [Attack Simulator](attack-simulator.md) (included with [Office 365 Threat Intelligence](office-365-ti.md)).</li><li>Look for sharing risk by reviewing the built-in reports in Cloud App Security (on the Investigate tab).</li><li>Check [Compliance Manager](../../compliance/compliance-manager.md) to review status for regulations that apply to your organization (such as GDPR, NIST 800-171).</li></ul>|
|Threat protection|Implement enhanced protections for admin accounts: <ul><li>Configure [Privileged Access Workstations](https://docs.microsoft.com/windows-server/identity/securing-privileged-access/privileged-access-workstations) (PAWs) for admin activity.</li><li>Configure [Azure AD Privileged Identity Management](https://docs.microsoft.com/azure/active-directory/active-directory-privileged-identity-management-configure).</li><li>Configure a security information and event management (SIEM) tool to collect logging data from Office 365, Cloud App Security, and other services, including AD FS. The audit log stores data for only 90 days. Capturing this data in SIEM tool allows you to store data for a longer period.</li></ul>|
|Identity and access management|<ul><li>Enable and enforce MFA for all users.</li><li>Implement a set of [conditional access and related policies](microsoft-365-policies-configurations.md).</li></ul>|
|Information protection| Adapt and implement information protection policies. These resources include examples: <ul><li>[Office 365 Information Protection for GDPR](https://docs.microsoft.com/compliance/regulatory/gdpr)</li><li>[Configure Teams with three tiers of protection](../../solutions/configure-teams-three-tiers-protection.md)</li></ul> <p> Use data loss prevention policies and monitoring tools in Microsoft 365 for data stored in Microsoft 365 (instead of Cloud App Security). <p> Use Cloud App Security with Microsoft 365 for advanced alerting features (other than data loss prevention).|
|

## Beyond
<a name="Beyond"> </a>

These are important security measures that build on previous work.

****

|Area|Task|
|---|---|
|Security management|<ul><li>Continue planning next actions by using Secure Score (<https://securescore.office.com>).</li><li>Continue to regularly review dashboards and reports in the Microsoft 365 security center, Cloud App Security, and SIEM tools.</li><li>Continue to look for and implement software updates.</li><li>Integrate eDiscovery into your legal and threat response processes.</li></ul>|
|Threat protection|<ul><li>Implement [Secure Privileged Access](https://docs.microsoft.com/windows-server/identity/securing-privileged-access/securing-privileged-access) (SPA) for identity components on premises (AD, AD FS).</li><li>Use Cloud App Security to monitor for insider threats.</li><li>Discover shadow IT SaaS usage by using Cloud App Security.</li></ul>|
|Identity and access management|<ul><li>Refine policies and operational processes.</li><li>Use Azure AD Identity Protection to identify insider threats.</li></ul>|
|Information protection|Refine information protection policies: <ul><li>Microsoft 365 and Office 365 sensitivity labels and data loss prevention (DLP), or Azure Information Protection.</li><li>Cloud App Security policies and alerts.</li></ul>|
|

Also see: [How to mitigate rapid cyberattacks such as Petya and WannaCrypt](https://cloudblogs.microsoft.com/microsoftsecure/2018/02/21/how-to-mitigate-rapid-cyberattacks-such-as-petya-and-wannacrypt/).
