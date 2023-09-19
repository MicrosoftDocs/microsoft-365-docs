---
title: Summarize incidents with Security Copilot in Microsoft 365 Defender
description: Use Security Copilot incident summary capabilities embedded in Microsoft 365 Defender.
keywords: security copilot, microsoft 365 defender, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, summary, summarize incident, summarize incidents
search.product: eADQiWindows 10XVcnh
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
  - tier3
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.date: 10/10/2023

# Summarize an incident with Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Microsoft 365 Defender leverages the capabilities of Security Copilot to summarize incidents , delivering impactful information and insights to simplify investigation tasks. Attack investigation is a crucial step for incident response teams to successfully defend an organization against further damage from a cyber threat. Investigations can oftentimes be time-consuming since the incident response team needs to gain understanding of how the attack happened, sort through numerous alerts, identify which assets and entities are involved, and understand the scope and impact of the attack.

Combining Microsoft 365 Defender’s correlation capabilities and Security Copilot’s AI-powered data processing and contextualization, incident response teams can easily gain the right context to investigate and remediate incidents. Incident response teams are enabled to quickly get important information  through an incident summary.

This guide outlines what to expect and how to access the summarizing capability of Security Copilot within Microsoft 365 Defender, including information on providing feedback.


> [!NOTE]
> Script analysis functions are continuously in development. Analysis of scripts in languages other than PowerShell, batch, and bash are being evaluated.

The script analysis capability within Microsoft 365 Defender provides an additional capacity to inspect scripts without using external tools. This capability also strips complexity to analysis, minimizing challenges in analysis and allowing security teams to quickly assess and identify a script as malicious or benign.

This guide describes what the script analysis capability is and how it works, including how you can provide feedback on the results generated.

## Technical requirements

See the Security Copilot Early Access Program onboarding for the full list of technical requirements.

## Summarize an incident

Incidents containing up to 100 alerts can be summarized into one incident summary. An incident  summary, depending on the data, might include the following details when available:

- The time and date when an attack started.
- The entity or asset that started the attack.
- A summary of timelines of how the attack unfolded.
- Assets involved in the attack. 
- Indicators of compromise (IOCs).
- Information on the [threat actor](/security/intelligence/microsoft-threat-actor-naming) involved.
- 
To summarize an incident:


1. Select an incident. Security Copilot automatically creates an incident summary when opening an incident page.
2. You can stop the summary creation by selecting **Cancel**.
3. Select **Regenerate** to restart the summary creation.
4. You can view the incident summary on the Copilot side panel. You can copy the details, restart generating the summary, or view the summary in Security Copilot. To do any of these actions, select the three dots at the top of the incident summary to access these actions.
5. Note that a new tab opens when you select See in Security Copilot.

## Managing feedback

You can validate or report the analysis results provided by Security Copilot. Validating and reporting results enable Security Copilot to further learn and deliver more accurate results in the future.

To provide feedback:

1. Select the down arrow beside the face icon located at the bottom of the script analysis card.
2. From the options, select your feedback.
3. Select **Confirmed, it looks great** if the file analysis details are accurate based on your assessment. When the analysis details are confirmed, you can provide more information in the next dialog box.
4. Select **Off-target, inaccurate** if any detail is incorrect or incomplete based on your assessment. You can provide more information about your assessment in the next dialog box and submit this assessment to Microsoft.
5. You can also report the results if it contains questionable or ambiguous information by selecting **Potentially harmful, inappropriate**. Provide more information about the results in the next dialog box and select Submit.
6. You can restart summarizing an incident by selecting **Regenerate**.

## Next steps
- Respond to threats using guidance from Security Copilot in Microsoft 365 Defender
- Analyze scripts with Security Copilot in Microsoft 365 Defender
- Search for threats with Security Copilot in Microsoft 365 Defender

## See also
- Security Copilot FAQ
- Licensing information for Security Copilot
- [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]