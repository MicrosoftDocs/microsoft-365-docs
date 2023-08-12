---
title: "Step 2. Deploy attack detection and response"
author: dansimp
f1.keywords:
- NOCSH
ms.author: dansimp
manager: dansimp
ms.date: 07/16/2021
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
- M365-security-compliance
- Strat_O365_Enterprise
- ransomware
- m365solution-ransomware
ms.custom: seo-marvel-jun2020
keywords: ransomware, human-operated ransomware, human operated ransomware, HumOR, extortion attack, ransomware attack, encryption, cryptovirology, zero trust
description: Use Microsoft 365 Defender and its security signal sources to protect your Microsoft 365 resources from ransomware attacks.
---

# Step 2. Deploy attack detection and response

As a strongly recommended initial step for ransomware attack detection and response in your Microsoft 365 tenant, [set up a trial environment](/microsoft-365/security/defender/eval-overview) to evaluate the features and capabilities of Microsoft 365 Defender.

For additional information, see these resources.

| Feature | Description | Where to start | How to use it for detection and response |
|:-------|:-----|:-------|:-------|
| [Microsoft 365 Defender](/microsoft-365/security/defender) | Combines signals and orchestrates capabilities into a single solution. <br><br> Enables security professionals to stitch together threat signals and determine the full scope and impact of a threat. <br><br> Automates actions to prevent or stop the attack and self-heal affected mailboxes, endpoints, and user identities. | [Get started](/microsoft-365/security/defender/get-started) | [Incident response](/microsoft-365/security/defender/incidents-overview) |
| [Microsoft Defender for Identity](/defender-for-identity/what-is) |  Identifies, detects, and investigates advanced threats, compromised identities, and malicious insider actions directed at your organization through a cloud-based security interface uses your on-premises Active Directory Domain Services (AD DS) signals. | [Overview](/defender-for-identity/what-is) | [Working with the Microsoft Defender for Identity portal](/defender-for-identity/workspace-portal) |
| [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security) | Safeguards your organization against malicious threats posed by email messages, links (URLs), and collaboration tools. <br><br> Protects against malware, phishing, spoofing, and other attack types. | [Overview](/microsoft-365/security/office-365-security/defender-for-office-365) | [Threat hunting](/microsoft-365/security/office-365-security/threat-explorer-threat-hunting) |
| [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint) | Enables detection and response to advanced threats across endpoints (devices). | [Overview](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)  | [Endpoint detection and response](/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response) |
| [Azure Active Directory (Azure AD) Identity Protection](/azure/active-directory/identity-protection/) | Automates detection and remediation of identity-based risks and investigation of those risks. | [Overview](/azure/active-directory/identity-protection/overview-identity-protection) | [Investigate risk](/azure/active-directory/identity-protection/howto-identity-protection-investigate-risk) |
| [Microsoft Defender for Cloud Apps](/cloud-app-security) | A cloud access security broker for discovery, investigation, and governance across all your Microsoft and third-party cloud services. | [Overview](/cloud-app-security/what-is-cloud-app-security) | [Investigate](/cloud-app-security/investigate) |

> [!NOTE]
> All of these services require Microsoft 365 E5 or Microsoft 365 E3 with the Microsoft 365 E5 Security add-on.

Use these services to detect and respond to the following common threats from ransomware attackers:

- Credential theft

  - Azure AD Identity Protection
  - Defender for Identity
  - Defender for Office 365

- Device compromise

  - Defender for Endpoint
  - Defender for Office 365

- Escalation of privilege

  - Azure AD Identity Protection
  - Defender for Cloud Apps

- Malicious app behavior

  - Defender for Cloud Apps

- Data exfiltration, deletion, or uploading

  - Defender for Office 365
  - Defender for Cloud Apps with [anomaly detection policies](/cloud-app-security/anomaly-detection-policy#ransomware-activity)

The following services use Microsoft 365 Defender and its portal (https://security.microsoft.com) as a common threat collection and analysis point:

- Defender for Identity
- Defender for Office 365
- Defender for Endpoint
- Defender for Cloud Apps

Microsoft 365 Defender combines threat signals into alerts and connected alerts into an incident so that your security analysts can more quickly detect, investigate, and remediate the phases of a ransomware attack.

## Resulting configuration

Here's the ransomware protection for your tenant for steps 1 and 2.

![Ransomware protection for your Microsoft 365 tenant after Step 2](../media/ransomware-protection-microsoft-365/ransomware-protection-microsoft-365-architecture-step2.png)

## Next step

[![Step 3 for ransomware protection with Microsoft 365](../media/ransomware-protection-microsoft-365/ransomware-protection-microsoft-365-step3.png)](ransomware-protection-microsoft-365-identities.md)

Continue with [Step 3](ransomware-protection-microsoft-365-identities.md) to protect the identities in your Microsoft 365 tenant.
