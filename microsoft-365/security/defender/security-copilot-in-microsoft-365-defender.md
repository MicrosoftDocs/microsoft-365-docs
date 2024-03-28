---
title: Microsoft Copilot in Microsoft Defender
description: Learn about Microsoft Copilot for Security capabilities embedded in Microsoft Defender.
keywords: security copilot, Microsoft Defender XDR, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response automated, automatic incident response, summarize incidents, summarize incident report, plugins, Microsoft plugins, preinstalled plugins, Microsoft Copilot for Security, Copilot for Security, file analysis, file analyzer, summarize device, device summary, summarize device information, device report, file information report, Microsoft Defender, Copilot in Defender
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
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 03/28/2024
---

# Microsoft Copilot in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR
- Microsoft Defender unified security operations center (SOC) platform

[Microsoft Copilot for Security](/security-copilot/microsoft-security-copilot) brings together the power of AI and human expertise to help security teams respond to attacks faster and more effectively. Copilot for Security is embedded in the Microsoft Defender portal to enable security teams to efficiently summarize incidents, analyze scripts and codes, analyze files, summarize device information, use guided responses to resolve incidents, generate KQL queries, create incident reports.

This article provides an overview for users of the Copilot in Defender, including steps to access, key capabilities, and links to the details of these capabilities.

<a name='access-security-copilot-in-microsoft-365-defender'></a>

## Access Copilot in Defender

To ensure that you have access to Copilot in Defender, see the [Copilot for Security purchase and licensing information](/security-copilot/faq-security-copilot). Once you have access to Copilot for Security, the key capabilities discussed below become accessible in the Microsoft Defender portal.

## Investigate and respond to incidents like an expert

Enable security teams to tackle attack investigations in a timely manner with ease and precision. Bringing AI to Microsoft Defender allows teams to understand attacks immediately, quickly analyze suspicious files and scripts, and promptly assess and apply appropriate mitigation to stop and contain attacks.

### Summarize incidents quickly

Investigating incidents with multiple alerts can be a daunting task. To immediately understand an incident, you can tap Copilot to [summarize an incident](security-copilot-m365d-incident-summary.md) for you. Copilot creates an overview of the attack containing essential information for you to understand what transpired in the attack, what assets are involved, and the timeline of the attack. Copilot automatically creates a summary when you navigate to an incident's page.

:::image type="content" source="../../media/copilot-in-defender/incident-summary/copilot-defender-incident-summary-small.png" alt-text="Screenshot of the incident summary card on the Copilot pane as seen in the Microsoft Defender incident page." lightbox="../../media/copilot-in-defender/incident-summary/copilot-defender-incident-summary.png":::

### Take action on incidents through guided responses

Approaching solutions and mitigation for any incident can oftentimes be complex for several reasons, including understanding where to begin, what solutions are appropriate, and following new investigation flows for security teams. Copilot minimizes these complications through [guided responses](security-copilot-m365d-guided-response.md). These responses are recommended actions specific to each incident.

:::image type="content" source="../../media/copilot-in-defender/guided-response/copilot-defender-guided-response-small.png" alt-text="Screenshot highlighting the Copilot pane with the guided responses in the Microsoft Defender incident page." lightbox="../../media/copilot-in-defender/guided-response/copilot-defender-guided-response.png":::

### Run script analysis with ease

Most attackers rely on sophisticated malware when launching attacks to avoid detection and analysis. These malware are usually obfuscated, and might be in the form of scripts or PowerShell command lines. Copilot can quickly analyze these malware, reducing the time for [script analysis](security-copilot-m365d-script-analysis.md) and helping security teams decide on the next action steps using information from the Copilot results.

:::image type="content" source="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-incident-small.png" alt-text="Screenshot highlighting the script analysis button in the attack story view in the incident page." lightbox="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-incident.png":::

### Generate device summaries

