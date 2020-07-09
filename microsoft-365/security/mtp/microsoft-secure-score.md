---
title: Microsoft Secure Score
description: Describes Microsoft Secure Score in the Microsoft 365 security center, how to improve your security posture, and what security admins can expect.
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

# Microsoft Secure Score

Microsoft Secure Score is a measurement of an organization's security posture, with a higher number indicating more improvement actions taken. It can be found at https://security.microsoft.com/securescore in the [Microsoft 365 security center](overview-security-center.md).

Following the Secure Score recommendations can protect your organization from threats. From a centralized dashboard in the Microsoft 365 security center, organizations can monitor and work on the security of their Microsoft 365 identities, data, apps, devices, and infrastructure.

Secure Score helps organizations:  

* Report on the current state of the organization's security posture.
* Improve their security posture by providing discoverability, visibility, guidance, and control.  
* Compare with benchmarks and establish key performance indicators (KPIs).

Organizations gain access to robust visualizations of metrics and trends, integration with other Microsoft products, score comparison with similar organizations, and much more. The score can also reflect when third-party solutions have addressed recommended actions.

![Secure Score homepage](../../media/secure-score/secure-score-homepage-new.png)

## How it works

You are given points for configuring recommended security features, performing security-related tasks, or addressing the improvement action with a third-party application or software, or an alternate mitigation. Some improvement actions only give points when fully completed, and some give partial points if they are completed for some devices or users. If you cannot or do not want to enact one of the improvement actions, you can choose to accept the risk or the remaining risk.

We show you the full set of possible improvements, regardless of license, so you can understand security best practices and improve your score. Your absolute security posture is represented by Secure Score, which stays the same no matter what product licenses your organization owns. Keep in mind that security should be balanced with usability, and not every recommendation can work for your environment.

Your score is updated in real time to reflect the information presented in the visualizations and improvement action pages. Secure Score also syncs daily to receive system data about your achieved points for each action.

### Key scenarios

- Check current score
    - Go to the Microsoft Secure Score overview page, and look for the tile that says **Your secure score**
- Compare yourself vs peers
- Review Improvement Actions and mark them up (e.g.:  add to plan)
- Initiate work flows to investigate or implement

### How improvement actions are scored

Each improvement action is worth 10 points or less. Most are scored in a binary fashion — if you implement the improvement action, like create a new policy or turn on a specific setting, you get 100% of the points. For other improvement actions, points are given as a percentage of the total configuration. For example, if the improvement action states you get 10 points by protecting all your users with multi-factor authentication and you only have 50 of 100 total users protected, you would be given a partial score of 5 points (50 protected / 100 total * 10 max pts = 5 pts partial score).

### Products included in Secure Score

Currently there are recommendations for Microsoft 365 (including Exchange Online), Azure AD, Microsoft Defender ATP, Azure ATP, and Cloud App Security. Recommendations for other security products are coming soon. The recommendations will not cover all the attack surfaces associated with each product, but they are a good baseline. You can also mark the improvement actions as covered by a third party or alternate mitigation.

### Security defaults

Microsoft Secure Score has updated improvement actions to support [security defaults in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/fundamentals/concept-fundamentals-security-defaults), which make it easier to help protect your organization with preconfigured security settings for common attacks.

If you turn on security defaults, you will be awarded full points for the following improvement actions:

- Ensure all users can complete multi-factor authentication for secure access (9 points)
- Require MFA for administrative roles (10 points)
- Enable policy to block legacy authentication (7 points)

>[!IMPORTANT]
>Security defaults include security features that provide similar security to the "sign-in risk policy" and "user risk policy" improvement actions. Instead of setting up these policies on top of the security defaults, we recommend updating their statuses to "Resolved through alternative mitigation."

## Required permissions

To have permission to access Microsoft Secure Score, you must be assigned one of the following roles in Azure Active Directory.

### Read and write roles

With read and write access, you can make changes and directly interact with Secure Score. You can also assign read-only access to other users.

* Global administrator
* Security administrator
* Exchange administrator
* SharePoint administrator
* Account administrator

### Read-only roles

With read-only access, you are not able to edit status or notes for an improvement action, edit score zones, or edit custom comparisons.

* Helpdesk administrator
* User administrator
* Service administrator
* Security reader
* Security operator
* Global reader

## Risk awareness

Microsoft Secure Score is a numerical summary of your security posture based on system configurations, user behavior and other security related measurements; it is not an absolute measurement of how likely your system or data will be breached. Rather, it represents the extent to which you have adopted security controls in your Microsoft environment which can help offset the risk of being breached. No online service is completely immune from security breaches, and secure score should not be interpreted as a guarantee against security breach in any manner.

## What's new? 

To make Microsoft Secure Score a better representative of your security posture, we have made some changes. To learn about planned changes, see [What's coming in Microsoft Secure Score?](microsoft-secure-score-whats-coming.md).

### Incompatibility with Identity Secure Score and Graph API

In the recent release of Microsoft Secure Score, an improved scoring model has been released. These changes allow for a more flexible and accurate view of your security posture. However, these updates have made Microsoft Secure Score temporarily incompatible with Identity Secure Score and the Graph API.

In time, Identity Secure Score and the Graph API will adopt the new scoring model. Until then, customers will see differences in the scores reported by Microsoft Secure Score, Identity Secure Score, and the Graph API. We apologize for any inconvenience this causes, and are working to ensure these experiences are more compatible in the future.

### Updated improvement actions

- Added Azure Active Directory improvement actions
- Added Azure Advanced Threat Protection improvement actions
- Support for Microsoft Defender ATP [Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) security recommendations
    - All released security recommendations supplied by TVM are now available

### Updated interface and functionality

* All new metrics and trends views for CISO and lead level discussions
* New ways to track and benchmark your score
* Better tracking and understanding for score regressions
* Filter, tag, search, and group your improvement actions
* Manage towards your future goals using score projections and planned actions
* And more!

### June 2020

#### Removed improvement action for Microsoft Defender Advanced Threat Protection

* Turn on Attack Surface Reduction rules

#### Added improvement actions for Microsoft Defender Advanced Threat Protection

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

## We want to hear from you

If you have any issues, please let us know by posting in the [Security, Privacy & Compliance](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/bd-p/security_privacy) community. We're monitoring the community and will provide help.

## Related resources

- [Gain visibility into your security posture](microsoft-secure-score-improvement-actions.md)
- [Track your Microsoft Secure Score history and meet goals](microsoft-secure-score-history-metrics-trends.md)
- [What's coming](microsoft-secure-score-whats-coming.md)
