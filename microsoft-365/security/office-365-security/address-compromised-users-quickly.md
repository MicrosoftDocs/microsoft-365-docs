---
title: "Address compromised user accounts with automated investigation and response in Office 365 Advanced Threat Protection"
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection, compromised
ms.author: deniseb
author: denisebmsft
manager: dansimp
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.collection: M365-security-compliance
description: "Learn how to speed up the process of detecting and addressing compromised user accounts with automated investigation and response capabilities in Office 365 Advanced Threat Protection Plan 2."
---

# Address compromised user accounts with automated investigation and response

As you might already know, [Office 365 Advanced Threat Protection Plan 2](office-365-atp.md#office-365-atp-plan-1-and-plan-2) includes powerful [automated investigation and response](office-365-air.md) capabilities. These capabilities can save your security operations team a lot of time and effort dealing with threats. Recently, those capabilities were enhanced to include a compromised user security playbook (currently in preview). 

The compromised user security playbook enables your organization's security team to:
- Speed up detection of compromised user accounts;
- Limit the scope of a breach when an account is compromised; and 
- Respond to compromised users more effectively and efficiently.

## Compromised user alerts

When a user account is compromised, atypical or anomalous behaviors occur. For example, phishing and spam messages might be sent internally from a trusted user account. Office 365 Advanced Threat Protection can detect anomalies in email patterns and collaboration activity within Office 365. When this happens, alerts are triggered, and threat mitigation begins.

For example, here's an alert that was triggered because of suspicious email sending:

IMAGE

And here's an example of an alert that was triggered when a sending limit was reached for a user:

IMAGE

## Investigate and respond to a compromised user

## Keep the following points in mind

- **Stay on top of your alerts**. The longer a compromise goes undetected, the larger the potential for widespread impact and cost to your organization, customers, and partners. Early detection and timely response are critical to mitigate threats, and especially when a user's account is compromised. See [Automatically investigate and respond to threats in Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air).
- **Automation assists but does not replace your security operations team**. In particular, automated investigation and response capabilities can detect a compromised user early on, but your security operations team will likely need to engage and do some investigation and remediation. See [Review and approve actions](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air#review-and-approve-actions).
- **Don't rely on a suspicious login alert as your only indicator**. When a user account is compromised, it might or might not trigger a suspicious login alert. Sometimes it's the series of activities that occur after an account is compromised that triggers an alert.

## Next steps



