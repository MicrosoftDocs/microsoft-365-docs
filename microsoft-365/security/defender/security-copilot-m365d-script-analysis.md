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

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Through AI-powered investigation capabilities from [Microsoft Security Copilot](/copilot/microsoft-365-copilot-overview.md) embedded in Microsoft 365 Defender, security teams can speed up their analysis of malicious or suspicious scripts and codes within PowerShell, batch, and bash.

Most complex and sophisticated attacks like [ransomware](/security/ransomware) evade detection through numerous ways, including the use of scripts and PowerShell. Moreover, these scripts often come as obfuscated to add to the complexity of detection and investigation. Security operations teams need to quickly analyze script to understand capabilities and apply appropriate mitigation, immediately stopping attacks from progressing further within a network.

> [!NOTE]
> Script analysis functions are continuously in development. Analysis of scripts in languages other than PowerShell, batch, and bash are being evaluated.

The script analysis capability within Microsoft 365 Defender provides an additional capacity to inspect scripts without using external tools. This capability also strips complexity to analysis, minimizing challenges in analysis and allowing security teams to quickly assess and identify a script as malicious or benign.

This guide describes what the script analysis capability is and how it works, including how you can provide feedback on the results generated.

## Technical requirements

[Learn about the requirements for Security Copilot to get started](/copilot/microsoft-365-copilot-requirements.md).

## Analyze a script or code

You can access the script analysis capability in the alert timeline within an incident and in the [device timeline](/defender-endpoint/device-timeline-event-flag.md).

To begin analysis, perform the following steps:

1. In the attack story tab on the incident page, select the relevant event in the alert timeline.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig1-sec-copilot-m365d-script.png" alt-text="Selecting PowerShell execution on the alert timeline view in the incident page of Microsoft 365 Defender" lightbox="../../media/copilot-in-defender/script-analyzer/fig1-sec-copilot-m365d-script.png":::
2. The details for the script selected expand after selecting it. Once the details are expanded, select **Analyze**.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig2-sec-copilot-m365d-script.png" alt-text="Highlighting the Analyze button on the alert timeline view in the incident page of Microsoft 365 Defender" lightbox="../../media/copilot-in-defender/script-analyzer/fig2-sec-copilot-m365d-script.png":::
In the device timeline view, select an event to inspect. In the process tree shown on the file details pane, select **Analyze**.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig3-sec-copilot-m365d-script.png" alt-text="Highlighting the Analyze button on the device timeline view of Microsoft 365 Defender" lightbox="../../media/copilot-in-defender/script-analyzer/fig3-sec-copilot-m365d-script.png":::
3. Security Copilot will then automatically analyze the script and display the results.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig4-sec-copilot-m365d-script.png" alt-text="Security Copilot pane in the Microsoft 365 Defender incident page" lightbox="../../media/copilot-in-defender/script-analyzer/fig4-sec-copilot-m365d-script.png":::
4. A script analysis card is displayed on the right side of the pane. The card includes information on what the code does.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig5-sec-copilot-m365d-script.png" alt-text="Script analysis card on the Security Copilot pane in the Microsoft 365 Defender incident page" lightbox="../../media/copilot-in-defender/script-analyzer/fig5-sec-copilot-m365d-script.png":::
5. Select **Show code** to expand and see specific lines in the code related to the analysis. Select **Hide code** to close.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig6-sec-copilot-m365d-script.png" alt-text="Highlighting the Show code and Hide code options in the Script analysis card" lightbox="../../media/copilot-in-defender/script-analyzer/fig6-sec-copilot-m365d-script.png":::
5. You can copy the results, restart the analysis, or see the results in the Security Copilot standalone experience. To do any of these actions, select the three dots on the upper right of the script analysis card.
:::image type="content" source="../../media/copilot-in-defender/script-analyzer/fig6-sec-copilot-m365d-script.png" alt-text="Highlighting the available options in the Script analysis card" lightbox="../../media/copilot-in-defender/script-analyzer/fig6-sec-copilot-m365d-script.png":::

## Managing feedback

You can validate or report the analysis results provided by Security Copilot. Validating and reporting results enable Security Copilot to improve and deliver more accurate results in the future.

[Follow these steps to provide feedback](security-copilot-m365d-incident-summary.md#managing-feedback).

## Next steps

- [Summarize an incident](security-copilot-m365d-incident-summary.md)
- [Respond to incidents using guided responses](security-copilot-m365d-guided-response.md)
- [Create an incident report](security-copilot-m365d-create-incident-report.md)
- Search for threats

## See also
-	[Security Copilot FAQ](/copilot/rai-faqs-security-copilot.md)
- [Learn about other Security Copilot embedded experiences](/copilot/experiences-security-copilot.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]