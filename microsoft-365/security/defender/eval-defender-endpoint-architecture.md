---
title: Review architecture requirements and key concepts for Microsoft Defender for Endpoint
description: Architecture for Microsoft 365 Defender trial lab or pilot environment.
keywords: Microsoft 365 Defender trial, try Microsoft 365 Defender, evaluate Microsoft 365 Defender, Microsoft 365 Defender evaluation lab, Microsoft 365 Defender pilot, cyber security, advanced persistent threat, enterprise security, devices, device, identity, users, data, applications, incidents, automated investigation and remediation, advanced hunting
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: v-jweston
author: jweston-1
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-overview
  - m365solution-evalutatemtp
ms.topic: conceptual
ms.technology: m365d
---

# Review architecture requirements and key concepts for Microsoft Defender for Endpoint

**Applies to:**
Microsoft 365 Defender

Before enabling Microsoft Defender for Endpoint, be sure you understand the architecture and can meet the requirements.

## Understand the architecture

The following diagram illustrates Microsoft Defender for Endpoint architecture and integrations:

![Steps for adding Microsoft Defender for Office to the Defender evaluation environment](../../media/defender/m365-defender-endpoint-architecture.png)

Step | Description
:---|:---|
1 | Devices are on-boarded via Microsoft Intune, SCCM co-management, etc.
2 | On-boarded devices provide and respond to Microsoft Defender for Endpoint signal data.
3 | Managed devices are joined and/or enrolled in Azure AD.
4 | Domain-joined Windows 10 devices are synchronized to Azure AD using AAD Connect.
5 | Microsoft Defender for Endpoint alerts, investigations, and responses are managed in Microsoft 365 Defender.

## Understand key concepts

The following table identified key concepts that are important to understand when evaluating, configuring, and deploying Microsoft Defender for Endpoint: 

Concept | Description | Reference
:---|:---|:---|
Administration Portal | Microsoft 365 Defender portal to monitor and assist in responding to alerts of potential advanced persistent threat activity or data breaches. | [Microsoft Defender for Endpoint portal overview \| Microsoft Docs](/defender-endpoint/portal-overview)
Attack Surface Reduction | Help reduce your attack surfaces by minimizing the places where your organization is vulnerable to cyberthreats and attacks. | [Overview of attack surface reduction  \| Microsoft Docs](/defender-endpoint/overview-attack-surface-reduction)
Endpoint Detection and Response | Endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. | [Overview of endpoint detection and response capabilities  \| Microsoft Docs](/defender-endpoint/overview-endpoint-detection-response)
Behavioral Blocking and Containment | Behavioral blocking and containment capabilities can help identify and stop threats, based on their behaviors and process trees even when the threat has started execution. | [Behavioral blocking and containment \| Microsoft Docs](/defender-endpoint/behavioral-blocking-containment)
Automated Investigation and Response | Automated investigation uses various inspection algorithms based on processes that are used by security analysts and designed to examine alerts and take immediate action to resolve breaches. | [Use automated investigations to investigate and remediate threats \| Microsoft Docs](/defender-endpoint/automated-investigations)
Advanced Hunting | Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data so that you can proactively inspect events in your network to locate threat indicators and entities. | [Overview of advanced hunting \| Microsoft Docs](/defender-endpoint/advanced-hunting-overview)
Threat Analytics |  | [Track and respond to emerging threats \| Microsoft Docs](/defender-endpoint/threat-analytics)

## Next steps
- [Enable the evaluation](eval-defender-endpoint-enable-eval.md)