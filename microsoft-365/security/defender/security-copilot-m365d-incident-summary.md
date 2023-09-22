---
title: Summarize incidents with Security Copilot in Microsoft 365 Defender
description: Use Security Copilot incident summary capabilities embedded in Microsoft 365 Defender.
keywords: security copilot, microsoft 365 defender, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, guided response, incident response playbooks, incident response, summary, summarize incident, summarize incidents, incident overview, write incident summary
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

# Summarize an incident with Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Microsoft 365 Defender applies the capabilities of [Security Copilot](/copilot/microsoft-365-copilot-overview.md) to summarize incidents , delivering impactful information and insights to simplify investigation tasks. Attack investigation is a crucial step for incident response teams to successfully defend an organization against further damage from a cyber threat. Investigations can oftentimes be time-consuming. Incident response teams need to understand how the attack happened, sort through numerous alerts, identify which assets and entities are involved, and assess the scope and impact of an attack.

Combining Microsoft 365 Defender’s correlation capabilities and Security Copilot’s AI-powered data processing and contextualization, incident response teams can easily gain the right context to investigate and remediate incidents. Incident response teams are enabled to quickly get important information  through an incident summary.

This guide outlines what to expect and how to access the summarizing capability of Security Copilot within Microsoft 365 Defender, including information on providing feedback.

## Technical requirements

[Learn about the requirements for Security Copilot to get started](/copilot/microsoft-365-copilot-requirements.md).

## Summarize an incident

Incidents containing up to 100 alerts can be summarized into one incident summary. An incident  summary, depending on the data, might include the following details when available:

- The time and date when an attack started.
- The entity or asset that started the attack.
- A summary of timelines of how the attack unfolded.
- Assets involved in the attack. 
- Indicators of compromise (IOCs).
- Information on the [threat actor](/security/intelligence/microsoft-threat-actor-naming) involved.

To summarize an incident:

1. Select an incident. Security Copilot automatically creates an incident summary when you open an incident page.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig1-sec-copilot-m365d-summarize.png" alt-text="Security Copilot pane in the Microsoft 365 Defender incident page where the incident summary card appears" lightbox="../../media/copilot-in-defender/incident-summary/fig1-sec-copilot-m365d-summarize.png":::
2. You can stop the summary creation by selecting **Cancel**.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig2-sec-copilot-m365d-summarize.png" alt-text="Security Copilot pane in Microsoft 365 Defender showing the Cancel incident summary creation option" lightbox="../../media/copilot-in-defender/incident-summary/fig2-sec-copilot-m365d-summarize.png":::
3. Select **Regenerate** to restart the summary creation.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig3-sec-copilot-m365d-summarize.png" alt-text="Security Copilot pane in Microsoft 365 Defender showing the Regenerate incident summary creation option" lightbox="../../media/copilot-in-defender/incident-summary/fig3-sec-copilot-m365d-summarize.png":::
4. You can view the incident summary on the Copilot side panel. You can copy the details, restart generating the summary, or view the summary in Security Copilot. To do any of these actions, select the three dots at the top of the incident summary to access these actions.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig4-sec-copilot-m365d-summarize.png" alt-text="Incident summary card showing other options for the user" lightbox="../../media/copilot-in-defender/incident-summary/fig4-sec-copilot-m365d-summarize.png":::
5. A new tab opens when you select See in Security Copilot.

## Managing feedback

You can validate or report the results provided by Security Copilot. Validating and reporting results enable Security Copilot to further learn and deliver more accurate answers in the future.

To provide feedback:

1. Select the down arrow beside the face icon located at the bottom of the incident summary card.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig5-sec-copilot-m365d-summarize.png" alt-text="Incident summary card showing feedback options for the user" lightbox="../../media/copilot-in-defender/incident-summary/fig5-sec-copilot-m365d-summarize.png":::
2. From the options, select your feedback.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig6-sec-copilot-m365d-summarize.png" alt-text="Highlighting feedback options for the user" lightbox="../../media/copilot-in-defender/incident-summary/fig6-sec-copilot-m365d-summarize.png":::
3. Select **Confirmed, it looks great** if the file analysis details are accurate based on your assessment. When the analysis details are confirmed, you can provide more information in the next dialog box.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig7-sec-copilot-m365d-summarize.png" alt-text="Option confirming results" lightbox="../../media/copilot-in-defender/incident-summary/fig7-sec-copilot-m365d-summarize.png":::
4. Select **Off-target, inaccurate** if any detail is incorrect or incomplete based on your assessment. You can provide more information about your assessment in the next dialog box and submit this assessment to Microsoft.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig8-sec-copilot-m365d-summarize.png" alt-text="Option citing inacccurate results" lightbox="../../media/copilot-in-defender/incident-summary/fig8-sec-copilot-m365d-summarize.png":::
5. You can also report the results if it contains questionable or ambiguous information by selecting **Potentially harmful, inappropriate**. Provide more information about the results in the next dialog box and select Submit.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig9-sec-copilot-m365d-summarize.png" alt-text="Option to report harmful results" lightbox="../../media/copilot-in-defender/incident-summary/fig9-sec-copilot-m365d-summarize.png":::
1. You can restart summarizing an incident by selecting **Regenerate**.

## Next steps
- Respond to threats using guidance from Security Copilot in Microsoft 365 Defender
- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md) with Security Copilot in Microsoft 365 Defender
- Search for threats with Security Copilot in Microsoft 365 Defender
- Create an incident report with Security Copilot in Microsoft 365 Defender

## See also
- [Security Copilot FAQ](/copilot/rai-faqs-security-copilot.md)
- [Learn about Security Copilot features in Microsoft 365 Defender](security-copilot-in-microsoft-365-defender.md)
- [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]