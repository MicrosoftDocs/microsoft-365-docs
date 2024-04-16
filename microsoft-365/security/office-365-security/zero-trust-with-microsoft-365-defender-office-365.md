---
title: Zero Trust with Microsoft Defender for Office 365
description: Microsoft Defender for Office 365 contributes to a strong Zero Trust strategy and architecture
search.appverid: met150
ms.service: microsoft-365-zero-trust
f1.keywords:
  - NOCSH
author: chrisda
ms.author: chrisda
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - zerotrust-services
ms.date: 10/5/2023
ms.topic: conceptual
adobe-target: true
appliesto:
  - ✅ <a href="https://learn.microsoft.com/microsoft-365/security/office-365-security/mdo-about#defender-for-office-365-plan-1-vs-plan-2-cheat-sheet" target="_blank">Microsoft Defender for Office 365 Plan 1 and Plan 2</a>
---

# Zero Trust with Microsoft Defender for Office 365

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

Microsoft Defender for Office 365 is a cloud-based email filtering service that helps protect your organization against advanced threats to email and collaboration tools (for example, phishing, business email compromise, and malware attacks). Defender for Office 365 also provides investigation, Threat Hunting, and remediation capabilities to help security teams efficiently identify, prioritize, investigate, and respond to threats.

[Zero Trust](/security/zero-trust/zero-trust-overview) is a security strategy for designing and implementing the following set of security principles:

|Verify explicitly|Use least privilege access|Assume breach|
|---|---|---|
|Always authenticate and authorize based on all available data points.|Limit user access with Just-In-Time and Just-Enough-Access (JIT/JEA), risk-based adaptive policies, and data protection.|Minimize blast radius and segment access. Verify end-to-end encryption and use analytics to get visibility, drive threat detection, and improve defenses.|

Defender for Office 365 is a primary component of the **Assume breach** principle and an important element of your extended detection and response (XDR) deployment with Microsoft Defender XDR. Defender for Office 365 consists of three levels of protection based on your subscription level and starts with built-in Exchange Online Protection (EOP). EOP is present in any Microsoft 365 subscription where there are Exchange Online mailboxes.

|Protection level|Description|
|---|---|
|EOP|Prevents broad, volume-based, known attacks.|
|Defender for Office 365 P1|Protects email and collaboration from zero-day malware, phish, and business email compromise.|
|Defender for Office 365 P2|Adds post-breach investigation, hunting, and response, as well as automation, and simulation (for training).|

## Threat protection for Zero Trust

The Defender for Office 365 protection or filtering stack can be broken out into four phases:

1. **Edge protection**: Edge blocks are designed to be automatic. For false positives, senders are notified and told how to address their issue. Connectors from trusted partners with limited reputation can ensure deliverability, or temporary overrides can be put in place, when onboarding new endpoints.
2. **Sender intelligence**: Critical for catching spam, bulk, impersonation, and unauthorized spoof messages, and also factor into phish detection.
3. **Content filtering**: The filtering stack begins to handle the specific contents of the mail, including its hyperlinks and attachments.
4. **Post-delivery protection**: After mail or file delivery, acting on mail that is in various mailboxes and files and links that appear in clients like Microsoft Teams.

The Defender for Office 365 is also secure by default by quarantining email with suspected malware and using anti-spam policies to handle email with a high suspicion of phishing.

## Next steps

Learn how to set up your SecOps team with the [Microsoft Defender for Office 365 Security Operations Guide](mdo-sec-ops-guide.md).

Learn more about Zero Trust and how to build an enterprise-scale strategy and architecture with the [Zero Trust Guidance Center](/security/zero-trust).

Learn about other Microsoft 365 capabilities that contribute to a strong Zero Trust strategy and architecture with [Zero Trust deployment plan with Microsoft 365](../microsoft-365-zero-trust.md).

For an overview of Zero Trust for Microsoft Defender XDR services, see [Zero Trust with Microsoft Defender XDR](../defender/zero-trust-with-microsoft-365-defender.md).
