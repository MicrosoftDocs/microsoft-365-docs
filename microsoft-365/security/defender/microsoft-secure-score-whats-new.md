---
title: What's new in Microsoft Secure Score
description: Describes what new changes have happened to Microsoft Secure Score in the Microsoft 365 security center.
keywords: microsoft secure score, secure score, office 365 secure score, microsoft security score, microsoft 365 security center
ms.prod: m365-security
ms.mktglfcycl: deploy
localization_priority: Normal
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
ms.topic: article
search.appverid: 
  - MOE150
  - MET150
ms.custom: 
  - seo-marvel-apr2020
  - seo-marvel-jun2020
ms.technology: m365d
---

# What's new in Microsoft Secure Score

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

To make Microsoft Secure Score a better representative of your security posture, we have made some changes. To learn about planned changes, see [What's coming in Microsoft Secure Score?](microsoft-secure-score-whats-coming.md)

Microsoft Secure Score can be found at https://security.microsoft.com/securescore in the [Microsoft 365 security center](overview-security-center.md).
    
## February 2021

### Compatibility with Graph API

Microsoft Secure Score recommendations delivered via Graph API will look and be weighted the same as the recommendations you currently see in the Microsoft 365 security center.

## January 2021

### Added our first security recommendation for Microsoft Teams

Microsoft Teams customers will see "Restrict anonymous users from joining meetings" as a new improvement action in Secure Score.

## December 2020

### Added six accounts-related improvement actions for Microsoft Defender for Endpoint (previously Microsoft Defender ATP):

- Set 'Minimum password length' to '14 or more characters'
- Set 'Enforce password history' to '24 or more password(s)'
- Set 'Maximum password age' to '60 or fewer days, but not 0'
- Set 'Minimum password age' to '1 or more day(s)'
- Disable the built-in Administrator account
- Disable the built-in Guest account

## November 2020

### Removed the ability to create ServiceNow tickets through Secure Score 

The ability to create ServiceNow tickets through Secure Score by going to **Share > ServiceNow** is no longer available. Thank you for your feedback and continued support while we determine next steps.

### Added three services-related improvement actions for Microsoft Defender for Endpoint (previously Microsoft Defender ATP):

- Fix unquoted service path for Windows services
- Change service executable path to a common protected location
- Change service account to avoid cached password in windows registry

## October 2020

### Remove improvement action related to Microsoft Defender for Endpoint

- Set Microsoft Defender SmartScreen Windows Store app web content checking to warn

## August 2020

### Updated improvement action for Azure Active Directory

- Enable policy to block legacy authentication

## Incompatibility with Identity Secure Score

In the recent release of Microsoft Secure Score, an improved scoring model has been released. These changes allow for a more flexible and accurate view of your security posture. However, these updates have made Microsoft Secure Score temporarily incompatible with Identity Secure Score.

In time, Identity Secure Score will adopt the new scoring model. Until then, customers will see differences in the scores reported by Microsoft Secure Score and the Identity Secure Score. We apologize for any inconvenience this causes, and are working to ensure these experiences are more compatible in the future.

## Updated improvement actions

- Added Azure Active Directory improvement actions
- Added Microsoft Defender for Identity improvement actions
- Support for Microsoft Defender for Endpoint [Threat & Vulnerability Management](/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) security recommendations
    - All released security recommendations supplied by TVM are now available

## Updated interface and functionality

* All new metrics and trends views for CISO and lead level discussions
* New ways to track and benchmark your score
* Better tracking and understanding for score regressions
* Filter, tag, search, and group your improvement actions
* Manage towards your future goals using score projections and planned actions
* And more!

## We want to hear from you

If you have any issues, let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.

## Related resources

- [Assess your security posture](microsoft-secure-score-improvement-actions.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's coming](microsoft-secure-score-whats-coming.md)