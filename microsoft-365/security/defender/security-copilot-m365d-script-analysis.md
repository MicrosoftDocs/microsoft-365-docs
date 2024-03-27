---
title: Script analysis with Microsoft Copilot for Security in Microsoft Defender XDR
description: Use Microsoft Copilot script analysis in Microsoft Defender to investigate scripts and command lines.
keywords: security copilot, Microsoft Defender XDR, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, powershell, powershell analysis, bash, batch, bash analysis, batch analysis, code analysis, code analyzer, security copilot script analysis, copilot in security script analysis, security copilot script analysis in Microsoft Defender XDR, Microsoft Copilot for Security, Microsoft Defender, Copilot in Defender
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
ms.date: 03/27/2024
---

# Script analysis with Microsoft Copilot for Security in Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR
- Microsoft Defender unified security operations center (SOC) platform

Through AI-powered investigation capabilities from [Microsoft Copilot for Security](/security-copilot/microsoft-security-copilot) in the Microsoft Defender portal, security teams can speed up their analysis of malicious or suspicious scripts and command lines in PowerShell, batch, bash, JavaScript, and Python.

Most complex and sophisticated attacks like [ransomware](/security/ransomware) evade detection through numerous ways, including the use of scripts and PowerShell. Moreover, these scripts are often obfuscated, which adds to the complexity of detection and analysis. Security operations teams need to quickly analyze scripts to understand capabilities and apply appropriate mitigation, immediately stopping attacks from progressing further within a network.

The script analysis capability provides security teams added capacity to inspect scripts without using external tools. This capability also reduces complexity of analysis, minimizing challenges and allowing security teams to quickly assess and identify a script as malicious or benign. Script analysis is also available in the Copilot for Security standalone experience through the Microsoft Defender XDR plugin. Know more about [preinstalled plugins in Copilot for Security](/security-copilot/manage-plugins#preinstalled-plugins).

This guide describes what the script analysis capability is and how it works, including how you can provide feedback on the results generated.

## Analyze a script

You can access the script analysis capability within the attack story below the incident graph on an incident page and in the [device timeline](/microsoft-365/security/defender-endpoint/device-timeline-event-flag).

To begin analysis, perform the following steps:

1. Open an incident page then select an item on the left pane to open the attack story below the incident graph. Within the attack story, select an event with a script or command line that you want to analyze. Click **Analyze** to start the analysis.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-incident-small.png" alt-text="Screenshot highlighting the script analysis button in the attack story view in the incident page." lightbox="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-incident.png":::

   Alternately, you can select an event to inspect in the device timeline view. On the file details pane, select **Analyze** to run the script analysis capability.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-device-timeline-small.png" alt-text="Screenshot highlighting the Analyze button on the device timeline view." lightbox="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-device-timeline.png":::

2. Copilot runs script analysis and displays the results in the Copilot pane. Select **Show code** to expand the script, or **Hide code** to close the expansion.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-results-small.png" alt-text="Screenshot of the Copilot pane with script analysis results in the Microsoft Defender XDR incident page." lightbox="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-results.png":::

3. Select the **More actions** ellipsis (...) on the upper right of the script analysis card to copy or regenerate the results, or view the results in the Copilot for Security standalone experience. Selecting **Open in Copilot for Security** opens a new tab to the Copilot standalone portal where you can input prompts and access other plugins.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-more-actions.png" alt-text="Screenshot highlighting the More actions option in the Copilot script analysis card." lightbox="../../media/copilot-in-defender/script-analyzer/copilot-defender-script-analysis-more-actions.png":::

4. Review the results. You can provide feedback on the results by selecting the feedback icon ![Screenshot of the feedback icon for Copilot in Defender cards](../../media/copilot-in-defender/copilot-defender-feedback.png) found at the end of the script analysis card.

## See also

- [Analyze files](copilot-in-defender-file-analysis.md)
- [Generate device summary](copilot-in-defender-device-summary.md)
- [Respond to incidents using guided responses](security-copilot-m365d-guided-response.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create an incident report](security-copilot-m365d-create-incident-report.md)
- [Get started with Microsoft Copilot for Security](/security-copilot/get-started-security-copilot)
- [Learn about other Copilot for Security embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]