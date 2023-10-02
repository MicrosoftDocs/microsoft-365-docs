---
title: Microsoft Security Copilot in Microsoft 365 Defender
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

# Microsoft Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

The Microsoft Security Copilot in Microsoft 365 Defender Early Access Program is an invitation-only, paid preview. If your organization is interested in this program, work with your Microsoft account manager to learn more about nominations for a potential invite. To learn more about this program, see the [Security Copilot Early Access Program](/security-copilot/faq-security-copilot.md).

[Security Copilot](/security-copilot/microsoft-security-copilot.md) is a platform that brings together the power of AI and human expertise to help security teams respond to attacks faster and more effectively. Security Copilot is embedded in Microsoft 365 Defender to provide security teams with the capabilities to summarize incidents, analyze scripts and codes, use guided responses to resolve incidents, generate KQL queries, and create incident reports.

This article provides an overview for users of the Security Copilot embedded experience in Microsoft 365 Defender, including steps to access, key capabilities, and links that detail these capabilities.

## Access Security Copilot in Microsoft 365 Defender

Review Security Copilot and assess if it's right for your organization, see the [Security Copilot Frequently Asked Questions](/security-copilot/faq-security-copilot.md) page. To ensure that you have access to Security Copilot, see [Security Copilot licensing information](/security-copilot/faq-security-copilot.md#licensing-information).

[Review information on other requirements to access Security Copilot](/security-copilot/get-started-security-copilot.md).

## Key features

Microsoft 365 Defender brings the capabilities of Security Copilot to the portal, enabling security teams to tackle attack investigations in a timely manner with ease and precision. Bringing AI to Microsoft 365 Defender allows teams to understand attacks immediately, promptly assess and apply appropriate mitigation to stop and contain attacks, quickly analyze complex files, and hunt for threats with ease.

### Summarize incidents quickly

Investigating incidents with multiple alerts can be a daunting task. To immediately understand an incident, you can tap Security Copilot in Microsoft 365 Defender to [summarize an incident](security-copilot-m365d-incident-summary.md) for you. Security Copilot creates an overview of the attack containing essential information for you to understand what transpired in the attack, what assets are involved, and the timeline of the attack. Security Copilot automatically creates a summary when you navigate to an incident's page.

:::image type="content" source="../../media/copilot-in-defender/first-run/fig1-sec-copilot-m365d-first-run.png" alt-text="Incident summary highlighted in the Seccurity Copilot pane as seen in Microsoft 365 Defender's incident page" lightbox="../../media/copilot-in-defender/first-run/fig1-sec-copilot-m365d-first-run.png":::

### Take action on incidents through guided response

Approaching solutions and mitigation for any incident can oftentimes be complex for several reasons, including understanding where to begin, what solutions are appropriate, and following new investigation flows for security teams. Security Copilot minimizes these complications through [guided responses](security-copilot-m365d-guided-response.md). These responses are recommended actions specific to each incident.

:::image type="content" source="../../media/copilot-in-defender/first-run/fig2-sec-copilot-m365d-first-run.png" alt-text="Guided responses highlighted in the Security Copilot pane as seen in Microsoft 365 Defender's incident page" lightbox="../../media/copilot-in-defender/first-run/fig2-sec-copilot-m365d-first-run.png":::

### Get results fast when analyzing scripts and codes

Most attackers rely on sophisticated malware and files when launching attacks to avoid detection and investigation. These files are usually obfuscated and arrive as scripts, Powershell, batch, and bash. Security Copilot can quickly analyze these types of files to facilitate faster investigation, reducing the time for [script or code analysis](security-copilot-m365d-script-analysis.md) and helping security teams decide on the next action steps using information about these files’ capabilities.

:::image type="content" source="../../media/copilot-in-defender/first-run/fig3-sec-copilot-m365d-first-run.png" alt-text="Script analysis highlighted in the Security Copilot pane as seen in Microsoft 365 Defender's incident page" lightbox="../../media/copilot-in-defender/first-run/fig3-sec-copilot-m365d-first-run.png":::

