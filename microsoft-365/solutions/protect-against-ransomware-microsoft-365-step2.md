---
title: "Step 2. Deploy attack detection and response"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: dansimp
audience: ITPro
ms.topic: article
ms.prod: microsoft-365-enterprise
localization_priority: Priority
ms.collection:
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
ms.custom: seo-marvel-jun2020
keywords: 
description: Step through protecting your Microsoft 365 resources from ransomware attacks.
---

# Step 2. Deploy attack detection and response

Enable, configure, and use:

| Feature | Description | How to get started | How to use it for detection and response |
|:-------|:-----|:-------|:-------|
| [Microsoft 365 Defender](deploy-threat-protection-configure.md#step-3-turn-on-microsoft-365-defender) |Combines signals and orchestrates capabilities into a single solution. Enables security professionals to stitch together threat signals and determine the full scope and impact of a threat. Microsoft 365 Defender takes automatic actions to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities. | [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender) |  |
| [Microsoft Defender for Identity](deploy-threat-protection-configure.md#step-2-configure-microsoft-defender-for-identity) |  A cloud-based security solution that uses your on-premises Active Directory Domain Services (AD DS) signals to identify, detect, and investigate advanced threats, compromised identities, and malicious insider actions directed at your organization. Focus on Microsoft Defender for Identity next because it protects your on-premises and cloud infrastructure, has no dependencies or prerequisites, and can provide immediate security benefits. | [What is Identity Protection?](/azure/active-directory/identity-protection/overview-identity-protection) |  |
| [Microsoft Defender for Office 365](deploy-threat-protection-configure.md#step-4-configure-microsoft-defender-for-office-365) | Safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. Protects against malware, phishing, spoofing, and other attack types. Configuring Microsoft Defender for Office 365 is recommended because change control, migrating settings from incumbent system, and other considerations can take longer to deploy. | [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365) |  |
| [Microsoft Defender for Endpoint](deploy-threat-protection-configure.md#step-5-configure-microsoft-defender-for-endpoint) | Helps prevent, detect, investigate, and respond to advanced threats across devices (also referred to as endpoints). Defender for Endpoint is a robust threat protection offering. | [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)  |  |
| Azure AD Identity Protection |  |  |  |
| [Microsoft Cloud App Security](deploy-threat-protection-configure.md#step-6-configure-microsoft-cloud-app-security) | A cloud access security broker for discovery, investigation, and governance. You can enable Microsoft Cloud App Security early to begin collecting data and insights. Implementing information and other targeted protection across your SaaS apps involves planning and can take more time. | [What is Cloud App Security?](/cloud-app-security/what-is-cloud-app-security) |  |



Look for:

- Credential theft
- Device compromise
- Escalation of privilege
- Malicious app behavior
- Data exfiltration


## Impact on users and change management

TBD

## Resulting configuration

Here is the ransomware protection for your tenant after this step.

![Ransomware protection for your Microsoft 365 tenant after Step 2](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-architecture-step2.png)

## Next step

[![Step 3 for ransomware protection with Microsoft 365](../media/protect-against-ransomware-microsoft-365/protect-against-ransomware-microsoft-365-step3.png)](protect-against-ransomware-microsoft-365-step3.md)

[Step 3. Protect identities](protect-against-ransomware-microsoft-365-step3.md)
