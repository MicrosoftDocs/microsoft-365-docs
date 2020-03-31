---
title: "Remediation actions in Office 365 automated investigation and response"
keywords: AIR, autoIR, ATP, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords:
- NOCSH
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
description: "Learn about remediation actions in automated investigation and response capabilities in Office 365 Advanced Threat Protection Plan 2."
---

# Remediation actions following an automated investigation in Office 365

## Remediation actions

[Automated investigation and response capabilities](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air) (AIR) in [Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) (Office 365 ATP) Plan 2 include certain remediation actions. Whenever an automated investigation is running or has completed, you'll typically see one or more remediation actions that require approval by your security operations team to proceed. 

The following table summarizes threats and remediation actions in Office 365 ATP:  



|Category|Threat/risk  |Remediation action(s)  |
|---------|---------|---------|
|Email |Malware <br/>(If more than a handful of email messages in a cluster contain malware, the cluster is considered to be malicious.)​   | Soft delete email/cluster​        |
|Email |Malicious URL​<br/>(A malicious URL was detected by [Office 365 ATP Safe Links](https://docs.microsoft.com/microsoft-365/security/office-365-security/how-atp-safe-links-works). Email that contains a malicious URL is considered to be malicious​.)|Soft delete email/cluster​ |
|Email    |Phish<br/>(If more than a handful of email messages in a cluster contain phishing attempts, the cluster is considered to be phish.)​      | Soft delete email/cluster​        |
|Email |Zapped phish​ <br/>(Email messages were delivered and then [zapped​](https://docs.microsoft.com/microsoft-365/security/office-365-security/zero-hour-auto-purge).) |Soft delete email/cluster​ |
|Email |Missed phish email [reported](https://docs.microsoft.com/microsoft-365/security/office-365-security/enable-the-report-message-add-in) by a user | [Automated investigation triggered by the user's report](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office#example-a-user-reported-phish-message-launches-an-investigation-playbook)|
|Email |Volume anomaly​ <br/>(Recent email quantities exceed the previous 7-10 days for matching criteria​)     |Volume anomaly is not a clear threat, but is merely an indication of larger email volumes in recent days compared to the last 7-10 days. Although this can indicate potential issues, confirmation is needed in terms of either malicious verdicts or a manual review of email messages/clusters. See [Find and delete suspicious email that was delivered](https://docs.microsoft.com/microsoft-365/security/office-365-security/investigate-malicious-email-that-was-delivered#find-and-delete-suspicious-email-that-was-delivered). |
|Email |No threats found <br/>(The system did not find any threats based on files, urls, or analysis of email cluster verdicts.​) |Threats found and zapped after an investigation is complete are not reflected in an investigation's numerical findings, but such threats are viewable in [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer).​ |
|User |A user clicked a malicious URL <br/>(A user was either allowed to navigate to a page that was later found to be malicious, or the user bypassed a [Safe Links warning page](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-links-warning-pages) to get to a malicious page.​) |Use Threat Explorer to [view data about URLs and click verdicts](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer#view-data-about-phishing-urls-and-click-verdict). If your organization is using [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/), [investigate the user](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/investigate-user) Review the other user threats/risks and review other Azure ATP results.  If the user has suspicious results/behavior, you should reset their account password.​ |




> [!NOTE]
> In Office 365 ATP, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. 

## Next steps

- [View pending or completed remediation actions following an automated investigation in Office 365](air-review-approve-pending-completed-actions.md)

- [Details and results of an automated investigation in Office 365](air-view-investigation-results.md)

## Related articles

- [Automated investigation in Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)