### Generate KQL queries from natural-language input 

Security teams who use advanced hunting to proactively hunt for threats in their network can now use a query assistant that converts any natural-language question in the context of threat hunting, into a ready-to-run KQL query. The query assistant saves security teams time by generating a KQL query that can then be automatically run or further tweaked according to the analyst needs. Read more about the query assistant in [Security Copilot in advanced hunting](advanced-hunting-security-copilot.md)

:::image type="content" source="../../media/copilot-in-defender/first-run/fig4-sec-copilot-m365d-first-run.png" alt-text="Query assistant pane as seen in the Microsoft 365 Defender advanced hunting page" lightbox="../../media/copilot-in-defender/first-run/fig4-sec-copilot-m365d-first-run.png":::

### Write post-investigation reports with speed and accuracy

Investigation conclusions usually require reports to document the attack, the steps taken, results of the investigation, and other post-analysis items that need to be recorded to aid future security decisions and learning. Oftentimes, documenting investigations can be time-consuming and needs to have accurate information to be effective. Security Copilot [creates incident reports](security-copilot-m365d-create-incident-report.md) to summarize the investigation upon closure.

:::image type="content" source="../../media/copilot-in-defender/first-run/fig5-sec-copilot-m365d-first-run.png" alt-text="Incident report results in the Security Copilot pane as seen in the Microsoft 365 Defender incident page" lightbox="../../media/copilot-in-defender/first-run/fig5-sec-copilot-m365d-first-run.png":::

## Providing feedback

You can validate or report the results provided by Security Copilot in Microsoft 365 Defender. Validating and reporting results enable both Security Copilot and Microsoft 365 Defender to continuously improve delivery of more accurate answers. All features in key features have an option for you to provide feedback.

To provide feedback:

1. Select the down arrow beside the face icon located at the bottom of a card in the Security Copilot pane.

:::image type="content" source="../../media/copilot-in-defender/first-run/fig6-sec-copilot-m365d-first-run.png" alt-text="Highlighting the icon for feedback options for Security Copilot results" lightbox="../../media/copilot-in-defender/first-run/fig6-sec-copilot-m365d-first-run.png":::

2. From the options, select your feedback.

:::image type="content" source="../../media/copilot-in-defender/first-run/fig7-sec-copilot-m365d-first-run.png" alt-text="Highlighting the feedback options for Security Copilot results" lightbox="../../media/copilot-in-defender/first-run/fig7-sec-copilot-m365d-first-run.png":::

3. Select **Confirmed, it looks great** if the results are accurate based on your assessment. When results are confirmed, you can provide more information in the next dialog box.
4. Select **Off-target, inaccurate** if any detail is incorrect or incomplete based on your assessment. You can provide more information about your assessment in the next dialog box and submit this assessment to Microsoft.
5. You can also report the results if it contains questionable or ambiguous information by selecting **Potentially harmful, inappropriate**. Provide more information about the results in the next dialog box and select Submit.

## Next steps

- [Learn how to summarize incidents](security-copilot-m365d-incident-summary.md)
- [Use guided responses when responding to incidents](security-copilot-m365d-guided-response.md)
- [Analyze scripts and codes](security-copilot-m365d-script-analysis.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create incident reports](security-copilot-m365d-create-incident-report.md)

## See also

- [Security Copilot Early Access Program FAQs](/security-copilot/faq-security-copilot.md)
- [Get started with Security Copilot](/security-copilot/get-started-security-copilot.md)
- [Know more about other Security Copilot embedded experiences](/security-copilot/experiences-security-copilot.md)
- [Privacy and data security in Security Copilot](/security-copilot/privacy-data-security.md)
- [Responsible AI FAQs](/security-copilot/responsible-ai-overview-security-copilot.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]