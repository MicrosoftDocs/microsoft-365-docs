---
title: Microsoft Security Copilot and Microsoft Defender Threat Intelligence
description: Learn about Microsoft Defender Threat Intelligence capabilities embedded in Security Copilot.
keywords: security copilot, threat intelligence, defender threat intelligence, defender ti, embedded experience, vulnerability impact assessment, threat actor profile, plugins, Microsoft plugins
ms.service: microsoft-365-security
ms.subservice: intelligence
ms.author: pauloliveria
author: poliveria
ms.localizationpriority: medium
manager: dolmont
audience: ITPro
ms.collection: 
  - Tier1
ms.topic: conceptual
ms.date: 12/04/2023
---

# Microsoft Security Copilot (preview) and Microsoft Defender Threat Intelligence

> [!IMPORTANT]
> The information in this article applies to the Microsoft Security Copilot Early Access Program, which is an invite-only paid preview program. Some information in this article relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided in this article.

Microsoft Security Copilot is a cloud-based AI platform that provides natural language copilot experience. It can help support security professionals in different scenarios, like incident response, threat hunting, and intelligence gathering. For more information about what it can do, read [What is Microsoft Security Copilot?](/security-copilot/microsoft-security-copilot).

**Security Copilot integrates with Microsoft Defender Threat Intelligence**

Security Copilot delivers from Microsoft Defender Threat Intelligence (Defender TI) information about threat actors, indicators of compromise (IOCs), and tools, as well as contextual threat intelligence. You can use the prompts and promptbooks to investigate incidents, enrich your hunting flows with threat intelligence information, or gain more knowledge about your organization's or the global threat landscape.

This article introduces you to Security Copilot and includes sample prompts that can help Defender TI users.

## Know before you begin

- Be clear and specific with your prompts. You might get better results if you include specific threat actor names or IOCs in your prompts. It might also help if you add **threat intelligence** to your prompt, like:
  - Show me threat intelligence data for Aqua Blizzard.
  - Summarize threat intelligence data for "malicious.com."
- Be specific when referencing an incident (for example, “incident ID 15324”).
- Experiment with different prompts and variations to see what works best for your use case. Chat AI models vary, so iterate and refine your prompts based on the results you receive.
- Security Copilot saves your prompt sessions. To see the previous sessions, from the Security Copilot [Home menu](/security-copilot/navigating-security-copilot#home-menu), go to **My sessions**.
    
    ![Partial screenshot of the Microsoft Security Copilot Home menu with My sessions highlighted.](/defender/threat-intelligence/media/defender-ti-and-copilot/copilot-my-sessions.png)

    > [!NOTE]
    > For a walkthrough on Security Copilot, including the pin and share feature, read [Navigate Microsoft Security Copilot](/security-copilot/navigating-security-copilot).

[Learn more about creating effective prompts](/security-copilot/prompting-tips)

## Open Security Copilot

1.	Go to [Microsoft Security Copilot](https://go.microsoft.com/fwlink/?linkid=2247989) and sign in with your credentials.
2.	Make sure that the Defender TI plugin is turned on. Select the **Security Copilot plugin** icon in the lower-left corner of your screen. 
   
      ![Screenshot of the Microsoft Security Copilot home page with the plugin icon at the lower-left corner highlighted.](/defender/threat-intelligence/media/defender-ti-and-copilot//copilot-plugin-button.png)

    In the **Manage plugins** pop-up window that appears, confirm that the **Microsoft Defender Threat Intelligence** toggle is turned on, then close the window.

    ![Screenshot of the Manage plugins pop-up window with the Microsoft Defender Threat Intelligence plugin highlighted.](/defender/threat-intelligence/media/defender-ti-and-copilot/copilot-manage-plugins.png)

    > [!NOTE]
    > Some roles can turn the toggle on or off for plugins like Defender TI. For more information, read [Manage plugins in Microsoft Security Copilot](/security-copilot/manage-plugins).

3.	Enter your prompt in the prompt bar.

## Built-in system features

Security Copilot has built-in system features that can get data from the different plugins that are turned on.

To view the list of built-in system capabilities for Defender TI:

1.	In the prompt bar, enter **/**.
2.	Select **See all system capabilities**. The *ThreatIntelligence.DTI* section lists all the available capabilities for Defender TI that you can use.

Security Copilot also has the following promptbooks that also deliver information from Defender TI:
- **Vulnerability impact assessment** - Generates a report summarizing the intelligence for a known vulnerability, including steps on how to address it.
- **Threat actor profile** - Generates a report profiling a known threat actor, including suggestions to defend against their common tools and tactics.

To view these promptbooks, in the prompt bar, enter __*__. 

## Sample prompts for Defender TI

You can use many prompts to get information from Defender TI. This section lists some ideas and examples.

### General information about threat intelligence trends
Get threat intelligence from threat articles and threat actors. 

**Sample prompts** 
- Summarize the recent threat intelligence.
- Show me the latest threat articles. 
- Get threat articles associated with the finance industry.

### IP address and host contextual information in relation to threat intelligence

Get information on datasets associated with IP addresses and hosts, such as ports, reputation scores, components, certificates, cookies, services, and host pairs.

**Sample prompts** 
- Give me the reputation score of the host _\<host name\>_. 
- Get open ports for IP address _\<IP address\>_.
- Get the SSL certificates for the IP address _\<IP address\>_.

### Threat actor mapping and infrastructure
Get information on threat actors and the tactics, techniques, and procedures (TTPs), sponsored states, industries, and IOCs associated with them.

**Sample prompts** 
- Tell me more about Silk Typhoon.
- Share the IOCs associated with Silk Typhoon.
- Share the TTPs associated with Silk Typhoon.
- Share threat actors associated with Russia.

### CVE vulnerability data 
Get contextual information and threat intelligence on Common Vulnerabilities and Exposures (CVEs).

**Sample prompts** 
- Share the technologies that are susceptible to the vulnerability CVE-2021-44228.
- Summarize the vulnerability CVE-2021-44228.
- Show me the latest CVEs.
- Show me threat actors associated with CVE-2021-44228.
- Show me the threat articles associated with CVE-2021-44228.

## Provide feedback

Your feedback on the Defender TI integration with Security Copilot helps with development. To provide feedback, in Security Copilot, select any of the following buttons at the bottom of each completed prompt:
- **Looks right** - Select this button if the results are accurate, based on your assessment. 
- **Needs improvement** - Select this button if any detail in the results is incorrect or incomplete, based on your assessment. 
- **Inappropriate** - Select this button if the results contain questionable, ambiguous, or potentially harmful information.

For each feedback button, you can provide more information in the next dialog box that appears. Whenever possible, and when the result is **Needs improvement**, write a few words explaining what can be done to improve the outcome. If you entered prompts specific to Defender TI and the results aren't related, then include that information.

## Data processing and privacy

When you interact with the Security Copilot to get Defender TI data, Security Copilot pulls that data from Defender TI. The prompts, the data retrieved, and the output shown in the prompt results are processed and stored within the Security Copilot service. [Learn more about privacy and data security in Microsoft Security Copilot](/security-copilot/privacy-data-security)

### See also
- [What is Microsoft Security Copilot?](/security-copilot/microsoft-security-copilot)
- [Privacy and data security in Microsoft Security Copilot](/security-copilot/privacy-data-security)
