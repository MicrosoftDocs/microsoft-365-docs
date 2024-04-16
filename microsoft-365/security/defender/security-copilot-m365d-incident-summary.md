---
title: Summarize incidents with Microsoft Copilot in Microsoft Defender
description: Generate incident summaries with Microsoft Copilot embedded in Microsoft Defender.
keywords: security copilot, Microsoft Defender XDR, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, guided response, incident response playbooks, incident response, summary, summarize incident, summarize incidents, incident overview, write incident summary, Microsoft Copilot for Security, Copilot in Defender, Microsoft Defender
ms.service: defender-xdr
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: diannegali
author: diannegali
ms.localizationpriority: medium
manager: deniseb
audience: ITPro
ms.collection:
  - m365-security
  - tier1
  - security-copilot
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 04/01/2024
---

# Summarize an incident with Microsoft Copilot in Microsoft Defender

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR
- Microsoft Defender unified security operations center (SOC) platform

Microsoft Defender XDR applies the capabilities of [Copilot for Security](/security-copilot/microsoft-security-copilot) to summarize incidents, delivering impactful information and insights to simplify investigation tasks. Attack investigation is a crucial step for incident response teams to successfully defend an organization against further damage from a cyber threat. Investigations can oftentimes be time-consuming as it involves numerous steps. Incident response teams need to understand how the attack happened: sort through numerous alerts, identify which assets and entities are involved, and assess the scope and impact of an attack.

Incident responders can easily gain the right context to investigate and remediate incidents through Defender XDR's correlation capabilities and Copilot for Security's AI-powered data processing and contextualization. With an incident summary, responders can quickly get important information to help in their investigation.

The incident summary capability is available in the Microsoft Defender portal through the [Copilot for Security license](/security-copilot/faq-security-copilot). This capability is also available in the Copilot for Security standalone experience through the Microsoft Defender XDR plugin.

This guide outlines what to expect and how to access the summarizing capability of Copilot in Defender, including information on providing feedback.

## Summarize an incident

Incidents containing up to 100 alerts can be summarized into one incident summary. An incident summary, depending on the availability of the data, includes the following:

- The time and date when an attack started.
- The entity or asset where the attack started.
- A summary of timelines of how the attack unfolded.
- The assets involved in the attack.
- Indicators of compromise (IoCs).
- Names of [threat actors](/microsoft-365/security/intelligence/microsoft-threat-actor-naming) involved.

To summarize an incident, perform the following steps:

1. Open an incident page. Copilot automatically creates an incident summary upon opening the page. You can stop the summary creation by selecting **Cancel** or restart creation by selecting **Regenerate**.

2. The incident summary card loads on the Copilot pane. Review the generated summary on the card.
   :::image type="content" source="../../media/copilot-in-defender/incident-summary/copilot-defender-incident-summary-small.png" alt-text="Screenshot of the incident summary card on the Copilot pane as seen in the Microsoft Defender incident page." lightbox="../../media/copilot-in-defender/incident-summary/copilot-defender-incident-summary.png":::
   > [!TIP]
   > You can navigate to a file, IP, or URL page from the Copilot results pane by clicking on the evidence in the results.
3. Select the **More actions** ellipsis (...) at the top of the incident summary card to copy or regenerate the summary, or view the summary in the Copilot for Security portal. Selecting **Open in Copilot for Security** opens a new tab to the Copilot for Security standalone portal where you can input prompts and access other plugins.
   :::image type="content" source="../../media/copilot-in-defender/incident-summary/copilot-defender-incident-summary-more-actions.png" alt-text="Screenshot highlighting the actions available on the incident summary card." lightbox="../../media/copilot-in-defender/incident-summary/copilot-defender-incident-summary-more-actions.png":::
4. Review the summary and use the information to guide your investigation and response to the incident. You can provide feedback on the summary by selecting the feedback icon ![Screenshot of the feedback icon for Copilot in Defender cards](../../media/copilot-in-defender/copilot-defender-feedback.png) found on the bottom of the Copilot pane.

## See also

- [Run script analysis](security-copilot-m365d-script-analysis.md)
- [Analyze files](copilot-in-defender-file-analysis.md)
- [Generate device summary](copilot-in-defender-device-summary.md)
- [Use guided responses when responding to threats](security-copilot-m365d-guided-response.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create incident reports](security-copilot-m365d-create-incident-report.md)
- [Get started with Microsoft Copilot for Security](/security-copilot/get-started-security-copilot)
- [Learn about other Copilot for Security embedded experiences](/security-copilot/experiences-security-copilot)
- Know more about [preinstalled plugins in Copilot for Security](/security-copilot/manage-plugins#preinstalled-plugins)
- [Investigate incidents in Microsoft Defender XDR](investigate-incidents.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
