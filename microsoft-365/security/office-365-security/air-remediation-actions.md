---
title: Remediation actions in Microsoft Defender for Office 365
keywords: AIR, autoIR, Microsoft Defender for Endpoint, automated, investigation, response, remediation, threats, advanced, threat, protection
f1.keywords: 
- NOCSH
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.topic: conceptual
ms.localizationpriority: medium
search.appverid: 
- MET150
- MOE150
ms.collection: 
- m365-security
- tier2
description: "Learn about remediation actions following automated investigation in Microsoft Defender for Office 365."
ms.date: 06/09/2023
ms.custom: 
- air
ms.subservice: mdo
ms.service: microsoft-365-security
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/microsoft-defender-for-office-365-product-overview#microsoft-defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 plan 1 and plan 2</a>
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/defender/microsoft-365-defender" target="_blank">Microsoft 365 Defender</a>
---

# Remediation actions in Microsoft Defender for Office 365

[!INCLUDE [MDO Trial banner](../includes/mdo-trial-banner.md)]

## Remediation actions

Threat protection features in [Microsoft Defender for Office 365](defender-for-office-365.md) include certain remediation actions. Such remediation actions can include:

- Soft delete email messages or clusters
- Block URL (time-of-click)
- Turn off external mail forwarding
- Turn off delegation

In Microsoft Defender for Office 365, remediation actions aren't taken automatically. Instead, remediation actions are taken only upon approval by your organization's security operations team.

## Threats and remediation actions

Microsoft Defender for Office 365 includes remediation actions to address various threats. Automated investigations often result in one or more remediation actions to review and approve. In some cases, an automated investigation doesn't result in a specific remediation action. To further investigate and take appropriate actions, use the guidance in the following table.

|Category|Threat/risk|Remediation action(s)|
|:---|:---|:---|
|Email|Malware|Soft delete email/cluster <p> If more than a handful of email messages in a cluster contain malware, the cluster is considered to be malicious.|
|Email|Malicious URL <br> (A malicious URL was detected by [Safe Links](safe-links-about.md).)|Soft delete email/cluster <br> Block URL (time-of-click verification) <p> Email that contains a malicious URL is considered to be malicious.|
|Email|Phish|Soft delete email/cluster <p> If more than a handful of email messages in a cluster contain phishing attempts, the whole cluster is considered a phishing attempt.|
|Email|Zapped phish <br> (Email messages were delivered and then [zapped](zero-hour-auto-purge.md).)|Soft delete email/cluster <p> Reports are available to view zapped messages. [See if ZAP moved a message and FAQs](zero-hour-auto-purge.md#how-to-see-if-zap-moved-your-message).|
|Email|Missed phish email [reported](submissions-users-report-message-add-in-configure.md) by a user|[Automated investigation triggered by the user's report](air-about-office.md#example-a-user-reported-phish-message-launches-an-investigation-playbook)|
|Email|Volume anomaly <br> (Recent email quantities exceed the previous 7-10 days for matching criteria.)|Automated investigation doesn't result in a specific pending action. <p>Volume anomaly isn't a clear threat, but is merely an indication of larger email volumes in recent days compared to the last 7-10 days. <p>Although a high volume of email can indicate potential issues, confirmation is needed in terms of either malicious verdicts or a manual review of email messages/clusters. See [Find suspicious email that was delivered](investigate-malicious-email-that-was-delivered.md#find-suspicious-email-that-was-delivered).|
|Email|No threats found <br> (The system didn't find any threats based on files, URLs, or analysis of email cluster verdicts.)|Automated investigation doesn't result in a specific pending action. <p>Threats found and [zapped](zero-hour-auto-purge.md) after an investigation is complete aren't reflected in an investigation's numerical findings, but such threats are viewable in [Threat Explorer](threat-explorer-about.md).|
|User|A user clicked a malicious URL <br> (A user navigated to a page that was later found to be malicious, or a user bypassed a [Safe Links warning page](safe-links-about.md#warning-pages-from-safe-links) to get to a malicious page.)|Automated investigation doesn't result in a specific pending action. <p> Block URL (time-of-click) <p> Use Threat Explorer to [view data about URLs and click verdicts](threat-explorer-about.md#view-phishing-url-and-click-verdict-data). <p> If your organization is using [Microsoft Defender for Endpoint](/windows/security/threat-protection/), consider [investigating the user](/microsoft-365/security/defender-endpoint/investigate-user) to determine if their account is compromised.|
|User|A user is sending malware/phish|Automated investigation doesn't result in a specific pending action. <p> The user might be reporting malware/phish, or someone could be [spoofing the user](anti-phishing-protection-spoofing-about.md) as part of an attack. Use [Threat Explorer](threat-explorer-about.md) to view and handle email containing [malware](threat-explorer-views.md#malware) or [phish](threat-explorer-views.md#phish).|
|User|Email forwarding <br> (Mailbox forwarding rules are configured, chch could be used for data exfiltration.)|Remove forwarding rule <p> Use the [Autofowarded messages report](/exchange/monitoring/mail-flow-reports/mfr-auto-forwarded-messages-report) to view specific details about forwarded email.|
|User|Email delegation rules <br> (A user's account has delegations set up.)|Remove delegation rule <p> If your organization is using [Microsoft Defender for Endpoint](/windows/security/threat-protection/), consider [investigating the user](/microsoft-365/security/defender-endpoint/investigate-user) who's getting the delegation permission.|
|User|Data exfiltration <br> (A user violated email or file-sharing [DLP policies](../../compliance/dlp-learn-about-dlp.md) |Automated investigation doesn't result in a specific pending action. <p> [Get started with Activity Explorer](../../compliance/data-classification-activity-explorer.md#get-started-with-activity-explorer).|
|User|Anomalous email sending <br> (A user recently sent more email than during the previous 7-10 days.)|Automated investigation doesn't result in a specific pending action. <p> Sending a large volume of email isn't malicious by itself; the user might just have sent email to a large group of recipients for an event. To investigate, use the [New users forwarding email insight in the EAC](/exchange/monitoring/mail-flow-insights/mfi-new-users-forwarding-email-insight) and [Outbound message report in the EAC](/exchange/monitoring/mail-flow-reports/mfr-inbound-messages-and-outbound-messages-reports) to determine what's going on and take action.|

## Next steps

- [View details and results of an automated investigation in Microsoft Defender for Office 365](air-view-investigation-results.md)
- [View pending or completed remediation actions following an automated investigation in Microsoft Defender for Office 365](air-review-approve-pending-completed-actions.md)

## Related articles

- [Learn about automated investigation in Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)
- [Learn about capabilities in Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender)
