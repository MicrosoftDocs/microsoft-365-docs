---
title: What's new in Microsoft Secure Score
description: Describes changes to Microsoft Secure Score in the Microsoft Defender portal.
ms.localizationpriority: medium
f1.keywords:
  - NOCSH
ms.service: defender-xdr
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier2
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 02/19/2024
---

# What's new in Microsoft Secure Score

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

To make Microsoft Secure Score a better representative of your security posture, we continue to add new features and improvement actions.

The more improvement actions you take, the higher your Secure Score will be. For more information, see [Microsoft Secure Score](microsoft-secure-score.md).

Microsoft Secure Score can be found at <https://security.microsoft.com/securescore> in the [Microsoft Defender portal](microsoft-365-defender-portal.md).

## February 2024

The following recommendation is added as a Microsoft Secure Score improvement action:

**Microsoft Defender for Identity:**

- Edit insecure ADCS certificate enrollment IIS endpoints (ESC8)

## January 2024

The following recommendations have been added as Microsoft Secure Score improvement actions: 

**Microsoft Entra (AAD):**

- Ensure 'Phishing-resistant MFA strength' is required for Administrators. 
- Ensure custom banned passwords lists are used. 
- Ensure 'Microsoft Azure Management' is limited to administrative roles.

**Admin Center:**

- Ensure ‘User owned apps and services’ is restricted. 

**Microsoft Forms:** 

- Ensure internal phishing protection for Forms is enabled. 
 
**Microsoft Share Point:** 

- Ensure that SharePoint guest users cannot share items they don't own.

### Defender for Cloud Apps support for multiple instances of an app

Microsoft Defender for Cloud Apps now supports Secure Score recommendations across multiple instances of the same app. For example, if you have multiple instances of AWS, you can configure and filter for Secure Score recommendations for each instance individually. 

For more information, see [Turn on and manage SaaS security posture management (SSPM)](/defender-cloud-apps/security-saas).

## December 2023

The following recommendations have been added as Microsoft Secure Score improvement actions:

**Microsoft Entra (AAD):**

- Ensure 'Microsoft Azure Management' is limited to administrative roles.

**Microsoft Sway:**

- Ensure that Sways cannot be shared with people outside of your organization.

**Microsoft Exchange Online:**

- Ensure users installing Outlook add-ins is not allowed.

**Zendesk:**

- Enable and adopt two-factor authentication (2FA).
- Send a notification on password change for admins, agents, and end users.
- Enable IP restrictions.
- Block customers to bypass IP restrictions.
- Admins and agents can use the Zendesk Support mobile app.
- Enable Zendesk authentication.
- Enable session timeout for users.
- Block account assumption.
- Block admins to set passwords.
- Automatic redaction.

**Net Document:**

- Adopt Single sign on (SSO) in netDocument.

**Meta Workplace:**

- Adopt Single sign on (SSO) in Workplace by Meta.

**Dropbox:**

- Enable web session timeout for web users.

**Atlassian:**

- Enable multi-factor authentication (MFA).
- Enable Single Sign On (SSO).
- Enable strong Password Policies.
- Enable session timeout for web users.
- Enable Password expiration policies.
- Atlassian mobile app security - Users that are affected by policies.
- Atlassian mobile app security - App data protection.
- Atlassian mobile app security - App access requirement.

**Microsoft Defender for Identity:
New Active Directory Certificate Services (ADCS) related recommendations:**

- **Certificate templates recommended actions** :
  - [Prevent users to request a certificate valid for arbitrary users based on the certificate template (ESC1)](/defender-for-identity/security-assessment-prevent-users-request-certificate)
  - [Edit overly permissive Certificate Template with privileged EKU (Any purpose EKU or No EKU) (ESC2)](/defender-for-identity/security-assessment-edit-overly-permissive-template)
  - [Misconfigured enrollment agent certificate template (ESC3)](/defender-for-identity/security-assessment-edit-misconfigured-enrollment-agent)
  - [Edit misconfigured certificate templates ACL (ESC4)](/defender-for-identity/security-assessment-edit-misconfigured-acl)
  - [Edit misconfigured certificate templates owner](/defender-for-identity/security-assessment-edit-misconfigured-owner)
