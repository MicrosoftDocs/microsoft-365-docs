---
title: Using Microsoft Copilot for Security for threat intelligence in Microsoft Defender XDR
description: Learn about Copilot for Security embedded experience in Microsoft Defender XDR for Microsoft Defender Threat Intelligence.
keywords: security copilot, threat intelligence, defender threat intelligence, defender ti, copilot for security, embedded experience, vulnerability impact assessment, threat actor profile, plugins, Microsoft plugins
ms.service: defender-xdr
ms.author: pauloliveria
author: poliveria
ms.localizationpriority: medium
manager: dolmont
audience: ITPro
ms.collection: 
  - Tier1
ms.topic: conceptual
ms.date: 14/03/2024
---

# Using Microsoft Copilot for Security for threat intelligence in Microsoft Defender XDR

**Applies to:**
- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804)

Microsoft Defender XDR applies the capabilities of Microsoft Copilot for Security to deliver Microsoft Defender Threat Intelligence (Defender TI) information about threat actors and tools, as well as contextual threat intelligence, directly into the Microsoft Defender portal. Based on threat analytics reports, intel profiles, and other available Defender TI content, you can use Copilot for Security to summarize the latest threats affecting your organization, know which threats to prioritize based on your exposure level, or gain more knowledge about your organization's or the global threat landscape.

> [!NOTE]
> Defender TI capabilities are also available in Copilot for Security standalone experience through the Microsoft Defender Threat Intelligence plugin. Learn more about [Defender TI integration with Copilot for Security](/defender/threat-intelligence/security-copilot-and-defender-threat-intelligence.md).

## Technical requirements

Copilot for Security customers gain for each of their authenticated Copilot users access to Defender TI within the Microsoft Defender XDR portal. Learn how you can get started with Copilot for Security.

## Accessing Copilot for Security with Defender TI integration in Microsoft Defender XDR

Microsoft Defender XDR brings the _FindThreatIntelligence_ capability of Copilot for Security in the following *Threat intelligence* pages of the portal:
- Threat analytics
- Intel profiles
- Intel explorer
- Intel projects

## Try your first request
1. Open any of the *Threat intelligence* pages mentioned earlier from the Microsoft Defender XDR navigation bar. The Copilot for Security side pane appears on the right hand side.

   (Add image)

   You can also reopen Copilot by selecting (Copilot) at the top of the page.
2. In the Copilot prompt bar, ask about a threat actor, attack campaign, or any other threat intelligence that you want to know more about, then select (arrow) or press **Enter**.
   
   (Add image)

3. Copilot generates a response from your text instruction or question. While Copilot is generating, you can cancel the response by selecting **Stop generating**.
   
   (Add image)

4. Review the generated response. Copilot typically generates responses that include summaries and links to related Defender TI intel profiles and articles.

   (Add image)

5. You can provide feedback about the generated response by selecting (feedback icon) and choosing **Confirmed, it looks great**, **Off-target, inaccurate**, or **Potentially harmful, inappropriate**. [Learn more](/security/defender/security-copilot-in-microsoft-365-defender#providing-feedback)
6. To start a new chat session with Copilot, select the [New chat] icon.

> [!NOTE]
> Copilot saves your previous sessions from the Microsoft Defender XDR portal in the Copilot for Security standalone site.

> [!IMPORTANT] 
> Copilot for Security starts are a new chat session every time you navigate to a different Threat intelligence page (for example, when you go from *Threat analytics* to *Intel profiles*). If you wish to go back or continue a previous session, go to the Copilot for Security standalone site and look for it in My sessions. Learn more about My sessions

## Use the Defender TI prompts

Copilot for Security also has the following built-in prompts when accessing the Threat intelligence pages in Microsoft Defender XDR to get you started:
- **Summarize:** Select this option if you want Copilot to give you an overview of the most active threats in your environment. Copilot lists and summarizes relevant campaigns, activities, and threat actors, and includes links to related threat analytics reports or intel profiles for more information.
- **Prioritize:** Select this option if you want to find out which threats are likely to significantly impact your organization based on your exposures. This gives you a starting point and could thus make triaging, investigating, and mitigating incidents less complex.
- **Ask:** Select this option if you want Copilot to provide you with insights on certain topics about the threat landscape (for example, best practices for responding to human-operated ransomware attacks). An important aspect of threat intelligence is keeping up to date with the global threat landscape and Copilot provides you with relevant information that could help you promptly assess your environment and apply mitigation or prevention strategies.

### See also
- - [What is Microsoft Copilot for Security?](/security-copilot/microsoft-security-copilot)