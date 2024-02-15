---
title: Summarize incidents with Security Copilot in Microsoft Defender XDR
description: Use Security Copilot incident summary capabilities embedded in Microsoft Defender XDR.
keywords: security copilot, Microsoft Defender XDR, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, guided response, incident response playbooks, incident response, summary, summarize incident, summarize incidents, incident overview, write incident summary
ms.service: defender-xdr
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
ms.date: 02/12/2024
---

# Summarize an incident with Microsoft Security Copilot in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

> [!IMPORTANT]
> The information in this article only applies to the Microsoft Security Copilot Early Access Program, an invite-only paid preview program for commercial customers. Some information in this article relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Microsoft Defender XDR applies the capabilities of [Microsoft Security Copilot](/security-copilot/microsoft-security-copilot) to summarize incidents, delivering impactful information and insights to simplify investigation tasks. Attack investigation is a crucial step for incident response teams to successfully defend an organization against further damage from a cyber threat. Investigations can oftentimes be time-consuming since it involves numerous steps. Incident response teams need to understand how the attack happened: sort through numerous alerts, identify which assets and entities are involved, and assess the scope and impact of an attack.

Incident responders can easily gain the right context to investigate and remediate incidents through Microsoft Defender XDR's correlation capabilities and Security Copilot's AI-powered data processing and contextualization. With an incident summary, responders can quickly get important information to help in their investigation.

This guide outlines what to expect and how to access the summarizing capability of Security Copilot within Microsoft Defender XDR, including information on providing feedback.

> [!NOTE]
> The incident summary capability is also available in the Security Copilot standalone experience through the Microsoft Defender XDR plugin. Know more about [preinstalled plugins in Microsoft Security Copilot](/security-copilot/manage-plugins#preinstalled-plugins).

## Technical requirements

[Learn how you can get started with Security Copilot](/security-copilot/get-started-security-copilot).

## Summarize an incident

Incidents containing up to 100 alerts can be summarized into one incident summary. An incident summary, depending on the availability of the data, includes the following:

- The time and date when an attack started.
- The entity or asset where the attack started.
- A summary of timelines of how the attack unfolded.
- The assets involved in the attack.
- Indicators of compromise (IOCs).
- Names of [threat actors](/microsoft-365/security/intelligence/microsoft-threat-actor-naming) involved.

To summarize an incident, perform the following steps:

1. Open an incident page. Security Copilot automatically creates an incident summary upon opening the page. You can stop the summary creation by selecting **Cancel** or restart creation by selecting **Regenerate**.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig1-new-sec-copilot-m365d-summarize.png" alt-text="Screenshot highlighting the automatic incident summary generation by Security Copilot pane in the Microsoft Defender XDR incident page." lightbox="../../media/copilot-in-defender/incident-summary/fig1-expand-sec-copilot-m365d-summarize.png":::
2. The incident summary card loads on the Security Copilot pane in the incident page. Review the generated summary on the card.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig2-new-sec-copilot-m365d-summarize.png" alt-text="Screenshot of the incident summary card on the Security Copilot pane as seen in the Microsoft Defender XDR incident page." lightbox="../../media/copilot-in-defender/incident-summary/fig2-expand-sec-copilot-m365d-summarize.png":::
3. Select the three dots at the top of the incident summary card to copy or regenerate the summary, or view the summary in Security Copilot. Selecting **Open in Security Copilot** opens a new tab to the Security Copilot standalone portal where you can input prompts and access other plugins.
:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig3-new-sec-copilot-m365d-summarize.png" alt-text="Screenshot highlighting the actions available on the incident summary card." lightbox="../../media/copilot-in-defender/incident-summary/fig3-new-sec-copilot-m365d-summarize.png":::

## Managing feedback

You can validate or report the results of the incident summary provided by Security Copilot. Validating and reporting results enable Security Copilot to continuously improve delivery of more accurate responses in the future.

[Follow these steps to provide your feedback about the results](security-copilot-in-microsoft-365-defender.md#providing-feedback).

## Next steps

- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md)
- [Use guided responses when responding to threats](security-copilot-m365d-guided-response.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create incident reports](security-copilot-m365d-create-incident-report.md)

## See also

- [Security Copilot Early Access Program FAQs](/security-copilot/faq-security-copilot)
- [Investigate incidents in Microsoft Defender XDR](investigate-incidents.md)
- [Get started with Security Copilot](/security-copilot/get-started-security-copilot)
- [Learn about other Security Copilot embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
