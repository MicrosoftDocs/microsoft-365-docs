---
title: Analyze scripts with Security Copilot in Microsoft 365 Defender
description: Use Security Copilot script analysis embedded in Microsoft 365 Defender.
keywords: security copilot, microsoft 365 defender, embedded experience, incident summary, script analyzer, script analysis, query assistant, m365, incident report, guided response, incident response playbooks, incident response, powershell, powershell analysis, bash, batch, bash analysis, batch analysis
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

# Analyze scripts with Security Copilot in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Through AI-powered investigation capabilities from Security Copilot embedded in Microsoft 365 Defender, security teams can speed up their analysis of malicious or suspicious scripts and codes within PowerShell, batch, and bash.

Most complex and sophisticated attacks like [ransomware](/security/ransomware) evade detection through numerous ways, including the use of scripts and PowerShell. Moreover, these scripts often come as obfuscated to add to the complexity of detection and investigation. Security operations teams need to quickly analyze script to understand capabilities and apply appropriate mitigation, immediately stopping attacks from progressing further within a network.

> [!NOTE]
> Script analysis functions are continuously in development. Analysis of scripts in languages other than PowerShell, batch, and bash are being evaluated.

The script analysis capability within Microsoft 365 Defender provides an additional capacity to inspect scripts without using external tools. This capability also strips complexity to analysis, minimizing challenges in analysis and allowing security teams to quickly assess and identify a script as malicious or benign.

This guide describes what the script analysis capability is and how it works, including how you can provide feedback on the results generated.

## Technical requirements

See the Security Copilot Early Access Program onboarding for the full list of technical requirements.

## Analyze a script

You can access the script analysis capability in the alert timeline within an incident and in the [device timeline](defender-endpoint/device-timeline-event-flag).

To begin analysis, perform the following steps:

1. In the attack story tab on the incident page, select the relevant event in the alert timeline.
2. The details for the script selected expand after selecting it. Once the details are expanded, select **Analyze**.
In the device timeline view, select an event to inspect. In the process tree shown on the file details pane, select **Analyze**.
3. Security Copilot will then automatically analyze the script and display the results.
4. A script analysis card is displayed on the right side of the pane. The card includes information on what the code does.
5. Select **Show code** to expand and see specific lines in the code related to the analysis. Select **Hide code** to close.
6. You can copy the results, restart the analysis, or see the results in the Security Copilot standalone experience. To do any of these actions, select the three dots on the upper right of the script analysis card.

## Managing feedback

You can validate or report the analysis results provided by Security Copilot. Validating and reporting results enable Security Copilot to further learn and deliver more accurate results in the future.

To provide feedback:

1. Select the down arrow beside the face icon located at the bottom of the script analysis card.
2. From the options, select your feedback.
3. Select **Confirmed, it looks great** if the file analysis details are accurate based on your assessment. When the analysis details are confirmed, you can provide more information in the next dialog box.
4. Select **Off-target, inaccurate** if any detail is incorrect or incomplete based on your assessment. You can provide more information about your assessment in the next dialog box and submit this assessment to Microsoft.
5. You can also report the results if it contains questionable or ambiguous information by selecting **Potentially harmful, inappropriate**. Provide more information about the results in the next dialog box and select Submit.

## Next steps
- Summarize an incident with Security Copilot in Microsoft 365 Defender
- Respond to incidents with Security Copilot in Microsoft 365 Defender

## See also
-	Security Copilot FAQ
-	Licensing information for Security Copilot

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]