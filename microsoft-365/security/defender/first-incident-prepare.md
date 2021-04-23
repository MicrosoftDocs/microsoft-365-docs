---
title: Respond to your first incident-Prepare for incident handling
description: Respond to your first incident-Prepare for incident handling.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: josephd
author: JoeDavies-MSFT
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365initiative-m365-defender
ms.topic: conceptual
search.appverid: 
  - MOE150
  - MET150
ms.technology: m365d
---
# Respond to your first incident-Prepare for incident handling

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Preparing for incident handling involves setting up sufficient protection of an organization's network from different kinds of security incidents. To reduce the risk of security incidents, NIST recommends several security practices including risk assessments, hardening host security, configuring networks securely, and preventing malware. 

Microsoft 365 Defender can help address several aspects of incident prevention: 

- Implementing a [Zero Trust](https://docs.microsoft.com/security/zero-trust/) framework
- Determining your security posture by assigning a score with [Microsoft Secure Score](microsoft-secure-score.md)
- Preventing threats through vulnerability assessments in [Threat and Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md)
- Understanding the latest security threats so you can prepare for them

## Step 1. Implement Zero Trust

[Zero Trust](https://docs.microsoft.com/security/zero-trust/) is an integrated security philosophy and end-to-end strategy that considers the complex nature of any modern environment, including the mobile workforce and the users, devices, applications and data, wherever they may be located. By providing a single pane of glass to manage all endpoint detections in a consistent way, Microsoft 365 Defender can make it easier for your security operations team to implement the [guiding principles](https://docs.microsoft.com/security/zero-trust/#guiding-principles-of-zero-trust) of Zero Trust. 

Components of Microsoft 365 Defender can display violations of rules that have been implemented to establish Conditional Access policies for Zero Trust by integrating data from Microsoft Defender for Endpoint (MDE) or other mobile security vendors as an information source for device compliance policies and implementation of device-based Conditional Access policies. 

Device risk directly influences what resources will be accessible by the user of that device. The denial of access to resources based on certain criteria is the main theme of Zero Trust and Microsoft 365 Defender provides information needed to determine the trust level criteria. For example, Microsoft 365 Defender can provide the software version level of a device through the Threat and Vulnerability Management page while Conditional Access policies restrict devices that have outdated or vulnerable versions.

Automation is a crucial part of implementing and maintaining a Zero Trust environment while also reducing the number of alerts that would potentially lead to incident response (IR) events. Components of Microsoft 365 Defender can be automated such as remediation actions (known as investigations for an incident in the Microsoft 365 security center), notification actions, and even the creation of support tickets such as in [ServiceNow](https://microsoft.service-now.com/sp/).

## Step 2. Determine your organization’s security posture

Next, organizations can use the [Microsoft Secure Score](microsoft-secure-score.md) in Microsoft 365 Defender to determine your current security posture and consider recommendations on how to improve it. The higher the score is, the more security recommendations and improvement actions have been taken by the organization. Secure Score recommendations can be taken across different products and allow organizations to raise their scores even higher. 

:::image type="content" source="../../media/first-incident-prepare/first-incident-secure-score.png" alt-text="Example of Microsoft Secure Score in the Microsoft security center":::
 
## Step 3. Assess your organization’s vulnerability exposure

Preventing incidents can help streamline security operations efforts to focus on on-going critical and important security incidents. Software vulnerabilities are often a preventable entry point for attacks that can lead to data theft, data loss, or disruption of business operations. If no attacks are on-going, security operations must strive to achieve and maintain an acceptable level of vulnerability exposure in their organization.

To check your software patching progress, visit the [Threat and Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md) page in Defender for Endpoint, which you can access from Microsoft 365 Defender through the **More resources** tab.

:::image type="content" source="../../media/first-incident-overview/first-incident-vulnerability.png" alt-text="Example of the Threat and Vulnerability page in the Microsoft security center"::: 
 
## 4. Understand emerging threats

Use threat analytics in the Microsoft 365 security center to keep up-to-date with the current security threat landscape. Expert Microsoft security researchers create reports that describe the latest cyber-threats in detail so you can understand how they might affect your Microsoft 365 subscription, devices, and users. These reports can include:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

You can implement the recommendations of an emerging threat to strengthen your security posture and minimize your attack surface area.

Make time in your schedule to regularly check the Threat Analytics section of the Microsoft 365 security center.

## Next step

Learn how to [detect, triage, and investigate incidents](first-incident-analyze.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Analyze incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
