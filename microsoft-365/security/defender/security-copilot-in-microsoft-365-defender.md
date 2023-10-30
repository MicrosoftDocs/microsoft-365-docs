---
title: Microsoft Security Copilot in Microsoft 365 Defender
description: Learn about Security Copilot capabilities embedded in Microsoft 365 Defender.
keywords: security copilot, microsoft 365 defender, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response automated, automatic incident response, summarize incidents, summarize incident report, plugins, Microsoft plugins
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

# Microsoft Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

The Microsoft Security Copilot in Microsoft 365 Defender Early Access Program is an invitation-only, paid preview. If your organization is interested in this program, work with your Microsoft account manager to learn more about nominations for a potential invite. To learn more about this program, see the [Microsoft Security Copilot Early Access Program FAQ](/security-copilot/faq-security-copilot).

[Microsoft Security Copilot](/security-copilot/microsoft-security-copilot) is a platform that brings together the power of AI and human expertise to help security teams respond to attacks faster and more effectively. Security Copilot is embedded in Microsoft 365 Defender for security teams to efficiently summarize incidents, analyze scripts and codes, use guided responses to resolve incidents, generate KQL queries, and create incident reports.

This article provides an overview for users of the Security Copilot embedded experience in Microsoft 365 Defender, including steps to access, key capabilities, and links that detail these capabilities.

## Access Security Copilot in Microsoft 365 Defender

To ensure that you have access to Security Copilot, see the [Security Copilot purchase and licensing information](/security-copilot/faq-security-copilot). Once you have access to Security Copilot, the key capabilities discussed below become accessible in the Microsoft 365 Defender portal.

## Key features

Microsoft 365 Defender brings the capabilities of Security Copilot to the portal, enabling security teams to tackle attack investigations in a timely manner with ease and precision. Bringing AI to Microsoft 365 Defender allows teams to understand attacks immediately, promptly assess and apply appropriate mitigation to stop and contain attacks, quickly analyze complex files, and hunt for threats with ease.

### Summarize incidents quickly

Investigating incidents with multiple alerts can be a daunting task. To immediately understand an incident, you can tap Security Copilot in Microsoft 365 Defender to [summarize an incident](security-copilot-m365d-incident-summary.md) for you. Security Copilot creates an overview of the attack containing essential information for you to understand what transpired in the attack, what assets are involved, and the timeline of the attack. Security Copilot automatically creates a summary when you navigate to an incident's page.

:::image type="content" source="../../media/copilot-in-defender/incident-summary/fig2-sec-copilot-m365d-summarize.png" alt-text="Screenshot of the incident summary card on the Security Copilot pane as seen in the Microsoft 365 Defender incident page." lightbox="../../media/copilot-in-defender/incident-summary/fig2-expanded-sec-copilot-m365d-summarize.png":::

### Take action on incidents through guided responses

Approaching solutions and mitigation for any incident can oftentimes be complex for several reasons, including understanding where to begin, what solutions are appropriate, and following new investigation flows for security teams. Security Copilot minimizes these complications through [guided responses](security-copilot-m365d-guided-response.md). These responses are recommended actions specific to each incident.

:::image type="content" source="../../media/copilot-in-defender/guided-response/fig2-sec-copilot-m365d-guided-response.png" alt-text="Screenshot of guided responses shown on the Security Copilot pane." lightbox="../../media/copilot-in-defender/guided-response/fig2-expanded-sec-copilot-m365d-guided-response.png":::

### Get results fast when analyzing scripts and codes

Most attackers rely on sophisticated malware when launching attacks to avoid detection and analysis. These files are usually obfuscated and arrive as scripts, Powershell, batch, and bash. Security Copilot can quickly analyze these file types, reducing the time for [script or code analysis](security-copilot-m365d-script-analysis.md) and helping security teams decide on the next action steps using information from the analysis.

:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig3-sec-copilot-m365d-script.png" alt-text="Screenshot of the Security Copilot pane in the Microsoft 365 Defender incident page." lightbox="../../media/copilot-in-defender/script-analyzer/fig3-expanded-sec-copilot-m365d-script.png":::

### Generate KQL queries from natural-language input

Security teams who use advanced hunting to proactively hunt for threats in their network can now use a query assistant that converts any natural-language question in the context of threat hunting, into a ready-to-run KQL query. The query assistant saves security teams time by generating a KQL query that can then be automatically run or further tweaked according to the analyst needs. Read more about the query assistant in [Security Copilot in advanced hunting](advanced-hunting-security-copilot.md).

### Write incident reports efficiently

Security operations teams usually write reports to record important information, including what response actions were taken and the corresponding results, the team members involved, and other information to aid future security decisions and learning. Oftentimes, documenting incidents can be time-consuming. For incident reports to be effective, it must contain an incident's summary along with the actions taken, including what actions were taken by whom and when. Security Copilot helps security teams consolidate these information pieces through the [create incident report](security-copilot-m365d-create-incident-report.md) feature.

:::image type="content" source="../../media/copilot-in-defender/incident-report/fig2-sec-copilot-m365d-create-report.png" alt-text="Screenshot of the incident report card in the incident page." lightbox="../../media/copilot-in-defender/incident-report/fig2-expanded-sec-copilot-m365d-create-report.png":::

## Providing feedback

Security Copilot and Microsoft 365 Defender uses AI and machine learning to process data and generate responses for each of the key features. However, AI might misinterpret some data, which sometimes cause a mismatch in responses. Providing your feedback about the generated responses enable both Security Copilot and Microsoft 365 Defender to continuously improve delivery of more accurate responses in the future.

All key features have an option for providing feedback. To provide feedback, perform the following steps:

1. Select the down arrow beside the face icon located at the bottom of any response card in the Security Copilot pane.
2. Select **Confirmed, it looks great** if the results are accurate based on your assessment. When results are confirmed, you can provide more information in the next dialog box.
3. Select **Off-target, inaccurate** if any detail is incorrect or incomplete based on your assessment. You can provide more information about your assessment in the next dialog box and submit this assessment to Microsoft.
4. You can also report the results if it contains questionable or ambiguous information by selecting **Potentially harmful, inappropriate**. Provide more information about the results in the next dialog box and select Submit.

## Microsoft 365 Defender plugin in Security Copilot

Microsoft 365 Defender is one of the [Microsoft plugins](/security-copilot/manage-plugins.md#microsoft-plugins) that enable the Security Copilot platform to generate accurate and relevant information. Through the Microsoft 365 Defender plugin, the Security Copilot portal can provide more context to incidents and generate more accurate results. The key features mentioned in this article are capabilities that are also available in the Security Copilot portal.

You can learn more about plugins implemented in the Security Copilot portal in [Manage plugins in Security Copilot](/security-copilot/manage-plugins). Additionally, you can learn more about the embedded experiences in other Microsoft security products in [Microsoft Security Copilot experiences](/security-copilot/experiences-security-copilot)

## Next steps

- [Learn how to summarize incidents](security-copilot-m365d-incident-summary.md)
- [Use guided responses when responding to incidents](security-copilot-m365d-guided-response.md)
- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create incident reports](security-copilot-m365d-create-incident-report.md)

## See also

- [Get started with Security Copilot](/security-copilot/get-started-security-copilot)
- [Privacy and data security in Security Copilot](/security-copilot/privacy-data-security)
- [Responsible AI FAQs](/security-copilot/responsible-ai-overview-security-copilot)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]