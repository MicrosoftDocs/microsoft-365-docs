---
title: What's coming to Microsoft Secure Score
description: Describes what new changes are coming to Microsoft Secure Score in the Microsoft 365 security center.
keywords: microsoft secure score, secure score, office 365 secure score, microsoft security score, microsoft 365 security center, improvement actions
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
---

# What's coming to Microsoft Secure Score

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

We're making some changes in the near future to make [Microsoft Secure Score](microsoft-secure-score.md) a better representative of your security posture and improve usability. Your score and the maximum possible score may change.

## Proposed changes

### November 2020

Removing the ability to create ServiceNow tickets through Secure Score by going to **Share > ServiceNow**.

- The preview period for the ServiceNow connector is ending. This capability will no longer available by the end of 2020. Thank you for your feedback and continued support while we determine next steps.

Adding 18 improvement actions related to Microsoft Defender for Endpoint (previously Microsoft Defender ATP):

Attack Surface Reduction (ASR) related recommendations:
- Block executable content from email client and webmail
- Block all Office applications from creating child processes
- Block Office applications from creating executable content
- Block Office applications from injecting code into other processes
- Block JavaScript or VBScript from launching downloaded executable content
- Block execution of potentially obfuscated scripts
- Block Win32 API calls from Office macros
- Block executable files from running unless they meet a prevalence, age, or trusted list criterion
- Use advanced protection against ransomware
- Block credential stealing from the Windows local security authority subsystem (lsass.exe)
- Block process creations originating from PSExec and WMI commands
- Block untrusted and unsigned processes that run from USB
- Block Office communication application from creating child processes
- Block Adobe Reader from creating child processes
- Block persistence through WMI event subscription

Services related recommendations:
- Fix unquoted service path for Windows services
- Change service executable path to a common protected location
- Change service account to avoid cached password in windows registry

## Related resources

- [Microsoft Secure Score overview](microsoft-secure-score.md)
- [Assess your security posture](microsoft-secure-score-improvement-actions.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's new](microsoft-secure-score-whats-new.md)
