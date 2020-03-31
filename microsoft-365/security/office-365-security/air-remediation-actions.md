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
|Email |Volume anomaly​ <br/>(Recent email quantities exceed the previous 7-10 days for matching criteria​)     |Automated investigation does not result in a specific pending action. <br/><br/>Volume anomaly is not a clear threat, but is merely an indication of larger email volumes in recent days compared to the last 7-10 days. Although this can indicate potential issues, confirmation is needed in terms of either malicious verdicts or a manual review of email messages/clusters. See [Find and delete suspicious email that was delivered](https://docs.microsoft.com/microsoft-365/security/office-365-security/investigate-malicious-email-that-was-delivered#find-and-delete-suspicious-email-that-was-delivered). |
|Email |No threats found <br/>(The system did not find any threats based on files, urls, or analysis of email cluster verdicts.​) |Automated investigation does not result in a specific pending action. <br/><br/>Threats found and [zapped](https://docs.microsoft.com/microsoft-365/security/office-365-security/zero-hour-auto-purge) after an investigation is complete are not reflected in an investigation's numerical findings, but such threats are viewable in [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer).​ |
|User |A user clicked a malicious URL <br/>(A user navigated to a page that was later found to be malicious, or a user bypassed a [Safe Links warning page](https://docs.microsoft.com/microsoft-365/security/office-365-security/atp-safe-links-warning-pages) to get to a malicious page.​) |Automated investigation does not result in a specific pending action. <br/><br/>Use Threat Explorer to [view data about URLs and click verdicts](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer#view-data-about-phishing-urls-and-click-verdict). <br/><br/>If your organization is using [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/), consider [investigating the user](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/investigate-user) to determine if their account is compromised. |
|User |A user is sending malware/phish |Automated investigation does not result in a specific pending action. <br/><br/>The user might be reporting malware/phish, or someone could be [spoofing the user](https://docs.microsoft.com/microsoft-365/security/office-365-security/anti-spoofing-protection) as part of an attach. Use [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer) to view and handle email containing [malware](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer-views#email--malware) or [phish](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer-views#email--phish) |
|User |Email forwarding <br/>(Mailbox forwarding rules are configured, which could be used for data exfiltration​.) |Remove forwarding rule​ <br/><br/>**TIP**: Use [mail flow insights](https://docs.microsoft.com/microsoft-365/security/office-365-security/mail-flow-insights-v2), including the [Auto-forwarded messages report](https://docs.microsoft.com/microsoft-365/security/office-365-security/mfi-auto-forwarded-messages-report), to view more specific details about forwarded email. |
|User |Email delegation rules​ <br/>(A user's account has delegation set up.) |Remove delegation rule​ <br/><br/> If your organization is using [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/), consider [investigating the user](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/investigate-user) who's getting the delegation permission.​|
|User |Data exfiltration<br/>(A user violated email or file-sharing [DLP policies](https://docs.microsoft.com/microsoft-365/compliance/data-loss-prevention-policies)) |Automated investigation does not result in a specific pending action. <br/><br/>[View DLP reports and take action](https://docs.microsoft.com/en-us/microsoft-365/compliance/view-the-dlp-reports) |
|User |Anomalous email sending <br/>(A user recently sent more email than during the previous 7-10 days.) | |




> [!NOTE]
> In Office 365 ATP, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. 

## Next steps

- [View pending or completed remediation actions following an automated investigation in Office 365](air-review-approve-pending-completed-actions.md)

- [Details and results of an automated investigation in Office 365](air-view-investigation-results.md)

## Related articles

- [Automated investigation in Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)