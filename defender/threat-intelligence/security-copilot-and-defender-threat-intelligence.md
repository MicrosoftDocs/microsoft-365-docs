---
title: Microsoft Security Copilot and Microsoft Defender Threat Intelligence
description: Learn about Security Copilot capabilities embedded in Microsoft Defender Threat Intelligence.
keywords: security copilot, defender threat intelligence, defender ti, embedded experience, incident summary, script analyzer, script analysis, query assistant, incident report, guided response, incident response automated, automatic incident response, summarize incidents, summarize incident report, plugins, Microsoft plugins
ms.service: threat-intelligence
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: poliveria
author: poliveria
ms.localizationpriority: medium
manager: dolmont
audience: ITPro
ms.collection: 
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 11/15/2023
---

# Microsoft Security Copilot (preview) and Microsoft Defender Threat Intelligence

> [!IMPORTANT]
> The information in this article applies to the Microsoft Security Copilot Early Access Program, which is an invite-only paid preview program. Some information in this article relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided in this article.

Microsoft Security Copilot is a cloud-based AI platform that provides natural language copilot experience. It can help support security professionals in different scenarios, like incident response, threat hunting, and intelligence gathering. For more information about what it can do, go to [What is Microsoft Security Copilot?](/security-copilot/microsoft-security-copilot).

**Security Copilot integrates with Microsoft Defender Threat Intelligence**

Security Copilot delivers from Microsoft Defender Threat Intelligence (Defender TI) information about threat activity groups, indicators of compromise (IOCs), and tools, and contextual threat intelligence. You can use the prompts and promptbooks to investigate incidents, enrich your hunting flows with threat intelligence information, or gain more knowledge about your organization's or the global threat landscape.

This article introduces you to Security Copilot and includes sample prompts that can help Defender TI users.

## Know before you begin

- Be clear and specific with your prompts. You might get better results if you include specific activity group names or IOCs in your prompts. It might also help if you add **threat intelligence** to your prompt, like:
  - Show me threat intelligence data for Aqua Blizzard.
  - Summarize threat intelligence data for "malicious.com."
- Be specific when referencing an incident (for example, “incident ID 15324”)
- Experiment with different prompts and variations to see what works best for your use case. Chat AI models vary, so iterate and refine your prompts based on the results you receive.
- Security Copilot saves your prompt sessions. To see the previous sessions, from the Security Copilot menu, go to **My investigations**:
    
    [image placeholder]

    For a walkthrough on Security Copilot, including the pin and share feature, go to [Navigating Microsoft Security Copilot](/security-copilot/navigating-security-copilot).

For more information on writing Security Copilot prompts, go to [Microsoft Security Copilot prompting tips](/security-copilot/prompting-tips).

## Open Security Copilot

1.	Go to [Microsoft Security Copilot](https://go.microsoft.com/fwlink/?linkid=2247989) and sign in with your credentials.
2.	By default, Defender TI should be turned on. To confirm, select **Plugins** (bottom left corner):
   
    [image placeholder]

    In **My plugins**, confirm Microsoft Defender Threat Intelligence is on. Close **Plugins**.

    > [!NOTE]
    > Some roles can turn plugins like Defender TI on or off. For more information, go to [Manage plugins in Microsoft Security Copilot](/security-copilot/manage-plugins).

3.	Enter your prompt.

## Built-in system features

Security Copilot has built-in system features that can get data from the different plugins that are turned on.

To view the list of built-in system capabilities for Defender TI:

1.	In the prompt, enter **/**.
2.	Select **See all system capabilities**. The *ThreatIntelligence.DTI* section lists all the available capabilities for Defender TI that you can use.

Security Copilot also has the following promptbooks that also deliver information from Defender TI:
- **Vulnerability impact assessment** - Generates a report summarizing the intelligence for a known vulnerability, including steps on how to address it.
- **Threat actor profile** - Generates a report profiling a known activity group, including suggestions to defend against their common tools and tactics.

To view these promptbooks, in the prompt, enter __*__. 

## Sample prompts for Defender TI

You can use many prompts to get information from Defender TI. This section lists some ideas and examples.

### General information about threat intelligence trends
Get threat intelligence from threat articles and activity groups. 

**Sample prompts** 
- Summarize the recent threat intelligence.
- Show me the latest threat articles. 
- Get threat articles associated with the finance industry.

### IP address and host contextual information in relation to threat intelligence

Get information on datasets associated with IP addresses and hosts, such as ports, reputation scores, components, certificates, cookies, services, and host pairs.

**Sample prompts** 
- Give me the reputation score of a host. 
- Get open ports for IP address.
- Get the SSL certificates for the IP address.

### Activity group mapping and infrastructure
Get information on activity groups and the associated techniques, tactics, and procedures (TTPs), sponsored states, industries, and IOCs associated with them.

**Sample prompts** 
- Tell me more about the Silk Typhoon.
- Share the IOCs associated with Silk Typhoon.
- Share the TTPs associated with Silk Typhoon.
- Share activity groups associated with Russia.

### CVE vulnerability data 
Get contextual information on Common Vulnerabilities and Exposures (CVEs) and threat intelligence with these.

**Sample prompts** 
- Share the technologies that are susceptible to this vulnerability CVE-2021-44228.
- Summarize the vulnerability CVE-2021-44228.
- Show me the latest CVEs.
- Show me activity groups associated with this CVE-2021-44228.
- Show me the threat articles associated with CVE-2021-44228.

## Provide feedback

Your feedback on the Defender TI integration with Security Copilot helps with development. To provide feedback, in Security Copilot, use the feedback buttons at the bottom of each completed prompt. Your options are: "Looks Right," "Needs Improvement" and "Inappropriate."

Your options are the following:
- **Confirm** - The results match expectations.
- **Off-target** - The results don't match expectations.
- **Report** - The results are harmful in some way.

Whenever possible, and when the result is **Off-target**, write a few words explaining what can be done to improve the outcome. If you entered prompts specific to Defender TI and the results aren't related, then include that information.

## Data processing and privacy

When you interact with the Security Copilot to get Defender TI data, Security Copilot pulls that data from Defender TI. The prompts, the data retrieved, and the output shown in the prompt results are processed and stored within the Security Copilot service.

For more information about data privacy in Security Copilot, go to [Privacy and data security in Microsoft Security Copilot](/security-copilot/privacy-data-security).

## See also
- [What is Security Copilot?](/security-copilot/microsoft-security-copilot)
- [Privacy and data security in Security Copilot](/security-copilot/privacy-data-security)
