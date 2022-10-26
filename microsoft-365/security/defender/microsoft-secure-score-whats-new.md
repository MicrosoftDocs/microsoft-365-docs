---
title: What's new in Microsoft Secure Score
description: Describes what new changes have happened to Microsoft Secure Score in the Microsoft 365 Defender portal.
keywords: microsoft secure score, secure score, office 365 secure score, microsoft security score, Microsoft 365 Defender portal
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
  - NOCSH
ms.service: microsoft-365-security
ms.subservice: m365d
ms.author: siosulli
author: siosulli
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier2
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.custom: 
  - seo-marvel-apr2020
  - seo-marvel-jun2020
---

# What's new in Microsoft Secure Score

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

To make Microsoft Secure Score a better representative of your security posture, we continue to add new features and improvement actions.

The more improvement actions you take, the higher your Secure Score will be. For more information, see [Microsoft Secure Score](microsoft-secure-score.md).

Microsoft Secure Score can be found at <https://security.microsoft.com/securescore> in the [Microsoft 365 Defender portal](microsoft-365-defender-portal.md).

## September 2022

New Microsoft Defender for Office 365 recommendations for anti-phishing policies are now available as Secure Score improvement actions:

- Set the phishing email level threshold at 2 or higher
- Enable impersonated user protection
- Enable impersonated domain protection
- Ensure that mailbox intelligence is enabled
- Ensure that intelligence for impersonation protection is enabled
- Quarantine messages that are detected from impersonated users
- Quarantine messages that are detected from impersonated domains
- Move messages that are detected as impersonated users by mailbox intelligence
- Enable the ‘show first contact safety tip’ option
- Enable the user impersonation safety tip
- Enable the domain impersonation safety tip
- Enable the user impersonation unusual characters safety tip

A New SharePoint Online recommendation is now available as a Secure Score improvement action:

- Sign out inactive users in SharePoint Online

## August 2022

New Microsoft Information Protection recommendations are now available as Secure Score improvement actions:

- **Labeling**
  - Extend M365 sensitivity labeling to assets in Azure Purview data map
  - Ensure Auto-labeling data classification policies are setup and used
  - Publish M365 sensitivity label data classification policies
  - Create Data Loss Prevention (DLP) policies

New Microsoft Defender for Office 365 recommendations are now available as Secure Score improvement actions:

- **Anti-spam - Inbound policy**
  - Set the email bulk complaint level (BCL) threshold to be 6 or lower
  - Set action to take on spam detection
  - Set action to take on high confidence spam detection
  - Set action to take on phishing detection
  - Set action to take on high confidence phishing detection
  - Set action to take on bulk spam detection
  - Retain spam in quarantine for 30 days
  - Ensure spam safety tips are enabled
  - Ensure that no sender domains are allowed for anti-spam policies (will replace “Ensure that there are no sender domains allowed for Anti-spam policies” to extend functionality also for specific senders)

- **Anti-spam - Outbound policy**
  - Set maximum number of external recipients that a user can email per hour
  - Set maximum number of internal recipients that a user can send to within an hour
  - Set a daily message limit
  - Block users who reached the message limit
  - Set Automatic email forwarding rules to be system controlled

- **Anti-spam - Connection filter**
  - Don't add allowed IP addresses in the connection filter policy

## June 2022

- New Microsoft Defender for Endpoint and Microsoft Defender Vulnerability Management recommendations are now available as Secure Score improvement actions:

  - Disallow offline access to shares
  - Remove share write permission set to **Everyone**
  - Remove shares from the root folder
  - Set folder access-based enumeration for shares
  - Update Microsoft Defender for Endpoint core components

- A new Microsoft Defender for Identity recommendation is available as a Secure Score improvement action:

  - Resolve unsecure domain configurations

- A new [app governance](/defender-cloud-apps/app-governance-manage-app-governance) recommendation is now available as a Secure Score improvement action:

  - Regulate apps with consent from priority accounts

- New Salesforce and ServiceNow recommendations are now available as Secure Score improvement actions for Microsoft Defender for Cloud Apps customers. For more information, see [SaaS Security Posture Management overview](https://aka.ms/saas_security_posture_management).

> [!NOTE]
> Salesforce and ServiceNow controls are now available in public preview.

## April 2022

- Turn on user authentication for remote connections

## December 2021

- Turn on Safe Attachments in block mode
- Prevent sharing Exchange Online calendar details with external users
- Turn on Safe Documents for Office clients
- Turn on the common attachments filter setting for anti-malware policies
- Ensure that there are no sender domains allowed for anti-spam policies
- Create Safe Links policies for email messages
- Create zero-hour auto purge policies for malware
- Turn on Microsoft Defender for Office 365 in SharePoint, OneDrive, and Microsoft Teams
- Create zero-hour auto purge policies for phishing messages
- Create zero-hour auto purge policies for spam messages
- Block abuse of exploited vulnerable signed drivers
- Turn on scanning of removable drives during a full scan

## We want to hear from you

If you have any issues, let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.

## Related resources

- [Assess your security posture](microsoft-secure-score-improvement-actions.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's coming](microsoft-secure-score-whats-coming.md)
