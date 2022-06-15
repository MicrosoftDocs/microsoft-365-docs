---
title: Understand the Defender Experts for Hunting report in Microsoft 365 Defender
ms.reviewer: 
description: Learn about the analyst report section of each threat analytics report. Understand how it provides information about threats, mitigations, detections, advanced hunting queries, and more.
keywords: analyst report, threat analytics, detections, advanced hunting queries, mitigations, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: microsoft-365-enterprise
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: vpattnaik
author: schmurky
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance 
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Understand the Defender Experts for Hunting report in Microsoft 365 Defender

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**

- Microsoft 365 Defender

[!INCLUDE [Prerelease](../includes/prerelease.md)]

Microsoft Defender Experts for Hunting layers human intelligence and expertise to protect Microsoft 365 Defender customers. It showcases Defender Expert’s threat hunting skills, a thorough understanding of the threat landscape, and knowledge of emerging threats in the wild.

The Defender Experts for Hunting service publishes monthly reports based on the findings in your environment. You also can view and download reports for the last six months.

To view the latest report in your Microsoft 365 Defender portal, go to Reports, select **General** > **Defender Experts**.

## Scan the Defender Experts for Hunting report to prioritize SecOps tasks

Each section of the report is designed to provide more insights about the threats our Defender Experts found in your environment in relation to what’s been happening in the threat landscape. The reports include the sections described in the following table:

| Report section | Description |
|--|--|
| Hunted and triaged | The total number of potential cybersecurity issues found in your environment. Defender Experts triage these detected issues and determine if they are indeed malicious and worth further investigation. |
| Investigated | The number of triaged cybersecurity issues that have been flagged as suspected malicious cases. Defender Experts investigate these further to determine possible threat activity. |
| Notified (View notification) | The number of targeted attack notifications the Defender Experts sent. These notifications are related to the investigated possible threat activities in your environment that must be prioritized based on urgency and impact. |
| MITRE tactics observed | The total number of attack tactics and techniques observed in your environment and mapped according to the [MITRE ATT&CK attack framework](https://attack.mitre.org/). This section represents the "how" of the attacks, providing visualization of their progression so you know at which stage in the attack they’re in. |
| Threat categories observed | The total number of threats Defender Experts have observed in your environment, categorized according to their type (for example, phishing, ransomware, and others). These categories help you further assess and evaluate your security network’s resilience based on the threats' known characteristics, behavior, and potential impact. It also helps you focus and prioritize urgent tasks to address. |
| Recommended actions | A list of actionable steps that aims to improve your organization's security posture based on the threats and risk observed in your environment. Click each recommendation to view additional information and related resources. |

Refer to the following screenshot of a sample report:

**Defender Experts report screenshot**

## View targeted attack notifications

A targeted attack notification describes an advanced threat activity Defender Experts for Hunting observed in your environment and provides recommended resolution to help address the said activity.

The Defender Experts for Hunting reports provide you with the total number of targeted attack notifications our Defender Experts have sent for the calendar month. To view these notifications, click **View notification** beside **Notified**.

This link redirects you to the Microsoft 365 Defender incidents page. Defender Expert for Hunting alerts or targeted attack notifications are labelled with “Defender Experts.”

> [!NOTE]
> The View notification link only appears if the vale displayed in **Notified** is atleast 1.

## Identify potential attack entry points and other security weak spots

Tactics represent an adversary’s tactical goal: the reason for its actions. The **MITRE tactics** observed section of the report tracks the progression of attack attempts in your environment using the following 12 MITRE ATT&CK framework tactics:

1.	Initial access
2.	Execution	
3.	Persistence	
4.	Privilege escalation	
5.	Defense evasion	
6.	Credential access
7.	Discovery
8.	Lateral movement	
9.	Collection
10.	Command and control
11.	Exfiltration	
12.	Impact

Signals from Microsoft 365 Defender and investigations by Defender Experts for Hunting help identify these stages, represented in the bar chart. This chart helps you visualize on where the surge is and provides you with the information you need to plan the corresponding containment and remediation actions in the recommendation section.

## Know and understand the prevalent threats in your environment

Threat categories help identify and organize security threats into classes to assess and evaluate their impact and develop strategies to prevent or mitigate these threats to your environment. The Threat categories observed section of the report shows a bar chart with significant risks and threats detected in your environment, helping you understand the breadth and scope of your exposure.

Threats are broadly classified into five categories:

- Ransomware
- Malware
- Weaponization
- Exploit
- Delivery

You can prioritize remediation based on the mostly-impacted category, as depicted in the bar graph.

## Address security gaps and apply additional mitigations

Each security recommendation in the Recommended action section includes actionable remediation steps customized based on the observations and findings in the current threat landscape in the context of what’s been happening in your environment . Thus, when the threat landscape changes, the recommendation also changes as it continuously collects information from both.

You are not only notified of the threats and risks but also provided with suggestions to resolve those threats.

Some recommendation actions provide additional information and have quick access to relevant resources within Microsoft 365 Defender portal and other documentation. Click the arrow beside a recommendation to expand it.

## Submit feedback about the report

Microsoft Defender Experts are continuously improving this interactive report to measure its effectiveness and ensure that you’re getting the relevant information and insights you need to defend your environments from attacks.

To submit feedback, click **Feedback** at the top of this page.

## Related topics

- [Threat analytics overview](threat-analytics.md)
- [Proactively find threats with advanced hunting](advanced-hunting-overview.md)
- [Custom detection rules](custom-detection-rules.md)