Investigating devices involved in incidents can be a tasking job. Copilot in Defender can help you quickly [summarize a device's information](copilot-in-defender-device-summary.md), including the device's security posture, any unusual behaviors, a list of vulnerable software, and relevant Microsoft Intune information.

:::image type="content" source="../../media/copilot-in-defender/device-summary/copilot-defender-device-summary-device-page-small.png" alt-text="Screenshot of the device summary results in Copilot in Defender." lightbox="../../media/copilot-in-defender/device-summary/copilot-defender-device-summary-device-page.png":::

### Analyze files promptly

The [file analysis](copilot-in-defender-file-analysis.md) capability in Copilot in Defender helps security teams quickly understand the nature of a file, including detection information, related file certificate, list of API calls the file makes, and strings found in the file. Security teams can quickly assess a file and decide on the next steps.

:::image type="content" source="../../media/copilot-in-defender/file-analysis/copilot-defender-file-analysis-hide-small.png" alt-text="Screenshot of the file analysis results in Copilot in Defender with the Hide details option highlighted." lightbox="../../media/copilot-in-defender/file-analysis/copilot-defender-file-analysis-hide.png":::

### Write incident reports efficiently

Security operations teams usually write reports to record important information, including what response actions were taken and the corresponding results, the team members involved, and other information to aid future security decisions and learning. Oftentimes, documenting incidents can be time-consuming. For incident reports to be effective, it must contain an incident's summary along with the actions taken, including what actions were taken by whom and when. Copilot [generates an incident report](security-copilot-m365d-create-incident-report.md) by quickly consolidating these pieces of information.

:::image type="content" source="../../media/copilot-in-defender/incident-report/copilot-defender-incident-report-results1-small.png" alt-text="Screenshot of the incident report card in the incident page." lightbox="../../media/copilot-in-defender/incident-report/copilot-defender-incident-report-results1.png":::
:::image type="content" source="../../media/copilot-in-defender/incident-report/copilot-defender-incident-report-results2-small.png" alt-text="Screenshot of the incident report card in the incident page showing the lower bottom of the card." lightbox="../../media/copilot-in-defender/incident-report/copilot-defender-incident-report-results2.png":::

## Hunt like a pro

Copilot in Defender helps security teams proactively hunt for threats in their network by quickly building appropriate KQL queries to hunt for threats.

### Generate KQL queries from natural-language input

Security teams who use advanced hunting to proactively hunt for threats in their network can now use a query assistant that converts any natural-language question in the context of threat hunting, into a ready-to-run KQL query. The query assistant saves security teams time by generating a KQL query that can then be automatically run or further tweaked according to the analyst needs. Read more about the query assistant in [Copilot for Security in advanced hunting](advanced-hunting-security-copilot.md).

:::image type="content" source="../../media/advanced-hunting-security-copilot-pane.png" alt-text="Screenshot of the Copilot pane in advanced hunting." lightbox="../../media/advanced-hunting-security-copilot-pane-big.png":::

## Skillfully respond to threats with relevant threat intelligence

Empower your security organization with the latest threat intelligence to make informed decisions. Copilot consolidates and summarizes threat intelligence to help security teams prioritize and respond to threats effectively.

### Monitor threat intelligence

Ask Copilot to summarize the relevant threats impacting your environment, to prioritize resolving threats based on your exposure levels, or to find threat actors that might be targeting your industry. Read more about the threat intelligence capabilities in [Using Copilot for Security in threat intelligence](/defender/threat-intelligence/using-copilot-threat-intelligence-defender-xdr).

:::image type="content" source="../../media/copilot-in-defender/TI/copilot-defender-threat-intel-small.png" alt-text="Screenshot of the Copilot pane in threat intelligence in Defender XDR." lightbox="../../media/copilot-in-defender/TI/copilot-defender-threat-intel-full.png":::

## Data security and feedback in Copilot

Copilot continuously evolves using [data](/security-copilot/privacy-data-security#customer-data-and-system-generated-logs) that is [stored](/security-copilot/privacy-data-security#customer-data-storage-location), [processed](/security-copilot/privacy-data-security#location-for-prompt-evaluation), and [shared](/security-copilot/privacy-data-security#customer-data-sharing-preferences) depending on the settings that you assigned. Microsoft ensures that your data is always protected and secure when using Copilot. To learn more about data security and privacy in Copilot, see [Privacy and data security in Copilot](/security-copilot/privacy-data-security).

Because of its continuing evolution, Copilot might miss some things. Reviewing and [providing feedback](/security-copilot/rai-faqs-security-copilot#what-are-the-limitations-of-security-copilot-how-can-users-minimize-the-impact-of-security-copilots-limitations-when-using-the-system) about the results helps improve Copilot's future responses.

All Copilot in Defender capabilities have an option for providing feedback. To provide feedback, perform the following steps:

1. Select the feedback icon ![Screenshot of the feedback icon for Copilot in Defender cards](../../media/copilot-in-defender/copilot-defender-feedback.png) located at the bottom of any results card in the Copilot side panel.
2. Select **Confirmed, it looks great** if the results are accurate based on your assessment. You can provide more information in the next dialog box.
3. Select **Off-target, inaccurate** if any detail is incorrect or incomplete based on your assessment. You can provide more information about your assessment in the next dialog box and submit this assessment to Microsoft.
4. You can also report the results if it contains questionable or ambiguous information by selecting **Potentially harmful, inappropriate**. Provide more information about the results in the next dialog box and select Submit.

<a name='microsoft-365-defender-plugin-in-security-copilot'></a>

## Plugins in Copilot for Security

Copilot uses [preinstalled Microsoft plugins](/security-copilot/manage-plugins#preinstalled-plugins) like Microsoft Defender XDR, Defender Threat Intelligence, and Natural Language to KQL for Microsoft Sentinel and Defender XDR plugins to generate relevant information, provide more context to incidents, and generate more accurate results. Ensure that [plugins are turned on in Copilot](/security-copilot/manage-plugins#managing-preinstalled-plugins) to allow access to relevant data and to generate requested content from other Microsoft services in your organization.

## Next steps

- [Learn how to summarize incidents](security-copilot-m365d-incident-summary.md)
- [Use guided responses when responding to incidents](security-copilot-m365d-guided-response.md)
- [Run script analysis](security-copilot-m365d-script-analysis.md)
- [Analyze files](copilot-in-defender-file-analysis.md)
- [Generate device summary](copilot-in-defender-device-summary.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create incident reports](security-copilot-m365d-create-incident-report.md)
- [Use threat intelligence](/defender/threat-intelligence/security-copilot-and-defender-threat-intelligence)

## See also

- [Get started with Copilot for Security](/security-copilot/get-started-security-copilot)
- [Privacy and data security in Copilot](/security-copilot/privacy-data-security)
- [Responsible AI FAQs](/security-copilot/responsible-ai-overview-security-copilot)
- Other [Copilot for Security embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
