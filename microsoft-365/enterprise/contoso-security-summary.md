---
title: "Summary of Microsoft 365 for enterprise security for the Contoso Corporation"
author: kelleyvice-msft
f1.keywords:
- NOCSH
ms.author: kvice
manager: scotv
ms.date: 09/06/2024
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- M365-security-compliance
- Strat_O365_Enterprise
- must-keep
ms.custom:

description: How Contoso uses the security features of Microsoft 365 for enterprise.
---

# Summary of Microsoft 365 for enterprise security for the Contoso Corporation

To get approval to deploy Microsoft 365 for enterprise, the Contoso IT security department conducted a thorough security review. They identified the following security requirements for the cloud:

- Use the strongest methods of authentication for employee access to cloud resources.
- Ensure that PCs and mobile devices connect and access applications in secure ways.
- Protect PCs and email from malware.
- Permissions on cloud-based digital assets define who can access what and what they can do, and are designed for least-privilege access
- Sensitive and highly regulated digital assets are labeled, encrypted, and stored in secure locations.
- Highly regulated digital assets are protected with additional encryption and permissions.
- IT security staff can monitor the current security posture from central dashboards and get notified of security events for quick response and mitigation.

## The Contoso path to Microsoft 365 security readiness

Contoso followed these steps to prepare their security for their deployment of Microsoft 365 for enterprise:

1. Limit administrator accounts for the cloud

   Contoso did an extensive review of its existing Active Directory Domain Services (AD DS) administrator accounts and set up series of dedicated cloud administrator accounts and groups.

2. Classify data into three security levels

   Contoso did a careful review and determined the three levels, which were used to identify the Microsoft 365 for enterprise features to protect the most valuable data.

3. Determine access, retention, and information protection policies for data levels

   Based on the data levels, Contoso determined detailed requirements to qualify future IT workloads that are moved to the cloud.

To follow security best practices and Microsoft 365 for enterprise deployment requirements, Contoso security administrators and its IT department deployed many security features and capabilities, as described in the following sections.

## Identity and access management

- Dedicated global administrator accounts with MFA and PIM

  Rather than assign the global admin role to everyday user accounts, Contoso created three dedicated global administrator accounts with strong passwords. The accounts are protected by Microsoft Entra multifactor authentication (MFA) and Microsoft Entra Privileged Identity Management (PIM). *PIM is only available with Microsoft 365 E5.*

  Signing in with a **Microsoft Entra DC admin**, or **Global admin** account is only done for specific administrative tasks. The passwords are only known to designated staff and can only be used within a time period that's configured in Microsoft Entra PIM.

  Contoso security administrators assigned lesser admin roles to accounts that are appropriate to that IT worker's job function.

  For more information, see [About Microsoft 365 admin roles](/office365/admin/add-users/about-admin-roles).

- MFA for all user accounts

  MFA adds an additional layer of protection to the sign-in process. It requires users to acknowledge a phone call, text message, or app notification on their smart phone after correctly entering their password. With MFA, Microsoft Entra user accounts are protected against unauthorized sign-in, even if an account password is compromised.

  - To protect against compromise of the Microsoft 365 subscription, Contoso requires MFA on all **Microsoft Entra DC admin**, or **Global admin** accounts.
  - To protect against phishing attacks, in which an attacker compromises the credentials of a trusted person in the organization and sends malicious emails, Contoso enabled MFA on all user accounts, including managers and executives.

- Safer device and application access with Conditional Access policies

  Contoso is using [Conditional Access policies](../security/office-365-security/zero-trust-identity-device-access-policies-overview.md) for identity, devices, Exchange Online, and SharePoint. Identity Conditional Access policies include requiring password changes for high-risk users and blocking clients from using apps that don't support modern authentication. Device policies include the definition of approved apps and requiring compliant PCs and mobile devices. Exchange Online Conditional Access policies include blocking ActiveSync clients and setting up Office 365 message encryption. SharePoint Conditional Access policies include additional protection for sensitive and highly regulated sites.

- Windows Hello for Business

  Contoso deployed [Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-identity-verification) to eventually eliminate the need for passwords through strong two-factor authentication on PCs and mobile devices running Windows 11 Enterprise.

- Windows Defender Credential Guard

  To block targeted attacks and malware running in the operating system with administrative privileges, Contoso enabled [Windows Defender Credential Guard](/windows/security/identity-protection/credential-guard/credential-guard) through AD DS group policy.

## Threat protection

- Protection from malware with Microsoft Defender Antivirus

  Contoso is using [Microsoft Defender Antivirus](/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) for malware protection and anti-malware management for PCs and devices running Windows 11 Enterprise.

- Secure email flow and mailbox audit logging with Microsoft Defender for Office 365

  Contoso is using Exchange Online Protection and [Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365) to protect against unknown malware, viruses, and malicious URLs transmitted through emails.

  Contoso also enabled mailbox audit logging to identify who logs in to user mailboxes, sends messages, and does other activities performed by the mailbox owner, a delegated user, or an administrator.

- Attack monitoring and prevention with Office 365 threat investigation and response

  Contoso uses [Office 365 threat investigation and response](/microsoft-365/security/office-365-security/office-365-ti) to protect users by making it easy to identify and address attacks, and to prevent future attacks.

- Protection from sophisticated attacks with Advanced Threat Analytics

  Contoso is using [Advanced Threat Analytics (ATA)](/advanced-threat-analytics/what-is-ata) to protect itself from advanced targeted attacks.  ATA automatically analyzes, learns, and identifies normal and abnormal entity (user, devices, and resources) behavior.

## Information protection

- Protect sensitive and highly regulated digital assets with Azure Information Protection labels

  Contoso determined three levels of data protection and deployed [Microsoft 365 sensitivity labels](../compliance/sensitivity-labels.md) that users apply to digital assets. For its trade secrets and other intellectual property, Contoso uses sensitivity sublabels for highly regulated data. This process encrypts content and restricts access to specific user accounts and groups.

- Prevent intranet data leaks with Data Loss Prevention

  Contoso configured [Microsoft Purview Data Loss Prevention](../compliance/dlp-learn-about-dlp.md) policies for Exchange Online, SharePoint, and OneDrive for Business to prevent users from accidentally or intentionally sharing sensitive data.

- Prevent device data leaks Windows Information Protection

  Contoso is using [Windows Information Protection (WIP)](/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip) to protect against data leakage through internet-based apps and services and enterprise apps and data on enterprise-owned devices and personal devices that employees bring to work.

- Cloud monitoring with Microsoft Defender for Cloud Apps

  Contoso is using [Microsoft Defender for Cloud Apps](/cloud-app-security/what-is-cloud-app-security) to map their cloud environment, monitor its usage, and detect security events and incidents. *Microsoft Defender for Cloud Apps is only available with Microsoft 365 E5.*

- Device management with Microsoft Intune

  Contoso uses [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) to enroll, manage, and configure access to mobile devices and the apps that run on them. Device-based Conditional Access policies also require approved apps and compliant PCs and mobile devices.

## Security management

- Central security dashboard for IT with Microsoft Defender for Cloud

  Contoso uses the [Microsoft Defender for Cloud](https://azure.microsoft.com/services/security-center/) to present a unified view of security and threat protection, to manage security policies across its workloads, and to respond to cyberattacks.

- Central security dashboard for users with Windows Defender Security Center

  Contoso deployed the [Windows Security app](/windows/security/threat-protection/windows-defender-security-center/windows-defender-security-center) to its PCs and devices running Windows 11 Enterprise so that users can see their security posture at a glance and take action.
