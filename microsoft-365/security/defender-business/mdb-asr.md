---
title: Attack surface reduction in Microsoft Defender for Business           
description: Get an overview of attack surface reduction capabilities in Microsoft Defender for Business            
author: denisebmsft
ms.author: deniseb
manager: dansimp 
ms.date: 01/25/2023 
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium 
ms.collection: 
- m365-security
- tier1
ms.reviewer: efratka
search.appverid: MET150
f1.keywords: NOCSH 
audience: Admin
---

# Attack surface reduction capabilities in Microsoft Defender for Business

Attack surfaces are the places and ways that your organization's network and devices are vulnerable to cyberthreats and attacks. Microsoft Defender for Business includes attack surface reduction capabilities to help protect your environment. This article provides an overview of attack surface reduction capabilities in Defender for Business, and includes links to more detailed information.

## Attack surface reduction capabilities in Defender for Business

Defender for Business includes several attack surface reduction capabilities:

- Attack surface reduction rules (also referred to as ASR rules)
- Controlled folder access
- Network protection
- Web protection
- Firewall protection

## Enable your standard protection rules

We recommend enabling the following standard protection rules as soon as possible:

- [Block credential stealing from the Windows local security authority subsystem](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-credential-stealing-from-the-windows-local-security-authority-subsystem)
- [Block abuse of exploited vulnerable signed drivers](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-abuse-of-exploited-vulnerable-signed-drivers)
- [Block persistence through WMI event subscription](../defender-endpoint/attack-surface-reduction-rules-reference.md#block-persistence-through-wmi-event-subscription)

These rules help protect your network and devices without a lot of disruption to users.

To enable these rules, see [Simplified standard protection option](../defender-endpoint/attack-surface-reduction-rules-report.md#simplified-standard-protection-option).

## View your attack surface reduction report

1. As a global administrator, in the Microsoft 365 Defender portal ([https://security.microsoft.com](https://security.microsoft.com)), in the navigation pane, choose **Reports**.

2. Under **Endpoints**, choose **Attack surface reduction rules**. 

The report opens and includes three tabs:

- Detections
- Configuration
- Add exclusions


## Learn more about attack surface reduction rules