---
title: Run script and code analysis with Microsoft Copilot for in Microsoft Defender XDR
description: Use Security Copilot script analysis embedded in Microsoft Defender XDR to investigate scripts and codes.
keywords: security copilot, Microsoft Defender XDR, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, powershell, powershell analysis, bash, batch, bash analysis, batch analysis, code analysis, code analyzer, security copilot script analysis, copilot in security script analysis, security copilot script analysis in Microsoft Defender XDR
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
ms.date: 03/01/2024
---

# Run script and code analysis with Microsoft Copilot for Security in Microsoft Defender XDR

[!INCLUDE [Microsoft Defender XDR rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft Defender XDR

Through AI-powered investigation capabilities from [Microsoft Copilot for Security](/security-copilot/microsoft-security-copilot) embedded in Microsoft Defender XDR, security teams can speed up their analysis of malicious or suspicious scripts and codes within PowerShell, batch, and bash.

Most complex and sophisticated attacks like [ransomware](/security/ransomware) evade detection through numerous ways, including the use of scripts and PowerShell. Moreover, these scripts are often obfuscated, which adds to the complexity of detection and analysis. Security operations teams need to quickly analyze scripts and codes to understand capabilities and apply appropriate mitigation, immediately stopping attacks from progressing further within a network.

> [!NOTE]
> Script analysis functions are continuously in development. Analysis of scripts in languages other than PowerShell, batch, and bash are being evaluated.

The script analysis capability provides security teams added capacity to inspect scripts and codes without using external tools. This capability also reduces complexity of analysis, minimizing challenges and allowing security teams to quickly assess and identify a script as malicious or benign.

This guide describes what the script analysis capability is and how it works, including how you can provide feedback on the results generated.

> [!NOTE]
> The script analysis capability is also available in the Copilot for Security standalone experience through the Microsoft Defender XDR plugin. Know more about [preinstalled plugins in Microsoft Security Copilot](/security-copilot/manage-plugins#preinstalled-plugins).

## Analyze a script or code

You can access the script analysis capability in the alert timeline within an incident and in the [device timeline](/microsoft-365/security/defender-endpoint/device-timeline-event-flag).

To begin analysis, perform the following steps:

1. Open an incident page. Open the alert timeline in the attack story tab. Within the timeline, select an event with a script or code that you want to analyze. Click **Analyze** to start the script/code analysis.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig1-script-analysis.png" alt-text="Screenshot highlighting the script analysis button on the alert timeline view in the incident page of Microsoft Defender XDR." lightbox="../../media/copilot-in-defender/script-analyzer/fig1-script-analysis.png":::

   Alternately, you can select an event to inspect in the device timeline view. In the process tree shown on the file details pane, select **Analyze** to run the script analysis capability.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig2-script-analysis.png" alt-text="Screenshot highlighting the Analyze button on the device timeline view of Microsoft Defender XDR." lightbox="../../media/copilot-in-defender/script-analyzer/fig2-script-analysis.png":::

2. Copilot runs script analysis and displays the results in the Copilot pane. You can see specific lines in the code by selecting **Show code** to expand the script or code, and select **Hide code** to close.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig3-script-analysis.png" alt-text="Screenshot of the Copilot pane with script analysis results in the Microsoft Defender XDR incident page." lightbox="../../media/copilot-in-defender/script-analyzer/fig3-script-analysis.png":::

3. Select the three dots on the upper right of the script analysis card to copy or regenerate the results, or view the results in the Copilot for Security standalone experience. Selecting **Open in Security Copilot** opens a new tab to the Copilot standalone portal where you can input prompts and access other plugins.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig4-script-analysis.png" alt-text="Screenshot highlighting the available options in the Copilot script analysis card." lightbox="../../media/copilot-in-defender/script-analyzer/fig4-script-analysis.png":::

4. Review the analysis results. You can provide feedback on the results by selecting the feedback dropdown found at the end of the script analysis card.

   :::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig5-script-analysis.png" alt-text="Screenshot highlighting the feedback button and options in the Copilot script analysis card." lightbox="../../media/copilot-in-defender/script-analyzer/fig5-script-analysis.png":::

> [!TIP]
> You can navigate to an IP, file, or URL entity page in the analysis results by clicking on the entity. This action opens the entity pane.

## See also

- [Respond to incidents using guided responses](security-copilot-m365d-guided-response.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create an incident report](security-copilot-m365d-create-incident-report.md)
- [Get started with Microsoft Copilot for Security](/security-copilot/get-started-security-copilot)
- [Learn about other Copilot for Security embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
