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
|Email    |Phish     | Soft delete email/cluster​        |
|Email |Zapped phish​ <br/>(Email messages were delivered, and then [zapped​](https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/zero-hour-auto-purge?view=o365-worldwide)) |Soft delete email/cluster​ |
|Email |Missed phish email [reported](https://docs.microsoft.com/microsoft-365/security/office-365-security/enable-the-report-message-add-in) by a user | [Automated investigation triggered by the user's report](https://docs.microsoft.com/microsoft-365/security/office-365-security/automated-investigation-response-office?view=o365-worldwide#example-a-user-reported-phish-message-launches-an-investigation-playbook)|
|Email |Malware <br/>(Email cluster analysis found that more than a handful of malware messages are in the email cluster/query; therefore, the cluster is likely malicious.​)   | Soft delete email/cluster​        |
|Email | | |



> [!NOTE]
> In Office 365 ATP, no remediation actions are taken automatically. Remediation actions are taken only upon approval by your organization's security team. 

## Next steps

- [View pending or completed remediation actions following an automated investigation in Office 365](air-review-approve-pending-completed-actions.md)

- [Details and results of an automated investigation in Office 365](air-view-investigation-results.md)

## Related articles

- [Automated investigation in Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)