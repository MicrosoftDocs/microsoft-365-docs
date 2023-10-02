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

# Summarize an incident with Microsoft Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> The information in this article only applies to the Microsoft Security Copilot Early Access Program, an invite-only paid preview program for commercial customers. Some information in this article relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Microsoft 365 Defender applies the capabilities of [Security Copilot](/copilot/microsoft-365-copilot-overview.md) to summarize incidents, delivering impactful information and insights to simplify investigation tasks. Attack investigation is a crucial step for incident response teams to successfully defend an organization against further damage from a cyber threat. Investigations can oftentimes be time-consuming. Incident response teams need to understand how the attack happened, sort through numerous alerts, identify which assets and entities are involved, and assess the scope and impact of an attack.

Incident responders can easily gain the right context to investigate and remediate incidents through Microsoft 365 Defender’s correlation capabilities and Security Copilot’s AI-powered data processing and contextualization. With an incident summary, responders can quickly get important information to help in investigation.

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
- Name of the [threat actor](/security/intelligence/microsoft-threat-actor-naming) involved.

To summarize an incident, perform the following steps:

1. Select an incident. Security Copilot automatically creates an incident summary when you open an incident page. You can stop the summary creation by selecting **Cancel** and select **Regenerate** to restart the summary creation.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig1-sec-copilot-m365d-summarize.png" alt-text="Highlighting the automatic incident summary generation by Security Copilot pane in the Microsoft 365 Defender incident page" lightbox="../../media/copilot-in-defender/incident-summary/fig1-sec-copilot-m365d-summarize.png":::
2. You can view the incident summary card on the Security Copilot pane in the incident page.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig2-sec-copilot-m365d-summarize.png" alt-text="Incident summary card on the Security Copilot pane as seen in the the Microsoft 365 Defender incident page" lightbox="../../media/copilot-in-defender/incident-summary/fig2-sec-copilot-m365d-summarize.png":::
3. You can copy the details, restart generating the summary, or view the summary in Security Copilot. To do any of these actions, select the three dots at the top of the incident summary card.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig3-sec-copilot-m365d-summarize.png" alt-text="Highlighting the actions available on the incident summary card" lightbox="../../media/copilot-in-defender/incident-summary/fig3-sec-copilot-m365d-summarize.png":::
4. A new tab opens when you select **Open in Security Copilot**.

## Managing feedback

You can validate or report the results of the incident summary provided by Security Copilot. Validating and reporting results enable Security Copilot to continuously improve delivery of more accurate answers.

[Follow these steps to provide your feedback about the results](security-copilot-in-microsoft-365-defender.md#providing-feedback).

## Next steps

- [Use guided responses when responding to threats](security-copilot-m365d-guided-response.md)
- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create incident reports](security-copilot-m365d-create-incident-report.md)

## See also

- [Security Copilot Early Access Program FAQs](/security-copilot/faq-security-copilot.md)
- [Investigate incidents in Microsoft 365 Defender](investigate-incidents.md)
- [Get started with Security Copilot](/copilot/microsoft-365-copilot-requirements.md)
- [Learn about other Security Copilot embedded experiences](/copilot/experiences-security-copilot.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]