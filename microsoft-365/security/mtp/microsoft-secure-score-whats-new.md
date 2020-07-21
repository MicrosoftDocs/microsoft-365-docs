---
title: What's new in Microsoft Secure Score
description:  Describes what new changes have happened to Microsoft Secure Score in the Microsoft 365 security center.
keywords: security, malware, Microsoft 365, M365, secure score, security center, improvement actions
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.localizationpriority: medium
f1.keywords:
- NOCSH
ms.author: ellevin
author: levinec
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
---

# What's new in Microsoft Secure Score

To make Microsoft Secure Score a better representative of your security posture, we have made some changes. To learn about planned changes, see [What's coming in Microsoft Secure Score?](microsoft-secure-score-whats-coming.md).

## June 2020

### Removed improvement action for Microsoft Defender Advanced Threat Protection

* Turn on Attack Surface Reduction rules

### Added improvement actions for Microsoft Defender Advanced Threat Protection

* Block Adobe Reader from creating child processes
* Use advanced protection against ransomware
* Block all Office applications from creating child processes
* Block Office applications from creating executable content
* Block JavaScript or VBScript from launching downloaded executable content
* Block execution of potentially obfuscated scripts
* Block executable content from email client and webmail
* Block Office communication application from creating child processes
* Block untrusted and unsigned processes that run from USB
* Block persistence through WMI event subscription
* Block Office applications from injecting code into other processes
* Block executable files from running unless they meet a prevalence, age, or trusted list criterion
* Block process creations originating from PSExec and WMI commands
* Block credential stealing from the Windows local security authority subsystem (lsass.exe)
* Block Win32 API calls from Office macros

## Incompatibility with Identity Secure Score and Graph API

In the recent release of Microsoft Secure Score, an improved scoring model has been released. These changes allow for a more flexible and accurate view of your security posture. However, these updates have made Microsoft Secure Score temporarily incompatible with Identity Secure Score and the Graph API.

In time, Identity Secure Score and the Graph API will adopt the new scoring model. Until then, customers will see differences in the scores reported by Microsoft Secure Score, Identity Secure Score, and the Graph API. We apologize for any inconvenience this causes, and are working to ensure these experiences are more compatible in the future.

## Updated improvement actions

- Added Azure Active Directory improvement actions
- Added Azure Advanced Threat Protection improvement actions
- Support for Microsoft Defender ATP [Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) security recommendations
    - All released security recommendations supplied by TVM are now available

## Updated interface and functionality

* All new metrics and trends views for CISO and lead level discussions
* New ways to track and benchmark your score
* Better tracking and understanding for score regressions
* Filter, tag, search, and group your improvement actions
* Manage towards your future goals using score projections and planned actions
* And more!

## We want to hear from you

If you have any issues, please let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.

## Related resources

- [Assess your security posture](microsoft-secure-score-improvement-actions.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's coming](microsoft-secure-score-whats-coming.md)
