---
title: Analyze scripts and codes with Security Copilot in Microsoft 365 Defender
description: Use Security Copilot script analysis embedded in Microsoft 365 Defender to investigate scripts and codes.
keywords: security copilot, microsoft 365 defender, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, powershell, powershell analysis, bash, batch, bash analysis, batch analysis, code analysis, code analyzer
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

# Analyze scripts and codes with Microsoft Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

> [!IMPORTANT]
> The information in this article only applies to the Microsoft Security Copilot Early Access Program, an invite-only paid preview program for commercial customers. Some information in this article relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Through AI-powered investigation capabilities from [Microsoft Security Copilot](/security-copilot/microsoft-security-copilot) embedded in Microsoft 365 Defender, security teams can speed up their analysis of malicious or suspicious scripts and codes within PowerShell, batch, and bash.

Most complex and sophisticated attacks like [ransomware](/security/ransomware) evade detection through numerous ways, including the use of scripts and PowerShell. Moreover, these scripts are often obfuscated, which adds to the complexity of detection and analysis. Security operations teams need to quickly analyze scripts and codes to understand capabilities and apply appropriate mitigation, immediately stopping attacks from progressing further within a network.

> [!NOTE]
> Script analysis functions are continuously in development. Analysis of scripts in languages other than PowerShell, batch, and bash are being evaluated.

The script analysis capability of Security Copilot in Microsoft 365 Defender provides security teams added capacity to inspect scripts and codes without using external tools. This capability also reduces complexity of analysis, minimizing challenges and allowing security teams to quickly assess and identify a script as malicious or benign.

This guide describes what the script analysis capability is and how it works, including how you can provide feedback on the results generated.

## Technical requirements

[Learn about the requirements for Security Copilot to get started](/security-copilot/get-started-security-copilot).

## Analyze a script or code

You can access the script analysis capability in the alert timeline within an incident and in the [device timeline](/defender-endpoint/device-timeline-event-flag.md).

To begin analysis, perform the following steps:

1. Open an incident page. In the attack story tab, select an alert on the left pane to open the alert timeline. Select an event within the timeline and select **Analyze** to start the script analysis.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig1-sec-copilot-m365d-script.png" alt-text="Screenshot that shows selecting PowerShell with encoded data on the alert timeline view in the incident page of Microsoft 365 Defender." lightbox="../../media/copilot-in-defender/script-analyzer/fig1-expanded-sec-copilot-m365d-script.png":::
Alternately, you can select an event to inspect in the device timeline view. In the process tree shown on the file details pane, select **Analyze**.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig2-sec-copilot-m365d-script.png" alt-text="Screenshot highlighting the Analyze button on the device timeline view of Microsoft 365 Defender." lightbox="../../media/copilot-in-defender/script-analyzer/fig2-expanded-sec-copilot-m365d-script.png":::
2. Security Copilot analyzes the script and displays the results in the script analysis card. In the script analysis card, select **Show code** to expand and see specific lines in the code related to the analysis. Select **Hide code** to close.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig3-sec-copilot-m365d-script.png" alt-text="Screenshot of the Security Copilot pane in the Microsoft 365 Defender incident page." lightbox="../../media/copilot-in-defender/script-analyzer/fig3-expanded-sec-copilot-m365d-script.png":::
3. Select the three dots on the upper right of the script analysis card to copy or regenerate the results, or view the results in the Security Copilot standalone experience. Selecting **Open in Security Copilot** opens a new tab to the Security Copilot standalone portal where you can input prompts and access other plugins.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig4-sec-copilot-m365d-script.png" alt-text="Screenshot highlighting the available options in the Script analysis card." lightbox="../../media/copilot-in-defender/script-analyzer/fig4-sec-copilot-m365d-script.png":::

## Managing feedback

You can validate or report the script analysis results provided by Security Copilot. Validating and reporting results enable Security Copilot to improve and deliver more accurate results in the future.

[Follow these steps to provide your feedback about the results](security-copilot-in-microsoft-365-defender.md#providing-feedback).

## Next steps

- [Respond to incidents using guided responses](security-copilot-m365d-guided-response.md)
- [Generate KQL queries](advanced-hunting-security-copilot.md)
- [Create an incident report](security-copilot-m365d-create-incident-report.md)

## See also
- [Security Copilot Early Access Program FAQs](/security-copilot/faq-security-copilot)
- [Get started with Security Copilot](/security-copilot/get-started-security-copilot)
- [Learn about other Security Copilot embedded experiences](/security-copilot/experiences-security-copilot)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]