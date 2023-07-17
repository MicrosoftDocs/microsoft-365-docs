---
title: Review Microsoft Defender for Endpoint architecture requirements and key concepts
description: The technical diagram for Microsoft Defender for Endpoint in Microsoft 365 Defender will help you understand identity in Microsoft 365 before you build your trial lab or pilot environment.
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dansimp
author: dansimp
ms.date: 07/09/2021
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security
  - m365solution-scenario
  - m365solution-evalutatemtp
  - zerotrust-solution
  - highpri
  - tier1
ms.topic: conceptual
---

# Review Microsoft Defender for Endpoint architecture requirements and key concepts

**Applies to:**
Microsoft 365 Defender

This article will guide you in the process of setting up the evaluation for Microsoft Defender for Endpoint environment.

For more information about this process, see the [overview article](eval-defender-endpoint-overview.md).

Before enabling Microsoft Defender for Endpoint, be sure you understand the architecture and can meet the requirements.

## Understand the architecture

The following diagram illustrates Microsoft Defender for Endpoint architecture and integrations. 

:::image type="content" source="../../media/defender/m365-defender-endpoint-architecture.png" alt-text="The steps for adding Microsoft Defender for Office to the Defender evaluation environment" lightbox="../../media/defender/m365-defender-endpoint-architecture.png":::

The following table describes the illustration.

Call-out | Description
:---|:---|
1 | Devices are on-boarded through one of the supported management tools. 
2 | On-boarded devices provide and respond to Microsoft Defender for Endpoint signal data.
3 | Managed devices are joined and/or enrolled in Azure Active Directory.
4 | Domain-joined Windows devices are synchronized to Azure Active Directory using Azure Active Directory Connect.
5 | Microsoft Defender for Endpoint alerts, investigations, and responses are managed in Microsoft 365 Defender.

## Understand key concepts

The following table identified key concepts that are important to understand when evaluating, configuring, and deploying Microsoft Defender for Endpoint: 

Concept | Description | More information
:---|:---|:---|
Administration Portal | Microsoft 365 Defender portal to monitor and assist in responding to alerts of potential advanced persistent threat activity or data breaches. | [Microsoft Defender for Endpoint portal overview](/microsoft-365/security/defender-endpoint/portal-overview)
Attack Surface Reduction | Help reduce your attack surfaces by minimizing the places where your organization is vulnerable to cyberthreats and attacks. | [Overview of attack surface reduction](/microsoft-365/security/defender-endpoint/overview-attack-surface-reduction)
Endpoint Detection and Response | Endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. | [Overview of endpoint detection and response capabilities](/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response)
Behavioral Blocking and Containment | Behavioral blocking and containment capabilities can help identify and stop threats, based on their behaviors and process trees even when the threat has started execution. | [Behavioral blocking and containment](/microsoft-365/security/defender-endpoint/behavioral-blocking-containment)
Automated Investigation and Response | Automated investigation uses various inspection algorithms based on processes that are used by security analysts and designed to examine alerts and take immediate action to resolve breaches. | [Use automated investigations to investigate and remediate threats](/microsoft-365/security/defender-endpoint/automated-investigations)
Advanced Hunting | Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data so that you can proactively inspect events in your network to locate threat indicators and entities. | [Overview of advanced hunting](/microsoft-365/security/defender-endpoint/advanced-hunting-overview)
Threat Analytics | Threat analytics is a set of reports from expert Microsoft security researchers covering the most relevant threats. | [Track and respond to emerging threats](/microsoft-365/security/defender-endpoint/threat-analytics)


For more detailed information about the capabilities included with Microsoft Defender for Endpoint, see [What is Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint).

## SIEM integration

You can integrate Microsoft Defender for Endpoint with Microsoft Sentinel to more comprehensively analyze security events across your organization and build playbooks for effective and immediate response. 

Microsoft Defender for Endpoint can also be integrated into other Security Information and Event Management (SIEM) solutions. For more information, see [Enable SIEM integration in Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/enable-siem-integration).


## Next steps
[Enable the evaluation](eval-defender-endpoint-enable-eval.md)

Return to the overview for [Evaluate Microsoft Defender for Endpoint](eval-defender-endpoint-overview.md)

Return to the overview for [Evaluate and pilot Microsoft 365 Defender](eval-overview.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
