---
title: Security Copilot in Microsoft 365 Defender
description: Learn about Security Copilot capabilities embedded in Microsoft 365 Defender.
keywords: security copilot, microsoft 365 defender, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response automated, automatic incident response, summarize incidents, summarize incident report
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 10/10/2023
---

# Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

The Security Copilot in Microsoft 365 Defender Early Access Program is an invitation-only, paid preview. If your organization is interested in this program, work with your Microsoft account manager to learn more about nominations for a potential invite. To learn more about this program, see the announcement of the Security Copilot Early Access Program.

This article provides an overview for users of the Security Copilot embedded experience in Microsoft 365 Defender, including steps to access, key capabilities, and links that detail these Security Copilot capabilities in Microsoft 365 Defender.

## Access Security Copilot in Microsoft 365 Defender

To ensure that you have access to Security Copilot, see Security Copilot licensing information.

Security Copilot in Microsoft 365 Defender can be accessed through the following:

1. Select Trial on the incident page.
2. Select the Copilot button located on the upper portion of an incident page.
3. In the Advanced hunting page, select the Copilot button located beside the Share link option.

To review Security Copilot and assess if it’s right for your organization, see the Security Copilot Frequently Asked Questions page.

## Technical requirements

See the Security Copilot Early Access Program onboarding for the full list of technical requirements.

## Key features

Microsoft 365 Defender brings the capabilities of Security Copilot to the portal, enabling security teams to tackle attack investigations in a timely manner with ease and precision. Bringing AI to Microsoft 365 Defender allows teams to understand attacks immediately, promptly assess and apply appropriate mitigation to stop and contain attacks, quickly analyze complex files, and hunt for threats with ease.

[Insert gif/video of first modal here when available]

### Summarize incidents quickly

Investigating incidents with multiple alerts can be a daunting task. To immediately understand an incident, you can tap Security Copilot in Microsoft 365 Defender to [summarize an incident](security-copilot-m365d-incident-summary.md) for you. Security Copilot creates an overview of the attack containing essential information for you to understand what transpired in the attack, what assets are involved, and the timeline of the attack. Security Copilot automatically creates a summary when you navigate to an incident's page.

[Insert screenshot]

### Take action on incidents through guided response

Approaching solutions and mitigation for any incident can oftentimes be complex for several reasons, including understanding where to begin, what solutions are appropriate, and following new investigation flows for security teams. Security Copilot minimizes these complications through guided response where recommended actions appropriate for an attack are listed.

[Insert screenshot]

### Get results fast when analyzing scripts and codes

Most attackers rely on sophisticated malware and files when launching attacks to avoid detection and investigation. These files are usually obfuscated and arrive as scripts, Powershell, batch, and bash. Security Copilot can quickly analyze these types of files to facilitate faster investigation, reducing the time for [script or code analysis](security-copilot-m365d-script-analysis.md) and helping security teams decide on the next action steps using information about these files’ capabilities.

:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig5-sec-copilot-m365d-script.png" alt-text="Script analysis card on the Security Copilot pane in the Microsoft 365 Defender incident page" lightbox="../../media/copilot-in-defender/script-analyzer/fig5-sec-copilot-m365d-script.png":::

### Search for potential threats with guidance

Security teams tasked to mitigate potential attacks rely on Microsoft 365 Defender’s advanced hunting feature. However, understanding attack patterns, the necessary operations, and data sets can be barriers to effective hunting. Security Copilot empowers security teams with a query assistant to author and build queries in advanced hunting.

[Insert screenshot]

### Write post-investigation reports with speed and accuracy

Investigation conclusions usually require reports to document the attack, the steps taken, results of the investigation, and other post-analysis items that need to be recorded to aid future security decisions and learning. Oftentimes, documenting investigations can be time-consuming and needs to have accurate information to be effective. Security Copilot creates incident reports to summarize the investigation upon closure.

[insert screenshot here]

## Next steps

- [Learn how to summarize incidents](security-copilot-m365d-incident-summary.md) with Security Copilot in Microsoft 365 Defender
- Respond to incidents with Security Copilot in Microsoft 365 Defender
- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md) with Security Copilot in Microsoft 365 Defender
- Search for potential threats with Security Copilot in Microsoft 365 Defender
- Create incident reports with Security Copilot in Microsoft 365 Defender

## See also

- [Security Copilot FAQ](/copilot/rai-faqs-security-copilot.md)
- [Get started with Security Copilot](/copilot/microsoft-365-copilot-requirements.md)
- [Know more about Security Copilot embedded experiences](/copilot/experiences-security-copilot.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]

