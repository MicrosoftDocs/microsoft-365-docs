---
title: Advanced technologies at the core of Microsoft Defender Antivirus
description: Microsoft Defender Antivirus engines and advanced technologies
author: siosulli
ms.author: siosulli
ms.reviewer: yongrhee
manager: deniseb
ms.service: defender-endpoint
ms.topic: overview
ms.date: 02/28/2024
ms.subservice: ngp
ms.localizationpriority: medium
ms.custom: partner-contribution
f1.keyboards: NOSCH
audience: ITPro
---

# Advanced technologies at the core of Microsoft Defender Antivirus

**Applies to:** 

- [Microsoft Defender XDR](https://go.microsoft.com/fwlink/?linkid=2118804) 
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037) 
- [Microsoft Defender for Business](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-business) 
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/?linkid=2154037)  
- Microsoft Defender Antivirus 
- [Microsoft Defender for Individuals](https://www.microsoft.com/microsoft-365/microsoft-defender-for-individuals) 

Microsoft Defender Antivirus and the multiple engines that lead to the advanced detection and prevention technologies under the hood to detect and stop a wide range of threats and attacker techniques at multiple points, as depicted in the following diagram:

:::image type="content" source="media/next-gen-protection-engines.png" alt-text="Diagram depicting next generation protection engines and how they work between the cloud and the client device.":::

Many of these engines are built into the client and provide advanced protection against most threats in real time. 

## Hybrid detection and protection

Microsoft Defender Antivirus does hybrid detection and protection. What this means is, detection and protection occur on the client device first, and works with the cloud for newly developing threats, which results in faster, more effective detection and protection. 

When the client encounters unknown threats, it sends metadata or the file itself to the cloud protection service, where more advanced protections examine new threats on the fly and integrate signals from multiple sources. 

| On the client | In the cloud |
|---|---|
| **Machine learning (ML) engine**<br/>A set of light-weight machine learning models make a verdict within milliseconds. These models include specialized models and features that are built for specific file types commonly abused by attackers. Examples include models built for portable executable (PE) files, PowerShell, Office macros, JavaScript, PDF files, and more. | **Metadata-based ML engine** <br/>Specialized ML models, which include file type-specific models, feature-specific models, and adversary-hardened [monotonic models](https://www.microsoft.com/en-us/security/blog/2019/07/25/new-machine-learning-model-sifts-through-the-good-to-unearth-the-bad-in-evasive-malware/), analyze a featurized description of suspicious files sent by the client. Stacked ensemble classifiers combine results from these models to make a real-time verdict to allow or block files pre-execution. |
| **Behavior monitoring engine**<br/>The behavior monitoring engine monitors for potential attacks post-execution. It observes process behaviors, including behavior sequence at runtime, to identify and block certain types of activities based on predetermined rules. | **Behavior-based ML engine**<br/>Suspicious behavior sequences and advanced attack techniques are monitored on the client as triggers to analyze the process tree behavior using real-time cloud ML models. Monitored attack techniques span the attack chain, from exploits, elevation, and persistence all the way through to lateral movement and exfiltration.  |
| **Memory scanning engine**<br/>This engine scans the memory space used by a running process to expose malicious behavior that could be hiding through code obfuscation. | **Antimalware Scan Interface (AMSI)-paired ML engine**<br/>Pairs of client-side and cloud-side models perform advanced analysis of scripting behavior pre- and post-execution to catch advanced threats like fileless and in-memory attacks. These models include a pair of models for each of the scripting engines covered, including PowerShell, JavaScript, VBScript, and Office VBA macros. Integrations include both dynamic content calls and/or behavior instrumentation on the scripting engines. |
| **AMSI integration engine**<br/>Deep in-app integration engine enables detection of fileless and in-memory attacks through [AMSI](/windows/desktop/AMSI/antimalware-scan-interface-portal), defeating code obfuscation. This integration blocks malicious behavior of scripts client-side. |  **File classification ML engine**<br/>Multi-class, deep neural network classifiers examine full file contents, provides an extra layer of defense against attacks that require more analysis. Suspicious files are held from running and submitted to the cloud protection service for classification. Within seconds, full-content deep learning models produce a classification and reply to the client to allow or block the file.  |
| **Heuristics engine**<br/>Heuristic rules identify file characteristics that have similarities with known malicious characteristics to catch new threats or modified versions of known threats. | **Detonation-based ML engine**<br/>Suspicious files are detonated in a sandbox. Deep learning classifiers analyze the observed behaviors to block attacks.   |
| **Emulation engine**<br/>The emulation engine dynamically unpacks malware and examines how they would behave at runtime. The dynamic emulation of the content and scanning both the behavior during emulation and the memory content at the end of emulation defeat malware packers and expose the behavior of polymorphic malware. | **Reputation ML engine**<br/>Domain-expert reputation sources and models from across Microsoft are queried to block threats that are linked to malicious or suspicious URLs, domains, emails, and files. Sources include Windows Defender SmartScreen for URL reputation models and Defender for Office 365 for email attachment expert knowledge, among other Microsoft services through the Microsoft Intelligent Security Graph.  |
| **Network engine**<br/>Network activities are inspected to identify and stop malicious activities from threats. | **Smart rules engine**<br/>Expert-written smart rules identify threats based on researcher expertise and collective knowledge of threats.  |

These next-generation protection engines provide [industry-best](/windows/security/threat-protection/intelligence/top-scoring-industry-antivirus-tests) detection and blocking capabilities and ensure that protection is: 

- **Accurate**: Threats both common and sophisticated, many which are designed to try to slip through protections, are detected and blocked.
- **Real-time**: Threats are prevented from getting on to devices, stopped in real-time at first sight, or detected and remediated in the least possible time (typically within a few milliseconds).
- **Intelligent**: Through the power of the cloud, machine learning (ML), and Microsoft's industry-leading optics, protection is enriched and made even more effective against new and unknown threats.

For more information, see [Microsoft 365 Defender demonstrates 100 percent protection coverage in the 2023 MITRE Engenuity ATT&CK&reg; Evaluations: Enterprise](https://www.microsoft.com/security/blog/2023/09/20/microsoft-365-defender-demonstrates-100-percent-protection-coverage-in-the-2023-mitre-engenuity-attck-evaluations-enterprise/).

## How next-generation protection works with other Defender for Endpoint capabilities

Together with [attack surface reduction](/microsoft-365/security/defender-endpoint/overview-attack-surface-reduction), which includes advanced capabilities like hardware-based isolation, application control, exploit protection, network protection, controlled folder access, attack surface reduction rules, and network firewall, [next-generation protection](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-windows) engines deliver Microsoft Defender for Endpoint's prebreach capabilities, stopping attacks before they can infiltrate devices and compromise networks. 

As part of Microsoft's defense-in-depth solution, the superior performance of these engines accrues to the [Microsoft Defender for Endpoint](https://www.microsoft.com/security/business/endpoint-security/microsoft-defender-endpoint) unified endpoint protection, where antivirus detections and other next-generation protection capabilities enrich endpoint detection and response, automated investigation and remediation, advanced hunting, threat and vulnerability management, managed threat hunting service, and other capabilities.

These protections are further amplified through [Microsoft Defender XDR](https://www.microsoft.com/security/business/siem-and-xdr/microsoft-defender-xdr), Microsoft's comprehensive, end-to-end security solution for the modern workplace. Through [signal-sharing and orchestration of remediation across Microsoft's security technologies](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Announcing-Microsoft-Threat-Protection/ba-p/262783), Microsoft Defender XDR secures identities, endpoints, email and data, apps, and infrastructure. 

## Frequently asked questions

### How many malware threats does Microsoft Defender Antivirus block per month? 

[Five billion threats on devices every month](https://www.microsoft.com/en-us/security/blog/2019/05/14/executing-vision-microsoft-threat-protection/).

### Do you all focus your detections/preventions in one specific geographic area? 

No, we are in all the geographical regions (Americas, EMEA, and APAC). 

### Do you all focus on specific industries? 

We focus on every industry. 
 
### Do your detection/protection require a human analyst? 

When you're pen-testing, you should demand where no human analysts are engaged on detect/protect, to see how the actual antivirus engine (prebreach) efficacy truly is, and a separate one where human analysts are engaged. You can add [Microsoft Defender Experts for XDR](/microsoft-365/security/defender/dex-xdr-overview) a managed extended detection and response service to augment your SOC.

The ***continuous iterative enhancement*** each of these engines to be increasingly effective at catching the latest strains of malware and attack methods. These enhancements show up in consistent [top scores in industry tests](/microsoft-365/security/defender/top-scoring-industry-tests), but more importantly, translate to [threats and malware outbreaks](https://www.microsoft.com/en-us/security/blog/2018/03/07/behavior-monitoring-combined-with-machine-learning-spoils-a-massive-dofoil-coin-mining-campaign/) stopped and [more customers protected](https://www.microsoft.com/en-us/security/blog/2018/03/22/why-windows-defender-antivirus-is-the-most-deployed-in-the-enterprise/). 
 