- **Certificate authority recommended actions** :
  - [Edit vulnerable Certificate Authority setting](/defender-for-identity/security-assessment-edit-vulnerable-ca-setting)
  - [Edit misconfigured Certificate Authority ACL (ESC7)](/defender-for-identity/security-assessment-edit-misconfigured-ca-acl)
  - [Enforce encryption for RPC certificate enrollment interface (ESC8)](/defender-for-identity/security-assessment-enforce-encryption-rpc)

For more information, see [Microsoft Defender for Identity's security posture assessments](/defender-for-identity/security-assessment).

## October 2023:

The following recommendations have been added as Microsoft Secure Score improvement actions:

**Microsoft Entra (AAD):**

- Ensure 'Phishing-resistant MFA strength' is required for administrators.
- Ensure custom banned passwords lists are used.

**Microsoft Sway:**

- Ensure that Sways cannot be shared with people outside of your organization.

**Atlassian:**

- Enable multi-factor authentication (MFA).
- Enable Single Sign On (SSO).
- Enable strong Password Policies.
- Enable session timeout for web users.
- Enable Password expiration policies.
- Atlassian mobile app security - Users that are affected by policies.
- Atlassian mobile app security - App data protection.
- Atlassian mobile app security - App access requirement.

## September 2023:

The following recommendations have been added as Microsoft Secure Score improvement actions:

**Microsoft Information Protection:**

- Ensure Microsoft 365 audit log search is enabled.
- Ensure DLP policies are enabled for Microsoft Teams.

**Exchange Online:**

- Ensure that SPF records are published for all Exchange Domains.
- Ensure modern authentication for Exchange Online is enabled.
- Ensure MailTips are enabled for end users.
- Ensure mailbox auditing for all users is enabled.
- Ensure additional storage providers are restricted in Outlook on the web.

**Microsoft Defender for Cloud Apps:**

- Ensure Microsoft Defender for Cloud Apps is enabled.

**Microsoft Defender for Office:**

- Ensure Exchange Online Spam Policies are set to notify administrators.
- Ensure all forms of mail forwarding are blocked and/or disabled.
- Ensure Safe Links for Office Applications is enabled.
- Ensure Safe Attachments policy is enabled.
- Ensure that an anti-phishing policy has been created. 

## August 2023

The following recommendations have been added as Microsoft Secure Score improvement actions:

**Microsoft Information Protection:**

- Ensure Microsoft 365 audit log search is enabled.

**Microsoft Exchange Online:**

- Ensure modern authentication for Exchange Online is enabled.
- Ensure Exchange Online Spam Policies are set to notify administrators.
- Ensure all forms of mail forwarding are blocked and/or disabled.
- Ensure MailTips are enabled for end users.
- Ensure mailbox auditing for all users is enabled.
- Ensure additional storage providers are restricted in Outlook on the web.

**Microsoft Entra ID:**

To see the following new Microsoft Entra controls in the Office 365 connector, you need to turn on Microsoft Defender for Cloud Apps in the App connectors settings page:

- Ensure password protection is enabled for on-premises Active Directory.
- Ensure 'LinkedIn account connections' is disabled.

**SharePoint:**

- Ensure Safe Links for Office Applications is enabled.
- Ensure Safe Attachments for SharePoint, OneDrive, and Microsoft Teams is enabled.
- Ensure that an anti-phishing policy has been created.

To see the following new SharePoint controls in the Office 365 connector, you need to turn on Microsoft Defender for Cloud Apps in the App connectors settings page:

- Ensure SharePoint external sharing is managed through domain allowlists/blocklists.
- Block OneDrive for Business sync from unmanaged devices.

### Microsoft Secure Score integration with Microsoft Lighthouse 365

Microsoft 365 Lighthouse helps Managed Service Providers (MSPs) grow their business and deliver services to customers at scale from a single portal. Lighthouse allows customers to standardize configurations, manage risk, identify artificial intelligence (AI)-driven sales opportunities, and engage with customers to help them maximize their investment in Microsoft 365.

We've integrated Microsoft Secure Score into Microsoft 365 Lighthouse. This integration provides an aggregate view of the Secure Score across all managed tenants, and Secure Score details for each individual tenant. Access to Secure Score is available from a new card on the Lighthouse homepage or by selecting a tenant on the Lighthouse Tenants page.

> [!NOTE]
> The integration with Microsoft Lighthouse 365 is available to Microsoft partners who use the Cloud Solution Provider (CSP) program to manage customer tenants.

<a name='microsoft-secure-score-permissions-integration-with-microsoft-365-defender-unified-role-based-access-control-rbac-is-now-in-public-preview'></a>

### Microsoft Secure Score permissions integration with Microsoft Defender XDR Unified role-based access control (RBAC) is now in Public Preview

Previously, only Microsoft Entra global roles (such as Global Administrators) could access Microsoft Secure Score. Now, you can control access and grant granular permissions for the Microsoft Secure Score experience as part of the Microsoft Defender XDR Unified RBAC model.

You can add the new permission and choose the data sources the user has access to by selecting the **Security posture** permissions group when creating the role. For more information, see [Create custom roles with Microsoft Defender XDR Unified RBAC](./create-custom-rbac-roles.md). Users see Secure Score data for the data sources they have permissions to.

A new data source **Secure Score – Additional data source** is also available. Users with permissions to this data source have access to additional data within the Secure score dashboard. For more information on additional data sources, see [Products included in Secure Score](./microsoft-secure-score.md#products-included-in-secure-score).

## July 2023

The following Microsoft Defender for Identity recommendations were added as Microsoft Secure Score improvement actions:

- Remove the attribute 'password never expires' from accounts in your domain.
- Remove access rights on suspicious accounts with the Admin SDHolder permission.
- Manage accounts with passwords more than 180 days old.
- Remove local admins on identity assets.
- Remove non-admin accounts with DCSync permissions.
- Start your Defender for Identity deployment, installing Sensors on Domain Controllers and other eligible servers.

The following Google workspace recommendation were added as a Microsoft Secure Score improvement action:

- Enable multifactor authentication (MFA)

In order to view this new control, Google workspace connector in Microsoft Defender for Cloud Apps must be configured via the App connectors settings page.

## May 2023

A new Microsoft Exchange Online recommendation is now available as Secure Score improvement action:

- Ensure mail transport rules don't allow specific domains.

New Microsoft SharePoint recommendations are now available as Secure Score improvement actions:

- Ensure modern authentication for SharePoint applications is required.
- Ensure that external users can't share files, folders, and sites they don't own.

## April 2023

New recommendations are now available in Microsoft Secure Score for customers with an active Microsoft Defender for Cloud Apps license:

- Ensure that only organizationally managed/approved public groups exist.
- Ensure Sign-in frequency is enabled and browser sessions aren't persistent for Administrative users.
- Ensure Administrative accounts are separate, unassigned, and cloud-only.
- Ensure third party integrated applications aren't allowed.
- Ensure the admin consent workflow is enabled.
- Ensure DLP policies are enabled for Microsoft Teams.
- Ensure that SPF records are published for all Exchange Domains.
- Ensure Microsoft Defender for Cloud Apps is Enabled.
- Ensure mobile device management policies are set to require advanced security configurations to protect from basic internet attacks.
- Ensure that mobile device password reuse is prohibited.
- Ensure that mobile devices are set to never expire passwords.
- Ensure that users can't connect from devices that are jail broken or rooted.
- Ensure mobile devices are set to wipe on multiple sign-in failures to prevent brute force compromise.
- Ensure that mobile devices require a minimum password length to prevent brute force attacks.
- Ensure devices lock after a period of inactivity to prevent unauthorized access.
- Ensure that mobile device encryption is enabled to prevent unauthorized access to mobile data.
- Ensure that mobile devices require complex passwords (Type = Alphanumeric).
- Ensure that mobile devices require complex passwords (Simple Passwords = Blocked).
- Ensure that devices connecting have AV and a local firewall enabled.
- Ensure mobile device management policies are required for email profiles.
- Ensure mobile devices require the use of a password.

> [!NOTE]
> To view the new Defender for Cloud Apps recommendations, the Office 365 connector in Microsoft Defender for Cloud Apps must be toggled on via the App connectors settings page. For more information, see, [How to connect Office 365 to Defender for Cloud Apps](/defender-cloud-apps/connect-office-365#how-to-connect-office-365-to-defender-for-cloud-apps).

## September 2022

New Microsoft Defender for Office 365 recommendations for anti-phishing policies are now available as Secure Score improvement actions:

- Set the phishing email level threshold at 2 or higher.
- Enable impersonated user protection.
- Enable impersonated domain protection.
- Ensure that mailbox intelligence is enabled.
- Ensure that intelligence for impersonation protection is enabled.
- Quarantine messages that are detected from impersonated users.
- Quarantine messages that are detected from impersonated domains.
- Move messages that are detected as impersonated users by mailbox intelligence.
- Enable the 'show first contact safety tip' option.
- Enable the user impersonation safety tip.
- Enable the domain impersonation safety tip.
- Enable the user impersonation unusual characters safety tip.

A New SharePoint Online recommendation is now available as a Secure Score improvement action:

- Sign out inactive users in SharePoint Online.

## August 2022

New Microsoft Purview Information Protection recommendations are now available as Secure Score improvement actions:

- **Labeling**
  - Extend Microsoft 365 sensitivity labeling to assets in Azure Purview data map.
  - Ensure Autolabeling data classification policies are set up and used.
  - Publish Microsoft 365 sensitivity label data classification policies.
  - Create Data Loss Prevention (DLP) policies.

New Microsoft Defender for Office 365 recommendations are now available as Secure Score improvement actions:

- **Anti-spam - Inbound policy**
  - Set the email bulk complaint level (BCL) threshold to 6 or lower.
  - Set action to take on spam detection.
  - Set action to take on high confidence spam detection.
  - Set action to take on phishing detection.
  - Set action to take on high confidence phishing detection.
  - Set action to take on bulk spam detection.
  - Retain spam in quarantine for 30 days.
  - Ensure spam safety tips are enabled.
  - Ensure that no sender domains are in the allowed domains list in anti-spam policies (replaces "Ensure that there are no sender domains allowed for Anti-spam policies" to extend functionality also for specific senders).

- **Anti-spam - Outbound policy**
  - Set maximum number of external recipients that a user can email per hour.
  - Set maximum number of internal recipients that a user can send to within an hour.
  - Set a daily message limit.
  - Block users who reached the message limit.
  - Set Automatic email forwarding rules to be system controlled.

- **Anti-spam - Connection filter**
  - Don't add allowed IP addresses in the connection filter policy.

## June 2022

- New Microsoft Defender for Endpoint and Microsoft Defender Vulnerability Management recommendations are now available as Secure Score improvement actions:

  - Disallow offline access to shares.
  - Remove share write permission set to **Everyone**.
  - Remove shares from the root folder.
  - Set folder access-based enumeration for shares.
  - Update Microsoft Defender for Endpoint core components.

- A new Microsoft Defender for Identity recommendation is available as a Secure Score improvement action:

  - Resolve unsecure domain configurations.

- A new [app governance](/defender-cloud-apps/app-governance-manage-app-governance) recommendation is now available as a Secure Score improvement action:

  - Regulate apps with consent from priority accounts.

- New Salesforce and ServiceNow recommendations are now available as Secure Score improvement actions for Microsoft Defender for Cloud Apps customers. For more information, see [SaaS Security Posture Management overview](https://aka.ms/saas_security_posture_management).

> [!NOTE]
> Salesforce and ServiceNow controls are now available in public preview.

## April 2022

- Turn on user authentication for remote connections.

## December 2021

- Turn on Safe Attachments in block mode.
- Prevent sharing Exchange Online calendar details with external users.
- Turn on Safe Documents for Office clients.
- Turn on the common attachments filter setting for anti-malware policies.
- Ensure that there are no sender domains allowed for anti-spam policies.
- Create Safe Links policies for email messages.
- Create zero-hour auto purge policies for malware.
- Turn on Microsoft Defender for Office 365 in SharePoint, OneDrive, and Microsoft Teams.
- Create zero-hour auto purge policies for phishing messages.
- Create zero-hour auto purge policies for spam messages.
- Block abuse of exploited vulnerable signed drivers.
- Turn on scanning of removable drives during a full scan.

## We want to hear from you

If you have any issues, let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community to provide help.

## Related resources

- [Assess your security posture](microsoft-secure-score-improvement-actions.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's coming](microsoft-secure-score-whats-coming.md)
[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
