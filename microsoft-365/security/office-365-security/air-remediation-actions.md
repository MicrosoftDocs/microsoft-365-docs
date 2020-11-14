---
title: "Remediation actions following automated investigation in Microsoft Defender for Office 365"
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
ms.collection: 
- M365-security-compliance 
- m365initiative-defender-office365
description: "Learn about remediation actions following automated investigation in Microsoft Defender for Office 365."
ms.date: 09/29/2020
ms.custom: 
- air
---

# Remediation actions following automated investigation in Microsoft Defender for Office 365

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


## Remediation actions

[Automated investigation and response capabilities](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air) (AIR) in [Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp) include certain remediation actions. Whenever an automated investigation is running or has completed, you'll typically see one or more remediation actions that require approval by your security operations team to proceed. Such remediation actions can include the following:

- Soft delete email messages or clusters
- Block URL (time-of-click)
- Turn off external mail forwarding
- Turn off delegation

> [!NOTE]
> In Microsoft Defender for Office 365, automated investigations do not result in remediation actions that are taken automatically. Remediation actions are taken only upon approval by your organization's security operations team.

## Threats and remediation actions

The following table summarizes threats and appropriate remediation actions in Microsoft Defender for Office 365. In some cases, an automated investigation does not result in a specific remediation action. Your security operations team can further investigate and take appropriate actions as described in the table below.

****

|Category|Threat/risk|Remediation action(s)|
|---|---|---|
|Email|Malware|Soft delete email/cluster​ <br/><br/>If more than a handful of email messages in a cluster contain malware, the cluster is considered to be malicious.​|
|Email|Malicious URL​<br/>(A malicious URL was detected by [Safe Links in Microsoft Defender for Office 365](atp-safe-links.md).|Soft delete email/cluster​ <br/><br/>Email that contains a malicious URL is considered to be malicious​.|
|Email|Phish|Soft delete email/cluster​ <br/><br/>If more than a handful of email messages in a cluster contain phishing attempts, the cluster is considered to be phish.​|
|Email|Zapped phish​ <br/>(Email messages were delivered and [zapped​](https://docs.microsoft.com/microsoft-365/security/office-365-security/zero-hour-auto-purge).)|Soft delete email/cluster​ <br/><br/>Reports are available to view zapped messages. [See if ZAP moved a message and FAQs](https://docs.microsoft.com/microsoft-365/security/office-365-security/zero-hour-auto-purge#how-to-see-if-zap-moved-your-message).|
|Email|Missed phish email [reported](https://docs.microsoft.com/microsoft-365/security/office-365-security/enable-the-report-message-add-in) by a user|[Automated investigation triggered by the user's report](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office#example-a-user-reported-phish-message-launches-an-investigation-playbook)|
|Email|Volume anomaly​ <br/>(Recent email quantities exceed the previous 7-10 days for matching criteria.​)|Automated investigation does not result in a specific pending action. <br/><br/>Volume anomaly is not a clear threat, but is merely an indication of larger email volumes in recent days compared to the last 7-10 days. Although this can indicate potential issues, confirmation is needed in terms of either malicious verdicts or a manual review of email messages/clusters. See [Find and delete suspicious email that was delivered](https://docs.microsoft.com/microsoft-365/security/office-365-security/investigate-malicious-email-that-was-delivered#find-and-delete-suspicious-email-that-was-delivered).|
|Email|No threats found <br/>(The system did not find any threats based on files, urls, or analysis of email cluster verdicts.​)|Automated investigation does not result in a specific pending action. <br/><br/>Threats found and [zapped](https://docs.microsoft.com/microsoft-365/security/office-365-security/zero-hour-auto-purge) after an investigation is complete are not reflected in an investigation's numerical findings, but such threats are viewable in [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer).​|
|User|A user clicked a malicious URL <br/>(A user navigated to a page that was later found to be malicious, or a user bypassed a [Safe Links warning page](atp-safe-links.md#warning-pages-from-safe-links) to get to a malicious page.​)|Automated investigation does not result in a specific pending action. <br/><br/>Use Threat Explorer to [view data about URLs and click verdicts](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer#view-data-about-phishing-urls-and-click-verdict). <br/><br/>If your organization is using [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/), consider [investigating the user](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/investigate-user) to determine if their account is compromised.|
|User|A user is sending malware/phish|Automated investigation does not result in a specific pending action. <br/><br/>The user might be reporting malware/phish, or someone could be [spoofing the user](https://docs.microsoft.com/microsoft-365/security/office-365-security/anti-spoofing-protection) as part of an attack. Use [Threat Explorer](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer) to view and handle email containing [malware](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer-views#email--malware) or [phish](https://docs.microsoft.com/microsoft-365/security/office-365-security/threat-explorer-views#email--phish).|
|User|Email forwarding <br/>(Mailbox forwarding rules are configured, which could be used for data exfiltration​.)|Remove forwarding rule​ <br/><br/>Use [mail flow insights](https://docs.microsoft.com/microsoft-365/security/office-365-security/mail-flow-insights-v2), including the [Auto-forwarded messages report](https://docs.microsoft.com/microsoft-365/security/office-365-security/mfi-auto-forwarded-messages-report), to view more specific details about forwarded email.|
|User|Email delegation rules​ <br/>(A user's account has delegation set up.)|Remove delegation rule​ <br/><br/> If your organization is using [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/), consider [investigating the user](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/investigate-user) who's getting the delegation permission.​|
|User|Data exfiltration<br/>(A user violated email or file-sharing [DLP policies](https://docs.microsoft.com/microsoft-365/compliance/data-loss-prevention-policies).)|Automated investigation does not result in a specific pending action. <br/><br/>[View DLP reports and take action](https://docs.microsoft.com/microsoft-365/compliance/view-the-dlp-reports).|
|User|Anomalous email sending <br/>(A user recently sent more email than during the previous 7-10 days.)|Automated investigation does not result in a specific pending action. <br/><br/>Sending a lot of email isn't malicious by itself; the user might just have sent email to a large group of recipients for an event. To investigate, use [mail flow insights](https://docs.microsoft.com/microsoft-365/security/office-365-security/mail-flow-insights-v2), including the [mail flow map report](https://docs.microsoft.com/microsoft-365/security/office-365-security/mfi-mail-flow-map-report) to determine what's going on and take action.|
|

## Next steps

- [View details and results of an automated investigation in Microsoft Defender for Office 365](air-view-investigation-results.md)

- [View pending or completed remediation actions following an automated investigation in Microsoft Defender for Office 365](air-review-approve-pending-completed-actions.md)

## Related articles

- [Learn about automated investigation in Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Learn about additional capabilities in Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)
