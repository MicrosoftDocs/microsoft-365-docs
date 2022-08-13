---
title: Prepare your security posture for your first incident
description: Set up your Microsoft 365 tenant's security posture for your first incident in Microsoft 365 Defender.
keywords: incidents, alerts, investigate, correlation, attack, machines, devices, users, identities, identity, mailbox, email, 365, microsoft, m365
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - M365-security-compliance
  - m365solution-firstincident
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.technology: m365d
---
# Prepare your security posture for your first incident

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

Preparing for incident handling involves setting up sufficient protection of an organization's network from different kinds of security incidents. To reduce the risk of security incidents, National Institute of Standards and Technology (NIST) recommends several security practices including risk assessments, hardening host security, configuring networks securely, and preventing malware.

Microsoft 365 Defender can help address several aspects of incident prevention:

- Implementing a [Zero Trust](/security/zero-trust/) framework
- Determining your security posture by assigning a score with [Microsoft Secure Score](microsoft-secure-score.md)
- Preventing threats through vulnerability assessments in [Defender Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md)
- Understanding the latest security threats so you can prepare for them with [threat analytics](threat-analytics.md)

## Step 1. Implement Zero Trust

[Zero Trust](/security/zero-trust/) is an integrated security philosophy and end-to-end strategy that considers the complex nature of any modern environment, including the mobile workforce and the users, devices, applications and data, wherever they may be located. By providing a single pane of glass to manage all detections in a consistent way, Microsoft 365 Defender can make it easier for your security operations team to implement the [guiding principles](/security/zero-trust/#guiding-principles-of-zero-trust) of Zero Trust.

Components of Microsoft 365 Defender can display violations of rules that have been implemented to establish Conditional Access policies for Zero Trust by integrating data from Microsoft Defender for Endpoint or other mobile security vendors as an information source for device compliance policies and implementation of device-based Conditional Access policies.

Device risk directly influences what resources will be accessible by the user of that device. The denial of access to resources based on certain criteria is the main theme of Zero Trust and Microsoft 365 Defender provides information needed to determine the trust level criteria. For example, Microsoft 365 Defender can provide the software version level of a device through the Microsoft Defender Vulnerability Management, formerly known as Threat & Vulnerability Management page while Conditional Access policies restrict devices that have outdated or vulnerable versions.

Automation is a crucial part of implementing and maintaining a Zero Trust environment while also reducing the number of alerts that would potentially lead to incident response (IR) events. Components of Microsoft 365 Defender can be automated such as [remediation actions](m365d-autoir.md) (known as investigations for an incident in the Microsoft 365 Defender portal), notification actions, and even the creation of support tickets such as in [ServiceNow](https://microsoft.service-now.com/sp/).

## Step 2. Determine your organization's security posture

Next, organizations can use the [Microsoft Secure Score](microsoft-secure-score.md) in Microsoft 365 Defender to determine your current security posture and consider recommendations on how to improve it. The higher the score is, the more security recommendations and improvement actions have been taken by the organization. Secure Score recommendations can be taken across different products and allow organizations to raise their scores even higher.

:::image type="content" source="../../media/first-incident-prepare/first-incident-secure-score.png" alt-text="The Microsoft Secure Score page in the Microsoft 365 Defender portal" lightbox="../../media/first-incident-prepare/first-incident-secure-score.png":::

## Step 3. Assess your organization's vulnerability exposure

Preventing incidents can help streamline security operations efforts to focus on on-going critical and important security incidents. Software vulnerabilities are often a preventable entry point for attacks that can lead to data theft, data loss, or disruption of business operations. If no attacks are on-going, security operations must strive to achieve and maintain an acceptable level of [vulnerability exposure](../defender-endpoint/tvm-exposure-score.md) in their organization.

To check your software patching progress, visit the [Microsoft Defender Vulnerability Management](../defender-endpoint/next-gen-threat-and-vuln-mgt.md) page in Defender for Endpoint, which you can access from Microsoft 365 Defender through the **More resources** tab.

:::image type="content" source="../../media/first-incident-prepare/first-incident-vulnerability.png" alt-text="The Threat and Vulnerability page in the  Microsoft 365 Defender portal portal" lightbox="../../media/first-incident-prepare/first-incident-vulnerability.png":::

## 4. Understand emerging threats

Use [threat analytics](threat-analytics.md) in the Microsoft 365 Defender portal to keep up-to-date with the current security threat landscape. Expert Microsoft security researchers create reports that describe the latest cyber-threats in detail so you can understand how they might affect your Microsoft 365 subscription, devices, and users. These reports can include:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

Threat analytics also looks at your configuration and alerts to determine how at-risk you are and if there are active alerts applicable to a report.

You can implement the recommendations of an emerging threat to strengthen your security posture and minimize your attack surface area.

Make time in your schedule to regularly check the [Threat Analytics](threat-analytics.md) section of the Microsoft 365 Defender portal. See the [example security operations for Microsoft 365 Defender](incidents-overview.md#example-security-operations-for-microsoft-365-defender) for more information.

## Next step

Learn how to [triage and analyze incidents](first-incident-analyze.md).

## See also

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Manage incidents](manage-incidents.md)
